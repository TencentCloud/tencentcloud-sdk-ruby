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
  module Cloudhsm
    module V20191112
      # 告警策略
      class AlarmPolicy < TencentCloud::Common::AbstractModel
        # @param Uin: 用户账号
        # @type Uin: String
        # @param Event: 告警事件
        # @type Event: String
        # @param Limit: 告警阈值
        # @type Limit: Integer
        # @param Status: 告警策略是否生效，0：停用，1：启用
        # @type Status: Integer
        # @param BeginTime: 在这个时间后才允许发送告警
        # @type BeginTime: String
        # @param EndTime: 在这个时间前才允许发送告警
        # @type EndTime: String

        attr_accessor :Uin, :Event, :Limit, :Status, :BeginTime, :EndTime

        def initialize(uin=nil, event=nil, limit=nil, status=nil, begintime=nil, endtime=nil)
          @Uin = uin
          @Event = event
          @Limit = limit
          @Status = status
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Event = params['Event']
          @Limit = params['Limit']
          @Status = params['Status']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeHSMBySubnetId请求参数结构体
      class DescribeHSMBySubnetIdRequest < TencentCloud::Common::AbstractModel
        # @param SubnetId: Subnet标识符
        # @type SubnetId: String

        attr_accessor :SubnetId

        def initialize(subnetid=nil)
          @SubnetId = subnetid
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
        end
      end

      # DescribeHSMBySubnetId返回参数结构体
      class DescribeHSMBySubnetIdResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: HSM数量
        # @type TotalCount: Integer
        # @param SubnetId: 作为查询条件的SubnetId
        # @type SubnetId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SubnetId, :RequestId

        def initialize(totalcount=nil, subnetid=nil, requestid=nil)
          @TotalCount = totalcount
          @SubnetId = subnetid
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SubnetId = params['SubnetId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHSMByVpcId请求参数结构体
      class DescribeHSMByVpcIdRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC标识符
        # @type VpcId: String

        attr_accessor :VpcId

        def initialize(vpcid=nil)
          @VpcId = vpcid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
        end
      end

      # DescribeHSMByVpcId返回参数结构体
      class DescribeHSMByVpcIdResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: HSM数量
        # @type TotalCount: Integer
        # @param VpcId: 作为查询条件的VpcId
        # @type VpcId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpcId, :RequestId

        def initialize(totalcount=nil, vpcid=nil, requestid=nil)
          @TotalCount = totalcount
          @VpcId = vpcid
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @VpcId = params['VpcId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubnet请求参数结构体
      class DescribeSubnetRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量。Limit需要在[1, 100]之间。
        # @type Limit: Integer
        # @param Offset: 偏移量。偏移量最小为0。
        # @type Offset: Integer
        # @param VpcId: 查询指定VpcId下的子网信息。
        # @type VpcId: String
        # @param SearchWord: 过滤条件
        # @type SearchWord: String

        attr_accessor :Limit, :Offset, :VpcId, :SearchWord

        def initialize(limit=nil, offset=nil, vpcid=nil, searchword=nil)
          @Limit = limit
          @Offset = offset
          @VpcId = vpcid
          @SearchWord = searchword
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @VpcId = params['VpcId']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribeSubnet返回参数结构体
      class DescribeSubnetResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的子网数量。
        # @type TotalCount: Integer
        # @param SubnetList: 返回的子网实例列表。
        # @type SubnetList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SubnetList, :RequestId

        def initialize(totalcount=nil, subnetlist=nil, requestid=nil)
          @TotalCount = totalcount
          @SubnetList = subnetlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SubnetList'].nil?
            @SubnetList = []
            params['SubnetList'].each do |i|
              subnet_tmp = Subnet.new
              subnet_tmp.deserialize(i)
              @SubnetList << subnet_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSupportedHsm请求参数结构体
      class DescribeSupportedHsmRequest < TencentCloud::Common::AbstractModel
        # @param HsmType: Hsm类型，可选值all、virtulization、GHSM、EHSM、SHSM
        # @type HsmType: String

        attr_accessor :HsmType

        def initialize(hsmtype=nil)
          @HsmType = hsmtype
        end

        def deserialize(params)
          @HsmType = params['HsmType']
        end
      end

      # DescribeSupportedHsm返回参数结构体
      class DescribeSupportedHsmResponse < TencentCloud::Common::AbstractModel
        # @param DeviceTypes: 当前地域所支持的设备列表
        # @type DeviceTypes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceTypes, :RequestId

        def initialize(devicetypes=nil, requestid=nil)
          @DeviceTypes = devicetypes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceTypes'].nil?
            @DeviceTypes = []
            params['DeviceTypes'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @DeviceTypes << deviceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsg请求参数结构体
      class DescribeUsgRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，当Offset和Limit均为0时将一次性返回用户所有的安全组列表。
        # @type Offset: Integer
        # @param Limit: 返回量，当Offset和Limit均为0时将一次性返回用户所有的安全组列表。
        # @type Limit: Integer
        # @param SearchWord: 过滤条件，支持安全组id
        # @type SearchWord: String

        attr_accessor :Offset, :Limit, :SearchWord

        def initialize(offset=nil, limit=nil, searchword=nil)
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribeUsg返回参数结构体
      class DescribeUsgResponse < TencentCloud::Common::AbstractModel
        # @param SgList: 用户的安全组列表
        # @type SgList: Array
        # @param TotalCount: 返回的安全组数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SgList, :TotalCount, :RequestId

        def initialize(sglist=nil, totalcount=nil, requestid=nil)
          @SgList = sglist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SgList'].nil?
            @SgList = []
            params['SgList'].each do |i|
              sgunit_tmp = SgUnit.new
              sgunit_tmp.deserialize(i)
              @SgList << sgunit_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsgRule请求参数结构体
      class DescribeUsgRuleRequest < TencentCloud::Common::AbstractModel
        # @param SgIds: 安全组Id列表
        # @type SgIds: Array

        attr_accessor :SgIds

        def initialize(sgids=nil)
          @SgIds = sgids
        end

        def deserialize(params)
          @SgIds = params['SgIds']
        end
      end

      # DescribeUsgRule返回参数结构体
      class DescribeUsgRuleResponse < TencentCloud::Common::AbstractModel
        # @param SgRules: 安全组详情
        # @type SgRules: Array
        # @param TotalCount: 安全组详情数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SgRules, :TotalCount, :RequestId

        def initialize(sgrules=nil, totalcount=nil, requestid=nil)
          @SgRules = sgrules
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SgRules'].nil?
            @SgRules = []
            params['SgRules'].each do |i|
              usgruledetail_tmp = UsgRuleDetail.new
              usgruledetail_tmp.deserialize(i)
              @SgRules << usgruledetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpc请求参数结构体
      class DescribeVpcRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 返回偏移量。Offset最小为0。
        # @type Offset: Integer
        # @param Limit: 返回数量。Limit需要在[1, 100]之间。
        # @type Limit: Integer
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String

        attr_accessor :Offset, :Limit, :SearchWord

        def initialize(offset=nil, limit=nil, searchword=nil)
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribeVpc返回参数结构体
      class DescribeVpcResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可查询到的所有Vpc实例总数。
        # @type TotalCount: Integer
        # @param VpcList: Vpc对象列表
        # @type VpcList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpcList, :RequestId

        def initialize(totalcount=nil, vpclist=nil, requestid=nil)
          @TotalCount = totalcount
          @VpcList = vpclist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              vpc_tmp = Vpc.new
              vpc_tmp.deserialize(i)
              @VpcList << vpc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVsmAttributes请求参数结构体
      class DescribeVsmAttributesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源Id
        # @type ResourceId: String

        attr_accessor :ResourceId

        def initialize(resourceid=nil)
          @ResourceId = resourceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
        end
      end

      # DescribeVsmAttributes返回参数结构体
      class DescribeVsmAttributesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源Id
        # @type ResourceId: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param Status: 资源状态，1表示资源为正常，2表示资源处于隔离状态
        # @type Status: Integer
        # @param Vip: 资源IP
        # @type Vip: String
        # @param VpcId: 资源所属Vpc
        # @type VpcId: String
        # @param SubnetId: 资源所属子网
        # @type SubnetId: String
        # @param Model: 资源所属HSM的规格
        # @type Model: String
        # @param VsmType: 资源类型，17表示EVSM，33表示GVSM，49表示SVSM
        # @type VsmType: Integer
        # @param RegionId: 地域Id，返回腾讯云地域代码，如广州为1，北京为8
        # @type RegionId: Integer
        # @param ZoneId: 区域Id，返回腾讯云每个地域的可用区代码
        # @type ZoneId: Integer
        # @param ExpireTime: 资源过期时间，以时间戳形式展示。
        # @type ExpireTime: Integer
        # @param SgList: 安全组详情信息,如果未配置字段返回null
        # @type SgList: Array
        # @param SubnetName: 子网名
        # @type SubnetName: String
        # @param RegionName: 地域名
        # @type RegionName: String
        # @param ZoneName: 区域名
        # @type ZoneName: String
        # @param Expired: 实例是否已经过期
        # @type Expired: Boolean
        # @param RemainSeconds: 为正数表示实例距离过期时间剩余秒数，为负数表示实例已经过期多少秒
        # @type RemainSeconds: Integer
        # @param VpcName: 私有虚拟网络名称
        # @type VpcName: String
        # @param VpcCidrBlock: VPC的IPv4 CIDR
        # @type VpcCidrBlock: String
        # @param SubnetCidrBlock: 子网的CIDR
        # @type SubnetCidrBlock: String
        # @param Tags: 资源所关联的标签Tag
        # @type Tags: Array
        # @param RenewFlag: 资源续费标识，0表示默认状态(用户未设置，即初始状态)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # @type RenewFlag: Integer
        # @param Manufacturer: 厂商
        # @type Manufacturer: String
        # @param PqcFlag: 0-关闭，1-开启
        # @type PqcFlag: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :ResourceName, :Status, :Vip, :VpcId, :SubnetId, :Model, :VsmType, :RegionId, :ZoneId, :ExpireTime, :SgList, :SubnetName, :RegionName, :ZoneName, :Expired, :RemainSeconds, :VpcName, :VpcCidrBlock, :SubnetCidrBlock, :Tags, :RenewFlag, :Manufacturer, :PqcFlag, :RequestId

        def initialize(resourceid=nil, resourcename=nil, status=nil, vip=nil, vpcid=nil, subnetid=nil, model=nil, vsmtype=nil, regionid=nil, zoneid=nil, expiretime=nil, sglist=nil, subnetname=nil, regionname=nil, zonename=nil, expired=nil, remainseconds=nil, vpcname=nil, vpccidrblock=nil, subnetcidrblock=nil, tags=nil, renewflag=nil, manufacturer=nil, pqcflag=nil, requestid=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @Status = status
          @Vip = vip
          @VpcId = vpcid
          @SubnetId = subnetid
          @Model = model
          @VsmType = vsmtype
          @RegionId = regionid
          @ZoneId = zoneid
          @ExpireTime = expiretime
          @SgList = sglist
          @SubnetName = subnetname
          @RegionName = regionname
          @ZoneName = zonename
          @Expired = expired
          @RemainSeconds = remainseconds
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @SubnetCidrBlock = subnetcidrblock
          @Tags = tags
          @RenewFlag = renewflag
          @Manufacturer = manufacturer
          @PqcFlag = pqcflag
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @Status = params['Status']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Model = params['Model']
          @VsmType = params['VsmType']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @ExpireTime = params['ExpireTime']
          unless params['SgList'].nil?
            @SgList = []
            params['SgList'].each do |i|
              usgruledetail_tmp = UsgRuleDetail.new
              usgruledetail_tmp.deserialize(i)
              @SgList << usgruledetail_tmp
            end
          end
          @SubnetName = params['SubnetName']
          @RegionName = params['RegionName']
          @ZoneName = params['ZoneName']
          @Expired = params['Expired']
          @RemainSeconds = params['RemainSeconds']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetCidrBlock = params['SubnetCidrBlock']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RenewFlag = params['RenewFlag']
          @Manufacturer = params['Manufacturer']
          @PqcFlag = params['PqcFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVsms请求参数结构体
      class DescribeVsmsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 最大数量
        # @type Limit: Integer
        # @param SearchWord: 资源ID或者资源名字模糊查询的关键字
        # @type SearchWord: String
        # @param TagFilters: 标签过滤条件
        # @type TagFilters: Array
        # @param Manufacturer: 设备所属的厂商名称，根据厂商来进行筛选
        # @type Manufacturer: String
        # @param HsmType: Hsm服务类型，可选virtualization、physical、GHSM、EHSM、SHSM、all
        # @type HsmType: String

        attr_accessor :Offset, :Limit, :SearchWord, :TagFilters, :Manufacturer, :HsmType

        def initialize(offset=nil, limit=nil, searchword=nil, tagfilters=nil, manufacturer=nil, hsmtype=nil)
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @TagFilters = tagfilters
          @Manufacturer = manufacturer
          @HsmType = hsmtype
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Manufacturer = params['Manufacturer']
          @HsmType = params['HsmType']
        end
      end

      # DescribeVsms返回参数结构体
      class DescribeVsmsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 获取实例的总个数
        # @type TotalCount: Integer
        # @param VsmList: 资源信息
        # @type VsmList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VsmList, :RequestId

        def initialize(totalcount=nil, vsmlist=nil, requestid=nil)
          @TotalCount = totalcount
          @VsmList = vsmlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VsmList'].nil?
            @VsmList = []
            params['VsmList'].each do |i|
              resourceinfo_tmp = ResourceInfo.new
              resourceinfo_tmp.deserialize(i)
              @VsmList << resourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备厂商信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param Manufacturer: 厂商名称
        # @type Manufacturer: String
        # @param HsmTypes: 此厂商旗下的设备信息列表
        # @type HsmTypes: Array

        attr_accessor :Manufacturer, :HsmTypes

        def initialize(manufacturer=nil, hsmtypes=nil)
          @Manufacturer = manufacturer
          @HsmTypes = hsmtypes
        end

        def deserialize(params)
          @Manufacturer = params['Manufacturer']
          unless params['HsmTypes'].nil?
            @HsmTypes = []
            params['HsmTypes'].each do |i|
              hsminfo_tmp = HsmInfo.new
              hsminfo_tmp.deserialize(i)
              @HsmTypes << hsminfo_tmp
            end
          end
        end
      end

      # GetAlarmEvent请求参数结构体
      class GetAlarmEventRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetAlarmEvent返回参数结构体
      class GetAlarmEventResponse < TencentCloud::Common::AbstractModel
        # @param AlarmConfig: 用户所有的告警策略
        # @type AlarmConfig: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmConfig, :RequestId

        def initialize(alarmconfig=nil, requestid=nil)
          @AlarmConfig = alarmconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlarmConfig'].nil?
            @AlarmConfig = []
            params['AlarmConfig'].each do |i|
              alarmpolicy_tmp = AlarmPolicy.new
              alarmpolicy_tmp.deserialize(i)
              @AlarmConfig << alarmpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetVsmMonitorInfo请求参数结构体
      class GetVsmMonitorInfoRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源Id
        # @type ResourceId: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String

        attr_accessor :ResourceId, :ResourceName

        def initialize(resourceid=nil, resourcename=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
        end
      end

      # GetVsmMonitorInfo返回参数结构体
      class GetVsmMonitorInfoResponse < TencentCloud::Common::AbstractModel
        # @param MonitorInfo: VSM监控信息
        # @type MonitorInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MonitorInfo, :RequestId

        def initialize(monitorinfo=nil, requestid=nil)
          @MonitorInfo = monitorinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @MonitorInfo = params['MonitorInfo']
          @RequestId = params['RequestId']
        end
      end

      # 支持的加密机类型信息
      class HsmInfo < TencentCloud::Common::AbstractModel
        # @param Model: 加密机型号
        # @type Model: String
        # @param VsmTypes: 此类型的加密机所支持的VSM类型列表
        # @type VsmTypes: Array
        # @param HsmType: 加密机母机类型：virtualization、GHSM、EHSM、SHSM
        # @type HsmType: String

        attr_accessor :Model, :VsmTypes, :HsmType

        def initialize(model=nil, vsmtypes=nil, hsmtype=nil)
          @Model = model
          @VsmTypes = vsmtypes
          @HsmType = hsmtype
        end

        def deserialize(params)
          @Model = params['Model']
          unless params['VsmTypes'].nil?
            @VsmTypes = []
            params['VsmTypes'].each do |i|
              vsminfo_tmp = VsmInfo.new
              vsminfo_tmp.deserialize(i)
              @VsmTypes << vsminfo_tmp
            end
          end
          @HsmType = params['HsmType']
        end
      end

      # InquiryPriceBuyVsm请求参数结构体
      class InquiryPriceBuyVsmRequest < TencentCloud::Common::AbstractModel
        # @param GoodsNum: 需购买实例的数量
        # @type GoodsNum: Integer
        # @param PayMode: 付费模式：0表示按需计费/后付费，1表示预付费
        # @type PayMode: Integer
        # @param TimeSpan: 商品的时间大小，整型参数，举例：当TimeSpan为1，TImeUnit为m时，表示询价购买时长为1个月时的价格
        # @type TimeSpan: String
        # @param TimeUnit: 商品的时间单位，m表示月，y表示年
        # @type TimeUnit: String
        # @param Type: 默认为CREATE，可选RENEW
        # @type Type: String
        # @param HsmType: Hsm服务类型，可选值virtualization、physical、GHSM、EHSM、SHSM
        # @type HsmType: String
        # @param Currency: 货币类型，默认为CNY
        # @type Currency: String

        attr_accessor :GoodsNum, :PayMode, :TimeSpan, :TimeUnit, :Type, :HsmType, :Currency

        def initialize(goodsnum=nil, paymode=nil, timespan=nil, timeunit=nil, type=nil, hsmtype=nil, currency=nil)
          @GoodsNum = goodsnum
          @PayMode = paymode
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @Type = type
          @HsmType = hsmtype
          @Currency = currency
        end

        def deserialize(params)
          @GoodsNum = params['GoodsNum']
          @PayMode = params['PayMode']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @Type = params['Type']
          @HsmType = params['HsmType']
          @Currency = params['Currency']
        end
      end

      # InquiryPriceBuyVsm返回参数结构体
      class InquiryPriceBuyVsmResponse < TencentCloud::Common::AbstractModel
        # @param TotalCost: 原始总金额，浮点型参数，精确到小数点后两位，如：2000.99
        # @type TotalCost: Float
        # @param GoodsNum: 购买的实例数量
        # @type GoodsNum: Integer
        # @param TimeSpan: 商品的时间大小，整型参数，举例：当TimeSpan为1，TImeUnit为m时，表示询价购买时长为1个月时的价格
        # @type TimeSpan: String
        # @param TimeUnit: 商品的时间单位，m表示月，y表示年
        # @type TimeUnit: String
        # @param OriginalCost: 应付总金额，浮点型参数，精确到小数点后两位，如：2000.99
        # @type OriginalCost: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCost, :GoodsNum, :TimeSpan, :TimeUnit, :OriginalCost, :RequestId

        def initialize(totalcost=nil, goodsnum=nil, timespan=nil, timeunit=nil, originalcost=nil, requestid=nil)
          @TotalCost = totalcost
          @GoodsNum = goodsnum
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @OriginalCost = originalcost
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCost = params['TotalCost']
          @GoodsNum = params['GoodsNum']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @OriginalCost = params['OriginalCost']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAlarmEvent请求参数结构体
      class ModifyAlarmEventRequest < TencentCloud::Common::AbstractModel
        # @param Event: 告警事件，支持CPU、MEM、TCP
        # @type Event: String
        # @param Limit: 告警阈值
        # @type Limit: Integer
        # @param Status: 告警状态，0表示停用，1表示启动
        # @type Status: Integer
        # @param BeginTime: 告警开始时间，只有在这个时间后才会发送告警，当跟EndTime同时为空时表示全天告警
        # @type BeginTime: String
        # @param EndTime: 告警结束时间，只有在这个时间前才会发送告警，当跟BeginTime同时为空时表示全天告警
        # @type EndTime: String

        attr_accessor :Event, :Limit, :Status, :BeginTime, :EndTime

        def initialize(event=nil, limit=nil, status=nil, begintime=nil, endtime=nil)
          @Event = event
          @Limit = limit
          @Status = status
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @Event = params['Event']
          @Limit = params['Limit']
          @Status = params['Status']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # ModifyAlarmEvent返回参数结构体
      class ModifyAlarmEventResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVsmAttributes请求参数结构体
      class ModifyVsmAttributesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源Id
        # @type ResourceId: String
        # @param Type: UpdateResourceName-修改资源名称,
        # UpdateSgIds-修改安全组名称,
        # UpdateNetWork-修改网络,
        # Default-默认不修改
        # @type Type: Array
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param SgIds: 安全组Id
        # @type SgIds: Array
        # @param VpcId: 虚拟专网Id
        # @type VpcId: String
        # @param SubnetId: 子网Id
        # @type SubnetId: String
        # @param AlarmStatus: 告警开关，0表示关闭告警，1表示启用告警
        # @type AlarmStatus: Integer

        attr_accessor :ResourceId, :Type, :ResourceName, :SgIds, :VpcId, :SubnetId, :AlarmStatus

        def initialize(resourceid=nil, type=nil, resourcename=nil, sgids=nil, vpcid=nil, subnetid=nil, alarmstatus=nil)
          @ResourceId = resourceid
          @Type = type
          @ResourceName = resourcename
          @SgIds = sgids
          @VpcId = vpcid
          @SubnetId = subnetid
          @AlarmStatus = alarmstatus
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Type = params['Type']
          @ResourceName = params['ResourceName']
          @SgIds = params['SgIds']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @AlarmStatus = params['AlarmStatus']
        end
      end

      # ModifyVsmAttributes返回参数结构体
      class ModifyVsmAttributesResponse < TencentCloud::Common::AbstractModel
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

      # 资源信息
      class ResourceInfo < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源Id
        # @type ResourceId: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param Status: 资源状态，1-正常，2-隔离，3-销毁
        # @type Status: Integer
        # @param Vip: 资源IP
        # @type Vip: String
        # @param VpcId: 资源所属Vpc
        # @type VpcId: String
        # @param SubnetId: 资源所属子网
        # @type SubnetId: String
        # @param Model: 资源所属HSM规格
        # @type Model: String
        # @param VsmType: 云加密机类型id
        # @type VsmType: Integer
        # @param RegionId: 地域Id
        # @type RegionId: Integer
        # @param ZoneId: 区域Id
        # @type ZoneId: Integer
        # @param ExpireTime: 过期时间（Epoch Unix Timestamp）
        # @type ExpireTime: Integer
        # @param RegionName: 地域名
        # @type RegionName: String
        # @param ZoneName: 区域名
        # @type ZoneName: String
        # @param SgList: 实例的安全组列表
        # @type SgList: Array
        # @param SubnetName: 子网名称
        # @type SubnetName: String
        # @param Expired: 当前实例是否已经过期
        # @type Expired: Boolean
        # @param RemainSeconds: 为正数表示实例距离过期时间还剩余多少秒，为负数表示已经过期多少秒
        # @type RemainSeconds: Integer
        # @param VpcName: Vpc名称
        # @type VpcName: String
        # @param CreateUin: 创建者Uin账号
        # @type CreateUin: String
        # @param RenewFlag: 自动续费状态标识， 0-手动续费，1-自动续费，2-到期不续
        # @type RenewFlag: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param Manufacturer: 厂商
        # @type Manufacturer: String
        # @param AlarmStatus: 告警状态，0：停用，1：启用
        # @type AlarmStatus: Integer
        # @param PqcStatus: 0不支持
        # 1关闭
        # 2开启
        # @type PqcStatus: Integer
        # @param PqcFlag: 0关闭，1开启
        # @type PqcFlag: Integer

        attr_accessor :ResourceId, :ResourceName, :Status, :Vip, :VpcId, :SubnetId, :Model, :VsmType, :RegionId, :ZoneId, :ExpireTime, :RegionName, :ZoneName, :SgList, :SubnetName, :Expired, :RemainSeconds, :VpcName, :CreateUin, :RenewFlag, :Tags, :Manufacturer, :AlarmStatus, :PqcStatus, :PqcFlag

        def initialize(resourceid=nil, resourcename=nil, status=nil, vip=nil, vpcid=nil, subnetid=nil, model=nil, vsmtype=nil, regionid=nil, zoneid=nil, expiretime=nil, regionname=nil, zonename=nil, sglist=nil, subnetname=nil, expired=nil, remainseconds=nil, vpcname=nil, createuin=nil, renewflag=nil, tags=nil, manufacturer=nil, alarmstatus=nil, pqcstatus=nil, pqcflag=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @Status = status
          @Vip = vip
          @VpcId = vpcid
          @SubnetId = subnetid
          @Model = model
          @VsmType = vsmtype
          @RegionId = regionid
          @ZoneId = zoneid
          @ExpireTime = expiretime
          @RegionName = regionname
          @ZoneName = zonename
          @SgList = sglist
          @SubnetName = subnetname
          @Expired = expired
          @RemainSeconds = remainseconds
          @VpcName = vpcname
          @CreateUin = createuin
          @RenewFlag = renewflag
          @Tags = tags
          @Manufacturer = manufacturer
          @AlarmStatus = alarmstatus
          @PqcStatus = pqcstatus
          @PqcFlag = pqcflag
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @Status = params['Status']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Model = params['Model']
          @VsmType = params['VsmType']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @ExpireTime = params['ExpireTime']
          @RegionName = params['RegionName']
          @ZoneName = params['ZoneName']
          unless params['SgList'].nil?
            @SgList = []
            params['SgList'].each do |i|
              sgunit_tmp = SgUnit.new
              sgunit_tmp.deserialize(i)
              @SgList << sgunit_tmp
            end
          end
          @SubnetName = params['SubnetName']
          @Expired = params['Expired']
          @RemainSeconds = params['RemainSeconds']
          @VpcName = params['VpcName']
          @CreateUin = params['CreateUin']
          @RenewFlag = params['RenewFlag']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Manufacturer = params['Manufacturer']
          @AlarmStatus = params['AlarmStatus']
          @PqcStatus = params['PqcStatus']
          @PqcFlag = params['PqcFlag']
        end
      end

      # 安全组基础信息
      class SgUnit < TencentCloud::Common::AbstractModel
        # @param SgId: 安全组Id
        # @type SgId: String
        # @param SgName: 安全组名称
        # @type SgName: String
        # @param SgRemark: 备注
        # @type SgRemark: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :SgId, :SgName, :SgRemark, :CreateTime

        def initialize(sgid=nil, sgname=nil, sgremark=nil, createtime=nil)
          @SgId = sgid
          @SgName = sgname
          @SgRemark = sgremark
          @CreateTime = createtime
        end

        def deserialize(params)
          @SgId = params['SgId']
          @SgName = params['SgName']
          @SgRemark = params['SgRemark']
          @CreateTime = params['CreateTime']
        end
      end

      # Subnet对象
      class Subnet < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param SubnetId: 子网实例ID，例如：subnet-bthucmmy。
        # @type SubnetId: String
        # @param SubnetName: 子网名称。
        # @type SubnetName: String
        # @param CidrBlock: 子网的 IPv4 CIDR。
        # @type CidrBlock: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param AvailableIpAddressCount: 可用IP数。
        # @type AvailableIpAddressCount: Integer
        # @param Ipv6CidrBlock: 子网的 IPv6 CIDR。
        # @type Ipv6CidrBlock: String
        # @param TotalIpAddressCount: 总IP数
        # @type TotalIpAddressCount: Integer
        # @param IsDefault: 是否为默认Subnet
        # @type IsDefault: Boolean

        attr_accessor :VpcId, :SubnetId, :SubnetName, :CidrBlock, :CreatedTime, :AvailableIpAddressCount, :Ipv6CidrBlock, :TotalIpAddressCount, :IsDefault

        def initialize(vpcid=nil, subnetid=nil, subnetname=nil, cidrblock=nil, createdtime=nil, availableipaddresscount=nil, ipv6cidrblock=nil, totalipaddresscount=nil, isdefault=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @CreatedTime = createdtime
          @AvailableIpAddressCount = availableipaddresscount
          @Ipv6CidrBlock = ipv6cidrblock
          @TotalIpAddressCount = totalipaddresscount
          @IsDefault = isdefault
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @CreatedTime = params['CreatedTime']
          @AvailableIpAddressCount = params['AvailableIpAddressCount']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
          @TotalIpAddressCount = params['TotalIpAddressCount']
          @IsDefault = params['IsDefault']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
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

      # 标签过滤参数
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: Array

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

      # 安全组策略
      class UsgPolicy < TencentCloud::Common::AbstractModel
        # @param Ip: cidr格式地址
        # @type Ip: String
        # @param Id: 安全组id代表的地址集合
        # @type Id: String
        # @param AddressModule: 地址组id代表的地址集合
        # @type AddressModule: String
        # @param Proto: 协议
        # @type Proto: String
        # @param Port: 端口
        # @type Port: String
        # @param ServiceModule: 服务组id代表的协议和端口集合
        # @type ServiceModule: String
        # @param Desc: 备注
        # @type Desc: String
        # @param Action: 匹配后行为:ACCEPT/DROP
        # @type Action: String

        attr_accessor :Ip, :Id, :AddressModule, :Proto, :Port, :ServiceModule, :Desc, :Action

        def initialize(ip=nil, id=nil, addressmodule=nil, proto=nil, port=nil, servicemodule=nil, desc=nil, action=nil)
          @Ip = ip
          @Id = id
          @AddressModule = addressmodule
          @Proto = proto
          @Port = port
          @ServiceModule = servicemodule
          @Desc = desc
          @Action = action
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Id = params['Id']
          @AddressModule = params['AddressModule']
          @Proto = params['Proto']
          @Port = params['Port']
          @ServiceModule = params['ServiceModule']
          @Desc = params['Desc']
          @Action = params['Action']
        end
      end

      # 安全组规则详情
      class UsgRuleDetail < TencentCloud::Common::AbstractModel
        # @param InBound: 入站规则
        # @type InBound: Array
        # @param OutBound: 出站规则
        # @type OutBound: Array
        # @param SgId: 安全组Id
        # @type SgId: String
        # @param SgName: 安全组名称
        # @type SgName: String
        # @param SgRemark: 备注
        # @type SgRemark: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Version: 版本
        # @type Version: Integer

        attr_accessor :InBound, :OutBound, :SgId, :SgName, :SgRemark, :CreateTime, :Version

        def initialize(inbound=nil, outbound=nil, sgid=nil, sgname=nil, sgremark=nil, createtime=nil, version=nil)
          @InBound = inbound
          @OutBound = outbound
          @SgId = sgid
          @SgName = sgname
          @SgRemark = sgremark
          @CreateTime = createtime
          @Version = version
        end

        def deserialize(params)
          unless params['InBound'].nil?
            @InBound = []
            params['InBound'].each do |i|
              usgpolicy_tmp = UsgPolicy.new
              usgpolicy_tmp.deserialize(i)
              @InBound << usgpolicy_tmp
            end
          end
          unless params['OutBound'].nil?
            @OutBound = []
            params['OutBound'].each do |i|
              usgpolicy_tmp = UsgPolicy.new
              usgpolicy_tmp.deserialize(i)
              @OutBound << usgpolicy_tmp
            end
          end
          @SgId = params['SgId']
          @SgName = params['SgName']
          @SgRemark = params['SgRemark']
          @CreateTime = params['CreateTime']
          @Version = params['Version']
        end
      end

      # VPC对象
      class Vpc < TencentCloud::Common::AbstractModel
        # @param VpcName: Vpc名称
        # @type VpcName: String
        # @param VpcId: VpcId
        # @type VpcId: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param IsDefault: 是否为默认VPC
        # @type IsDefault: Boolean

        attr_accessor :VpcName, :VpcId, :CreatedTime, :IsDefault

        def initialize(vpcname=nil, vpcid=nil, createdtime=nil, isdefault=nil)
          @VpcName = vpcname
          @VpcId = vpcid
          @CreatedTime = createdtime
          @IsDefault = isdefault
        end

        def deserialize(params)
          @VpcName = params['VpcName']
          @VpcId = params['VpcId']
          @CreatedTime = params['CreatedTime']
          @IsDefault = params['IsDefault']
        end
      end

      # 支持的Vsm类型信息
      class VsmInfo < TencentCloud::Common::AbstractModel
        # @param TypeName: VSM类型名称
        # @type TypeName: String
        # @param TypeID: VSM类型值
        # @type TypeID: Integer

        attr_accessor :TypeName, :TypeID

        def initialize(typename=nil, typeid=nil)
          @TypeName = typename
          @TypeID = typeid
        end

        def deserialize(params)
          @TypeName = params['TypeName']
          @TypeID = params['TypeID']
        end
      end

    end
  end
end

