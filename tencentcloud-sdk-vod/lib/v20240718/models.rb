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
  module Vod
    module V20240718
      # CreateIncrementalMigrationStrategy请求参数结构体
      class CreateIncrementalMigrationStrategyRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[专业版](/document/product/266/115396)[应用](/document/product/266/14574) ID。</b>
        # @type SubAppId: Integer
        # @param BucketId: 策略生效的存储桶 ID。
        # @type BucketId: String
        # @param StrategyName: 增量迁移策略名称，名称长度不超过100个字符，允许的字符为：`中文、英文、0-9、_、-`。
        # @type StrategyName: String
        # @param OriginType: 源站类型。取值有：
        # <li>HTTP：HTTP 源。</li>
        # @type OriginType: String
        # @param HttpOriginConfig: 增量迁移 HTTP 回源源站配置，当 OriginType 取值 `HTTP` 时必填。
        # @type HttpOriginConfig: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationHttpOriginConfig`

        attr_accessor :SubAppId, :BucketId, :StrategyName, :OriginType, :HttpOriginConfig

        def initialize(subappid=nil, bucketid=nil, strategyname=nil, origintype=nil, httporiginconfig=nil)
          @SubAppId = subappid
          @BucketId = bucketid
          @StrategyName = strategyname
          @OriginType = origintype
          @HttpOriginConfig = httporiginconfig
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @BucketId = params['BucketId']
          @StrategyName = params['StrategyName']
          @OriginType = params['OriginType']
          unless params['HttpOriginConfig'].nil?
            @HttpOriginConfig = IncrementalMigrationHttpOriginConfig.new
            @HttpOriginConfig.deserialize(params['HttpOriginConfig'])
          end
        end
      end

      # CreateIncrementalMigrationStrategy返回参数结构体
      class CreateIncrementalMigrationStrategyResponse < TencentCloud::Common::AbstractModel
        # @param StrategyId: 增量迁移策略 ID。
        # @type StrategyId: String
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

      # CreateStorageCredentials请求参数结构体
      class CreateStorageCredentialsRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播专业版[应用](/document/product/266/14574) ID。</b>
        # @type SubAppId: Integer
        # @param Policy: 按照下方语法组装好策略后，先序列化为字符串，再做 URL Encode，结果作为 Policy 字段入参。服务端会对该字段做 URL Decode，并按解析后的策略授予临时访问凭证权限，请按规范传入参数。
        # 注意：
        # 1.策略语法参照[访问管理策略](/document/product/598/10603)。
        # 2.策略中不能包含 principal 元素。
        # 3.策略的 action 元素仅支持：<li>name/vod:PutObject;</li><li>name/vod:ListParts;</li><li>name/vod:PostObject;</li><li>name/vod:InitiateMultipartUpload;</li><li>name/vod:UploadPart;</li><li>name/vod:CompleteMultipartUpload;</li><li>name/vod:AbortMultipartUpload;</li><li>name/vod:ListMultipartUploads;</li>4.策略的 resource 元素填写格式为：`qcs::vod:[存储地域]:uid/[账号AppID]:prefix//[点播应用ID]/[存储桶ID]/[存储路径]`，其中存储地域、账号 AppID、点播应用 ID、存储桶 ID 和存储路径要按需填写，其他内容不允许改动，例：`qcs:ap-chongqing:vod::uid/1231456789:prefix//1234567890/2ceds3ew323w3mu/file_path`。
        # @type Policy: String
        # @param DurationSeconds: 指定临时证书的有效期，单位：秒。
        # 默认 1800 秒，最大 129600 秒。
        # @type DurationSeconds: Integer

        attr_accessor :SubAppId, :Policy, :DurationSeconds

        def initialize(subappid=nil, policy=nil, durationseconds=nil)
          @SubAppId = subappid
          @Policy = policy
          @DurationSeconds = durationseconds
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Policy = params['Policy']
          @DurationSeconds = params['DurationSeconds']
        end
      end

      # CreateStorageCredentials返回参数结构体
      class CreateStorageCredentialsResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 临时访问凭证。
        # @type Credentials: :class:`Tencentcloud::Vod.v20240718.models.Credentials`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Credentials, :RequestId

        def initialize(credentials=nil, requestid=nil)
          @Credentials = credentials
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateStorage请求参数结构体
      class CreateStorageRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播专业版[应用](/document/product/266/14574) ID。</b>
        # @type SubAppId: Integer
        # @param StorageRegion: 存储地域，必须是系统支持地域。
        # 通过 [DescribeStorageRegions](https://cloud.tencent.com/document/product/266/72480) 接口可以查询到所有存储地域及已经开通存储桶的地域。
        # @type StorageRegion: String
        # @param StorageName: 存储名称。
        # <li>仅支持小写英文字母、数字、中划线 “-” 及其组合；</li>
        # <li>存储命名不能以 “-” 开头或结尾；</li>
        # <li>存储命名最大长度为 64 字符。</li>
        # @type StorageName: String

        attr_accessor :SubAppId, :StorageRegion, :StorageName

        def initialize(subappid=nil, storageregion=nil, storagename=nil)
          @SubAppId = subappid
          @StorageRegion = storageregion
          @StorageName = storagename
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @StorageRegion = params['StorageRegion']
          @StorageName = params['StorageName']
        end
      end

      # CreateStorage返回参数结构体
      class CreateStorageResponse < TencentCloud::Common::AbstractModel
        # @param BucketId: 存储桶 ID。
        # @type BucketId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BucketId, :RequestId

        def initialize(bucketid=nil, requestid=nil)
          @BucketId = bucketid
          @RequestId = requestid
        end

        def deserialize(params)
          @BucketId = params['BucketId']
          @RequestId = params['RequestId']
        end
      end

      # 临时访问凭证。
      class Credentials < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 访问凭证 ID。
        # @type AccessKeyId: String
        # @param SecretAccessKey: 访问凭证 Key。
        # @type SecretAccessKey: String
        # @param SessionToken: 访问凭证 Token，长度和绑定的策略有关，最长不超过 4096 字节。
        # @type SessionToken: String
        # @param Expiration: 访问凭证的过期时间。
        # @type Expiration: String

        attr_accessor :AccessKeyId, :SecretAccessKey, :SessionToken, :Expiration

        def initialize(accesskeyid=nil, secretaccesskey=nil, sessiontoken=nil, expiration=nil)
          @AccessKeyId = accesskeyid
          @SecretAccessKey = secretaccesskey
          @SessionToken = sessiontoken
          @Expiration = expiration
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @SecretAccessKey = params['SecretAccessKey']
          @SessionToken = params['SessionToken']
          @Expiration = params['Expiration']
        end
      end

      # DeleteIncrementalMigrationStrategy请求参数结构体
      class DeleteIncrementalMigrationStrategyRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[专业版](/document/product/266/115396)[应用](/document/product/266/14574) ID。</b>
        # @type SubAppId: Integer
        # @param BucketId: 策略生效的存储桶 ID。
        # @type BucketId: String
        # @param StrategyId: 增量迁移策略 ID。
        # @type StrategyId: String

        attr_accessor :SubAppId, :BucketId, :StrategyId

        def initialize(subappid=nil, bucketid=nil, strategyid=nil)
          @SubAppId = subappid
          @BucketId = bucketid
          @StrategyId = strategyid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @BucketId = params['BucketId']
          @StrategyId = params['StrategyId']
        end
      end

      # DeleteIncrementalMigrationStrategy返回参数结构体
      class DeleteIncrementalMigrationStrategyResponse < TencentCloud::Common::AbstractModel
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

      # DescribeIncrementalMigrationStrategyInfos请求参数结构体
      class DescribeIncrementalMigrationStrategyInfosRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[专业版](/document/product/266/115396)[应用](/document/product/266/14574) ID。</b>
        # @type SubAppId: Integer
        # @param Filters: 过滤条件，Filters.Values 的上限为 `20`；若 Filters 长度为 `0` 则查询时无过滤条件限制。 详细的过滤条件如下： <li>BucketId<br>   按照【<strong>存储桶 ID</strong>】进行过滤<br>   类型：String<br>   必选：否<br></li><li>StrategyId<br>   按照【<strong>策略 ID</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        # @type Filters: Array
        # @param SortBy: 返回结果的排序。 SortBy.Field 取值有：<li>UpdateTime：创建时间。</li>若不填，SortBy.Field 默认值为 `UpdateTime`，SortBy.Order 默认值为 `Desc`。
        # @type SortBy: :class:`Tencentcloud::Vod.v20240718.models.SortBy`
        # @param Offset: 分页返回的起始偏移量，默认值为 `0`。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值为 `20`，最大值为 `100`。
        # @type Limit: Integer

        attr_accessor :SubAppId, :Filters, :SortBy, :Offset, :Limit

        def initialize(subappid=nil, filters=nil, sortby=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Filters = filters
          @SortBy = sortby
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['SortBy'].nil?
            @SortBy = SortBy.new
            @SortBy.deserialize(params['SortBy'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeIncrementalMigrationStrategyInfos返回参数结构体
      class DescribeIncrementalMigrationStrategyInfosResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数。
        # @type TotalCount: Integer
        # @param StrategyInfoSet: 策略信息集合。
        # @type StrategyInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :StrategyInfoSet, :RequestId

        def initialize(totalcount=nil, strategyinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @StrategyInfoSet = strategyinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['StrategyInfoSet'].nil?
            @StrategyInfoSet = []
            params['StrategyInfoSet'].each do |i|
              incrementalmigrationstrategyinfo_tmp = IncrementalMigrationStrategyInfo.new
              incrementalmigrationstrategyinfo_tmp.deserialize(i)
              @StrategyInfoSet << incrementalmigrationstrategyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStorage请求参数结构体
      class DescribeStorageRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播专业版[应用](/document/product/266/14574) ID。</b>
        # @type SubAppId: Integer
        # @param Filters: 过滤条件，Filters.Values 的上限为 20；若 Filters 长度为 0 则分页查询子应用 SubAppId 下的存储信息。 详细的过滤条件如下：
        # <li>BucketId<br>   按照【<strong>存储桶 ID</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        # <li>StorageName<br>   按照【<strong>存储名称</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        # @type Filters: Array
        # @param SortBy: 返回结果的排序。 SortBy.Field 取值有：
        # <li>CreateTime：创建时间。</li>若不填，SortBy.Field 默认值为 CreateTime，SortBy.Order 默认值为 Asc。
        # @type SortBy: :class:`Tencentcloud::Vod.v20240718.models.SortBy`
        # @param Offset: 分页返回的起始偏移量，默认值为 0。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值为 20，最大值为 1000。
        # @type Limit: Integer

        attr_accessor :SubAppId, :Filters, :SortBy, :Offset, :Limit

        def initialize(subappid=nil, filters=nil, sortby=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Filters = filters
          @SortBy = sortby
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['SortBy'].nil?
            @SortBy = SortBy.new
            @SortBy.deserialize(params['SortBy'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeStorage返回参数结构体
      class DescribeStorageResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的存储数量。
        # @type TotalCount: Integer
        # @param StorageInfoSet: 符合条件的存储信息列表。
        # @type StorageInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :StorageInfoSet, :RequestId

        def initialize(totalcount=nil, storageinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @StorageInfoSet = storageinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['StorageInfoSet'].nil?
            @StorageInfoSet = []
            params['StorageInfoSet'].each do |i|
              storageinfo_tmp = StorageInfo.new
              storageinfo_tmp.deserialize(i)
              @StorageInfoSet << storageinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 键值对过滤器，用于条件过滤查询。例如过滤 ID、名称或状态等。
      # 若存在多个 Filter 时，Filter 间的关系为逻辑与（AND）关系。
      # 若同一个 Filter 存在多个 Values，同一 Filter 下 Values 间的关系为逻辑或（OR）关系。

      # 过滤器筛选字段均为精确匹配。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
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

      # 增量迁移源站地址信息。
      class IncrementalMigrationHttpEndpointInfo < TencentCloud::Common::AbstractModel
        # @param Endpoint: 地址信息，支持域名或 IP 地址。
        # @type Endpoint: String
        # @param StandbyEndpointSet: 备份地址信息。
        # @type StandbyEndpointSet: Array

        attr_accessor :Endpoint, :StandbyEndpointSet

        def initialize(endpoint=nil, standbyendpointset=nil)
          @Endpoint = endpoint
          @StandbyEndpointSet = standbyendpointset
        end

        def deserialize(params)
          @Endpoint = params['Endpoint']
          @StandbyEndpointSet = params['StandbyEndpointSet']
        end
      end

      # 增量迁移回源 HTTP Header。
      class IncrementalMigrationHttpHeader < TencentCloud::Common::AbstractModel
        # @param Key: Header 键。
        # @type Key: String
        # @param Value: Header 值。
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

      # 增量迁移回源 HTTP Header 信息。
      class IncrementalMigrationHttpHeaderInfo < TencentCloud::Common::AbstractModel
        # @param HeaderFollowMode: Http Header 透传模式。取值有：
        # <li>FOLLOW_ALL：透传所有头部信息；</li>
        # <li>FOLLOW_PART：透传部分头部信息；</li>
        # <li>IGNORE_PART：忽略部分头部信息。</li>参数必填。
        # @type HeaderFollowMode: String
        # @param FollowHttpHeaderKeySet: 需透传 Header Key 集合，仅当 HeaderFollowMode 取值 `FOLLOW_PART` 时需要填充。
        # @type FollowHttpHeaderKeySet: Array
        # @param NewHttpHeaderSet: 新增 Header 键值对集合。
        # @type NewHttpHeaderSet: Array

        attr_accessor :HeaderFollowMode, :FollowHttpHeaderKeySet, :NewHttpHeaderSet

        def initialize(headerfollowmode=nil, followhttpheaderkeyset=nil, newhttpheaderset=nil)
          @HeaderFollowMode = headerfollowmode
          @FollowHttpHeaderKeySet = followhttpheaderkeyset
          @NewHttpHeaderSet = newhttpheaderset
        end

        def deserialize(params)
          @HeaderFollowMode = params['HeaderFollowMode']
          @FollowHttpHeaderKeySet = params['FollowHttpHeaderKeySet']
          unless params['NewHttpHeaderSet'].nil?
            @NewHttpHeaderSet = []
            params['NewHttpHeaderSet'].each do |i|
              incrementalmigrationhttpheader_tmp = IncrementalMigrationHttpHeader.new
              incrementalmigrationhttpheader_tmp.deserialize(i)
              @NewHttpHeaderSet << incrementalmigrationhttpheader_tmp
            end
          end
        end
      end

      # 增量迁移回源条件。
      class IncrementalMigrationHttpOriginCondition < TencentCloud::Common::AbstractModel
        # @param HttpStatusCode: 触发回源条件的 HTTP Code。若不填充，默认取值 `404`。
        # @type HttpStatusCode: Integer
        # @param Prefix: 触发回源条件的对象键前缀。
        # @type Prefix: String

        attr_accessor :HttpStatusCode, :Prefix

        def initialize(httpstatuscode=nil, prefix=nil)
          @HttpStatusCode = httpstatuscode
          @Prefix = prefix
        end

        def deserialize(params)
          @HttpStatusCode = params['HttpStatusCode']
          @Prefix = params['Prefix']
        end
      end

      # 增量迁移回源源站配置。
      class IncrementalMigrationHttpOriginConfig < TencentCloud::Common::AbstractModel
        # @param OriginInfo: 回源源站信息。
        # @type OriginInfo: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationHttpOriginInfo`
        # @param OriginParameter: 回源参数。
        # @type OriginParameter: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationHttpOriginParameter`
        # @param Mode: 回源模式。取值有：
        # <li>SYNC：同步回源；</li>
        # <li>ASYNC：异步回源。</li>若不填，默认取 `SYNC` 同步回源。
        # @type Mode: String
        # @param OriginCondition: 回源条件。
        # @type OriginCondition: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationHttpOriginCondition`

        attr_accessor :OriginInfo, :OriginParameter, :Mode, :OriginCondition

        def initialize(origininfo=nil, originparameter=nil, mode=nil, origincondition=nil)
          @OriginInfo = origininfo
          @OriginParameter = originparameter
          @Mode = mode
          @OriginCondition = origincondition
        end

        def deserialize(params)
          unless params['OriginInfo'].nil?
            @OriginInfo = IncrementalMigrationHttpOriginInfo.new
            @OriginInfo.deserialize(params['OriginInfo'])
          end
          unless params['OriginParameter'].nil?
            @OriginParameter = IncrementalMigrationHttpOriginParameter.new
            @OriginParameter.deserialize(params['OriginParameter'])
          end
          @Mode = params['Mode']
          unless params['OriginCondition'].nil?
            @OriginCondition = IncrementalMigrationHttpOriginCondition.new
            @OriginCondition.deserialize(params['OriginCondition'])
          end
        end
      end

      # 增量迁移源站信息。
      class IncrementalMigrationHttpOriginInfo < TencentCloud::Common::AbstractModel
        # @param EndpointInfo: 增量迁移源站地址信息。
        # @type EndpointInfo: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationHttpEndpointInfo`
        # @param FileInfo: 增量迁移源站文件信息。
        # @type FileInfo: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationOriginFileInfo`

        attr_accessor :EndpointInfo, :FileInfo

        def initialize(endpointinfo=nil, fileinfo=nil)
          @EndpointInfo = endpointinfo
          @FileInfo = fileinfo
        end

        def deserialize(params)
          unless params['EndpointInfo'].nil?
            @EndpointInfo = IncrementalMigrationHttpEndpointInfo.new
            @EndpointInfo.deserialize(params['EndpointInfo'])
          end
          unless params['FileInfo'].nil?
            @FileInfo = IncrementalMigrationOriginFileInfo.new
            @FileInfo.deserialize(params['FileInfo'])
          end
        end
      end

      # 增量迁移回源参数。
      class IncrementalMigrationHttpOriginParameter < TencentCloud::Common::AbstractModel
        # @param HttpHeaderInfo: HTTP 头部透传信息。
        # @type HttpHeaderInfo: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationHttpHeaderInfo`
        # @param Protocol: 回源协议。取值有：
        # <li>HTTP：强制 HTTP；</li>
        # <li>HTTPS：强制 HTTPS；</li>
        # <li>FOLLOW：跟随请求协议。</li>若不填，默认取值 `FOLLOW`。
        # @type Protocol: String
        # @param QueryStringFollowMode: 请求参数透传模式。取值有：
        # <li>FOLLOW：全部透传；</li>
        # <li>IGNORE：忽略，全部不透传。</li> 默认取值 `FOLLOW`。
        # @type QueryStringFollowMode: String
        # @param HttpRedirectCode: 重定向的 HTTP Code，目前仅支持 `301`，`302` 和 `307`。默认取值 `302`。
        # @type HttpRedirectCode: Integer
        # @param OriginRedirectionFollowMode: 源站重定向跟随模式。取值有：
        # <li>FOLLOW：跟随源站重定向；</li>
        # <li>IGNORE：忽略源站重定向。</li> 默认取值 `FOLLOW` 跟随源站重定向，即源站返回 `3xx` 时，会默认跟随至对应源站拉取数据。
        # @type OriginRedirectionFollowMode: String

        attr_accessor :HttpHeaderInfo, :Protocol, :QueryStringFollowMode, :HttpRedirectCode, :OriginRedirectionFollowMode

        def initialize(httpheaderinfo=nil, protocol=nil, querystringfollowmode=nil, httpredirectcode=nil, originredirectionfollowmode=nil)
          @HttpHeaderInfo = httpheaderinfo
          @Protocol = protocol
          @QueryStringFollowMode = querystringfollowmode
          @HttpRedirectCode = httpredirectcode
          @OriginRedirectionFollowMode = originredirectionfollowmode
        end

        def deserialize(params)
          unless params['HttpHeaderInfo'].nil?
            @HttpHeaderInfo = IncrementalMigrationHttpHeaderInfo.new
            @HttpHeaderInfo.deserialize(params['HttpHeaderInfo'])
          end
          @Protocol = params['Protocol']
          @QueryStringFollowMode = params['QueryStringFollowMode']
          @HttpRedirectCode = params['HttpRedirectCode']
          @OriginRedirectionFollowMode = params['OriginRedirectionFollowMode']
        end
      end

      # 增量迁移源站文件信息。
      class IncrementalMigrationOriginFileInfo < TencentCloud::Common::AbstractModel
        # @param PrefixConfig: 文件前缀配置。
        # @type PrefixConfig: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationOriginPrefixConfig`
        # @param SuffixConfig: 文件后缀配置。
        # @type SuffixConfig: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationOriginSuffixConfig`
        # @param FixedFileConfig: 固定文件配置。
        # @type FixedFileConfig: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationOriginFixedFileConfig`

        attr_accessor :PrefixConfig, :SuffixConfig, :FixedFileConfig

        def initialize(prefixconfig=nil, suffixconfig=nil, fixedfileconfig=nil)
          @PrefixConfig = prefixconfig
          @SuffixConfig = suffixconfig
          @FixedFileConfig = fixedfileconfig
        end

        def deserialize(params)
          unless params['PrefixConfig'].nil?
            @PrefixConfig = IncrementalMigrationOriginPrefixConfig.new
            @PrefixConfig.deserialize(params['PrefixConfig'])
          end
          unless params['SuffixConfig'].nil?
            @SuffixConfig = IncrementalMigrationOriginSuffixConfig.new
            @SuffixConfig.deserialize(params['SuffixConfig'])
          end
          unless params['FixedFileConfig'].nil?
            @FixedFileConfig = IncrementalMigrationOriginFixedFileConfig.new
            @FixedFileConfig.deserialize(params['FixedFileConfig'])
          end
        end
      end

      # 增量迁移源站固定文件路径配置。
      class IncrementalMigrationOriginFixedFileConfig < TencentCloud::Common::AbstractModel
        # @param FixedFilePath: 固定文件路径；如填充 `example/test.png`，则回源地址为： `http(s)://<回源域名>/example/test.png`。
        # @type FixedFilePath: String

        attr_accessor :FixedFilePath

        def initialize(fixedfilepath=nil)
          @FixedFilePath = fixedfilepath
        end

        def deserialize(params)
          @FixedFilePath = params['FixedFilePath']
        end
      end

      # 增量迁移源站地址前缀配置。
      class IncrementalMigrationOriginPrefixConfig < TencentCloud::Common::AbstractModel
        # @param Prefix: 源站地址前缀，如填充 `test/`，则回源地址为 `http(s)://<回源域名>/test/<文件名>`。
        # @type Prefix: String

        attr_accessor :Prefix

        def initialize(prefix=nil)
          @Prefix = prefix
        end

        def deserialize(params)
          @Prefix = params['Prefix']
        end
      end

      # 增量迁移源站文件后缀配置。
      class IncrementalMigrationOriginSuffixConfig < TencentCloud::Common::AbstractModel
        # @param Suffix: 文件后缀；如填充 `.ts` ，则回源地址为：`http(s)://<回源域名>/<文件名>.ts`。
        # @type Suffix: String

        attr_accessor :Suffix

        def initialize(suffix=nil)
          @Suffix = suffix
        end

        def deserialize(params)
          @Suffix = params['Suffix']
        end
      end

      # 增量迁移策略信息。
      class IncrementalMigrationStrategyInfo < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略 ID。
        # @type StrategyId: String
        # @param StrategyName: 策略名称。
        # @type StrategyName: String
        # @param SubAppId: <b>策略生效的点播专业版[应用](/document/product/266/14574) ID。</b>
        # @type SubAppId: Integer
        # @param BucketId: 策略生效的存储桶 ID。
        # @type BucketId: String
        # @param OriginType: 源站类型。取值有：<li>HTTP：HTTP 源。</li>
        # @type OriginType: String
        # @param HttpOriginConfig: 回源源站配置。
        # @type HttpOriginConfig: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationHttpOriginConfig`

        attr_accessor :StrategyId, :StrategyName, :SubAppId, :BucketId, :OriginType, :HttpOriginConfig

        def initialize(strategyid=nil, strategyname=nil, subappid=nil, bucketid=nil, origintype=nil, httporiginconfig=nil)
          @StrategyId = strategyid
          @StrategyName = strategyname
          @SubAppId = subappid
          @BucketId = bucketid
          @OriginType = origintype
          @HttpOriginConfig = httporiginconfig
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @StrategyName = params['StrategyName']
          @SubAppId = params['SubAppId']
          @BucketId = params['BucketId']
          @OriginType = params['OriginType']
          unless params['HttpOriginConfig'].nil?
            @HttpOriginConfig = IncrementalMigrationHttpOriginConfig.new
            @HttpOriginConfig.deserialize(params['HttpOriginConfig'])
          end
        end
      end

      # ModifyIncrementalMigrationStrategy请求参数结构体
      class ModifyIncrementalMigrationStrategyRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[专业版](/document/product/266/115396)[应用](/document/product/266/14574) ID。</b>
        # @type SubAppId: Integer
        # @param BucketId: 策略生效的存储桶 ID。
        # @type BucketId: String
        # @param StrategyId: 增量迁移策略 ID。
        # @type StrategyId: String
        # @param StrategyName: 策略名称。若不填充或填充空字符串，则不修改。
        # @type StrategyName: String
        # @param OriginType: 源站类型。取值有：<li>HTTP：HTTP 源。</li>若不填或填充空字符串，则不修改。
        # @type OriginType: String
        # @param HttpOriginConfig: HTTP 回源源站配置，若不填则默认不修改。
        # @type HttpOriginConfig: :class:`Tencentcloud::Vod.v20240718.models.IncrementalMigrationHttpOriginConfig`

        attr_accessor :SubAppId, :BucketId, :StrategyId, :StrategyName, :OriginType, :HttpOriginConfig

        def initialize(subappid=nil, bucketid=nil, strategyid=nil, strategyname=nil, origintype=nil, httporiginconfig=nil)
          @SubAppId = subappid
          @BucketId = bucketid
          @StrategyId = strategyid
          @StrategyName = strategyname
          @OriginType = origintype
          @HttpOriginConfig = httporiginconfig
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @BucketId = params['BucketId']
          @StrategyId = params['StrategyId']
          @StrategyName = params['StrategyName']
          @OriginType = params['OriginType']
          unless params['HttpOriginConfig'].nil?
            @HttpOriginConfig = IncrementalMigrationHttpOriginConfig.new
            @HttpOriginConfig.deserialize(params['HttpOriginConfig'])
          end
        end
      end

      # ModifyIncrementalMigrationStrategy返回参数结构体
      class ModifyIncrementalMigrationStrategyResponse < TencentCloud::Common::AbstractModel
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

      # 排序依据。
      class SortBy < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段。
        # @type Field: String
        # @param Order: 排序方式，可选值有：
        # <li>Asc: 升序；</li>
        # <li>Desc: 降序。</li>
        # @type Order: String

        attr_accessor :Field, :Order

        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

      # 专业版应用的存储信息。
      class StorageInfo < TencentCloud::Common::AbstractModel
        # @param BucketId: 存储桶 ID。
        # @type BucketId: String
        # @param StorageName: 存储名称。
        # @type StorageName: String
        # @param StorageRegion: 存储所在区域。
        # @type StorageRegion: String
        # @param InternetAccessDomainStatus: 存储公网源站访问域名的状态，取值有：
        # <li>ONLINE：已生效；</li>
        # <li>DEPLOYING： 部署中。</li>
        # @type InternetAccessDomainStatus: String
        # @param InternetAccessDomain: 存储公网源站访问域名。
        # @type InternetAccessDomain: String
        # @param CreateTime: 存储的创建时间。
        # @type CreateTime: String

        attr_accessor :BucketId, :StorageName, :StorageRegion, :InternetAccessDomainStatus, :InternetAccessDomain, :CreateTime

        def initialize(bucketid=nil, storagename=nil, storageregion=nil, internetaccessdomainstatus=nil, internetaccessdomain=nil, createtime=nil)
          @BucketId = bucketid
          @StorageName = storagename
          @StorageRegion = storageregion
          @InternetAccessDomainStatus = internetaccessdomainstatus
          @InternetAccessDomain = internetaccessdomain
          @CreateTime = createtime
        end

        def deserialize(params)
          @BucketId = params['BucketId']
          @StorageName = params['StorageName']
          @StorageRegion = params['StorageRegion']
          @InternetAccessDomainStatus = params['InternetAccessDomainStatus']
          @InternetAccessDomain = params['InternetAccessDomain']
          @CreateTime = params['CreateTime']
        end
      end

    end
  end
end

