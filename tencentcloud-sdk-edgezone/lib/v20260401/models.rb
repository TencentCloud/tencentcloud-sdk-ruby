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
  module Edgezone
    module V20260401
      # ApplyPublicIps请求参数结构体
      class ApplyPublicIpsRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 公网实例 ID（路由发布模式必须为 STATIC ）
        # @type NetworkInstanceId: String
        # @param Count: 申请Ip数量，最小为 1
        # @type Count: Integer
        # @param Type: 申请的Ip类型，枚举值：ipv4、ipv6
        # @type Type: String

        attr_accessor :NetworkInstanceId, :Count, :Type

        def initialize(networkinstanceid=nil, count=nil, type=nil)
          @NetworkInstanceId = networkinstanceid
          @Count = count
          @Type = type
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @Count = params['Count']
          @Type = params['Type']
        end
      end

      # ApplyPublicIps返回参数结构体
      class ApplyPublicIpsResponse < TencentCloud::Common::AbstractModel
        # @param IpList: 分配的公网 IP 地址列表
        # @type IpList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IpList, :RequestId

        def initialize(iplist=nil, requestid=nil)
          @IpList = iplist
          @RequestId = requestid
        end

        def deserialize(params)
          @IpList = params['IpList']
          @RequestId = params['RequestId']
        end
      end

      # CreateEdgeNodeService请求参数结构体
      class CreateEdgeNodeServiceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区代码，如 ap-guangzhou-1。
        # @type Zone: String

        attr_accessor :Zone

        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # CreateEdgeNodeService返回参数结构体
      class CreateEdgeNodeServiceResponse < TencentCloud::Common::AbstractModel
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

      # CreateInstances请求参数结构体
      class CreateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: <p>可用区代码，如 ap-guangzhou-1。</p>
        # @type Zone: String
        # @param InstanceType: <p>机型规格，如 BMS5.MEDIUM8。</p>
        # @type InstanceType: String
        # @param PrivateNetworkId: <p>内网网络实例ID，格式如 net-xxx。</p>
        # @type PrivateNetworkId: String
        # @param PublicNetworkId: <p>公网网络实例ID，格式如 net-xxx。</p>
        # @type PublicNetworkId: String
        # @param InstanceName: <p>实例名称。</p>
        # @type InstanceName: String
        # @param ImageId: <p>镜像ID，如 img-centos-7.9。</p>
        # @type ImageId: String
        # @param InstanceCount: <p>创建数量，默认1，最大50。</p>
        # @type InstanceCount: Integer
        # @param Password: <p>登录密码，与SSHKey二选一</p>
        # @type Password: String
        # @param SSHKey: <p>SSH密钥公钥字符串，与Password二选一</p>
        # @type SSHKey: String
        # @param VersionNumber: <p>镜像版本号，仅公共镜像有版本概念。</p>
        # @type VersionNumber: String
        # @param EnableIpv6: <p>是否启用公网IPv6，默认false。启用后系统会在分配IPv4后额外分配一个IPv6地址。</p>
        # @type EnableIpv6: Boolean

        attr_accessor :Zone, :InstanceType, :PrivateNetworkId, :PublicNetworkId, :InstanceName, :ImageId, :InstanceCount, :Password, :SSHKey, :VersionNumber, :EnableIpv6
        extend Gem::Deprecate
        deprecate :VersionNumber, :none, 2026, 9
        deprecate :VersionNumber=, :none, 2026, 9
        deprecate :EnableIpv6, :none, 2026, 9
        deprecate :EnableIpv6=, :none, 2026, 9

        def initialize(zone=nil, instancetype=nil, privatenetworkid=nil, publicnetworkid=nil, instancename=nil, imageid=nil, instancecount=nil, password=nil, sshkey=nil, versionnumber=nil, enableipv6=nil)
          @Zone = zone
          @InstanceType = instancetype
          @PrivateNetworkId = privatenetworkid
          @PublicNetworkId = publicnetworkid
          @InstanceName = instancename
          @ImageId = imageid
          @InstanceCount = instancecount
          @Password = password
          @SSHKey = sshkey
          @VersionNumber = versionnumber
          @EnableIpv6 = enableipv6
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
          @PrivateNetworkId = params['PrivateNetworkId']
          @PublicNetworkId = params['PublicNetworkId']
          @InstanceName = params['InstanceName']
          @ImageId = params['ImageId']
          @InstanceCount = params['InstanceCount']
          @Password = params['Password']
          @SSHKey = params['SSHKey']
          @VersionNumber = params['VersionNumber']
          @EnableIpv6 = params['EnableIpv6']
        end
      end

      # CreateInstances返回参数结构体
      class CreateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: <p>创建成功的实例ID列表。</p>
        # @type InstanceIdSet: Array
        # @param FailedCount: <p>创建失败的实例个数。仅部分失败时返回，全部成功时不返回该字段。</p>
        # @type FailedCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIdSet, :FailedCount, :RequestId

        def initialize(instanceidset=nil, failedcount=nil, requestid=nil)
          @InstanceIdSet = instanceidset
          @FailedCount = failedcount
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @FailedCount = params['FailedCount']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrivateNetworkInstance请求参数结构体
      class CreatePrivateNetworkInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceName: 新实例名称
        # @type NetworkInstanceName: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: String
        # @param Network: 网络地址（host 位必须全为 0），必须落在以下 RFC 1918 私有范围之一：`10.0.0.0/8`、`172.16.0.0/12`、`192.168.0.0/16`
        # @type Network: String
        # @param Mask: 掩码位数，上限统一为 `28`，下限随所属私有段而定：`10.0.0.0/8` 允许 `8~28`，`172.16.0.0/12` 允许 `12~28`，`192.168.0.0/16` 允许 `16~28`；需与 Network 共同构成合法网络地址（host 位全为 0）
        # @type Mask: Integer

        attr_accessor :NetworkInstanceName, :ZoneId, :Network, :Mask

        def initialize(networkinstancename=nil, zoneid=nil, network=nil, mask=nil)
          @NetworkInstanceName = networkinstancename
          @ZoneId = zoneid
          @Network = network
          @Mask = mask
        end

        def deserialize(params)
          @NetworkInstanceName = params['NetworkInstanceName']
          @ZoneId = params['ZoneId']
          @Network = params['Network']
          @Mask = params['Mask']
        end
      end

      # CreatePrivateNetworkInstance返回参数结构体
      class CreatePrivateNetworkInstanceResponse < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 私网实例ID
        # @type NetworkInstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkInstanceId, :RequestId

        def initialize(networkinstanceid=nil, requestid=nil)
          @NetworkInstanceId = networkinstanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePublicNetworkInstance请求参数结构体
      class CreatePublicNetworkInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>可用区</p>
        # @type ZoneId: String
        # @param NetworkInstanceName: <p>公网实例名称</p>
        # @type NetworkInstanceName: String
        # @param Line: <p>网络线路</p>
        # @type Line: String
        # @param RouteMode: <p>路由模式</p>
        # @type RouteMode: String
        # @param Bandwidth: <p>公网带宽（Mbps）</p>
        # @type Bandwidth: Integer
        # @param BgpAsNumber: <p>BGP AS号</p>
        # @type BgpAsNumber: Integer
        # @param BgpPassword: <p>BGP认证密码</p>
        # @type BgpPassword: String
        # @param InstanceType: <p>公网实例类型</p><p>枚举值：</p><ul><li>standard： 标准型(默认)</li><li>custom： 自定义型(暂不支持创建)</li></ul>
        # @type InstanceType: String

        attr_accessor :ZoneId, :NetworkInstanceName, :Line, :RouteMode, :Bandwidth, :BgpAsNumber, :BgpPassword, :InstanceType

        def initialize(zoneid=nil, networkinstancename=nil, line=nil, routemode=nil, bandwidth=nil, bgpasnumber=nil, bgppassword=nil, instancetype=nil)
          @ZoneId = zoneid
          @NetworkInstanceName = networkinstancename
          @Line = line
          @RouteMode = routemode
          @Bandwidth = bandwidth
          @BgpAsNumber = bgpasnumber
          @BgpPassword = bgppassword
          @InstanceType = instancetype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @NetworkInstanceName = params['NetworkInstanceName']
          @Line = params['Line']
          @RouteMode = params['RouteMode']
          @Bandwidth = params['Bandwidth']
          @BgpAsNumber = params['BgpAsNumber']
          @BgpPassword = params['BgpPassword']
          @InstanceType = params['InstanceType']
        end
      end

      # CreatePublicNetworkInstance返回参数结构体
      class CreatePublicNetworkInstanceResponse < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: <p>公网实例 ID</p>
        # @type NetworkInstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkInstanceId, :RequestId

        def initialize(networkinstanceid=nil, requestid=nil)
          @NetworkInstanceId = networkinstanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DeletePrivateNetworkInstance请求参数结构体
      class DeletePrivateNetworkInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 私网实例Id
        # @type NetworkInstanceId: String

        attr_accessor :NetworkInstanceId

        def initialize(networkinstanceid=nil)
          @NetworkInstanceId = networkinstanceid
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
        end
      end

      # DeletePrivateNetworkInstance返回参数结构体
      class DeletePrivateNetworkInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeletePublicNetworkInstance请求参数结构体
      class DeletePublicNetworkInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 公网实例 ID
        # @type NetworkInstanceId: String

        attr_accessor :NetworkInstanceId

        def initialize(networkinstanceid=nil)
          @NetworkInstanceId = networkinstanceid
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
        end
      end

      # DeletePublicNetworkInstance返回参数结构体
      class DeletePublicNetworkInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceTypes请求参数结构体
      class DescribeInstanceTypesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区代码，如 ap-guangzhou-1；不传则返回账号下所有可用区的机型。
        # @type Zone: String
        # @param Offset: 分页偏移量,默认0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认20，最大100
        # @type Limit: Integer

        attr_accessor :Zone, :Offset, :Limit

        def initialize(zone=nil, offset=nil, limit=nil)
          @Zone = zone
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstanceTypes返回参数结构体
      class DescribeInstanceTypesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceTypeQuotaSet: 机型配额列表。
        # @type InstanceTypeQuotaSet: Array
        # @param TotalCount: 返回记录数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceTypeQuotaSet, :TotalCount, :RequestId

        def initialize(instancetypequotaset=nil, totalcount=nil, requestid=nil)
          @InstanceTypeQuotaSet = instancetypequotaset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceTypeQuotaSet'].nil?
            @InstanceTypeQuotaSet = []
            params['InstanceTypeQuotaSet'].each do |i|
              instancetypequota_tmp = InstanceTypeQuota.new
              instancetypequota_tmp.deserialize(i)
              @InstanceTypeQuotaSet << instancetypequota_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>实例ID列表，用于按实例ID筛选</p>
        # @type InstanceIds: Array
        # @param InstanceName: <p>实例名称，支持模糊匹配</p>
        # @type InstanceName: String
        # @param Zone: <p>可用区代码，用于筛选指定可用区的实例</p>
        # @type Zone: String
        # @param InstanceStatus: <p>实例状态列表，用于按状态筛选实例。可选值：allocating、running、isolating、isolated、terminating、error</p>
        # @type InstanceStatus: Array
        # @param PublicNetworkId: <p>公网网络ID</p>
        # @type PublicNetworkId: String
        # @param PrivateNetworkId: <p>私有网络ID</p>
        # @type PrivateNetworkId: String
        # @param PublicIps: <p>公网IPv4地址列表，用于按公网IP筛选实例</p>
        # @type PublicIps: Array
        # @param Offset: <p>偏移量，默认0</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量，默认20，最大100</p>
        # @type Limit: Integer

        attr_accessor :InstanceIds, :InstanceName, :Zone, :InstanceStatus, :PublicNetworkId, :PrivateNetworkId, :PublicIps, :Offset, :Limit

        def initialize(instanceids=nil, instancename=nil, zone=nil, instancestatus=nil, publicnetworkid=nil, privatenetworkid=nil, publicips=nil, offset=nil, limit=nil)
          @InstanceIds = instanceids
          @InstanceName = instancename
          @Zone = zone
          @InstanceStatus = instancestatus
          @PublicNetworkId = publicnetworkid
          @PrivateNetworkId = privatenetworkid
          @PublicIps = publicips
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceName = params['InstanceName']
          @Zone = params['Zone']
          @InstanceStatus = params['InstanceStatus']
          @PublicNetworkId = params['PublicNetworkId']
          @PrivateNetworkId = params['PrivateNetworkId']
          @PublicIps = params['PublicIps']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: <p>实例详细信息列表</p>
        # @type InstanceSet: Array
        # @param TotalCount: <p>符合条件的实例数量</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :TotalCount, :RequestId

        def initialize(instanceset=nil, totalcount=nil, requestid=nil)
          @InstanceSet = instanceset
          @TotalCount = totalcount
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
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivateNetworkInstances请求参数结构体
      class DescribePrivateNetworkInstancesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 私网实例Id
        # @type NetworkInstanceId: String
        # @param NetworkInstanceName: 新实例名称
        # @type NetworkInstanceName: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: String
        # @param Offset: 分页偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 每页数量，默认 20，最大 100
        # @type Limit: Integer

        attr_accessor :NetworkInstanceId, :NetworkInstanceName, :ZoneId, :Offset, :Limit

        def initialize(networkinstanceid=nil, networkinstancename=nil, zoneid=nil, offset=nil, limit=nil)
          @NetworkInstanceId = networkinstanceid
          @NetworkInstanceName = networkinstancename
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @NetworkInstanceName = params['NetworkInstanceName']
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePrivateNetworkInstances返回参数结构体
      class DescribePrivateNetworkInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 私网实例总数
        # @type TotalCount: Integer
        # @param PrivateNetworkInstanceSet: 私网实例集合
        # @type PrivateNetworkInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PrivateNetworkInstanceSet, :RequestId

        def initialize(totalcount=nil, privatenetworkinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @PrivateNetworkInstanceSet = privatenetworkinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PrivateNetworkInstanceSet'].nil?
            @PrivateNetworkInstanceSet = []
            params['PrivateNetworkInstanceSet'].each do |i|
              privatenetworkinstanceinfo_tmp = PrivateNetworkInstanceInfo.new
              privatenetworkinstanceinfo_tmp.deserialize(i)
              @PrivateNetworkInstanceSet << privatenetworkinstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicIps请求参数结构体
      class DescribePublicIpsRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 按公网实例 ID 过滤（子串匹配，多个值取并集）
        # @type NetworkInstanceId: Array
        # @param ZoneId: 按可用区/机房过滤
        # @type ZoneId: String
        # @param Ip: 按 IP 过滤（子串匹配，多个值取并集）
        # @type Ip: Array
        # @param State: 按状态过滤，可选值：`InUse`、`Unbound`（多个值取并集）
        # @type State: Array
        # @param Type: 按 IP 版本过滤，可选值：`Ipv4`、`Ipv6`（多个值取并集）
        # @type Type: Array
        # @param OrderByCreateTime: 按创建时间排序，可选值：`asc`、`desc`（默认 `desc`）
        # @type OrderByCreateTime: String
        # @param OrderByUpdateTime: 按更新时间排序，可选值：`asc`、`desc`（优先级高于创建时间排序）
        # @type OrderByUpdateTime: String
        # @param Offset: 分页偏移量，默认 0
        # @type Offset: Integer
        # @param Limit: 每页数量，默认 20，最大 100
        # @type Limit: Integer

        attr_accessor :NetworkInstanceId, :ZoneId, :Ip, :State, :Type, :OrderByCreateTime, :OrderByUpdateTime, :Offset, :Limit

        def initialize(networkinstanceid=nil, zoneid=nil, ip=nil, state=nil, type=nil, orderbycreatetime=nil, orderbyupdatetime=nil, offset=nil, limit=nil)
          @NetworkInstanceId = networkinstanceid
          @ZoneId = zoneid
          @Ip = ip
          @State = state
          @Type = type
          @OrderByCreateTime = orderbycreatetime
          @OrderByUpdateTime = orderbyupdatetime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @ZoneId = params['ZoneId']
          @Ip = params['Ip']
          @State = params['State']
          @Type = params['Type']
          @OrderByCreateTime = params['OrderByCreateTime']
          @OrderByUpdateTime = params['OrderByUpdateTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePublicIps返回参数结构体
      class DescribePublicIpsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 公网Ip总数
        # @type TotalCount: Integer
        # @param IpInfoSet: 分配的公网 IP 地址列表
        # @type IpInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IpInfoSet, :RequestId

        def initialize(totalcount=nil, ipinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @IpInfoSet = ipinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IpInfoSet'].nil?
            @IpInfoSet = []
            params['IpInfoSet'].each do |i|
              ipinfo_tmp = IpInfo.new
              ipinfo_tmp.deserialize(i)
              @IpInfoSet << ipinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicNetworkInstances请求参数结构体
      class DescribePublicNetworkInstancesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 公网实例ID
        # @type NetworkInstanceId: String
        # @param NetworkInstanceName: 公网实例名称
        # @type NetworkInstanceName: String
        # @param ZoneId: 可用区Id
        # @type ZoneId: String
        # @param Offset: 分页偏移量，默认 0
        # @type Offset: Integer
        # @param Limit: 每页数量，默认 20，最大 100
        # @type Limit: Integer

        attr_accessor :NetworkInstanceId, :NetworkInstanceName, :ZoneId, :Offset, :Limit

        def initialize(networkinstanceid=nil, networkinstancename=nil, zoneid=nil, offset=nil, limit=nil)
          @NetworkInstanceId = networkinstanceid
          @NetworkInstanceName = networkinstancename
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @NetworkInstanceName = params['NetworkInstanceName']
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePublicNetworkInstances返回参数结构体
      class DescribePublicNetworkInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 公网实例总数
        # @type TotalCount: Integer
        # @param PublicNetworkInstanceSet: 公网实例集合
        # @type PublicNetworkInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PublicNetworkInstanceSet, :RequestId

        def initialize(totalcount=nil, publicnetworkinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @PublicNetworkInstanceSet = publicnetworkinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PublicNetworkInstanceSet'].nil?
            @PublicNetworkInstanceSet = []
            params['PublicNetworkInstanceSet'].each do |i|
              publicnetworkinstanceinfo_tmp = PublicNetworkInstanceInfo.new
              publicnetworkinstanceinfo_tmp.deserialize(i)
              @PublicNetworkInstanceSet << publicnetworkinstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneData请求参数结构体
      class DescribeZoneDataRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 区id
        # @type Zone: String
        # @param MetricName: 指标名(inbw:入带宽，outbw:出带宽)
        # @type MetricName: String
        # @param StartTime: 开始时间（UTC时间:0时区）
        # @type StartTime: String
        # @param EndTime: 结束时间（UTC时间:0时区）,最多查询2天时间
        # @type EndTime: String

        attr_accessor :Zone, :MetricName, :StartTime, :EndTime

        def initialize(zone=nil, metricname=nil, starttime=nil, endtime=nil)
          @Zone = zone
          @MetricName = metricname
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Zone = params['Zone']
          @MetricName = params['MetricName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeZoneData返回参数结构体
      class DescribeZoneDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 统计数据,指标inbw|outbw单位为Mbps
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              switchdata_tmp = SwitchData.new
              switchdata_tmp.deserialize(i)
              @Data << switchdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param ZoneSet: <p>所有地域的可用区列表。</p>
        # @type ZoneSet: Array
        # @param TotalCount: <p>可用区总数量。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneSet, :TotalCount, :RequestId

        def initialize(zoneset=nil, totalcount=nil, requestid=nil)
          @ZoneSet = zoneset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneSet << zoneinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 操作失败的实例信息
      class FailedInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param ErrorCode: 错误码。
        # @type ErrorCode: String
        # @param ErrorMessage: 错误信息。
        # @type ErrorMessage: String

        attr_accessor :InstanceId, :ErrorCode, :ErrorMessage

        def initialize(instanceid=nil, errorcode=nil, errormessage=nil)
          @InstanceId = instanceid
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # 描述物理机实例信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param InstanceName: <p>实例名称</p>
        # @type InstanceName: String
        # @param MachineId: <p>绑定的物理机ID</p>
        # @type MachineId: String
        # @param InstanceType: <p>机型规格</p>
        # @type InstanceType: String
        # @param Zone: <p>可用区代码</p>
        # @type Zone: String
        # @param ImageId: <p>镜像ID</p>
        # @type ImageId: String
        # @param VersionNumber: <p>镜像版本号</p>
        # @type VersionNumber: String
        # @param InstanceStatus: <p>实例状态，可选值：allocating、running、isolating、isolated、terminating、error</p>
        # @type InstanceStatus: String
        # @param OperateStatus: <p>操作状态，可选值：normal、starting、stopping、stopped、rebooting</p>
        # @type OperateStatus: String
        # @param PrivateNetworkId: <p>私有网络ID</p>
        # @type PrivateNetworkId: String
        # @param PrivateIp: <p>私有IPv4地址</p>
        # @type PrivateIp: String
        # @param PrivateIpV6: <p>私有IPv6地址</p>
        # @type PrivateIpV6: String
        # @param PublicNetworkId: <p>公网网络ID</p>
        # @type PublicNetworkId: String
        # @param PublicIp: <p>公网IPv4地址</p>
        # @type PublicIp: String
        # @param PublicIpV6: <p>公网IPv6地址</p>
        # @type PublicIpV6: String
        # @param FileSystemType: <p>文件系统类型</p>
        # @type FileSystemType: String
        # @param CreatedTime: <p>创建时间。按照ISO8601标准表示，并且使用UTC时间。格式为：YYYY-MM-DDThh:mm:ssZ。</p>
        # @type CreatedTime: String
        # @param InstanceFamily: <p>机型族标识</p>
        # @type InstanceFamily: String
        # @param InstanceFamilyName: <p>机型族名称</p>
        # @type InstanceFamilyName: String
        # @param CpuType: <p>CPU 型号</p>
        # @type CpuType: String
        # @param Cpu: <p>CPU 核数</p>
        # @type Cpu: Integer
        # @param Memory: <p>内存大小</p>
        # @type Memory: Integer

        attr_accessor :InstanceId, :InstanceName, :MachineId, :InstanceType, :Zone, :ImageId, :VersionNumber, :InstanceStatus, :OperateStatus, :PrivateNetworkId, :PrivateIp, :PrivateIpV6, :PublicNetworkId, :PublicIp, :PublicIpV6, :FileSystemType, :CreatedTime, :InstanceFamily, :InstanceFamilyName, :CpuType, :Cpu, :Memory
        extend Gem::Deprecate
        deprecate :VersionNumber, :none, 2026, 9
        deprecate :VersionNumber=, :none, 2026, 9

        def initialize(instanceid=nil, instancename=nil, machineid=nil, instancetype=nil, zone=nil, imageid=nil, versionnumber=nil, instancestatus=nil, operatestatus=nil, privatenetworkid=nil, privateip=nil, privateipv6=nil, publicnetworkid=nil, publicip=nil, publicipv6=nil, filesystemtype=nil, createdtime=nil, instancefamily=nil, instancefamilyname=nil, cputype=nil, cpu=nil, memory=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @MachineId = machineid
          @InstanceType = instancetype
          @Zone = zone
          @ImageId = imageid
          @VersionNumber = versionnumber
          @InstanceStatus = instancestatus
          @OperateStatus = operatestatus
          @PrivateNetworkId = privatenetworkid
          @PrivateIp = privateip
          @PrivateIpV6 = privateipv6
          @PublicNetworkId = publicnetworkid
          @PublicIp = publicip
          @PublicIpV6 = publicipv6
          @FileSystemType = filesystemtype
          @CreatedTime = createdtime
          @InstanceFamily = instancefamily
          @InstanceFamilyName = instancefamilyname
          @CpuType = cputype
          @Cpu = cpu
          @Memory = memory
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @MachineId = params['MachineId']
          @InstanceType = params['InstanceType']
          @Zone = params['Zone']
          @ImageId = params['ImageId']
          @VersionNumber = params['VersionNumber']
          @InstanceStatus = params['InstanceStatus']
          @OperateStatus = params['OperateStatus']
          @PrivateNetworkId = params['PrivateNetworkId']
          @PrivateIp = params['PrivateIp']
          @PrivateIpV6 = params['PrivateIpV6']
          @PublicNetworkId = params['PublicNetworkId']
          @PublicIp = params['PublicIp']
          @PublicIpV6 = params['PublicIpV6']
          @FileSystemType = params['FileSystemType']
          @CreatedTime = params['CreatedTime']
          @InstanceFamily = params['InstanceFamily']
          @InstanceFamilyName = params['InstanceFamilyName']
          @CpuType = params['CpuType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
        end
      end

      # 账号在可用区下的机型配额信息，包含可用区、机型详情和配额数量。
      class InstanceTypeQuota < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区代码。
        # @type Zone: String
        # @param InstanceType: 机型规格。
        # @type InstanceType: String
        # @param InstanceFamily: 机型家族。
        # @type InstanceFamily: String
        # @param InstanceFamilyName: 机型族名称
        # @type InstanceFamilyName: String
        # @param CpuCores: CPU核数。
        # @type CpuCores: Integer
        # @param CpuType: CPU类型。
        # @type CpuType: String
        # @param MemoryGb: 内存大小（GB）。
        # @type MemoryGb: Integer
        # @param SystemDiskType: 系统盘类型。
        # @type SystemDiskType: String
        # @param SystemDiskSize: 系统盘大小（GB）。
        # @type SystemDiskSize: Integer
        # @param SystemDiskCount: 系统盘数量。
        # @type SystemDiskCount: Integer
        # @param DataDiskType: 数据盘类型。
        # @type DataDiskType: String
        # @param DataDiskSize: 数据盘大小（GB）。
        # @type DataDiskSize: Integer
        # @param DataDiskCount: 数据盘数量。
        # @type DataDiskCount: Integer
        # @param SecondaryDataDiskType: 第二组数据盘类型
        # @type SecondaryDataDiskType: String
        # @param SecondaryDataDiskSize: 第二组数据盘大小(GB)
        # @type SecondaryDataDiskSize: Integer
        # @param SecondaryDataDiskCount: 第二组数据盘数量
        # @type SecondaryDataDiskCount: Integer
        # @param DiskType: 磁盘描述字符串（向后兼容）。
        # @type DiskType: String
        # @param NetworkInterfaceType: 网络接口类型。
        # @type NetworkInterfaceType: String
        # @param GpuType: GPU类型，无GPU时为空字符串。
        # @type GpuType: String
        # @param Quota: 配额数量
        # @type Quota: Integer

        attr_accessor :Zone, :InstanceType, :InstanceFamily, :InstanceFamilyName, :CpuCores, :CpuType, :MemoryGb, :SystemDiskType, :SystemDiskSize, :SystemDiskCount, :DataDiskType, :DataDiskSize, :DataDiskCount, :SecondaryDataDiskType, :SecondaryDataDiskSize, :SecondaryDataDiskCount, :DiskType, :NetworkInterfaceType, :GpuType, :Quota

        def initialize(zone=nil, instancetype=nil, instancefamily=nil, instancefamilyname=nil, cpucores=nil, cputype=nil, memorygb=nil, systemdisktype=nil, systemdisksize=nil, systemdiskcount=nil, datadisktype=nil, datadisksize=nil, datadiskcount=nil, secondarydatadisktype=nil, secondarydatadisksize=nil, secondarydatadiskcount=nil, disktype=nil, networkinterfacetype=nil, gputype=nil, quota=nil)
          @Zone = zone
          @InstanceType = instancetype
          @InstanceFamily = instancefamily
          @InstanceFamilyName = instancefamilyname
          @CpuCores = cpucores
          @CpuType = cputype
          @MemoryGb = memorygb
          @SystemDiskType = systemdisktype
          @SystemDiskSize = systemdisksize
          @SystemDiskCount = systemdiskcount
          @DataDiskType = datadisktype
          @DataDiskSize = datadisksize
          @DataDiskCount = datadiskcount
          @SecondaryDataDiskType = secondarydatadisktype
          @SecondaryDataDiskSize = secondarydatadisksize
          @SecondaryDataDiskCount = secondarydatadiskcount
          @DiskType = disktype
          @NetworkInterfaceType = networkinterfacetype
          @GpuType = gputype
          @Quota = quota
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
          @InstanceFamily = params['InstanceFamily']
          @InstanceFamilyName = params['InstanceFamilyName']
          @CpuCores = params['CpuCores']
          @CpuType = params['CpuType']
          @MemoryGb = params['MemoryGb']
          @SystemDiskType = params['SystemDiskType']
          @SystemDiskSize = params['SystemDiskSize']
          @SystemDiskCount = params['SystemDiskCount']
          @DataDiskType = params['DataDiskType']
          @DataDiskSize = params['DataDiskSize']
          @DataDiskCount = params['DataDiskCount']
          @SecondaryDataDiskType = params['SecondaryDataDiskType']
          @SecondaryDataDiskSize = params['SecondaryDataDiskSize']
          @SecondaryDataDiskCount = params['SecondaryDataDiskCount']
          @DiskType = params['DiskType']
          @NetworkInterfaceType = params['NetworkInterfaceType']
          @GpuType = params['GpuType']
          @Quota = params['Quota']
        end
      end

      # 公网Ip信息
      class IpInfo < TencentCloud::Common::AbstractModel
        # @param Ip: 10.100.0.20
        # @type Ip: String
        # @param NetworkInstanceId: epn-asdfghjkl
        # @type NetworkInstanceId: String
        # @param InstanceId: epm-asdfghjkl
        # @type InstanceId: String
        # @param State: Unbound
        # @type State: String
        # @param Type: Ipv4
        # @type Type: String
        # @param CreatedAt: 2026-04-07T00:00:00
        # @type CreatedAt: String
        # @param UpdatedAt: 2026-04-07T00:00:00
        # @type UpdatedAt: String

        attr_accessor :Ip, :NetworkInstanceId, :InstanceId, :State, :Type, :CreatedAt, :UpdatedAt

        def initialize(ip=nil, networkinstanceid=nil, instanceid=nil, state=nil, type=nil, createdat=nil, updatedat=nil)
          @Ip = ip
          @NetworkInstanceId = networkinstanceid
          @InstanceId = instanceid
          @State = state
          @Type = type
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @Ip = params['Ip']
          @NetworkInstanceId = params['NetworkInstanceId']
          @InstanceId = params['InstanceId']
          @State = params['State']
          @Type = params['Type']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # ModifyInstanceAttribute请求参数结构体
      class ModifyInstanceAttributeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceName: 新的实例名称，1-60字符。与 NewPublicIp 至少传入一个。
        # @type InstanceName: String
        # @param NewPublicIp: 新的公网IP（需从该实例所绑定公网实例的可用IP中选择）。与 InstanceName 至少传入一个。
        # @type NewPublicIp: String
        # @param IpType: IP类型，ipv4 或 ipv6，默认 ipv4。仅在指定 NewPublicIp 时有效。
        # @type IpType: String

        attr_accessor :InstanceId, :InstanceName, :NewPublicIp, :IpType
        extend Gem::Deprecate
        deprecate :NewPublicIp, :none, 2026, 9
        deprecate :NewPublicIp=, :none, 2026, 9
        deprecate :IpType, :none, 2026, 9
        deprecate :IpType=, :none, 2026, 9

        def initialize(instanceid=nil, instancename=nil, newpublicip=nil, iptype=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @NewPublicIp = newpublicip
          @IpType = iptype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @NewPublicIp = params['NewPublicIp']
          @IpType = params['IpType']
        end
      end

      # ModifyInstanceAttribute返回参数结构体
      class ModifyInstanceAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrivateNetworkInstance请求参数结构体
      class ModifyPrivateNetworkInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 私网实例Id
        # @type NetworkInstanceId: String
        # @param NetworkInstanceName: 新实例名称
        # @type NetworkInstanceName: String

        attr_accessor :NetworkInstanceId, :NetworkInstanceName

        def initialize(networkinstanceid=nil, networkinstancename=nil)
          @NetworkInstanceId = networkinstanceid
          @NetworkInstanceName = networkinstancename
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @NetworkInstanceName = params['NetworkInstanceName']
        end
      end

      # ModifyPrivateNetworkInstance返回参数结构体
      class ModifyPrivateNetworkInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPublicNetworkInstance请求参数结构体
      class ModifyPublicNetworkInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 公网实例 ID
        # @type NetworkInstanceId: String
        # @param NetworkInstanceName: 新实例名称
        # @type NetworkInstanceName: String

        attr_accessor :NetworkInstanceId, :NetworkInstanceName

        def initialize(networkinstanceid=nil, networkinstancename=nil)
          @NetworkInstanceId = networkinstanceid
          @NetworkInstanceName = networkinstancename
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @NetworkInstanceName = params['NetworkInstanceName']
        end
      end

      # ModifyPublicNetworkInstance返回参数结构体
      class ModifyPublicNetworkInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 私网实例信息
      class PrivateNetworkInstanceInfo < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 私网实例ID
        # @type NetworkInstanceId: String
        # @param NetworkInstanceName: 私网实例名称
        # @type NetworkInstanceName: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: String
        # @param Network: 网络地址
        # @type Network: String
        # @param Mask: 网络掩码
        # @type Mask: Integer
        # @param ServerCount: 关联物理机数量
        # @type ServerCount: Integer
        # @param AvailableIpCount: 可用Ip数量
        # @type AvailableIpCount: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String

        attr_accessor :NetworkInstanceId, :NetworkInstanceName, :ZoneId, :Network, :Mask, :ServerCount, :AvailableIpCount, :CreatedAt, :UpdatedAt

        def initialize(networkinstanceid=nil, networkinstancename=nil, zoneid=nil, network=nil, mask=nil, servercount=nil, availableipcount=nil, createdat=nil, updatedat=nil)
          @NetworkInstanceId = networkinstanceid
          @NetworkInstanceName = networkinstancename
          @ZoneId = zoneid
          @Network = network
          @Mask = mask
          @ServerCount = servercount
          @AvailableIpCount = availableipcount
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @NetworkInstanceName = params['NetworkInstanceName']
          @ZoneId = params['ZoneId']
          @Network = params['Network']
          @Mask = params['Mask']
          @ServerCount = params['ServerCount']
          @AvailableIpCount = params['AvailableIpCount']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 公网实例信息，包含实例ID、可用区ID、实例名称、线路、路由模式等信息
      class PublicNetworkInstanceInfo < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 公网实例ID
        # @type NetworkInstanceId: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: String
        # @param NetworkInstanceName: 公网实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkInstanceName: String
        # @param Bandwidth: 带宽，单位Mbps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bandwidth: Integer
        # @param Line: 线路信息
        # @type Line: String
        # @param RouteMode: 路由模式，枚举值：STATIC、BGP、OSPF
        # @type RouteMode: String
        # @param ServerCount: 关联的物理服务器数量
        # @type ServerCount: Integer
        # @param Ipv4Count: 已申请的Ipv4数量
        # @type Ipv4Count: Integer
        # @param Ipv6Count: 已申请的Ipv6数量
        # @type Ipv6Count: Integer
        # @param Ipv4CidrSet: 关联的Ipv4网段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv4CidrSet: Array
        # @param Ipv6CidrSet: 关联的Ipv6网段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6CidrSet: Array
        # @param CreatedAt: 公网实例创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 公网实例修改时间
        # @type UpdatedAt: String

        attr_accessor :NetworkInstanceId, :ZoneId, :NetworkInstanceName, :Bandwidth, :Line, :RouteMode, :ServerCount, :Ipv4Count, :Ipv6Count, :Ipv4CidrSet, :Ipv6CidrSet, :CreatedAt, :UpdatedAt

        def initialize(networkinstanceid=nil, zoneid=nil, networkinstancename=nil, bandwidth=nil, line=nil, routemode=nil, servercount=nil, ipv4count=nil, ipv6count=nil, ipv4cidrset=nil, ipv6cidrset=nil, createdat=nil, updatedat=nil)
          @NetworkInstanceId = networkinstanceid
          @ZoneId = zoneid
          @NetworkInstanceName = networkinstancename
          @Bandwidth = bandwidth
          @Line = line
          @RouteMode = routemode
          @ServerCount = servercount
          @Ipv4Count = ipv4count
          @Ipv6Count = ipv6count
          @Ipv4CidrSet = ipv4cidrset
          @Ipv6CidrSet = ipv6cidrset
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @ZoneId = params['ZoneId']
          @NetworkInstanceName = params['NetworkInstanceName']
          @Bandwidth = params['Bandwidth']
          @Line = params['Line']
          @RouteMode = params['RouteMode']
          @ServerCount = params['ServerCount']
          @Ipv4Count = params['Ipv4Count']
          @Ipv6Count = params['Ipv6Count']
          unless params['Ipv4CidrSet'].nil?
            @Ipv4CidrSet = []
            params['Ipv4CidrSet'].each do |i|
              publicnetworksegment_tmp = PublicNetworkSegment.new
              publicnetworksegment_tmp.deserialize(i)
              @Ipv4CidrSet << publicnetworksegment_tmp
            end
          end
          unless params['Ipv6CidrSet'].nil?
            @Ipv6CidrSet = []
            params['Ipv6CidrSet'].each do |i|
              publicnetworksegment_tmp = PublicNetworkSegment.new
              publicnetworksegment_tmp.deserialize(i)
              @Ipv6CidrSet << publicnetworksegment_tmp
            end
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 公网网段信息，包含网段cidr和网关ip
      class PublicNetworkSegment < TencentCloud::Common::AbstractModel
        # @param Cidr: 网段Cidr
        # @type Cidr: String
        # @param Gateway: 网关Ip
        # @type Gateway: String

        attr_accessor :Cidr, :Gateway

        def initialize(cidr=nil, gateway=nil)
          @Cidr = cidr
          @Gateway = gateway
        end

        def deserialize(params)
          @Cidr = params['Cidr']
          @Gateway = params['Gateway']
        end
      end

      # ReleasePublicIp请求参数结构体
      class ReleasePublicIpRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInstanceId: 公网实例 ID（路由发布模式为 STATIC ）
        # @type NetworkInstanceId: String
        # @param Type: 待释放的Ip类型，枚举值：ipv4、ipv6
        # @type Type: String
        # @param IpList: 待释放的 Ip 地址列表
        # @type IpList: Array

        attr_accessor :NetworkInstanceId, :Type, :IpList

        def initialize(networkinstanceid=nil, type=nil, iplist=nil)
          @NetworkInstanceId = networkinstanceid
          @Type = type
          @IpList = iplist
        end

        def deserialize(params)
          @NetworkInstanceId = params['NetworkInstanceId']
          @Type = params['Type']
          @IpList = params['IpList']
        end
      end

      # ReleasePublicIp返回参数结构体
      class ReleasePublicIpResponse < TencentCloud::Common::AbstractModel
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

      # 交换机数据
      class SwitchData < TencentCloud::Common::AbstractModel
        # @param Time: UTC时间
        # @type Time: String
        # @param Value: 统计值
        # @type Value: Float

        attr_accessor :Time, :Value

        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # TerminateInstances请求参数结构体
      class TerminateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>实例ID列表，最多100个。</p>
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # TerminateInstances返回参数结构体
      class TerminateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: <p>销毁成功的实例ID列表。</p>
        # @type InstanceIdSet: Array
        # @param FailedInstanceSet: <p>销毁失败的实例信息列表（部分成功时返回）。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIdSet, :FailedInstanceSet, :RequestId

        def initialize(instanceidset=nil, failedinstanceset=nil, requestid=nil)
          @InstanceIdSet = instanceidset
          @FailedInstanceSet = failedinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          unless params['FailedInstanceSet'].nil?
            @FailedInstanceSet = []
            params['FailedInstanceSet'].each do |i|
              failedinstance_tmp = FailedInstance.new
              failedinstance_tmp.deserialize(i)
              @FailedInstanceSet << failedinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 跨地域聚合后的可用区信息。
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区ID。
        # @type ZoneId: Integer
        # @param Zone: 可用区代码。
        # @type Zone: String
        # @param ZoneName: 可用区中文名称。
        # @type ZoneName: String
        # @param ZoneNameEn: 可用区英文名称。
        # @type ZoneNameEn: String
        # @param Region: 地域代码。
        # @type Region: String
        # @param Location: 区域代码。
        # @type Location: String
        # @param LocationName: 区域名称。
        # @type LocationName: String

        attr_accessor :ZoneId, :Zone, :ZoneName, :ZoneNameEn, :Region, :Location, :LocationName

        def initialize(zoneid=nil, zone=nil, zonename=nil, zonenameen=nil, region=nil, location=nil, locationname=nil)
          @ZoneId = zoneid
          @Zone = zone
          @ZoneName = zonename
          @ZoneNameEn = zonenameen
          @Region = region
          @Location = location
          @LocationName = locationname
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneNameEn = params['ZoneNameEn']
          @Region = params['Region']
          @Location = params['Location']
          @LocationName = params['LocationName']
        end
      end

    end
  end
end

