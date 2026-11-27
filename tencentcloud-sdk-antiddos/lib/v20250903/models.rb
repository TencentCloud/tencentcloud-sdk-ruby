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
      # 连接异常条件。
      class AbnormalConnectCondition < TencentCloud::Common::AbstractModel
        # @param SynRatioThreshold: <p>SYN占比阈值（百分比）， 0为不检查。 同一连接中，SYN 包占比超过配置占比时，将被视为异常连接处置。</p><p>取值范围：[0, 100]</p>
        # @type SynRatioThreshold: Integer
        # @param SynCountThreshold: <p>SYN占比阈值（百分比）， 0为不检查。 同一连接中，SYN 包占比超过配置占比时，将被视为异常连接处置。</p><p>取值范围：[0, 65535]</p>
        # @type SynCountThreshold: Integer
        # @param ConnectTimeout: <p>连接超时（秒），0为不检查。 连接超过配置时间内未收到数据时，将被视为异常连接处置。</p><p>取值范围：[0, 65535]</p>
        # @type ConnectTimeout: Integer
        # @param EmptyConnection: <p>是否开启空连接防护。 同一客户端对应了较大数量的空连接时，将被视为异常连接处置。</p><p>枚举值：</p><ul><li>on： 开启</li><li>off： 关闭</li></ul>
        # @type EmptyConnection: String

        attr_accessor :SynRatioThreshold, :SynCountThreshold, :ConnectTimeout, :EmptyConnection

        def initialize(synratiothreshold=nil, syncountthreshold=nil, connecttimeout=nil, emptyconnection=nil)
          @SynRatioThreshold = synratiothreshold
          @SynCountThreshold = syncountthreshold
          @ConnectTimeout = connecttimeout
          @EmptyConnection = emptyconnection
        end

        def deserialize(params)
          @SynRatioThreshold = params['SynRatioThreshold']
          @SynCountThreshold = params['SynCountThreshold']
          @ConnectTimeout = params['ConnectTimeout']
          @EmptyConnection = params['EmptyConnection']
        end
      end

      # 异常连接防护配置。
      class AbnormalConnectionLimit < TencentCloud::Common::AbstractModel
        # @param AbnormalConnectThreshold: <p>异常连接数限制，限制同一时间单个源 IP 异常连接数量， 0为不启用, 范围: 0-4294967295。</p><p>取值范围：[0, 4294967295]</p>
        # @type AbnormalConnectThreshold: Integer
        # @param AbnormalConnectCondition: <p>异常连接判定条件。满足任意条件则计为一次异常统计。</p>
        # @type AbnormalConnectCondition: :class:`Tencentcloud::Antiddos.v20250903.models.AbnormalConnectCondition`

        attr_accessor :AbnormalConnectThreshold, :AbnormalConnectCondition

        def initialize(abnormalconnectthreshold=nil, abnormalconnectcondition=nil)
          @AbnormalConnectThreshold = abnormalconnectthreshold
          @AbnormalConnectCondition = abnormalconnectcondition
        end

        def deserialize(params)
          @AbnormalConnectThreshold = params['AbnormalConnectThreshold']
          unless params['AbnormalConnectCondition'].nil?
            @AbnormalConnectCondition = AbnormalConnectCondition.new
            @AbnormalConnectCondition.deserialize(params['AbnormalConnectCondition'])
          end
        end
      end

      # 连接类攻击防护配置。
      class ConnectionProtectionConfig < TencentCloud::Common::AbstractModel
        # @param SourceIPNewConnectionLimit: <p>源 IP 每秒新建连接数限制，为 0 为不限制（关闭），大于 0 开启限制。命中后限制新建连接。</p><p>取值范围：[0, 4294967295]</p>
        # @type SourceIPNewConnectionLimit: Integer
        # @param SourceIPConcurrentConnectionLimit: <p>源 IP 并发连接数限制，为 0 不限制（关闭），大于 0 开启限制。命中后限制新建连接。</p><p>取值范围：[0, 4294967295]</p>
        # @type SourceIPConcurrentConnectionLimit: Integer
        # @param DestinationIPNewConnectionLimit: <p>目的 IP 每秒新建连接数限制，为 0 不限制（关闭），大于 0 开启限制。命中后限制新建连接。</p><p>取值范围：[0, 4294967295]</p>
        # @type DestinationIPNewConnectionLimit: Integer
        # @param DestinationIPConcurrentConnectionLimit: <p>目的 IP 并发连接数限制，为 0 不限制（关闭）， 大于 0 开启限制。命中后限制新建连接。</p><p>取值范围：[0, 4294967295]</p>
        # @type DestinationIPConcurrentConnectionLimit: Integer
        # @param AbnormalConnectionLimit: <p>源 IP 异常连接限制。</p>
        # @type AbnormalConnectionLimit: :class:`Tencentcloud::Antiddos.v20250903.models.AbnormalConnectionLimit`

        attr_accessor :SourceIPNewConnectionLimit, :SourceIPConcurrentConnectionLimit, :DestinationIPNewConnectionLimit, :DestinationIPConcurrentConnectionLimit, :AbnormalConnectionLimit

        def initialize(sourceipnewconnectionlimit=nil, sourceipconcurrentconnectionlimit=nil, destinationipnewconnectionlimit=nil, destinationipconcurrentconnectionlimit=nil, abnormalconnectionlimit=nil)
          @SourceIPNewConnectionLimit = sourceipnewconnectionlimit
          @SourceIPConcurrentConnectionLimit = sourceipconcurrentconnectionlimit
          @DestinationIPNewConnectionLimit = destinationipnewconnectionlimit
          @DestinationIPConcurrentConnectionLimit = destinationipconcurrentconnectionlimit
          @AbnormalConnectionLimit = abnormalconnectionlimit
        end

        def deserialize(params)
          @SourceIPNewConnectionLimit = params['SourceIPNewConnectionLimit']
          @SourceIPConcurrentConnectionLimit = params['SourceIPConcurrentConnectionLimit']
          @DestinationIPNewConnectionLimit = params['DestinationIPNewConnectionLimit']
          @DestinationIPConcurrentConnectionLimit = params['DestinationIPConcurrentConnectionLimit']
          unless params['AbnormalConnectionLimit'].nil?
            @AbnormalConnectionLimit = AbnormalConnectionLimit.new
            @AbnormalConnectionLimit.deserialize(params['AbnormalConnectionLimit'])
          end
        end
      end

      # CreateProtection请求参数结构体
      class CreateProtectionRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>防护实例名称。</p><p>入参限制：防护实例名称最多 60 个字符，同一主账号下不可重名。</p>
        # @type Name: String
        # @param ProtectionLevel: <p>防护实例的防护级别。</p><p>枚举值：</p><ul><li>advanced： 增强防护；</li><li>ultimate： 卓越防护，仅在当前主账号已订阅任意扩展包时可用。</li></ul><p>不同订阅套餐版本下可用的防护级别不同，可接入的防护资源类型与防护容量也相应不同，具体请参见 <a href="https://cloud.tencent.com/document/product/297/137986">DDoS 防护容量说明</a>。</p>
        # @type ProtectionLevel: String
        # @param Tags: <p>标签。用于对防护实例进行分权限管控与分账。<p>需要先前往 <a href="https://console.cloud.tencent.com/tag/taglist">标签控制台</a> 创建对应标签，方可在此处传入标签键与标签值。</p></p>
        # @type Tags: Array

        attr_accessor :Name, :ProtectionLevel, :Tags

        def initialize(name=nil, protectionlevel=nil, tags=nil)
          @Name = name
          @ProtectionLevel = protectionlevel
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @ProtectionLevel = params['ProtectionLevel']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # CreateProtection返回参数结构体
      class CreateProtectionResponse < TencentCloud::Common::AbstractModel
        # @param ProtectionId: <p>防护实例 ID。</p>
        # @type ProtectionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProtectionId, :RequestId

        def initialize(protectionid=nil, requestid=nil)
          @ProtectionId = protectionid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProtectionId = params['ProtectionId']
          @RequestId = params['RequestId']
        end
      end

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

      # 当前账号剩余解封配额。付费订阅 DDoS 高防产品的账号，将根据产品规格获得解封次数配额，配额按日或按月周期提供。

      # - 按日提供的解封配额在每天 00:00（UTC+8）重置，当天未使用的配额不会累计到次日。
      # - 按月提供的解封配额每月首日00:00（UTC+8）重置重置，当月未使用的配额不会累计到次日。
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

      # DDoS 默认防护配置，用于设置清洗策略的灵敏度等级。
      class DefaultProtectionConfig < TencentCloud::Common::AbstractModel
        # @param SensitivityLevel: <p>DDoS 防护等级配置，决定清洗策略的灵敏度。</p><p>枚举值：</p><ul><li>high： 高灵敏度。清洗策略相对严格，建议在正常模式出现攻击透传时使用。</li><li>medium： 适中灵敏度（默认）。清洗策略适配绝大多数业务，可有效防护常见攻击。</li><li>low： 宽松灵敏度。清洗策略相对宽松，仅对具有明确攻击特征的攻击包进行防护。</li></ul><p>详见 <a href="https://cloud.tencent.com/document/product/297/139103">各个防护等级防护策略</a> 说明。</p>
        # @type SensitivityLevel: String

        attr_accessor :SensitivityLevel

        def initialize(sensitivitylevel=nil)
          @SensitivityLevel = sensitivitylevel
        end

        def deserialize(params)
          @SensitivityLevel = params['SensitivityLevel']
        end
      end

      # DeleteProtection请求参数结构体
      class DeleteProtectionRequest < TencentCloud::Common::AbstractModel
        # @param ProtectionId: <p>防护实例 ID。</p>
        # @type ProtectionId: String

        attr_accessor :ProtectionId

        def initialize(protectionid=nil)
          @ProtectionId = protectionid
        end

        def deserialize(params)
          @ProtectionId = params['ProtectionId']
        end
      end

      # DeleteProtection返回参数结构体
      class DeleteProtectionResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDDoSProtectionPolicy请求参数结构体
      class DescribeDDoSProtectionPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProtectionId: <p>防护实例 ID。</p>
        # @type ProtectionId: String

        attr_accessor :ProtectionId

        def initialize(protectionid=nil)
          @ProtectionId = protectionid
        end

        def deserialize(params)
          @ProtectionId = params['ProtectionId']
        end
      end

      # DescribeDDoSProtectionPolicy返回参数结构体
      class DescribeDDoSProtectionPolicyResponse < TencentCloud::Common::AbstractModel
        # @param ProtectionPolicy: <p>DDoS 防护策略。</p>
        # @type ProtectionPolicy: :class:`Tencentcloud::Antiddos.v20250903.models.ProtectionPolicy`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProtectionPolicy, :RequestId

        def initialize(protectionpolicy=nil, requestid=nil)
          @ProtectionPolicy = protectionpolicy
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProtectionPolicy'].nil?
            @ProtectionPolicy = ProtectionPolicy.new
            @ProtectionPolicy.deserialize(params['ProtectionPolicy'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProtectionResources请求参数结构体
      class DescribeProtectionResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ProtectionId: <p>防护实例 ID。</p>
        # @type ProtectionId: String
        # @param Offset: <p>分页查询偏移量。默认值：0。</p>
        # @type Offset: Integer
        # @param Limit: <p>分页查询限制数目。默认值：20，最大值：100。</p>
        # @type Limit: Integer
        # @param Filters: <p>过滤条件。<p><code>Filters</code> 数组的元素个数上限为 20。不填写该参数时，返回防护实例下的全部防护资源。</p><p>支持的过滤字段：</p><ul><li><code>ResourceType</code>：按防护资源类型过滤。可选项：<ul><li><code>cvm</code>：云服务器。</li><li><code>lighthouse</code>：轻量应用服务器。</li><li><code>clb</code>：负载均衡。</li><li><code>eip</code>：弹性公网 IP。</li><li><code>waf</code>：Web 应用防火墙。</li><li><code>teo_l7_domain</code>：EdgeOne 域名。</li><li><code>teo_l4_proxy</code>：EdgeOne 四层代理。</li></ul></li></ul></p>
        # @type Filters: Array

        attr_accessor :ProtectionId, :Offset, :Limit, :Filters

        def initialize(protectionid=nil, offset=nil, limit=nil, filters=nil)
          @ProtectionId = protectionid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ProtectionId = params['ProtectionId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              protectionfilter_tmp = ProtectionFilter.new
              protectionfilter_tmp.deserialize(i)
              @Filters << protectionfilter_tmp
            end
          end
        end
      end

      # DescribeProtectionResources返回参数结构体
      class DescribeProtectionResourcesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>符合条件的防护资源总数。</p>
        # @type TotalCount: Integer
        # @param ResourceInfos: <p>防护资源详细信息列表。</p>
        # @type ResourceInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResourceInfos, :RequestId

        def initialize(totalcount=nil, resourceinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @ResourceInfos = resourceinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResourceInfos'].nil?
            @ResourceInfos = []
            params['ResourceInfos'].each do |i|
              resourceinfo_tmp = ResourceInfo.new
              resourceinfo_tmp.deserialize(i)
              @ResourceInfos << resourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProtections请求参数结构体
      class DescribeProtectionsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <p>过滤条件。<p><code>Filters</code> 数组的元素个数上限为 20。不填写该参数时，返回当前账号下有权限的全部防护实例。</p><p>支持的过滤字段：</p><ul><li><code>Name</code>：按防护实例名称过滤。</li><li><code>ProtectionId</code>：按防护实例 ID 过滤。</li><li><code>ProtectionLevel</code>：按防护实例级别过滤。可选项：<ul><li><code>advanced</code>：增强防护。</li><li><code>ultimate</code>：卓越防护。</li></ul></li><li><code>Status</code>：按防护实例状态过滤。可选项：<ul><li><code>protecting</code>：防护中。</li><li><code>processing</code>：变更中。</li><li><code>disabling</code>：隔离中或删除中。</li><li><code>disabled</code>：已隔离。</li></ul></li><li><code>TagKey</code>：按标签键过滤。</li><li><code>TagValue</code>：按标签值过滤。</li></ul><p>模糊查询时支持过滤字段名包括 <code>Name</code>、<code>ProtectionId</code>、<code>ProtectionLevel</code>、<code>Status</code>、<code>TagKey</code>、<code>TagValue</code>。</p></p>
        # @type Filters: Array
        # @param Offset: <p>分页查询偏移量。默认值：0。</p>
        # @type Offset: Integer
        # @param Limit: <p>分页查询限制数目。默认值：20，最大值：100。</p>
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
              protectionfilter_tmp = ProtectionFilter.new
              protectionfilter_tmp.deserialize(i)
              @Filters << protectionfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeProtections返回参数结构体
      class DescribeProtectionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>符合条件的防护实例个数。</p>
        # @type TotalCount: Integer
        # @param Protections: <p>防护实例详细信息列表。</p>
        # @type Protections: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Protections, :RequestId

        def initialize(totalcount=nil, protections=nil, requestid=nil)
          @TotalCount = totalcount
          @Protections = protections
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Protections'].nil?
            @Protections = []
            params['Protections'].each do |i|
              protectioninfo_tmp = ProtectionInfo.new
              protectioninfo_tmp.deserialize(i)
              @Protections << protectioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceProtections请求参数结构体
      class DescribeResourceProtectionsRequest < TencentCloud::Common::AbstractModel
        # @param Resources: <p>防护资源，须采用资源六段式格式。具体格式如下：<ul><li>云服务器：<code>qcs::cvm:${region}:uin/${uin}:instance/${InstanceId}</code></li><li>轻量应用服务器：<code>qcs::lighthouse:${region}:uin/${uin}:instance/${InstanceId}</code></li><li>负载均衡：<code>qcs::clb:${region}:uin/${uin}:clb/${LoadBalancerId}</code></li><li>弹性公网 IP：<code>qcs::cvm:${region}:uin/${uin}:eip/${AddressId}</code></li><li>Web 应用防火墙：<code>qcs::waf:${region}:uin/${uin}:waf/${InstanceId}</code></li><li>EdgeOne 域名：<code>qcs::teo::uin/${uin}:zone/${ZoneId}/Domain/${Domain}</code></li><li>EdgeOne 四层代理：<code>qcs::teo::uin/${uin}:zone/${ZoneId}/L4Proxy/${InstanceId}</code></li></ul></p><p>取值参考：<a href="https://cloud.tencent.com/document/product/598/67350">支持 CAM 的业务接口</a></p>
        # @type Resources: Array

        attr_accessor :Resources

        def initialize(resources=nil)
          @Resources = resources
        end

        def deserialize(params)
          @Resources = params['Resources']
        end
      end

      # DescribeResourceProtections返回参数结构体
      class DescribeResourceProtectionsResponse < TencentCloud::Common::AbstractModel
        # @param ResourceProtections: <p>防护资源对应的防护实例列表。资源未绑定任何防护实例时，返回空数组。</p>
        # @type ResourceProtections: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceProtections, :RequestId

        def initialize(resourceprotections=nil, requestid=nil)
          @ResourceProtections = resourceprotections
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceProtections'].nil?
            @ResourceProtections = []
            params['ResourceProtections'].each do |i|
              resourceprotection_tmp = ResourceProtection.new
              resourceprotection_tmp.deserialize(i)
              @ResourceProtections << resourceprotection_tmp
            end
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

      # 区域封禁配置。
      class GeoBlockingConfig < TencentCloud::Common::AbstractModel
        # @param GeoCode: <p>封禁地域列表。采用<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2"> ISO 3166-1 alpha-2 </a>标准的两字代码。</p>
        # @type GeoCode: Array

        attr_accessor :GeoCode

        def initialize(geocode=nil)
          @GeoCode = geocode
        end

        def deserialize(params)
          @GeoCode = params['GeoCode']
        end
      end

      # IP 黑白名单规则。
      class IPACLRule < TencentCloud::Common::AbstractModel
        # @param Action: <p>处置方式。</p><p>枚举值：</p><ul><li>drop： 黑名单（拦截）。</li><li>allow： 白名单（放行）。</li></ul>
        # @type Action: String
        # @param IPs: <p>IP 列表。</p><p>参数格式：支持 IPv4、IPv6 和 CIDR 格式。</p>
        # @type IPs: Array

        attr_accessor :Action, :IPs

        def initialize(action=nil, ips=nil)
          @Action = action
          @IPs = ips
        end

        def deserialize(params)
          @Action = params['Action']
          @IPs = params['IPs']
        end
      end

      # IP 黑白名单规则列表。
      class IPACLRules < TencentCloud::Common::AbstractModel
        # @param Rules: <p>IP 黑白名单规则列表。</p>
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ipaclrule_tmp = IPACLRule.new
              ipaclrule_tmp.deserialize(i)
              @Rules << ipaclrule_tmp
            end
          end
        end
      end

      # ModifyDDoSProtectionPolicy请求参数结构体
      class ModifyDDoSProtectionPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProtectionId: <p>防护实例 ID。</p>
        # @type ProtectionId: String
        # @param ProtectionPolicy: <p>防护策略。</p><p>支持部分修改：对于 <code>ProtectionPolicy</code> 下的各子策略，入参未传入的子策略保持原值不变。</p>
        # @type ProtectionPolicy: :class:`Tencentcloud::Antiddos.v20250903.models.ProtectionPolicy`

        attr_accessor :ProtectionId, :ProtectionPolicy

        def initialize(protectionid=nil, protectionpolicy=nil)
          @ProtectionId = protectionid
          @ProtectionPolicy = protectionpolicy
        end

        def deserialize(params)
          @ProtectionId = params['ProtectionId']
          unless params['ProtectionPolicy'].nil?
            @ProtectionPolicy = ProtectionPolicy.new
            @ProtectionPolicy.deserialize(params['ProtectionPolicy'])
          end
        end
      end

      # ModifyDDoSProtectionPolicy返回参数结构体
      class ModifyDDoSProtectionPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProtection请求参数结构体
      class ModifyProtectionRequest < TencentCloud::Common::AbstractModel
        # @param ProtectionId: <p>防护实例 ID。</p>
        # @type ProtectionId: String
        # @param Name: <p>防护实例名称。</p><p>入参限制：防护实例名称最多 60 个字符，同一主账号下不可重名。</p>
        # @type Name: String

        attr_accessor :ProtectionId, :Name

        def initialize(protectionid=nil, name=nil)
          @ProtectionId = protectionid
          @Name = name
        end

        def deserialize(params)
          @ProtectionId = params['ProtectionId']
          @Name = params['Name']
        end
      end

      # ModifyProtectionResource请求参数结构体
      class ModifyProtectionResourceRequest < TencentCloud::Common::AbstractModel
        # @param ProtectionId: <p>防护实例 ID。</p>
        # @type ProtectionId: String
        # @param Mode: <p>操作类型。</p><p>枚举值：</p><ul><li>APPEND： 向防护实例中添加新的防护资源；</li><li>UPDATE： 替换防护实例中的全部防护资源；</li><li>REMOVE： 从防护实例中移除指定的防护资源。</li></ul><p>默认值：APPEND</p>
        # @type Mode: String
        # @param Resources: <p>防护资源，须采用资源六段式格式。具体格式如下：<ul><li>云服务器：<code>qcs::cvm:${region}:uin/${uin}:instance/${InstanceId}</code></li><li>轻量应用服务器：<code>qcs::lighthouse:${region}:uin/${uin}:instance/${InstanceId}</code></li><li>负载均衡：<code>qcs::clb:${region}:uin/${uin}:clb/${LoadBalancerId}</code></li><li>弹性公网 IP：<code>qcs::cvm:${region}:uin/${uin}:eip/${AddressId}</code></li><li>Web 应用防火墙：<code>qcs::waf:${region}:uin/${uin}:waf/${InstanceId}</code></li><li>EdgeOne 域名：<code>qcs::teo::uin/${uin}:zone/${ZoneId}/Domain/${Domain}</code></li><li>EdgeOne 四层代理：<code>qcs::teo::uin/${uin}:zone/${ZoneId}/L4Proxy/${InstanceId}</code></li></ul></p><p>取值参考：<a href="https://cloud.tencent.com/document/product/598/67350">支持 CAM 的业务接口</a></p>
        # @type Resources: Array
        # @param ConflictStrategy: <p>冲突策略。</p><p>枚举值：</p><ul><li>REJECT： 若任一防护资源已存在于其他防护实例，则拒绝本次操作。</li><li>FORCE： 若任一防护资源已存在于其他防护实例，则强制将其添加至当前实例。</li></ul><p>默认值：REJECT</p>
        # @type ConflictStrategy: String

        attr_accessor :ProtectionId, :Mode, :Resources, :ConflictStrategy

        def initialize(protectionid=nil, mode=nil, resources=nil, conflictstrategy=nil)
          @ProtectionId = protectionid
          @Mode = mode
          @Resources = resources
          @ConflictStrategy = conflictstrategy
        end

        def deserialize(params)
          @ProtectionId = params['ProtectionId']
          @Mode = params['Mode']
          @Resources = params['Resources']
          @ConflictStrategy = params['ConflictStrategy']
        end
      end

      # ModifyProtectionResource返回参数结构体
      class ModifyProtectionResourceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProtection返回参数结构体
      class ModifyProtectionResponse < TencentCloud::Common::AbstractModel
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

      # 报文匹配条件。
      class PacketFilterCondition < TencentCloud::Common::AbstractModel
        # @param MatchBegin: <p>报文匹配的起始位置。</p><p>枚举值：</p><ul><li>ip_header： 从 IP 头部开始匹配。</li><li>transport_header： 从 TCP/UDP 头部开始匹配。</li><li>payload： 从应用层载荷开始匹配。</li></ul>
        # @type MatchBegin: String
        # @param Content: <p>报文匹配内容。</p>
        # @type Content: :class:`Tencentcloud::Antiddos.v20250903.models.PacketMatchContent`

        attr_accessor :MatchBegin, :Content

        def initialize(matchbegin=nil, content=nil)
          @MatchBegin = matchbegin
          @Content = content
        end

        def deserialize(params)
          @MatchBegin = params['MatchBegin']
          unless params['Content'].nil?
            @Content = PacketMatchContent.new
            @Content.deserialize(params['Content'])
          end
        end
      end

      # 特征过滤规则。
      class PacketFilterRule < TencentCloud::Common::AbstractModel
        # @param Action: <p>匹配后执行的动作。</p><p>枚举值：</p><ul><li>drop： 丢弃。</li><li>allow： 放行。</li><li>drop_and_block： 丢弃并拉黑。</li><li>forward： 继续防护，即继续执行下一个防护子策略，而非特征过滤内的其他规则。</li></ul>
        # @type Action: String
        # @param Protocol: <p>协议类型。</p><p>枚举值：</p><ul><li>tcp： TCP 协议。</li><li>udp： UDP 协议。</li><li>all： 所有协议。</li></ul>
        # @type Protocol: String
        # @param PacketSizeRange: <p>报文长度范围。</p>
        # @type PacketSizeRange: :class:`Tencentcloud::Antiddos.v20250903.models.SizeRange`
        # @param SourcePortRange: <p>源端口范围。</p>
        # @type SourcePortRange: :class:`Tencentcloud::Antiddos.v20250903.models.PortRange`
        # @param DestinationPortRange: <p>目的端口范围。</p>
        # @type DestinationPortRange: :class:`Tencentcloud::Antiddos.v20250903.models.PortRange`
        # @param PacketFilterConditions: <p>报文匹配条件列表。</p>
        # @type PacketFilterConditions: Array

        attr_accessor :Action, :Protocol, :PacketSizeRange, :SourcePortRange, :DestinationPortRange, :PacketFilterConditions

        def initialize(action=nil, protocol=nil, packetsizerange=nil, sourceportrange=nil, destinationportrange=nil, packetfilterconditions=nil)
          @Action = action
          @Protocol = protocol
          @PacketSizeRange = packetsizerange
          @SourcePortRange = sourceportrange
          @DestinationPortRange = destinationportrange
          @PacketFilterConditions = packetfilterconditions
        end

        def deserialize(params)
          @Action = params['Action']
          @Protocol = params['Protocol']
          unless params['PacketSizeRange'].nil?
            @PacketSizeRange = SizeRange.new
            @PacketSizeRange.deserialize(params['PacketSizeRange'])
          end
          unless params['SourcePortRange'].nil?
            @SourcePortRange = PortRange.new
            @SourcePortRange.deserialize(params['SourcePortRange'])
          end
          unless params['DestinationPortRange'].nil?
            @DestinationPortRange = PortRange.new
            @DestinationPortRange.deserialize(params['DestinationPortRange'])
          end
          unless params['PacketFilterConditions'].nil?
            @PacketFilterConditions = []
            params['PacketFilterConditions'].each do |i|
              packetfiltercondition_tmp = PacketFilterCondition.new
              packetfiltercondition_tmp.deserialize(i)
              @PacketFilterConditions << packetfiltercondition_tmp
            end
          end
        end
      end

      # 特征过滤规则列表。
      class PacketFilterRules < TencentCloud::Common::AbstractModel
        # @param Rules: <p>特征过滤规则列表。</p>
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              packetfilterrule_tmp = PacketFilterRule.new
              packetfilterrule_tmp.deserialize(i)
              @Rules << packetfilterrule_tmp
            end
          end
        end
      end

      # 报文匹配内容。
      class PacketMatchContent < TencentCloud::Common::AbstractModel
        # @param Type: <p>匹配值 Value 的格式类型。</p><p>枚举值：</p><ul><li>string： 明文字符串。</li><li>hex： 十六进制字符串。</li></ul>
        # @type Type: String
        # @param Value: <p>匹配值。Type=string 时为明文字符串，例如 <code>GET /index</code>；Type=hex 时为十六进制字符串，例如 <code>0x7e2f68656c6c6f</code>。</p>
        # @type Value: String
        # @param Offset: <p>匹配起始偏移量，从匹配起始位置（MatchBegin）开始计算。</p><p>取值范围：[0, 1500]</p><p>单位：字节</p>
        # @type Offset: Integer
        # @param Depth: <p>检查深度，即从 Offset 开始的最大检查字节数。</p><p>取值范围：[0, 1500]</p><p>单位：字节</p>
        # @type Depth: Integer

        attr_accessor :Type, :Value, :Offset, :Depth

        def initialize(type=nil, value=nil, offset=nil, depth=nil)
          @Type = type
          @Value = value
          @Offset = offset
          @Depth = depth
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
          @Offset = params['Offset']
          @Depth = params['Depth']
        end
      end

      # 端口过滤规则。
      class PortACLRule < TencentCloud::Common::AbstractModel
        # @param SourcePortRange: <p>源端口范围。</p>
        # @type SourcePortRange: :class:`Tencentcloud::Antiddos.v20250903.models.PortRange`
        # @param DestinationPortRange: <p>目的端口范围。</p>
        # @type DestinationPortRange: :class:`Tencentcloud::Antiddos.v20250903.models.PortRange`
        # @param Protocol: <p>协议类型。</p><p>枚举值：</p><ul><li>all ： 所有协议。</li><li>tcp： TCP 协议。</li><li>udp： UDP 协议。</li></ul>
        # @type Protocol: String
        # @param Action: <p>处置动作。</p><p>枚举值：</p><ul><li>drop： 丢弃。</li><li>allow： 放行。</li><li>forward： 继续防护，即继续执行下一个防护子策略模块，而非端口过滤内的其他规则。</li></ul>
        # @type Action: String

        attr_accessor :SourcePortRange, :DestinationPortRange, :Protocol, :Action

        def initialize(sourceportrange=nil, destinationportrange=nil, protocol=nil, action=nil)
          @SourcePortRange = sourceportrange
          @DestinationPortRange = destinationportrange
          @Protocol = protocol
          @Action = action
        end

        def deserialize(params)
          unless params['SourcePortRange'].nil?
            @SourcePortRange = PortRange.new
            @SourcePortRange.deserialize(params['SourcePortRange'])
          end
          unless params['DestinationPortRange'].nil?
            @DestinationPortRange = PortRange.new
            @DestinationPortRange.deserialize(params['DestinationPortRange'])
          end
          @Protocol = params['Protocol']
          @Action = params['Action']
        end
      end

      # 端口过滤规则列表。
      class PortACLRules < TencentCloud::Common::AbstractModel
        # @param Rules: <p>端口过滤规则列表。</p>
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              portaclrule_tmp = PortACLRule.new
              portaclrule_tmp.deserialize(i)
              @Rules << portaclrule_tmp
            end
          end
        end
      end

      # 端口范围。
      class PortRange < TencentCloud::Common::AbstractModel
        # @param FromPort: <p>起始端口。</p><p>取值范围：[1, 65535]</p><p>与 <code>ToPort</code> 相同时表示单个端口。</p>
        # @type FromPort: Integer
        # @param ToPort: <p>结束端口</p><p>取值范围：[1, 65535]</p>
        # @type ToPort: Integer

        attr_accessor :FromPort, :ToPort

        def initialize(fromport=nil, toport=nil)
          @FromPort = fromport
          @ToPort = toport
        end

        def deserialize(params)
          @FromPort = params['FromPort']
          @ToPort = params['ToPort']
        end
      end

      # 用于按指定字段过滤查询结果，例如按防护实例 ID、名称、状态等过滤。多个 Filter 之间为逻辑与（AND）关系；同一 Filter 的多个 Values 之间为逻辑或（OR）关系。
      class ProtectionFilter < TencentCloud::Common::AbstractModel
        # @param Name: <p>需要过滤的字段名。</p>
        # @type Name: String
        # @param Values: <p>对应字段的过滤值。</p>
        # @type Values: Array
        # @param Fuzzy: <p>是否启用模糊查询。</p>
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Values, :Fuzzy

        def initialize(name=nil, values=nil, fuzzy=nil)
          @Name = name
          @Values = values
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @Fuzzy = params['Fuzzy']
        end
      end

      # DDoS 防护实例信息。
      class ProtectionInfo < TencentCloud::Common::AbstractModel
        # @param ProtectionId: <p>防护实例 ID。</p>
        # @type ProtectionId: String
        # @param Name: <p>防护实例名称。</p>
        # @type Name: String
        # @param ProtectionLevel: <p>防护实例的防护级别。</p><p>枚举值：</p><ul><li>advanced： 增强防护；</li><li>ultimate： 卓越防护。</li></ul>
        # @type ProtectionLevel: String
        # @param Status: <p>防护实例状态。</p><p>枚举值：</p><ul><li>protecting： 防护中；</li><li>processing： 变更中；</li><li>disabling： 停用中；</li><li>disabled： 已停用。</li></ul>
        # @type Status: String
        # @param Tags: <p>资源标签列表。</p>
        # @type Tags: Array
        # @param ResourceCount: <p>防护实例中的防护资源数量。</p>
        # @type ResourceCount: Integer

        attr_accessor :ProtectionId, :Name, :ProtectionLevel, :Status, :Tags, :ResourceCount

        def initialize(protectionid=nil, name=nil, protectionlevel=nil, status=nil, tags=nil, resourcecount=nil)
          @ProtectionId = protectionid
          @Name = name
          @ProtectionLevel = protectionlevel
          @Status = status
          @Tags = tags
          @ResourceCount = resourcecount
        end

        def deserialize(params)
          @ProtectionId = params['ProtectionId']
          @Name = params['Name']
          @ProtectionLevel = params['ProtectionLevel']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @ResourceCount = params['ResourceCount']
        end
      end

      # 防护实例的 L3/4 DDoS 防护策略。
      class ProtectionPolicy < TencentCloud::Common::AbstractModel
        # @param DefaultProtection: <p>默认防护配置。</p>
        # @type DefaultProtection: :class:`Tencentcloud::Antiddos.v20250903.models.DefaultProtectionConfig`
        # @param IPACLRules: <p>IP 黑白名单规则列表。</p>
        # @type IPACLRules: :class:`Tencentcloud::Antiddos.v20250903.models.IPACLRules`
        # @param PortACLRules: <p>端口过滤规则列表。</p>
        # @type PortACLRules: :class:`Tencentcloud::Antiddos.v20250903.models.PortACLRules`
        # @param SpeedLimitRules: <p>限速规则列表。</p>
        # @type SpeedLimitRules: :class:`Tencentcloud::Antiddos.v20250903.models.SpeedLimitRules`
        # @param PacketFilterRules: <p>包特征过滤规则列表。</p>
        # @type PacketFilterRules: :class:`Tencentcloud::Antiddos.v20250903.models.PacketFilterRules`
        # @param GeoBlocking: <p>区域封禁配置。</p>
        # @type GeoBlocking: :class:`Tencentcloud::Antiddos.v20250903.models.GeoBlockingConfig`
        # @param ProtocolBlocking: <p>协议封禁配置。</p>
        # @type ProtocolBlocking: :class:`Tencentcloud::Antiddos.v20250903.models.ProtocolBlockingConfig`
        # @param ConnectionProtection: <p>连接类攻击防护配置。</p>
        # @type ConnectionProtection: :class:`Tencentcloud::Antiddos.v20250903.models.ConnectionProtectionConfig`
        # @param TrafficSignature: <p>流量签名配置。</p>
        # @type TrafficSignature: :class:`Tencentcloud::Antiddos.v20250903.models.TrafficSignatureConfig`

        attr_accessor :DefaultProtection, :IPACLRules, :PortACLRules, :SpeedLimitRules, :PacketFilterRules, :GeoBlocking, :ProtocolBlocking, :ConnectionProtection, :TrafficSignature

        def initialize(defaultprotection=nil, ipaclrules=nil, portaclrules=nil, speedlimitrules=nil, packetfilterrules=nil, geoblocking=nil, protocolblocking=nil, connectionprotection=nil, trafficsignature=nil)
          @DefaultProtection = defaultprotection
          @IPACLRules = ipaclrules
          @PortACLRules = portaclrules
          @SpeedLimitRules = speedlimitrules
          @PacketFilterRules = packetfilterrules
          @GeoBlocking = geoblocking
          @ProtocolBlocking = protocolblocking
          @ConnectionProtection = connectionprotection
          @TrafficSignature = trafficsignature
        end

        def deserialize(params)
          unless params['DefaultProtection'].nil?
            @DefaultProtection = DefaultProtectionConfig.new
            @DefaultProtection.deserialize(params['DefaultProtection'])
          end
          unless params['IPACLRules'].nil?
            @IPACLRules = IPACLRules.new
            @IPACLRules.deserialize(params['IPACLRules'])
          end
          unless params['PortACLRules'].nil?
            @PortACLRules = PortACLRules.new
            @PortACLRules.deserialize(params['PortACLRules'])
          end
          unless params['SpeedLimitRules'].nil?
            @SpeedLimitRules = SpeedLimitRules.new
            @SpeedLimitRules.deserialize(params['SpeedLimitRules'])
          end
          unless params['PacketFilterRules'].nil?
            @PacketFilterRules = PacketFilterRules.new
            @PacketFilterRules.deserialize(params['PacketFilterRules'])
          end
          unless params['GeoBlocking'].nil?
            @GeoBlocking = GeoBlockingConfig.new
            @GeoBlocking.deserialize(params['GeoBlocking'])
          end
          unless params['ProtocolBlocking'].nil?
            @ProtocolBlocking = ProtocolBlockingConfig.new
            @ProtocolBlocking.deserialize(params['ProtocolBlocking'])
          end
          unless params['ConnectionProtection'].nil?
            @ConnectionProtection = ConnectionProtectionConfig.new
            @ConnectionProtection.deserialize(params['ConnectionProtection'])
          end
          unless params['TrafficSignature'].nil?
            @TrafficSignature = TrafficSignatureConfig.new
            @TrafficSignature.deserialize(params['TrafficSignature'])
          end
        end
      end

      # 协议封禁配置。
      class ProtocolBlockingConfig < TencentCloud::Common::AbstractModel
        # @param TCPProtocol: <p>TCP 协议封禁。</p><p>枚举值：</p><ul><li>on： 开启</li><li>off： 关闭</li></ul>
        # @type TCPProtocol: String
        # @param UDPProtocol: <p>UDP 协议封禁。</p><p>枚举值：</p><ul><li>on： 开启</li><li>off： 关闭</li></ul>
        # @type UDPProtocol: String
        # @param ICMPProtocol: <p>ICMP 协议封禁。</p><p>枚举值：</p><ul><li>on： 开启</li><li>off： 关闭</li></ul>
        # @type ICMPProtocol: String
        # @param OtherProtocol: <p>其它协议封禁（除 TCP/UDP/ICMP 外的协议）。</p><p>枚举值：</p><ul><li>on： 开启</li><li>off： 关闭</li></ul>
        # @type OtherProtocol: String

        attr_accessor :TCPProtocol, :UDPProtocol, :ICMPProtocol, :OtherProtocol

        def initialize(tcpprotocol=nil, udpprotocol=nil, icmpprotocol=nil, otherprotocol=nil)
          @TCPProtocol = tcpprotocol
          @UDPProtocol = udpprotocol
          @ICMPProtocol = icmpprotocol
          @OtherProtocol = otherprotocol
        end

        def deserialize(params)
          @TCPProtocol = params['TCPProtocol']
          @UDPProtocol = params['UDPProtocol']
          @ICMPProtocol = params['ICMPProtocol']
          @OtherProtocol = params['OtherProtocol']
        end
      end

      # 防护资源的详细信息。
      class ResourceInfo < TencentCloud::Common::AbstractModel
        # @param Resource: <p>防护资源的资源六段式标识。</p>
        # @type Resource: String
        # @param ResourceType: <p>防护资源类型。</p><p>枚举值：</p><ul><li>cvm： 云服务器</li><li>lighthouse： 轻量应用服务器</li><li>clb： 负载均衡</li><li>eip： 弹性公网 IP</li><li>waf： Web 应用防火墙</li><li>teo_l7_domain： EdgeOne 域名</li><li>teo_l4_proxy： EdgeOne 四层代理</li></ul>
        # @type ResourceType: String
        # @param Status: <p>防护资源的防护状态。</p><p>枚举值：</p><ul><li>protecting： 防护中</li><li>processing： 防护变更中</li><li>disabling： 防护停用中</li><li>disabled： 防护已停用</li><li>process_failed： 防护变更失败</li><li>disabled_failed： 防护停用失败</li></ul>
        # @type Status: String
        # @param Region: <p>防护资源所属地域，例如 <code>ap-beijing</code>。</p><p>资源类型为 EdgeOne 时，Region 取以下枚举值：</p><ul><li>global：全球可用区。</li><li>mainland：中国大陆可用区。</li><li>overseas：全球可用区（中国大陆除外）。</li></ul>
        # @type Region: String
        # @param PublicAddresses: <p>公网访问地址。</p><ul><li>资源类型是以公网 IP 提供接入的云资产时，返回对应的公网 IP。</li><li>资源类型是以域名提供接入的云资产时，返回对应域名，例如 <a href="https://cloud.tencent.com/document/product/214/86948">域名化负载均衡实例</a>。</li><li>资源类型为 EdgeOne 四层代理或七层域名时，不返回该字段。</li></ul>
        # @type PublicAddresses: Array

        attr_accessor :Resource, :ResourceType, :Status, :Region, :PublicAddresses

        def initialize(resource=nil, resourcetype=nil, status=nil, region=nil, publicaddresses=nil)
          @Resource = resource
          @ResourceType = resourcetype
          @Status = status
          @Region = region
          @PublicAddresses = publicaddresses
        end

        def deserialize(params)
          @Resource = params['Resource']
          @ResourceType = params['ResourceType']
          @Status = params['Status']
          @Region = params['Region']
          @PublicAddresses = params['PublicAddresses']
        end
      end

      # 防护资源及其绑定的防护实例。
      class ResourceProtection < TencentCloud::Common::AbstractModel
        # @param Resource: <p>防护资源的资源六段式标识。</p>
        # @type Resource: String
        # @param ProtectionId: <p>该资源绑定的防护实例 ID。</p>
        # @type ProtectionId: String

        attr_accessor :Resource, :ProtectionId

        def initialize(resource=nil, protectionid=nil)
          @Resource = resource
          @ProtectionId = protectionid
        end

        def deserialize(params)
          @Resource = params['Resource']
          @ProtectionId = params['ProtectionId']
        end
      end

      # 数值范围。
      class SizeRange < TencentCloud::Common::AbstractModel
        # @param Min: <p>最小值。</p><p>与 <code>Max</code> 相等时表示单个值。</p>
        # @type Min: Integer
        # @param Max: <p>最大值。</p>
        # @type Max: Integer

        attr_accessor :Min, :Max

        def initialize(min=nil, max=nil)
          @Min = min
          @Max = max
        end

        def deserialize(params)
          @Min = params['Min']
          @Max = params['Max']
        end
      end

      # 端口限速规则。
      class SpeedLimitRule < TencentCloud::Common::AbstractModel
        # @param IPProtocolNumbers: <p>IP 协议号。取值参考 <a href="https://en.wikipedia.org/wiki/List_of_IP_protocol_numbers">IP 协议号列表</a> 。</p><p>参数格式：0-255 范围的数字。支持单个 IP 协议号和 IP 协议号范围。</p><p><code>0-255</code> 表示全部协议。</p>
        # @type IPProtocolNumbers: Array
        # @param DestinationPortRanges: <p>目的端口范围列表。</p>
        # @type DestinationPortRanges: Array
        # @param Mode: <p>限速统计维度。</p><p>枚举值：</p><ul><li>destination_ip： 按目的 IP 维度统计。</li><li>source_destination_ip： 按源 IP + 目的 IP 维度统计。</li></ul>
        # @type Mode: String
        # @param BandwidthLimit: <p>流量带宽限制。</p><p>取值范围：[0, 4294967295]</p><p>单位：bps</p><p>为 0 时表示不限制。BandwidthLimit 和 PacketRateLimit 至少需要设置一个大于 0 的值。</p>
        # @type BandwidthLimit: Integer
        # @param PacketRateLimit: <p>包速率限制。</p><p>取值范围：[0, 4294967295]</p><p>单位：pps</p><p>为 0 时表示不限制。BandwidthLimit 和 PacketRateLimit 至少需要设置一个大于 0 的值。</p>
        # @type PacketRateLimit: Integer

        attr_accessor :IPProtocolNumbers, :DestinationPortRanges, :Mode, :BandwidthLimit, :PacketRateLimit

        def initialize(ipprotocolnumbers=nil, destinationportranges=nil, mode=nil, bandwidthlimit=nil, packetratelimit=nil)
          @IPProtocolNumbers = ipprotocolnumbers
          @DestinationPortRanges = destinationportranges
          @Mode = mode
          @BandwidthLimit = bandwidthlimit
          @PacketRateLimit = packetratelimit
        end

        def deserialize(params)
          @IPProtocolNumbers = params['IPProtocolNumbers']
          unless params['DestinationPortRanges'].nil?
            @DestinationPortRanges = []
            params['DestinationPortRanges'].each do |i|
              portrange_tmp = PortRange.new
              portrange_tmp.deserialize(i)
              @DestinationPortRanges << portrange_tmp
            end
          end
          @Mode = params['Mode']
          @BandwidthLimit = params['BandwidthLimit']
          @PacketRateLimit = params['PacketRateLimit']
        end
      end

      # 端口限速规则列表。
      class SpeedLimitRules < TencentCloud::Common::AbstractModel
        # @param Rules: <p>端口限速规则列表。</p>
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              speedlimitrule_tmp = SpeedLimitRule.new
              speedlimitrule_tmp.deserialize(i)
              @Rules << speedlimitrule_tmp
            end
          end
        end
      end

      # 标签配置。
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: <p>标签键。</p>
        # @type TagKey: String
        # @param TagValue: <p>标签值。</p>
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

      # 流量签名校验配置。
      class TrafficSignatureConfig < TencentCloud::Common::AbstractModel
        # @param Switch: <p>流量签名配置开关。</p>
        # @type Switch: String
        # @param TrafficSignatureKeys: <p>流量签名密钥。</p>
        # @type TrafficSignatureKeys: Array
        # @param UdpCheckPortRanges: <p>UDP 协议校验的端口范围，支持输入多个端口或端口范围。</p>
        # @type UdpCheckPortRanges: Array
        # @param TcpCheckPortRanges: <p>TCP 协议校验的端口范围，支持输入多个端口或端口范围。</p>
        # @type TcpCheckPortRanges: Array
        # @param UdpTrafficSignatureOffset: <p>UDP 协议下签名在数据包负载中的起始偏移位置，支持 0 至 100 字节偏移量。默认为0。</p>
        # @type UdpTrafficSignatureOffset: Integer
        # @param TcpTrafficSignatureOffset: <p>TCP 协议下签名在数据包负载中的起始偏移位置，支持 0 至 100 字节偏移量。默认为0</p>
        # @type TcpTrafficSignatureOffset: Integer

        attr_accessor :Switch, :TrafficSignatureKeys, :UdpCheckPortRanges, :TcpCheckPortRanges, :UdpTrafficSignatureOffset, :TcpTrafficSignatureOffset

        def initialize(switch=nil, trafficsignaturekeys=nil, udpcheckportranges=nil, tcpcheckportranges=nil, udptrafficsignatureoffset=nil, tcptrafficsignatureoffset=nil)
          @Switch = switch
          @TrafficSignatureKeys = trafficsignaturekeys
          @UdpCheckPortRanges = udpcheckportranges
          @TcpCheckPortRanges = tcpcheckportranges
          @UdpTrafficSignatureOffset = udptrafficsignatureoffset
          @TcpTrafficSignatureOffset = tcptrafficsignatureoffset
        end

        def deserialize(params)
          @Switch = params['Switch']
          @TrafficSignatureKeys = params['TrafficSignatureKeys']
          unless params['UdpCheckPortRanges'].nil?
            @UdpCheckPortRanges = []
            params['UdpCheckPortRanges'].each do |i|
              portrange_tmp = PortRange.new
              portrange_tmp.deserialize(i)
              @UdpCheckPortRanges << portrange_tmp
            end
          end
          unless params['TcpCheckPortRanges'].nil?
            @TcpCheckPortRanges = []
            params['TcpCheckPortRanges'].each do |i|
              portrange_tmp = PortRange.new
              portrange_tmp.deserialize(i)
              @TcpCheckPortRanges << portrange_tmp
            end
          end
          @UdpTrafficSignatureOffset = params['UdpTrafficSignatureOffset']
          @TcpTrafficSignatureOffset = params['TcpTrafficSignatureOffset']
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

