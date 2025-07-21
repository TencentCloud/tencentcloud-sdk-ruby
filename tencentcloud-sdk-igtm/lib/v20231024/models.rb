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
  module Igtm
    module V20231024
      # 添加地址池地址
      class Address < TencentCloud::Common::AbstractModel
        # @param Addr: 地址值：只支持ipv4、ipv6和域名格式；
        # 不支持回环地址、保留地址、内网地址与腾讯保留网段
        # @type Addr: String
        # @param IsEnable: 是否启用:DISABLED不启用；ENABLED启用
        # @type IsEnable: String
        # @param AddressId: 地址id
        # @type AddressId: Integer
        # @param Location: 地址名称
        # @type Location: String
        # @param Status: OK正常，DOWN故障，WARN风险，UNKNOWN探测中，UNMONITORED未知
        # @type Status: String
        # @param Weight: 权重，流量策略为WEIGHT时，必填；范围1-100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 修改时间
        # @type UpdatedOn: String

        attr_accessor :Addr, :IsEnable, :AddressId, :Location, :Status, :Weight, :CreatedOn, :UpdatedOn

        def initialize(addr=nil, isenable=nil, addressid=nil, location=nil, status=nil, weight=nil, createdon=nil, updatedon=nil)
          @Addr = addr
          @IsEnable = isenable
          @AddressId = addressid
          @Location = location
          @Status = status
          @Weight = weight
          @CreatedOn = createdon
          @UpdatedOn = updatedon
        end

        def deserialize(params)
          @Addr = params['Addr']
          @IsEnable = params['IsEnable']
          @AddressId = params['AddressId']
          @Location = params['Location']
          @Status = params['Status']
          @Weight = params['Weight']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
        end
      end

      # 地址所属地域
      class AddressLocation < TencentCloud::Common::AbstractModel
        # @param Addr: ip地址
        # @type Addr: String
        # @param Location: 所属地域
        # @type Location: String

        attr_accessor :Addr, :Location

        def initialize(addr=nil, location=nil)
          @Addr = addr
          @Location = location
        end

        def deserialize(params)
          @Addr = params['Addr']
          @Location = params['Location']
        end
      end

      # 地址池
      class AddressPool < TencentCloud::Common::AbstractModel
        # @param PoolId: 地址池 id
        # @type PoolId: Integer
        # @param PoolName: 地址池名
        # @type PoolName: String
        # @param AddrType: 地址池地址类型：IPV4、IPV6、DOMAIN
        # @type AddrType: String
        # @param TrafficStrategy: 流量策略: WEIGHT负载均衡，ALL解析全部
        # @type TrafficStrategy: String
        # @param MonitorId: 监控器id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorId: Integer
        # @param Status: OK正常，DOWN故障，WARN风险，UNKNOWN未知
        # @type Status: String
        # @param AddressNum: 地址数
        # @type AddressNum: Integer
        # @param MonitorGroupNum: 探点数
        # @type MonitorGroupNum: Integer
        # @param MonitorTaskNum: 探测任务数
        # @type MonitorTaskNum: Integer
        # @param InstanceInfo: 实例相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceInfo: Array
        # @param AddressSet: 地址池地址信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressSet: Array
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 更新时间
        # @type UpdatedOn: String

        attr_accessor :PoolId, :PoolName, :AddrType, :TrafficStrategy, :MonitorId, :Status, :AddressNum, :MonitorGroupNum, :MonitorTaskNum, :InstanceInfo, :AddressSet, :CreatedOn, :UpdatedOn

        def initialize(poolid=nil, poolname=nil, addrtype=nil, trafficstrategy=nil, monitorid=nil, status=nil, addressnum=nil, monitorgroupnum=nil, monitortasknum=nil, instanceinfo=nil, addressset=nil, createdon=nil, updatedon=nil)
          @PoolId = poolid
          @PoolName = poolname
          @AddrType = addrtype
          @TrafficStrategy = trafficstrategy
          @MonitorId = monitorid
          @Status = status
          @AddressNum = addressnum
          @MonitorGroupNum = monitorgroupnum
          @MonitorTaskNum = monitortasknum
          @InstanceInfo = instanceinfo
          @AddressSet = addressset
          @CreatedOn = createdon
          @UpdatedOn = updatedon
        end

        def deserialize(params)
          @PoolId = params['PoolId']
          @PoolName = params['PoolName']
          @AddrType = params['AddrType']
          @TrafficStrategy = params['TrafficStrategy']
          @MonitorId = params['MonitorId']
          @Status = params['Status']
          @AddressNum = params['AddressNum']
          @MonitorGroupNum = params['MonitorGroupNum']
          @MonitorTaskNum = params['MonitorTaskNum']
          unless params['InstanceInfo'].nil?
            @InstanceInfo = []
            params['InstanceInfo'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstanceInfo << instanceinfo_tmp
            end
          end
          unless params['AddressSet'].nil?
            @AddressSet = []
            params['AddressSet'].each do |i|
              address_tmp = Address.new
              address_tmp.deserialize(i)
              @AddressSet << address_tmp
            end
          end
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
        end
      end

      # 地址池详情
      class AddressPoolDetail < TencentCloud::Common::AbstractModel
        # @param PoolId: 地址池 id
        # @type PoolId: Integer
        # @param PoolName: 地址池名
        # @type PoolName: String
        # @param AddrType: 地址池地址类型：IPV4、IPV6、DOMAIN
        # @type AddrType: String
        # @param TrafficStrategy: 流量策略: WEIGHT负载均衡，ALL解析全部
        # @type TrafficStrategy: String
        # @param MonitorId: 监控器id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorId: Integer
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 更新时间
        # @type UpdatedOn: String

        attr_accessor :PoolId, :PoolName, :AddrType, :TrafficStrategy, :MonitorId, :CreatedOn, :UpdatedOn

        def initialize(poolid=nil, poolname=nil, addrtype=nil, trafficstrategy=nil, monitorid=nil, createdon=nil, updatedon=nil)
          @PoolId = poolid
          @PoolName = poolname
          @AddrType = addrtype
          @TrafficStrategy = trafficstrategy
          @MonitorId = monitorid
          @CreatedOn = createdon
          @UpdatedOn = updatedon
        end

        def deserialize(params)
          @PoolId = params['PoolId']
          @PoolName = params['PoolName']
          @AddrType = params['AddrType']
          @TrafficStrategy = params['TrafficStrategy']
          @MonitorId = params['MonitorId']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
        end
      end

      # 计费项
      class CostItem < TencentCloud::Common::AbstractModel
        # @param CostName: 计费项名称
        # @type CostName: String
        # @param CostValue: 计费项值
        # @type CostValue: Integer

        attr_accessor :CostName, :CostValue

        def initialize(costname=nil, costvalue=nil)
          @CostName = costname
          @CostValue = costvalue
        end

        def deserialize(params)
          @CostName = params['CostName']
          @CostValue = params['CostValue']
        end
      end

      # CreateAddressPool请求参数结构体
      class CreateAddressPoolRequest < TencentCloud::Common::AbstractModel
        # @param PoolName: 地址池名称，不允许重复
        # @type PoolName: String
        # @param TrafficStrategy: 流量策略：WEIGHT负载均衡，ALL解析所有健康地址
        # @type TrafficStrategy: String
        # @param AddressSet: 地址列表
        # @type AddressSet: Array
        # @param MonitorId: 监控器id
        # @type MonitorId: Integer

        attr_accessor :PoolName, :TrafficStrategy, :AddressSet, :MonitorId

        def initialize(poolname=nil, trafficstrategy=nil, addressset=nil, monitorid=nil)
          @PoolName = poolname
          @TrafficStrategy = trafficstrategy
          @AddressSet = addressset
          @MonitorId = monitorid
        end

        def deserialize(params)
          @PoolName = params['PoolName']
          @TrafficStrategy = params['TrafficStrategy']
          unless params['AddressSet'].nil?
            @AddressSet = []
            params['AddressSet'].each do |i|
              address_tmp = Address.new
              address_tmp.deserialize(i)
              @AddressSet << address_tmp
            end
          end
          @MonitorId = params['MonitorId']
        end
      end

      # CreateAddressPool返回参数结构体
      class CreateAddressPoolResponse < TencentCloud::Common::AbstractModel
        # @param AddressPoolId: 地址池id
        # @type AddressPoolId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressPoolId, :RequestId

        def initialize(addresspoolid=nil, requestid=nil)
          @AddressPoolId = addresspoolid
          @RequestId = requestid
        end

        def deserialize(params)
          @AddressPoolId = params['AddressPoolId']
          @RequestId = params['RequestId']
        end
      end

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 业务域名
        # @type Domain: String
        # @param AccessType: CUSTOM: 自定义接入域名
        # SYSTEM: 系统接入域名
        # @type AccessType: String
        # @param GlobalTtl: 解析生效时间
        # @type GlobalTtl: Integer
        # @param PackageType: 套餐类型
        # FREE: 免费版
        # STANDARD：标准版
        # ULTIMATE：旗舰版
        # @type PackageType: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param AccessDomain: 接入主域名
        # @type AccessDomain: String
        # @param AccessSubDomain: 接入子域名
        # @type AccessSubDomain: String
        # @param Remark: 备注
        # @type Remark: String
        # @param ResourceId: 套餐资源id，必填
        # @type ResourceId: String

        attr_accessor :Domain, :AccessType, :GlobalTtl, :PackageType, :InstanceName, :AccessDomain, :AccessSubDomain, :Remark, :ResourceId

        def initialize(domain=nil, accesstype=nil, globalttl=nil, packagetype=nil, instancename=nil, accessdomain=nil, accesssubdomain=nil, remark=nil, resourceid=nil)
          @Domain = domain
          @AccessType = accesstype
          @GlobalTtl = globalttl
          @PackageType = packagetype
          @InstanceName = instancename
          @AccessDomain = accessdomain
          @AccessSubDomain = accesssubdomain
          @Remark = remark
          @ResourceId = resourceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @AccessType = params['AccessType']
          @GlobalTtl = params['GlobalTtl']
          @PackageType = params['PackageType']
          @InstanceName = params['InstanceName']
          @AccessDomain = params['AccessDomain']
          @AccessSubDomain = params['AccessSubDomain']
          @Remark = params['Remark']
          @ResourceId = params['ResourceId']
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
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

      # CreateMonitor请求参数结构体
      class CreateMonitorRequest < TencentCloud::Common::AbstractModel
        # @param MonitorName: 监控器名称
        # @type MonitorName: String
        # @param CheckProtocol: 探测协议，可选值 PING TCP HTTP HTTPS
        # @type CheckProtocol: String
        # @param CheckInterval: 检查间隔（秒），可选值有15 60 120 300
        # @type CheckInterval: Integer
        # @param Timeout: 超时时间，单位秒，可选值为2 3 5 10
        # @type Timeout: Integer
        # @param FailTimes: 重试次数，可选值为 0，1，2
        # @type FailTimes: Integer
        # @param FailRate: 失败比例，取值为 20 30 40 50 60 70 80 100，默认值50
        # @type FailRate: Integer
        # @param DetectorStyle: 监控节点类型，可选值有AUTO INTERNAL OVERSEAS IPV6 ALL
        # @type DetectorStyle: String
        # @param DetectorGroupIds: 探测器组id列表以,分隔
        # @type DetectorGroupIds: Array
        # @param PingNum: PING 包数目，当CheckProtocol=ping时必填，可选值有20 50 100
        # @type PingNum: Integer
        # @param TcpPort: 检查端口，可选值在1-65535之间
        # @type TcpPort: Integer
        # @param Host: Host 设置，默认为业务域名
        # @type Host: String
        # @param Path: URL 路径，默认为“/”
        # @type Path: String
        # @param ReturnCodeThreshold: 返回错误码阈值, 可选值为 400 和 500, 默认值500
        # @type ReturnCodeThreshold: Integer
        # @param EnableRedirect: 跟随 3XX 重定向 ，不开启为 DISABLED， 开启为 ENABLED，默认不开启
        # @type EnableRedirect: String
        # @param EnableSni: 启用 SNI，不开启为 DISABLED， 开启为 ENABLED，默认不开启
        # @type EnableSni: String
        # @param PacketLossRate: 丢包率告警阈值，当CheckProtocol=ping时必填取值为10 30 50 80 90 100
        # @type PacketLossRate: Integer
        # @param ContinuePeriod: 持续周期数，可选值1-5
        # @type ContinuePeriod: Integer

        attr_accessor :MonitorName, :CheckProtocol, :CheckInterval, :Timeout, :FailTimes, :FailRate, :DetectorStyle, :DetectorGroupIds, :PingNum, :TcpPort, :Host, :Path, :ReturnCodeThreshold, :EnableRedirect, :EnableSni, :PacketLossRate, :ContinuePeriod

        def initialize(monitorname=nil, checkprotocol=nil, checkinterval=nil, timeout=nil, failtimes=nil, failrate=nil, detectorstyle=nil, detectorgroupids=nil, pingnum=nil, tcpport=nil, host=nil, path=nil, returncodethreshold=nil, enableredirect=nil, enablesni=nil, packetlossrate=nil, continueperiod=nil)
          @MonitorName = monitorname
          @CheckProtocol = checkprotocol
          @CheckInterval = checkinterval
          @Timeout = timeout
          @FailTimes = failtimes
          @FailRate = failrate
          @DetectorStyle = detectorstyle
          @DetectorGroupIds = detectorgroupids
          @PingNum = pingnum
          @TcpPort = tcpport
          @Host = host
          @Path = path
          @ReturnCodeThreshold = returncodethreshold
          @EnableRedirect = enableredirect
          @EnableSni = enablesni
          @PacketLossRate = packetlossrate
          @ContinuePeriod = continueperiod
        end

        def deserialize(params)
          @MonitorName = params['MonitorName']
          @CheckProtocol = params['CheckProtocol']
          @CheckInterval = params['CheckInterval']
          @Timeout = params['Timeout']
          @FailTimes = params['FailTimes']
          @FailRate = params['FailRate']
          @DetectorStyle = params['DetectorStyle']
          @DetectorGroupIds = params['DetectorGroupIds']
          @PingNum = params['PingNum']
          @TcpPort = params['TcpPort']
          @Host = params['Host']
          @Path = params['Path']
          @ReturnCodeThreshold = params['ReturnCodeThreshold']
          @EnableRedirect = params['EnableRedirect']
          @EnableSni = params['EnableSni']
          @PacketLossRate = params['PacketLossRate']
          @ContinuePeriod = params['ContinuePeriod']
        end
      end

      # CreateMonitor返回参数结构体
      class CreateMonitorResponse < TencentCloud::Common::AbstractModel
        # @param MonitorId: 监控器id
        # @type MonitorId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MonitorId, :RequestId

        def initialize(monitorid=nil, requestid=nil)
          @MonitorId = monitorid
          @RequestId = requestid
        end

        def deserialize(params)
          @MonitorId = params['MonitorId']
          @RequestId = params['RequestId']
        end
      end

      # CreateStrategy请求参数结构体
      class CreateStrategyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param StrategyName: 策略名称，不允许重复
        # @type StrategyName: String
        # @param Source: 解析线路
        # @type Source: Array
        # @param MainAddressPoolSet: 主力地址池集合，最多允许配置四级
        # @type MainAddressPoolSet: Array
        # @param FallbackAddressPoolSet: 兜底地址池集合，只允许配置一级，且地址池数量为1
        # @type FallbackAddressPoolSet: Array
        # @param KeepDomainRecords: 是否开启策略强制保留默认线路 disabled, enabled，默认不开启且只有一个策略能开启
        # @type KeepDomainRecords: String
        # @param SwitchPoolType: 策略调度模式：AUTO默认切换；STOP仅暂停不切换
        # @type SwitchPoolType: String

        attr_accessor :InstanceId, :StrategyName, :Source, :MainAddressPoolSet, :FallbackAddressPoolSet, :KeepDomainRecords, :SwitchPoolType

        def initialize(instanceid=nil, strategyname=nil, source=nil, mainaddresspoolset=nil, fallbackaddresspoolset=nil, keepdomainrecords=nil, switchpooltype=nil)
          @InstanceId = instanceid
          @StrategyName = strategyname
          @Source = source
          @MainAddressPoolSet = mainaddresspoolset
          @FallbackAddressPoolSet = fallbackaddresspoolset
          @KeepDomainRecords = keepdomainrecords
          @SwitchPoolType = switchpooltype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StrategyName = params['StrategyName']
          unless params['Source'].nil?
            @Source = []
            params['Source'].each do |i|
              source_tmp = Source.new
              source_tmp.deserialize(i)
              @Source << source_tmp
            end
          end
          unless params['MainAddressPoolSet'].nil?
            @MainAddressPoolSet = []
            params['MainAddressPoolSet'].each do |i|
              mainaddresspool_tmp = MainAddressPool.new
              mainaddresspool_tmp.deserialize(i)
              @MainAddressPoolSet << mainaddresspool_tmp
            end
          end
          unless params['FallbackAddressPoolSet'].nil?
            @FallbackAddressPoolSet = []
            params['FallbackAddressPoolSet'].each do |i|
              mainaddresspool_tmp = MainAddressPool.new
              mainaddresspool_tmp.deserialize(i)
              @FallbackAddressPoolSet << mainaddresspool_tmp
            end
          end
          @KeepDomainRecords = params['KeepDomainRecords']
          @SwitchPoolType = params['SwitchPoolType']
        end
      end

      # CreateStrategy返回参数结构体
      class CreateStrategyResponse < TencentCloud::Common::AbstractModel
        # @param StrategyId: 新增策略id
        # @type StrategyId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StrategyId, :RequestId

        def initialize(strategyid=nil, requestid=nil)
          @StrategyId = strategyid
          @RequestId = requestid
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAddressPool请求参数结构体
      class DeleteAddressPoolRequest < TencentCloud::Common::AbstractModel
        # @param PoolId: 地址池id
        # @type PoolId: Integer

        attr_accessor :PoolId

        def initialize(poolid=nil)
          @PoolId = poolid
        end

        def deserialize(params)
          @PoolId = params['PoolId']
        end
      end

      # DeleteAddressPool返回参数结构体
      class DeleteAddressPoolResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 是否成功
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteMonitor请求参数结构体
      class DeleteMonitorRequest < TencentCloud::Common::AbstractModel
        # @param MonitorId: 监控器id
        # @type MonitorId: Integer

        attr_accessor :MonitorId

        def initialize(monitorid=nil)
          @MonitorId = monitorid
        end

        def deserialize(params)
          @MonitorId = params['MonitorId']
        end
      end

      # DeleteMonitor返回参数结构体
      class DeleteMonitorResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 成功返回
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteStrategy请求参数结构体
      class DeleteStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略id
        # @type StrategyId: Integer
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :StrategyId, :InstanceId

        def initialize(strategyid=nil, instanceid=nil)
          @StrategyId = strategyid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteStrategy返回参数结构体
      class DeleteStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 是否成功
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAddressLocation请求参数结构体
      class DescribeAddressLocationRequest < TencentCloud::Common::AbstractModel
        # @param Address: 地址数组
        # @type Address: Array

        attr_accessor :Address

        def initialize(address=nil)
          @Address = address
        end

        def deserialize(params)
          @Address = params['Address']
        end
      end

      # DescribeAddressLocation返回参数结构体
      class DescribeAddressLocationResponse < TencentCloud::Common::AbstractModel
        # @param AddressLocation: 所属地域
        # @type AddressLocation: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressLocation, :RequestId

        def initialize(addresslocation=nil, requestid=nil)
          @AddressLocation = addresslocation
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AddressLocation'].nil?
            @AddressLocation = []
            params['AddressLocation'].each do |i|
              addresslocation_tmp = AddressLocation.new
              addresslocation_tmp.deserialize(i)
              @AddressLocation << addresslocation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAddressPoolDetail请求参数结构体
      class DescribeAddressPoolDetailRequest < TencentCloud::Common::AbstractModel
        # @param PoolId: 地址池id
        # @type PoolId: Integer

        attr_accessor :PoolId

        def initialize(poolid=nil)
          @PoolId = poolid
        end

        def deserialize(params)
          @PoolId = params['PoolId']
        end
      end

      # DescribeAddressPoolDetail返回参数结构体
      class DescribeAddressPoolDetailResponse < TencentCloud::Common::AbstractModel
        # @param AddressPool: 资源组详情描述
        # @type AddressPool: :class:`Tencentcloud::Igtm.v20231024.models.AddressPoolDetail`
        # @param AddressSet: 资源组中的资源列表
        # @type AddressSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressPool, :AddressSet, :RequestId

        def initialize(addresspool=nil, addressset=nil, requestid=nil)
          @AddressPool = addresspool
          @AddressSet = addressset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AddressPool'].nil?
            @AddressPool = AddressPoolDetail.new
            @AddressPool.deserialize(params['AddressPool'])
          end
          unless params['AddressSet'].nil?
            @AddressSet = []
            params['AddressSet'].each do |i|
              address_tmp = Address.new
              address_tmp.deserialize(i)
              @AddressSet << address_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAddressPoolList请求参数结构体
      class DescribeAddressPoolListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 告警过滤条件：PoolName：地址池名称；MonitorId：监控器id
        # @type Filters: Array
        # @param Offset: 页数
        # @type Offset: Integer
        # @param Limit: 每页数
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit

        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              resourcefilter_tmp = ResourceFilter.new
              resourcefilter_tmp.deserialize(i)
              @Filters << resourcefilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAddressPoolList返回参数结构体
      class DescribeAddressPoolListResponse < TencentCloud::Common::AbstractModel
        # @param AddressPoolSet: 资源组列表
        # @type AddressPoolSet: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressPoolSet, :TotalCount, :RequestId

        def initialize(addresspoolset=nil, totalcount=nil, requestid=nil)
          @AddressPoolSet = addresspoolset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AddressPoolSet'].nil?
            @AddressPoolSet = []
            params['AddressPoolSet'].each do |i|
              addresspool_tmp = AddressPool.new
              addresspool_tmp.deserialize(i)
              @AddressPoolSet << addresspool_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDetectPackageDetail请求参数结构体
      class DescribeDetectPackageDetailRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String

        attr_accessor :ResourceId

        def initialize(resourceid=nil)
          @ResourceId = resourceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
        end
      end

      # DescribeDetectPackageDetail返回参数结构体
      class DescribeDetectPackageDetailResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param ResourceType: 资源类型 TASK 探测任务
        # @type ResourceType: String
        # @param Quota: 额度
        # @type Quota: Integer
        # @param CurrentDeadline: 过期时间
        # @type CurrentDeadline: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsExpire: 是否过期
        # @type IsExpire: Integer
        # @param Status: 状态 ENABLED: 正常 ISOLATED: 隔离 DESTROYED：销毁 REFUNDED：已退款
        # @type Status: String
        # @param AutoRenewFlag: 是否自动续费：0否1是
        # @type AutoRenewFlag: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param CostItemList: 计费项
        # @type CostItemList: Array
        # @param UsedNum: 使用数量
        # @type UsedNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :ResourceType, :Quota, :CurrentDeadline, :CreateTime, :IsExpire, :Status, :AutoRenewFlag, :Remark, :CostItemList, :UsedNum, :RequestId

        def initialize(resourceid=nil, resourcetype=nil, quota=nil, currentdeadline=nil, createtime=nil, isexpire=nil, status=nil, autorenewflag=nil, remark=nil, costitemlist=nil, usednum=nil, requestid=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @Quota = quota
          @CurrentDeadline = currentdeadline
          @CreateTime = createtime
          @IsExpire = isexpire
          @Status = status
          @AutoRenewFlag = autorenewflag
          @Remark = remark
          @CostItemList = costitemlist
          @UsedNum = usednum
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @Quota = params['Quota']
          @CurrentDeadline = params['CurrentDeadline']
          @CreateTime = params['CreateTime']
          @IsExpire = params['IsExpire']
          @Status = params['Status']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Remark = params['Remark']
          unless params['CostItemList'].nil?
            @CostItemList = []
            params['CostItemList'].each do |i|
              costitem_tmp = CostItem.new
              costitem_tmp.deserialize(i)
              @CostItemList << costitem_tmp
            end
          end
          @UsedNum = params['UsedNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDetectTaskPackageList请求参数结构体
      class DescribeDetectTaskPackageListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Filters: 探测任务过滤条件：ResourceId 探测任务的资源id，PeriodStart 最小过期时间,PeriodEnd 最大过期时间
        # @type Filters: Array

        attr_accessor :Limit, :Filters

        def initialize(limit=nil, filters=nil)
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              resourcefilter_tmp = ResourceFilter.new
              resourcefilter_tmp.deserialize(i)
              @Filters << resourcefilter_tmp
            end
          end
        end
      end

      # DescribeDetectTaskPackageList返回参数结构体
      class DescribeDetectTaskPackageListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param TaskPackageSet: 探测任务套餐列表
        # @type TaskPackageSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskPackageSet, :RequestId

        def initialize(totalcount=nil, taskpackageset=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskPackageSet = taskpackageset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TaskPackageSet'].nil?
            @TaskPackageSet = []
            params['TaskPackageSet'].each do |i|
              detecttaskpackage_tmp = DetectTaskPackage.new
              detecttaskpackage_tmp.deserialize(i)
              @TaskPackageSet << detecttaskpackage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDetectors请求参数结构体
      class DescribeDetectorsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDetectors返回参数结构体
      class DescribeDetectorsResponse < TencentCloud::Common::AbstractModel
        # @param DetectorGroupSet: 探测器组列表
        # @type DetectorGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetectorGroupSet, :RequestId

        def initialize(detectorgroupset=nil, requestid=nil)
          @DetectorGroupSet = detectorgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetectorGroupSet'].nil?
            @DetectorGroupSet = []
            params['DetectorGroupSet'].each do |i|
              detectorgroup_tmp = DetectorGroup.new
              detectorgroup_tmp.deserialize(i)
              @DetectorGroupSet << detectorgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDnsLineList请求参数结构体
      class DescribeDnsLineListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDnsLineList返回参数结构体
      class DescribeDnsLineListResponse < TencentCloud::Common::AbstractModel
        # @param DnsLineSet: 地址池列表
        # @type DnsLineSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DnsLineSet, :RequestId

        def initialize(dnslineset=nil, requestid=nil)
          @DnsLineSet = dnslineset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DnsLineSet'].nil?
            @DnsLineSet = []
            params['DnsLineSet'].each do |i|
              groupline_tmp = GroupLine.new
              groupline_tmp.deserialize(i)
              @DnsLineSet << groupline_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceDetail请求参数结构体
      class DescribeInstanceDetailRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInstanceDetail返回参数结构体
      class DescribeInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param Instance: 实例详情
        # @type Instance: :class:`Tencentcloud::Igtm.v20231024.models.InstanceDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instance, :RequestId

        def initialize(instance=nil, requestid=nil)
          @Instance = instance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instance'].nil?
            @Instance = InstanceDetail.new
            @Instance.deserialize(params['Instance'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceList请求参数结构体
      class DescribeInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页数
        # @type Limit: Integer
        # @param Filters: Name: "实例名称" 模糊查询Domain: "域名" 模糊查询MonitorId: "监控器 id" PoolId: "地址池id", AccessDomain接入主域名
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              resourcefilter_tmp = ResourceFilter.new
              resourcefilter_tmp.deserialize(i)
              @Filters << resourcefilter_tmp
            end
          end
        end
      end

      # DescribeInstanceList返回参数结构体
      class DescribeInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 实例列表
        # @type InstanceSet: Array
        # @param TotalCount: 列表总数
        # @type TotalCount: Integer
        # @param SystemAccessEnabled: 是否支持系统域名接入：true支持；false不支持
        # @type SystemAccessEnabled: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :TotalCount, :SystemAccessEnabled, :RequestId

        def initialize(instanceset=nil, totalcount=nil, systemaccessenabled=nil, requestid=nil)
          @InstanceSet = instanceset
          @TotalCount = totalcount
          @SystemAccessEnabled = systemaccessenabled
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceSet << instance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @SystemAccessEnabled = params['SystemAccessEnabled']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancePackageList请求参数结构体
      class DescribeInstancePackageListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Filters: InstanceId实例Id，InstanceName实例名称，ResourceId套餐Id，PackageType套餐类型
        # @type Filters: Array
        # @param IsUsed: 是否使用：0未使用1已使用
        # @type IsUsed: Integer

        attr_accessor :Limit, :Filters, :IsUsed

        def initialize(limit=nil, filters=nil, isused=nil)
          @Limit = limit
          @Filters = filters
          @IsUsed = isused
        end

        def deserialize(params)
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              resourcefilter_tmp = ResourceFilter.new
              resourcefilter_tmp.deserialize(i)
              @Filters << resourcefilter_tmp
            end
          end
          @IsUsed = params['IsUsed']
        end
      end

      # DescribeInstancePackageList返回参数结构体
      class DescribeInstancePackageListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param InstanceSet: 实例套餐列表
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :RequestId

        def initialize(totalcount=nil, instanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instancepackage_tmp = InstancePackage.new
              instancepackage_tmp.deserialize(i)
              @InstanceSet << instancepackage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMonitorDetail请求参数结构体
      class DescribeMonitorDetailRequest < TencentCloud::Common::AbstractModel
        # @param MonitorId: 监控器id
        # @type MonitorId: Integer

        attr_accessor :MonitorId

        def initialize(monitorid=nil)
          @MonitorId = monitorid
        end

        def deserialize(params)
          @MonitorId = params['MonitorId']
        end
      end

      # DescribeMonitorDetail返回参数结构体
      class DescribeMonitorDetailResponse < TencentCloud::Common::AbstractModel
        # @param MonitorDetail: 探测规则
        # @type MonitorDetail: :class:`Tencentcloud::Igtm.v20231024.models.MonitorDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MonitorDetail, :RequestId

        def initialize(monitordetail=nil, requestid=nil)
          @MonitorDetail = monitordetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MonitorDetail'].nil?
            @MonitorDetail = MonitorDetail.new
            @MonitorDetail.deserialize(params['MonitorDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMonitors请求参数结构体
      class DescribeMonitorsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页，偏移值
        # @type Offset: Integer
        # @param Limit: 分页，当前分页记录数
        # @type Limit: Integer
        # @param IsDetectNum: 是否查探测次数0否1是
        # @type IsDetectNum: Integer

        attr_accessor :Offset, :Limit, :IsDetectNum

        def initialize(offset=nil, limit=nil, isdetectnum=nil)
          @Offset = offset
          @Limit = limit
          @IsDetectNum = isdetectnum
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IsDetectNum = params['IsDetectNum']
        end
      end

      # DescribeMonitors返回参数结构体
      class DescribeMonitorsResponse < TencentCloud::Common::AbstractModel
        # @param MonitorDataSet: 监控器列表
        # @type MonitorDataSet: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MonitorDataSet, :TotalCount, :RequestId

        def initialize(monitordataset=nil, totalcount=nil, requestid=nil)
          @MonitorDataSet = monitordataset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MonitorDataSet'].nil?
            @MonitorDataSet = []
            params['MonitorDataSet'].each do |i|
              monitordetail_tmp = MonitorDetail.new
              monitordetail_tmp.deserialize(i)
              @MonitorDataSet << monitordetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeQuotas请求参数结构体
      class DescribeQuotasRequest < TencentCloud::Common::AbstractModel
        # @param AccessDomain: 接入域名
        # @type AccessDomain: String

        attr_accessor :AccessDomain

        def initialize(accessdomain=nil)
          @AccessDomain = accessdomain
        end

        def deserialize(params)
          @AccessDomain = params['AccessDomain']
        end
      end

      # DescribeQuotas返回参数结构体
      class DescribeQuotasResponse < TencentCloud::Common::AbstractModel
        # @param Quotas: 配额id
        # @type Quotas: :class:`Tencentcloud::Igtm.v20231024.models.Quota`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Quotas, :RequestId

        def initialize(quotas=nil, requestid=nil)
          @Quotas = quotas
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Quotas'].nil?
            @Quotas = Quota.new
            @Quotas.deserialize(params['Quotas'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStrategyDetail请求参数结构体
      class DescribeStrategyDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param StrategyId: 策略 id
        # @type StrategyId: Integer

        attr_accessor :InstanceId, :StrategyId

        def initialize(instanceid=nil, strategyid=nil)
          @InstanceId = instanceid
          @StrategyId = strategyid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StrategyId = params['StrategyId']
        end
      end

      # DescribeStrategyDetail返回参数结构体
      class DescribeStrategyDetailResponse < TencentCloud::Common::AbstractModel
        # @param StrategyDetail: 策略详情
        # @type StrategyDetail: :class:`Tencentcloud::Igtm.v20231024.models.StrategyDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StrategyDetail, :RequestId

        def initialize(strategydetail=nil, requestid=nil)
          @StrategyDetail = strategydetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StrategyDetail'].nil?
            @StrategyDetail = StrategyDetail.new
            @StrategyDetail.deserialize(params['StrategyDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStrategyList请求参数结构体
      class DescribeStrategyListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 id
        # @type InstanceId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Filters: 策略过滤条件：StrategyName：策略名称
        # @type Filters: Array

        attr_accessor :InstanceId, :Offset, :Limit, :Filters

        def initialize(instanceid=nil, offset=nil, limit=nil, filters=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              resourcefilter_tmp = ResourceFilter.new
              resourcefilter_tmp.deserialize(i)
              @Filters << resourcefilter_tmp
            end
          end
        end
      end

      # DescribeStrategyList返回参数结构体
      class DescribeStrategyListResponse < TencentCloud::Common::AbstractModel
        # @param StrategySet: 策略列表
        # @type StrategySet: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StrategySet, :TotalCount, :RequestId

        def initialize(strategyset=nil, totalcount=nil, requestid=nil)
          @StrategySet = strategyset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StrategySet'].nil?
            @StrategySet = []
            params['StrategySet'].each do |i|
              strategy_tmp = Strategy.new
              strategy_tmp.deserialize(i)
              @StrategySet << strategy_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 探测任务套餐
      class DetectTaskPackage < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # TASK 探测任务
        # @type ResourceType: String
        # @param Quota: 额度
        # @type Quota: Integer
        # @param CurrentDeadline: 套餐过期时间
        # @type CurrentDeadline: String
        # @param CreateTime: 套餐创建时间
        # @type CreateTime: String
        # @param IsExpire: 是否过期0否1是
        # @type IsExpire: Integer
        # @param Status: 状态
        # ENABLED: 正常
        # ISOLATED: 隔离
        # DESTROYED：销毁
        # REFUNDED：已退款
        # @type Status: String
        # @param AutoRenewFlag: 是否自动续费0不1是
        # @type AutoRenewFlag: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param CostItemList: 计费项
        # @type CostItemList: Array
        # @param Group: 探测任务类型：100系统设定；200计费；300管理系统；110D监控迁移的免费任务；120容灾切换任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Group: Integer

        attr_accessor :ResourceId, :ResourceType, :Quota, :CurrentDeadline, :CreateTime, :IsExpire, :Status, :AutoRenewFlag, :Remark, :CostItemList, :Group

        def initialize(resourceid=nil, resourcetype=nil, quota=nil, currentdeadline=nil, createtime=nil, isexpire=nil, status=nil, autorenewflag=nil, remark=nil, costitemlist=nil, group=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @Quota = quota
          @CurrentDeadline = currentdeadline
          @CreateTime = createtime
          @IsExpire = isexpire
          @Status = status
          @AutoRenewFlag = autorenewflag
          @Remark = remark
          @CostItemList = costitemlist
          @Group = group
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @Quota = params['Quota']
          @CurrentDeadline = params['CurrentDeadline']
          @CreateTime = params['CreateTime']
          @IsExpire = params['IsExpire']
          @Status = params['Status']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Remark = params['Remark']
          unless params['CostItemList'].nil?
            @CostItemList = []
            params['CostItemList'].each do |i|
              costitem_tmp = CostItem.new
              costitem_tmp.deserialize(i)
              @CostItemList << costitem_tmp
            end
          end
          @Group = params['Group']
        end
      end

      # 探测组
      class DetectorGroup < TencentCloud::Common::AbstractModel
        # @param Gid: 线路组id GroupLineId
        # @type Gid: Integer
        # @param GroupType: bgp, international, isp
        # @type GroupType: String
        # @param GroupName: 组名
        # @type GroupName: String
        # @param InternetFamily: ipv4, ipv6
        # @type InternetFamily: String
        # @param PackageSet: 支持的套餐类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageSet: Array

        attr_accessor :Gid, :GroupType, :GroupName, :InternetFamily, :PackageSet

        def initialize(gid=nil, grouptype=nil, groupname=nil, internetfamily=nil, packageset=nil)
          @Gid = gid
          @GroupType = grouptype
          @GroupName = groupname
          @InternetFamily = internetfamily
          @PackageSet = packageset
        end

        def deserialize(params)
          @Gid = params['Gid']
          @GroupType = params['GroupType']
          @GroupName = params['GroupName']
          @InternetFamily = params['InternetFamily']
          @PackageSet = params['PackageSet']
        end
      end

      # 线路列表
      class GroupLine < TencentCloud::Common::AbstractModel
        # @param DnsLineId: 分组线路id
        # @type DnsLineId: Integer
        # @param Parent: 父节点 0为根节点
        # @type Parent: Integer
        # @param LineName: 线路名
        # @type LineName: String
        # @param LineId: 10=9 DNSPod 线路 id
        # @type LineId: String
        # @param Useful: 是否已使用过
        # @type Useful: Boolean
        # @param SubGroup: 0为未使用
        # @type SubGroup: Integer
        # @param LinePackage: 权限标识
        # @type LinePackage: Integer
        # @param Weight: 1
        # @type Weight: Integer

        attr_accessor :DnsLineId, :Parent, :LineName, :LineId, :Useful, :SubGroup, :LinePackage, :Weight

        def initialize(dnslineid=nil, parent=nil, linename=nil, lineid=nil, useful=nil, subgroup=nil, linepackage=nil, weight=nil)
          @DnsLineId = dnslineid
          @Parent = parent
          @LineName = linename
          @LineId = lineid
          @Useful = useful
          @SubGroup = subgroup
          @LinePackage = linepackage
          @Weight = weight
        end

        def deserialize(params)
          @DnsLineId = params['DnsLineId']
          @Parent = params['Parent']
          @LineName = params['LineName']
          @LineId = params['LineId']
          @Useful = params['Useful']
          @SubGroup = params['SubGroup']
          @LinePackage = params['LinePackage']
          @Weight = params['Weight']
        end
      end

      # 返回实例
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param ResourceId: 资源 id
        # @type ResourceId: String
        # @param Domain: 业务域名
        # @type Domain: String
        # @param AccessType: Cname域名接入方式
        # CUSTOM: 自定义接入域名
        # SYSTEM: 系统接入域名
        # @type AccessType: String
        # @param AccessDomain: 接入域名
        # @type AccessDomain: String
        # @param AccessSubDomain: 接入子域名
        # @type AccessSubDomain: String
        # @param GlobalTtl: 全局记录过期时间
        # @type GlobalTtl: Integer
        # @param PackageType: 套餐类型
        # FREE: 免费版
        # STANDARD：标准版
        # ULTIMATE：旗舰版
        # @type PackageType: String
        # @param WorkingStatus: 实例运行状态
        # NORMAL: 健康
        # FAULTY: 有风险
        # DOWN: 宕机
        # UNKNOWN: 未知
        # @type WorkingStatus: String
        # @param Status: 实例状态，ENABLED: 正常，DISABLED: 禁用
        # @type Status: String
        # @param IsCnameConfigured: 是否cname接入：true已接入；false未接入
        # @type IsCnameConfigured: Boolean
        # @param Remark: 备注
        # @type Remark: String
        # @param StrategyNum: 策略数量
        # @type StrategyNum: Integer
        # @param AddressPoolNum: 绑定地址池个数
        # @type AddressPoolNum: Integer
        # @param MonitorNum: 绑定监控器数量
        # @type MonitorNum: Integer
        # @param PoolId: 地址池id
        # @type PoolId: Integer
        # @param PoolName: 地址池名称
        # @type PoolName: String
        # @param CreatedOn: 实例创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 实例更新时间
        # @type UpdatedOn: String

        attr_accessor :InstanceId, :InstanceName, :ResourceId, :Domain, :AccessType, :AccessDomain, :AccessSubDomain, :GlobalTtl, :PackageType, :WorkingStatus, :Status, :IsCnameConfigured, :Remark, :StrategyNum, :AddressPoolNum, :MonitorNum, :PoolId, :PoolName, :CreatedOn, :UpdatedOn

        def initialize(instanceid=nil, instancename=nil, resourceid=nil, domain=nil, accesstype=nil, accessdomain=nil, accesssubdomain=nil, globalttl=nil, packagetype=nil, workingstatus=nil, status=nil, iscnameconfigured=nil, remark=nil, strategynum=nil, addresspoolnum=nil, monitornum=nil, poolid=nil, poolname=nil, createdon=nil, updatedon=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @ResourceId = resourceid
          @Domain = domain
          @AccessType = accesstype
          @AccessDomain = accessdomain
          @AccessSubDomain = accesssubdomain
          @GlobalTtl = globalttl
          @PackageType = packagetype
          @WorkingStatus = workingstatus
          @Status = status
          @IsCnameConfigured = iscnameconfigured
          @Remark = remark
          @StrategyNum = strategynum
          @AddressPoolNum = addresspoolnum
          @MonitorNum = monitornum
          @PoolId = poolid
          @PoolName = poolname
          @CreatedOn = createdon
          @UpdatedOn = updatedon
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ResourceId = params['ResourceId']
          @Domain = params['Domain']
          @AccessType = params['AccessType']
          @AccessDomain = params['AccessDomain']
          @AccessSubDomain = params['AccessSubDomain']
          @GlobalTtl = params['GlobalTtl']
          @PackageType = params['PackageType']
          @WorkingStatus = params['WorkingStatus']
          @Status = params['Status']
          @IsCnameConfigured = params['IsCnameConfigured']
          @Remark = params['Remark']
          @StrategyNum = params['StrategyNum']
          @AddressPoolNum = params['AddressPoolNum']
          @MonitorNum = params['MonitorNum']
          @PoolId = params['PoolId']
          @PoolName = params['PoolName']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
        end
      end

      # 实例配置详情
      class InstanceConfig < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Domain: 业务域名
        # @type Domain: String
        # @param AccessType: CUSTOM: 自定义接入域名，SYSTEM: 系统接入域名
        # @type AccessType: String
        # @param Remark: 备注
        # @type Remark: String
        # @param GlobalTtl: 全局记录过期时间
        # @type GlobalTtl: Integer
        # @param AccessDomain: 接入主域名
        # @type AccessDomain: String
        # @param AccessSubDomain: 接入子域名
        # @type AccessSubDomain: String

        attr_accessor :InstanceName, :Domain, :AccessType, :Remark, :GlobalTtl, :AccessDomain, :AccessSubDomain

        def initialize(instancename=nil, domain=nil, accesstype=nil, remark=nil, globalttl=nil, accessdomain=nil, accesssubdomain=nil)
          @InstanceName = instancename
          @Domain = domain
          @AccessType = accesstype
          @Remark = remark
          @GlobalTtl = globalttl
          @AccessDomain = accessdomain
          @AccessSubDomain = accesssubdomain
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @Domain = params['Domain']
          @AccessType = params['AccessType']
          @Remark = params['Remark']
          @GlobalTtl = params['GlobalTtl']
          @AccessDomain = params['AccessDomain']
          @AccessSubDomain = params['AccessSubDomain']
        end
      end

      # 返回实例
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param Domain: 业务域名
        # @type Domain: String
        # @param AccessType: Cname域名接入方式
        # CUSTOM: 自定义接入域名
        # SYSTEM: 系统接入域名
        # @type AccessType: String
        # @param AccessSubDomain: 接入子域名
        # @type AccessSubDomain: String
        # @param AccessDomain: 接入域名
        # @type AccessDomain: String
        # @param GlobalTtl: 解析生效时间
        # @type GlobalTtl: Integer
        # @param PackageType: 套餐类型
        # FREE: 免费版
        # STANDARD：标准版
        # ULTIMATE：旗舰版
        # @type PackageType: String
        # @param WorkingStatus: 实例运行状态
        # NORMAL: 健康
        # FAULTY: 有风险
        # DOWN: 宕机
        # UNKNOWN: 未知
        # @type WorkingStatus: String
        # @param Status: 实例状态，ENABLED: 正常；DISABLED: 禁用
        # @type Status: String
        # @param IsCnameConfigured: cname是否接入：true已接入；false未接入
        # @type IsCnameConfigured: Boolean
        # @param Remark: 备注
        # @type Remark: String
        # @param StrategyNum: 策略数量
        # @type StrategyNum: Integer
        # @param AddressPoolNum: 绑定地址池个数
        # @type AddressPoolNum: Integer
        # @param MonitorNum: 绑定监控器数量
        # @type MonitorNum: Integer
        # @param ResourceId: 实例绑定套餐资源id
        # @type ResourceId: String
        # @param NotifyEventSet: 订阅事件列表
        # @type NotifyEventSet: Array
        # @param CreatedOn: 实例创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 实例更新时间
        # @type UpdatedOn: String

        attr_accessor :InstanceId, :InstanceName, :Domain, :AccessType, :AccessSubDomain, :AccessDomain, :GlobalTtl, :PackageType, :WorkingStatus, :Status, :IsCnameConfigured, :Remark, :StrategyNum, :AddressPoolNum, :MonitorNum, :ResourceId, :NotifyEventSet, :CreatedOn, :UpdatedOn

        def initialize(instanceid=nil, instancename=nil, domain=nil, accesstype=nil, accesssubdomain=nil, accessdomain=nil, globalttl=nil, packagetype=nil, workingstatus=nil, status=nil, iscnameconfigured=nil, remark=nil, strategynum=nil, addresspoolnum=nil, monitornum=nil, resourceid=nil, notifyeventset=nil, createdon=nil, updatedon=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Domain = domain
          @AccessType = accesstype
          @AccessSubDomain = accesssubdomain
          @AccessDomain = accessdomain
          @GlobalTtl = globalttl
          @PackageType = packagetype
          @WorkingStatus = workingstatus
          @Status = status
          @IsCnameConfigured = iscnameconfigured
          @Remark = remark
          @StrategyNum = strategynum
          @AddressPoolNum = addresspoolnum
          @MonitorNum = monitornum
          @ResourceId = resourceid
          @NotifyEventSet = notifyeventset
          @CreatedOn = createdon
          @UpdatedOn = updatedon
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Domain = params['Domain']
          @AccessType = params['AccessType']
          @AccessSubDomain = params['AccessSubDomain']
          @AccessDomain = params['AccessDomain']
          @GlobalTtl = params['GlobalTtl']
          @PackageType = params['PackageType']
          @WorkingStatus = params['WorkingStatus']
          @Status = params['Status']
          @IsCnameConfigured = params['IsCnameConfigured']
          @Remark = params['Remark']
          @StrategyNum = params['StrategyNum']
          @AddressPoolNum = params['AddressPoolNum']
          @MonitorNum = params['MonitorNum']
          @ResourceId = params['ResourceId']
          @NotifyEventSet = params['NotifyEventSet']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
        end
      end

      # 实例相关信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String

        attr_accessor :InstanceId, :InstanceName

        def initialize(instanceid=nil, instancename=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # 实例套餐
      class InstancePackage < TencentCloud::Common::AbstractModel
        # @param ResourceId: 实例套餐资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param PackageType: 套餐类型
        # FREE: 免费版
        # STANDARD：标准版
        # ULTIMATE：旗舰版
        # @type PackageType: String
        # @param CurrentDeadline: 套餐过期时间
        # @type CurrentDeadline: String
        # @param CreateTime: 套餐创建时间
        # @type CreateTime: String
        # @param IsExpire: 是否过期0否1是
        # @type IsExpire: Integer
        # @param Status: 实例状态
        # ENABLED: 正常
        # DISABLED: 禁用
        # @type Status: String
        # @param AutoRenewFlag: 是否自动续费0不1是
        # @type AutoRenewFlag: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param CostItemList: 计费项
        # @type CostItemList: Array
        # @param MinCheckInterval: 最小检查间隔时间s
        # @type MinCheckInterval: Integer
        # @param MinGlobalTtl: 最小TTL s
        # @type MinGlobalTtl: Integer
        # @param TrafficStrategy: 流量策略类型：ALL返回全部，WEIGHT权重
        # @type TrafficStrategy: Array
        # @param ScheduleStrategy: 策略类型：LOCATION按地理位置调度，DELAY按延迟调度
        # @type ScheduleStrategy: Array

        attr_accessor :ResourceId, :InstanceId, :InstanceName, :PackageType, :CurrentDeadline, :CreateTime, :IsExpire, :Status, :AutoRenewFlag, :Remark, :CostItemList, :MinCheckInterval, :MinGlobalTtl, :TrafficStrategy, :ScheduleStrategy

        def initialize(resourceid=nil, instanceid=nil, instancename=nil, packagetype=nil, currentdeadline=nil, createtime=nil, isexpire=nil, status=nil, autorenewflag=nil, remark=nil, costitemlist=nil, mincheckinterval=nil, minglobalttl=nil, trafficstrategy=nil, schedulestrategy=nil)
          @ResourceId = resourceid
          @InstanceId = instanceid
          @InstanceName = instancename
          @PackageType = packagetype
          @CurrentDeadline = currentdeadline
          @CreateTime = createtime
          @IsExpire = isexpire
          @Status = status
          @AutoRenewFlag = autorenewflag
          @Remark = remark
          @CostItemList = costitemlist
          @MinCheckInterval = mincheckinterval
          @MinGlobalTtl = minglobalttl
          @TrafficStrategy = trafficstrategy
          @ScheduleStrategy = schedulestrategy
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @PackageType = params['PackageType']
          @CurrentDeadline = params['CurrentDeadline']
          @CreateTime = params['CreateTime']
          @IsExpire = params['IsExpire']
          @Status = params['Status']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Remark = params['Remark']
          unless params['CostItemList'].nil?
            @CostItemList = []
            params['CostItemList'].each do |i|
              costitem_tmp = CostItem.new
              costitem_tmp.deserialize(i)
              @CostItemList << costitem_tmp
            end
          end
          @MinCheckInterval = params['MinCheckInterval']
          @MinGlobalTtl = params['MinGlobalTtl']
          @TrafficStrategy = params['TrafficStrategy']
          @ScheduleStrategy = params['ScheduleStrategy']
        end
      end

      # 主力地址池
      class MainAddressPool < TencentCloud::Common::AbstractModel
        # @param AddressPools: 集合中的地址池id与权重，数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressPools: Array
        # @param MainAddressPoolId: 地址池集合id
        # @type MainAddressPoolId: Integer
        # @param MinSurviveNum: 切换阀值，不能大于主力集合内地址总数
        # @type MinSurviveNum: Integer
        # @param TrafficStrategy: 切换策略:ALL解析所有地址；WEIGHT：负载均衡。当为ALL时，解析地址的权重值为1；当为WEIGHT时；权重为地址池权重*地址权重
        # @type TrafficStrategy: String

        attr_accessor :AddressPools, :MainAddressPoolId, :MinSurviveNum, :TrafficStrategy

        def initialize(addresspools=nil, mainaddresspoolid=nil, minsurvivenum=nil, trafficstrategy=nil)
          @AddressPools = addresspools
          @MainAddressPoolId = mainaddresspoolid
          @MinSurviveNum = minsurvivenum
          @TrafficStrategy = trafficstrategy
        end

        def deserialize(params)
          unless params['AddressPools'].nil?
            @AddressPools = []
            params['AddressPools'].each do |i|
              mainpoolweight_tmp = MainPoolWeight.new
              mainpoolweight_tmp.deserialize(i)
              @AddressPools << mainpoolweight_tmp
            end
          end
          @MainAddressPoolId = params['MainAddressPoolId']
          @MinSurviveNum = params['MinSurviveNum']
          @TrafficStrategy = params['TrafficStrategy']
        end
      end

      # 主力地址池id与权重
      class MainPoolWeight < TencentCloud::Common::AbstractModel
        # @param PoolId: 地址池id
        # @type PoolId: Integer
        # @param Weight: 权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer

        attr_accessor :PoolId, :Weight

        def initialize(poolid=nil, weight=nil)
          @PoolId = poolid
          @Weight = weight
        end

        def deserialize(params)
          @PoolId = params['PoolId']
          @Weight = params['Weight']
        end
      end

      # ModifyAddressPool请求参数结构体
      class ModifyAddressPoolRequest < TencentCloud::Common::AbstractModel
        # @param PoolId: 地址池id
        # @type PoolId: Integer
        # @param PoolName: 地址池名称，不允许重复
        # @type PoolName: String
        # @param TrafficStrategy: 流量策略: WEIGHT负载均衡，ALL解析全部
        # @type TrafficStrategy: String
        # @param MonitorId: 监控器id
        # @type MonitorId: Integer
        # @param AddressSet: 地址列表
        # @type AddressSet: Array

        attr_accessor :PoolId, :PoolName, :TrafficStrategy, :MonitorId, :AddressSet

        def initialize(poolid=nil, poolname=nil, trafficstrategy=nil, monitorid=nil, addressset=nil)
          @PoolId = poolid
          @PoolName = poolname
          @TrafficStrategy = trafficstrategy
          @MonitorId = monitorid
          @AddressSet = addressset
        end

        def deserialize(params)
          @PoolId = params['PoolId']
          @PoolName = params['PoolName']
          @TrafficStrategy = params['TrafficStrategy']
          @MonitorId = params['MonitorId']
          unless params['AddressSet'].nil?
            @AddressSet = []
            params['AddressSet'].each do |i|
              address_tmp = Address.new
              address_tmp.deserialize(i)
              @AddressSet << address_tmp
            end
          end
        end
      end

      # ModifyAddressPool返回参数结构体
      class ModifyAddressPoolResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 是否修改成功
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceConfig请求参数结构体
      class ModifyInstanceConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceConfig: 实例配置详情
        # @type InstanceConfig: :class:`Tencentcloud::Igtm.v20231024.models.InstanceConfig`

        attr_accessor :InstanceConfig

        def initialize(instanceconfig=nil)
          @InstanceConfig = instanceconfig
        end

        def deserialize(params)
          unless params['InstanceConfig'].nil?
            @InstanceConfig = InstanceConfig.new
            @InstanceConfig.deserialize(params['InstanceConfig'])
          end
        end
      end

      # ModifyInstanceConfig返回参数结构体
      class ModifyInstanceConfigResponse < TencentCloud::Common::AbstractModel
        # @param Instance: 实例详情
        # @type Instance: :class:`Tencentcloud::Igtm.v20231024.models.InstanceDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instance, :RequestId

        def initialize(instance=nil, requestid=nil)
          @Instance = instance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instance'].nil?
            @Instance = InstanceDetail.new
            @Instance.deserialize(params['Instance'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyMonitor请求参数结构体
      class ModifyMonitorRequest < TencentCloud::Common::AbstractModel
        # @param MonitorId: 监控器id
        # @type MonitorId: Integer
        # @param MonitorName: 监控器名称
        # @type MonitorName: String
        # @param CheckProtocol: 检查协议，可选值 PING TCP HTTP HTTPS
        # @type CheckProtocol: String
        # @param CheckInterval: 检查间隔（秒），可选值 15 60 120 300
        # @type CheckInterval: Integer
        # @param Timeout: 超时时间，单位:秒，可选值 2  3  5  10
        # @type Timeout: Integer
        # @param FailTimes: 重试次数，可选值为 0，1，2
        # @type FailTimes: Integer
        # @param FailRate: 失败比例，可选值为 20 30 40 50 60 70 80 100，默认值为50
        # @type FailRate: Integer
        # @param DetectorStyle: 监控节点类型，可选值有AUTO INTERNAL OVERSEAS IPV6 ALL
        # @type DetectorStyle: String
        # @param DetectorGroupIds: 探测器组id列表
        # @type DetectorGroupIds: Array
        # @param PingNum: PING 包数目， 当CheckProtocol=ping时必填，可选值 20 50 100
        # @type PingNum: Integer
        # @param TcpPort: 检查端口，可选值为1-65535之间的整数
        # @type TcpPort: Integer
        # @param Host: Host 设置，默认为业务域名
        # @type Host: String
        # @param Path: URL 路径，默认为“/”
        # @type Path: String
        # @param ReturnCodeThreshold: 返回错误码阈值, 可选值为 400 和 500, 默认值500
        # @type ReturnCodeThreshold: Integer
        # @param EnableRedirect: 跟随 3XX 重定向 ，不开启为 DISABLED， 开启为 ENABLED，默认不开启
        # @type EnableRedirect: String
        # @param EnableSni: 启用 SNI，不开启为 DISABLED， 开启为 ENABLED，默认不开启
        # @type EnableSni: String
        # @param PacketLossRate: 丢包率告警阈值，当CheckProtocol=ping时必填，取值在10 30 50 80 90 100
        # @type PacketLossRate: Integer
        # @param ContinuePeriod: 持续周期数，可选值1-5
        # @type ContinuePeriod: Integer

        attr_accessor :MonitorId, :MonitorName, :CheckProtocol, :CheckInterval, :Timeout, :FailTimes, :FailRate, :DetectorStyle, :DetectorGroupIds, :PingNum, :TcpPort, :Host, :Path, :ReturnCodeThreshold, :EnableRedirect, :EnableSni, :PacketLossRate, :ContinuePeriod

        def initialize(monitorid=nil, monitorname=nil, checkprotocol=nil, checkinterval=nil, timeout=nil, failtimes=nil, failrate=nil, detectorstyle=nil, detectorgroupids=nil, pingnum=nil, tcpport=nil, host=nil, path=nil, returncodethreshold=nil, enableredirect=nil, enablesni=nil, packetlossrate=nil, continueperiod=nil)
          @MonitorId = monitorid
          @MonitorName = monitorname
          @CheckProtocol = checkprotocol
          @CheckInterval = checkinterval
          @Timeout = timeout
          @FailTimes = failtimes
          @FailRate = failrate
          @DetectorStyle = detectorstyle
          @DetectorGroupIds = detectorgroupids
          @PingNum = pingnum
          @TcpPort = tcpport
          @Host = host
          @Path = path
          @ReturnCodeThreshold = returncodethreshold
          @EnableRedirect = enableredirect
          @EnableSni = enablesni
          @PacketLossRate = packetlossrate
          @ContinuePeriod = continueperiod
        end

        def deserialize(params)
          @MonitorId = params['MonitorId']
          @MonitorName = params['MonitorName']
          @CheckProtocol = params['CheckProtocol']
          @CheckInterval = params['CheckInterval']
          @Timeout = params['Timeout']
          @FailTimes = params['FailTimes']
          @FailRate = params['FailRate']
          @DetectorStyle = params['DetectorStyle']
          @DetectorGroupIds = params['DetectorGroupIds']
          @PingNum = params['PingNum']
          @TcpPort = params['TcpPort']
          @Host = params['Host']
          @Path = params['Path']
          @ReturnCodeThreshold = params['ReturnCodeThreshold']
          @EnableRedirect = params['EnableRedirect']
          @EnableSni = params['EnableSni']
          @PacketLossRate = params['PacketLossRate']
          @ContinuePeriod = params['ContinuePeriod']
        end
      end

      # ModifyMonitor返回参数结构体
      class ModifyMonitorResponse < TencentCloud::Common::AbstractModel
        # @param Msg: success 为修改成功
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyStrategy请求参数结构体
      class ModifyStrategyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param StrategyId: 策略id
        # @type StrategyId: Integer
        # @param Source: 解析线路，需要全量传参
        # @type Source: Array
        # @param MainAddressPoolSet: 主力地址池集合，需要全量传参
        # @type MainAddressPoolSet: Array
        # @param FallbackAddressPoolSet: 兜底地址池集合，需要全量传参
        # @type FallbackAddressPoolSet: Array
        # @param StrategyName: 策略名称，不允许重复
        # @type StrategyName: String
        # @param IsEnabled: 策略开启状态：ENABLED开启；DISABLED关闭
        # @type IsEnabled: String
        # @param KeepDomainRecords: 是否开启策略强制保留默认线路 disabled, enabled，默认不开启且只有一个策略能开启
        # @type KeepDomainRecords: String
        # @param SwitchPoolType: 调度模式：AUTO默认；STOP仅暂停不切换
        # @type SwitchPoolType: String

        attr_accessor :InstanceId, :StrategyId, :Source, :MainAddressPoolSet, :FallbackAddressPoolSet, :StrategyName, :IsEnabled, :KeepDomainRecords, :SwitchPoolType

        def initialize(instanceid=nil, strategyid=nil, source=nil, mainaddresspoolset=nil, fallbackaddresspoolset=nil, strategyname=nil, isenabled=nil, keepdomainrecords=nil, switchpooltype=nil)
          @InstanceId = instanceid
          @StrategyId = strategyid
          @Source = source
          @MainAddressPoolSet = mainaddresspoolset
          @FallbackAddressPoolSet = fallbackaddresspoolset
          @StrategyName = strategyname
          @IsEnabled = isenabled
          @KeepDomainRecords = keepdomainrecords
          @SwitchPoolType = switchpooltype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StrategyId = params['StrategyId']
          unless params['Source'].nil?
            @Source = []
            params['Source'].each do |i|
              source_tmp = Source.new
              source_tmp.deserialize(i)
              @Source << source_tmp
            end
          end
          unless params['MainAddressPoolSet'].nil?
            @MainAddressPoolSet = []
            params['MainAddressPoolSet'].each do |i|
              mainaddresspool_tmp = MainAddressPool.new
              mainaddresspool_tmp.deserialize(i)
              @MainAddressPoolSet << mainaddresspool_tmp
            end
          end
          unless params['FallbackAddressPoolSet'].nil?
            @FallbackAddressPoolSet = []
            params['FallbackAddressPoolSet'].each do |i|
              mainaddresspool_tmp = MainAddressPool.new
              mainaddresspool_tmp.deserialize(i)
              @FallbackAddressPoolSet << mainaddresspool_tmp
            end
          end
          @StrategyName = params['StrategyName']
          @IsEnabled = params['IsEnabled']
          @KeepDomainRecords = params['KeepDomainRecords']
          @SwitchPoolType = params['SwitchPoolType']
        end
      end

      # ModifyStrategy返回参数结构体
      class ModifyStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 是否成功
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 监控器详情
      class MonitorDetail < TencentCloud::Common::AbstractModel
        # @param MonitorId: 探测规则id
        # @type MonitorId: Integer
        # @param MonitorName: 监控器名称
        # @type MonitorName: String
        # @param Uin: 所属用户
        # @type Uin: String
        # @param DetectorGroupIds: 监控节点id组
        # @type DetectorGroupIds: Array
        # @param CheckProtocol: 探测协议 PING TCP HTTP HTTPS
        # @type CheckProtocol: String
        # @param CheckInterval: 探测周期
        # @type CheckInterval: Integer
        # @param PingNum: 发包数量
        # @type PingNum: Integer
        # @param TcpPort: tcp端口
        # @type TcpPort: Integer
        # @param Host: 探测 host
        # @type Host: String
        # @param Path: 探测路径
        # @type Path: String
        # @param ReturnCodeThreshold: 返回值阈值
        # @type ReturnCodeThreshold: Integer
        # @param EnableRedirect: 是否开启3xx重定向跟随 ENABLED DISABLED
        # @type EnableRedirect: String
        # @param EnableSni: 是否启用 sni
        # ENABLED DISABLED
        # @type EnableSni: String
        # @param PacketLossRate: 丢包率上限
        # @type PacketLossRate: Integer
        # @param Timeout: 探测超时
        # @type Timeout: Integer
        # @param FailTimes: 失败次数
        # @type FailTimes: Integer
        # @param FailRate: 失败率上限100
        # @type FailRate: Integer
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 更新时间
        # @type UpdatedOn: String
        # @param DetectorStyle: 监控节点类型
        # AUTO INTERNAL OVERSEAS IPV6 ALL
        # @type DetectorStyle: String
        # @param DetectNum: 探测次数
        # @type DetectNum: Integer
        # @param ContinuePeriod: 持续周期数
        # @type ContinuePeriod: Integer

        attr_accessor :MonitorId, :MonitorName, :Uin, :DetectorGroupIds, :CheckProtocol, :CheckInterval, :PingNum, :TcpPort, :Host, :Path, :ReturnCodeThreshold, :EnableRedirect, :EnableSni, :PacketLossRate, :Timeout, :FailTimes, :FailRate, :CreatedOn, :UpdatedOn, :DetectorStyle, :DetectNum, :ContinuePeriod

        def initialize(monitorid=nil, monitorname=nil, uin=nil, detectorgroupids=nil, checkprotocol=nil, checkinterval=nil, pingnum=nil, tcpport=nil, host=nil, path=nil, returncodethreshold=nil, enableredirect=nil, enablesni=nil, packetlossrate=nil, timeout=nil, failtimes=nil, failrate=nil, createdon=nil, updatedon=nil, detectorstyle=nil, detectnum=nil, continueperiod=nil)
          @MonitorId = monitorid
          @MonitorName = monitorname
          @Uin = uin
          @DetectorGroupIds = detectorgroupids
          @CheckProtocol = checkprotocol
          @CheckInterval = checkinterval
          @PingNum = pingnum
          @TcpPort = tcpport
          @Host = host
          @Path = path
          @ReturnCodeThreshold = returncodethreshold
          @EnableRedirect = enableredirect
          @EnableSni = enablesni
          @PacketLossRate = packetlossrate
          @Timeout = timeout
          @FailTimes = failtimes
          @FailRate = failrate
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @DetectorStyle = detectorstyle
          @DetectNum = detectnum
          @ContinuePeriod = continueperiod
        end

        def deserialize(params)
          @MonitorId = params['MonitorId']
          @MonitorName = params['MonitorName']
          @Uin = params['Uin']
          @DetectorGroupIds = params['DetectorGroupIds']
          @CheckProtocol = params['CheckProtocol']
          @CheckInterval = params['CheckInterval']
          @PingNum = params['PingNum']
          @TcpPort = params['TcpPort']
          @Host = params['Host']
          @Path = params['Path']
          @ReturnCodeThreshold = params['ReturnCodeThreshold']
          @EnableRedirect = params['EnableRedirect']
          @EnableSni = params['EnableSni']
          @PacketLossRate = params['PacketLossRate']
          @Timeout = params['Timeout']
          @FailTimes = params['FailTimes']
          @FailRate = params['FailRate']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @DetectorStyle = params['DetectorStyle']
          @DetectNum = params['DetectNum']
          @ContinuePeriod = params['ContinuePeriod']
        end
      end

      # 配额
      class Quota < TencentCloud::Common::AbstractModel
        # @param TaskQuota: 探测任务配额
        # @type TaskQuota: Integer
        # @param PoolQuota: 地址池配额
        # @type PoolQuota: Integer
        # @param AddressQuota: 地址配额
        # @type AddressQuota: Integer
        # @param MonitorQuota: 探点资源数
        # @type MonitorQuota: Integer
        # @param MessageQuota: 消息资源数
        # @type MessageQuota: Integer
        # @param UsedTaskQuota: 已使用探测任务数
        # @type UsedTaskQuota: Integer
        # @param UsedFreeInstanceNum: 已使用体验实例数
        # @type UsedFreeInstanceNum: Integer
        # @param UsedBillInstanceNum: 已使用付费实例
        # @type UsedBillInstanceNum: Integer
        # @param FreePackageNum: 体验套餐总数
        # @type FreePackageNum: Integer
        # @param UsedBillPackageNum: 已使用付费套餐数
        # @type UsedBillPackageNum: Integer
        # @param BillPackageNum: 付费套餐总数
        # @type BillPackageNum: Integer

        attr_accessor :TaskQuota, :PoolQuota, :AddressQuota, :MonitorQuota, :MessageQuota, :UsedTaskQuota, :UsedFreeInstanceNum, :UsedBillInstanceNum, :FreePackageNum, :UsedBillPackageNum, :BillPackageNum

        def initialize(taskquota=nil, poolquota=nil, addressquota=nil, monitorquota=nil, messagequota=nil, usedtaskquota=nil, usedfreeinstancenum=nil, usedbillinstancenum=nil, freepackagenum=nil, usedbillpackagenum=nil, billpackagenum=nil)
          @TaskQuota = taskquota
          @PoolQuota = poolquota
          @AddressQuota = addressquota
          @MonitorQuota = monitorquota
          @MessageQuota = messagequota
          @UsedTaskQuota = usedtaskquota
          @UsedFreeInstanceNum = usedfreeinstancenum
          @UsedBillInstanceNum = usedbillinstancenum
          @FreePackageNum = freepackagenum
          @UsedBillPackageNum = usedbillpackagenum
          @BillPackageNum = billpackagenum
        end

        def deserialize(params)
          @TaskQuota = params['TaskQuota']
          @PoolQuota = params['PoolQuota']
          @AddressQuota = params['AddressQuota']
          @MonitorQuota = params['MonitorQuota']
          @MessageQuota = params['MessageQuota']
          @UsedTaskQuota = params['UsedTaskQuota']
          @UsedFreeInstanceNum = params['UsedFreeInstanceNum']
          @UsedBillInstanceNum = params['UsedBillInstanceNum']
          @FreePackageNum = params['FreePackageNum']
          @UsedBillPackageNum = params['UsedBillPackageNum']
          @BillPackageNum = params['BillPackageNum']
        end
      end

      # 查询时过滤条件。
      class ResourceFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下：
        # - type：主资源类型，CDN。
        # - instanceId：IGTM实例ID。此为必传参数，未传将导致接口查询失败。
        # @type Name: String
        # @param Value: 过滤字段值。
        # @type Value: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名为domain。
        # 模糊查询时，Value长度最大为1，否则Value长度最大为5。(预留字段，暂未使用)
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Value, :Fuzzy

        def initialize(name=nil, value=nil, fuzzy=nil)
          @Name = name
          @Value = value
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Fuzzy = params['Fuzzy']
        end
      end

      # 解析线路
      class Source < TencentCloud::Common::AbstractModel
        # @param DnsLineId: 解析请求来源线路id
        # @type DnsLineId: Integer
        # @param Name: 解析请求来源线路名
        # @type Name: String

        attr_accessor :DnsLineId, :Name

        def initialize(dnslineid=nil, name=nil)
          @DnsLineId = dnslineid
          @Name = name
        end

        def deserialize(params)
          @DnsLineId = params['DnsLineId']
          @Name = params['Name']
        end
      end

      # 地址池
      class Strategy < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Name: 策略名
        # @type Name: String
        # @param Source: 地址来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Array
        # @param StrategyId: 策略id
        # @type StrategyId: Integer
        # @param Status: 健康状态：ok健康、warn风险、down故障
        # @type Status: String
        # @param ActivateMainPoolId: 生效的主力池id，null则为未知
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivateMainPoolId: Integer
        # @param ActivateLevel: 当前生效地址池所在级数，为0则代表兜底生效，null则为未知
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivateLevel: Integer
        # @param ActivePoolType: 当前生效地址池集合类型：main主力；fallback兜底
        # @type ActivePoolType: String
        # @param ActiveTrafficStrategy: 当前生效地址池流量策略：all解析所有；weight负载均衡
        # @type ActiveTrafficStrategy: String
        # @param MonitorNum: 监控器数量
        # @type MonitorNum: Integer
        # @param IsEnabled: 是否开启：ENABLED开启；DISABLED关闭
        # @type IsEnabled: String
        # @param KeepDomainRecords: 是否保留线路：enabled保留，disabled不保留，只保留默认线路
        # @type KeepDomainRecords: String
        # @param SwitchPoolType: 调度模式：AUTO默认；PAUSE仅暂停不切换
        # @type SwitchPoolType: String
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 更新时间
        # @type UpdatedOn: String

        attr_accessor :InstanceId, :Name, :Source, :StrategyId, :Status, :ActivateMainPoolId, :ActivateLevel, :ActivePoolType, :ActiveTrafficStrategy, :MonitorNum, :IsEnabled, :KeepDomainRecords, :SwitchPoolType, :CreatedOn, :UpdatedOn

        def initialize(instanceid=nil, name=nil, source=nil, strategyid=nil, status=nil, activatemainpoolid=nil, activatelevel=nil, activepooltype=nil, activetrafficstrategy=nil, monitornum=nil, isenabled=nil, keepdomainrecords=nil, switchpooltype=nil, createdon=nil, updatedon=nil)
          @InstanceId = instanceid
          @Name = name
          @Source = source
          @StrategyId = strategyid
          @Status = status
          @ActivateMainPoolId = activatemainpoolid
          @ActivateLevel = activatelevel
          @ActivePoolType = activepooltype
          @ActiveTrafficStrategy = activetrafficstrategy
          @MonitorNum = monitornum
          @IsEnabled = isenabled
          @KeepDomainRecords = keepdomainrecords
          @SwitchPoolType = switchpooltype
          @CreatedOn = createdon
          @UpdatedOn = updatedon
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          unless params['Source'].nil?
            @Source = []
            params['Source'].each do |i|
              source_tmp = Source.new
              source_tmp.deserialize(i)
              @Source << source_tmp
            end
          end
          @StrategyId = params['StrategyId']
          @Status = params['Status']
          @ActivateMainPoolId = params['ActivateMainPoolId']
          @ActivateLevel = params['ActivateLevel']
          @ActivePoolType = params['ActivePoolType']
          @ActiveTrafficStrategy = params['ActiveTrafficStrategy']
          @MonitorNum = params['MonitorNum']
          @IsEnabled = params['IsEnabled']
          @KeepDomainRecords = params['KeepDomainRecords']
          @SwitchPoolType = params['SwitchPoolType']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
        end
      end

      # 策略详情
      class StrategyDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param StrategyId: 策略id
        # @type StrategyId: Integer
        # @param Name: 策略名
        # @type Name: String
        # @param Source: 线路
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Array
        # @param MainAddressPoolSet: 主力地址池集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainAddressPoolSet: Array
        # @param FallbackAddressPoolSet: 兜底地址池id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FallbackAddressPoolSet: Array
        # @param KeepDomainRecords: 是否保留线路：enabled保留，disabled不保留，只保留默认线路
        # @type KeepDomainRecords: String
        # @param ActivateMainPoolId: 生效主力地址池id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivateMainPoolId: Integer
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 更新时间
        # @type UpdatedOn: String
        # @param SwitchPoolType: 调度模式：AUTO默认；PAUSE仅暂停不切换
        # @type SwitchPoolType: String

        attr_accessor :InstanceId, :StrategyId, :Name, :Source, :MainAddressPoolSet, :FallbackAddressPoolSet, :KeepDomainRecords, :ActivateMainPoolId, :CreatedOn, :UpdatedOn, :SwitchPoolType

        def initialize(instanceid=nil, strategyid=nil, name=nil, source=nil, mainaddresspoolset=nil, fallbackaddresspoolset=nil, keepdomainrecords=nil, activatemainpoolid=nil, createdon=nil, updatedon=nil, switchpooltype=nil)
          @InstanceId = instanceid
          @StrategyId = strategyid
          @Name = name
          @Source = source
          @MainAddressPoolSet = mainaddresspoolset
          @FallbackAddressPoolSet = fallbackaddresspoolset
          @KeepDomainRecords = keepdomainrecords
          @ActivateMainPoolId = activatemainpoolid
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @SwitchPoolType = switchpooltype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StrategyId = params['StrategyId']
          @Name = params['Name']
          unless params['Source'].nil?
            @Source = []
            params['Source'].each do |i|
              source_tmp = Source.new
              source_tmp.deserialize(i)
              @Source << source_tmp
            end
          end
          unless params['MainAddressPoolSet'].nil?
            @MainAddressPoolSet = []
            params['MainAddressPoolSet'].each do |i|
              mainaddresspool_tmp = MainAddressPool.new
              mainaddresspool_tmp.deserialize(i)
              @MainAddressPoolSet << mainaddresspool_tmp
            end
          end
          unless params['FallbackAddressPoolSet'].nil?
            @FallbackAddressPoolSet = []
            params['FallbackAddressPoolSet'].each do |i|
              mainaddresspool_tmp = MainAddressPool.new
              mainaddresspool_tmp.deserialize(i)
              @FallbackAddressPoolSet << mainaddresspool_tmp
            end
          end
          @KeepDomainRecords = params['KeepDomainRecords']
          @ActivateMainPoolId = params['ActivateMainPoolId']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @SwitchPoolType = params['SwitchPoolType']
        end
      end

    end
  end
end

