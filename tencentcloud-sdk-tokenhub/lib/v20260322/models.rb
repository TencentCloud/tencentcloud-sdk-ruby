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
  module Tokenhub
    module V20260322
      # API 密钥详情
      class ApiKeyDetail < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API 密钥 ID。
        # @type ApiKeyId: String
        # @param Name: 名称。
        # @type Name: String
        # @param ApiKey: API 密钥值。接口返回脱敏值
        # @type ApiKey: String
        # @param Remark: 备注。
        # @type Remark: String
        # @param Platform: 平台类型。当前支持填值：maas
        # @type Platform: String
        # @param Uin: 主账号。
        # @type Uin: String
        # @param SubUin: 子账号。
        # @type SubUin: String
        # @param Status: 状态。取值：enable（启用）、disable（禁用）。
        # @type Status: String
        # @param BindType: 绑定类型。取值：all（全部模型和服务）、model_all_endpoint_custom（全部模型+自定义服务）、model_custom_endpoint_all（自定义模型+全部服务）、model_custom_endpoint_custom（自定义模型+自定义服务）。
        # @type BindType: String
        # @param CreateTime: 创建时间。格式：YYYY-MM-DD HH:mm:ss。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。格式：YYYY-MM-DD HH:mm:ss。
        # @type UpdateTime: String
        # @param AppId: 应用 ID。
        # @type AppId: String
        # @param Editable: 是否可编辑。true 表示可编辑，false 表示不可编辑。
        # @type Editable: Boolean
        # @param BindingItems: 绑定资源列表，区分 endpoint 和 model 类型。
        # @type BindingItems: Array
        # @param IpWhitelist: IP 白名单列表。支持 IPv4 和 CIDR 格式。空数组表示不限制 IP。
        # @type IpWhitelist: Array
        # @param Creator: 当Platform为maas时该字段为空
        # @type Creator: String
        # @param QuotaSet: Token 限额信息多维度列表。未配置限额时不返回该字段。
        # @type QuotaSet: Array
        # @param QuotaStatus: Token 限额状态。空字符串表示未配置任何限额包；active 表示已配置且当前可用；inactive 表示已配置但额度耗尽
        # @type QuotaStatus: String

        attr_accessor :ApiKeyId, :Name, :ApiKey, :Remark, :Platform, :Uin, :SubUin, :Status, :BindType, :CreateTime, :UpdateTime, :AppId, :Editable, :BindingItems, :IpWhitelist, :Creator, :QuotaSet, :QuotaStatus

        def initialize(apikeyid=nil, name=nil, apikey=nil, remark=nil, platform=nil, uin=nil, subuin=nil, status=nil, bindtype=nil, createtime=nil, updatetime=nil, appid=nil, editable=nil, bindingitems=nil, ipwhitelist=nil, creator=nil, quotaset=nil, quotastatus=nil)
          @ApiKeyId = apikeyid
          @Name = name
          @ApiKey = apikey
          @Remark = remark
          @Platform = platform
          @Uin = uin
          @SubUin = subuin
          @Status = status
          @BindType = bindtype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @AppId = appid
          @Editable = editable
          @BindingItems = bindingitems
          @IpWhitelist = ipwhitelist
          @Creator = creator
          @QuotaSet = quotaset
          @QuotaStatus = quotastatus
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
          @Name = params['Name']
          @ApiKey = params['ApiKey']
          @Remark = params['Remark']
          @Platform = params['Platform']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @Status = params['Status']
          @BindType = params['BindType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @AppId = params['AppId']
          @Editable = params['Editable']
          unless params['BindingItems'].nil?
            @BindingItems = []
            params['BindingItems'].each do |i|
              bindingitem_tmp = BindingItem.new
              bindingitem_tmp.deserialize(i)
              @BindingItems << bindingitem_tmp
            end
          end
          @IpWhitelist = params['IpWhitelist']
          @Creator = params['Creator']
          unless params['QuotaSet'].nil?
            @QuotaSet = []
            params['QuotaSet'].each do |i|
              quotainfo_tmp = QuotaInfo.new
              quotainfo_tmp.deserialize(i)
              @QuotaSet << quotainfo_tmp
            end
          end
          @QuotaStatus = params['QuotaStatus']
        end
      end

      # 批量创建失败项
      class BatchCreateFailedItem < TencentCloud::Common::AbstractModel
        # @param Index: 失败项的序号（从 1 开始，对应后缀编号）。
        # @type Index: Integer
        # @param Name: 失败项的名称。
        # @type Name: String
        # @param Reason: 失败原因。
        # @type Reason: String

        attr_accessor :Index, :Name, :Reason

        def initialize(index=nil, name=nil, reason=nil)
          @Index = index
          @Name = name
          @Reason = reason
        end

        def deserialize(params)
          @Index = params['Index']
          @Name = params['Name']
          @Reason = params['Reason']
        end
      end

      # 绑定资源项
      class BindingItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源 ID（模型 ID 或服务 ID）。
        # @type ResourceId: String
        # @param ResourceType: 资源类型。取值：endpoint（服务）、model（模型）。
        # @type ResourceType: String
        # @param Status: 资源状态
        # @type Status: String

        attr_accessor :ResourceId, :ResourceType, :Status

        def initialize(resourceid=nil, resourcetype=nil, status=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @Status = status
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @Status = params['Status']
        end
      end

      # 批量创建成功项
      class CreateApiKeysResultItem < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: APIKey ID。
        # @type ApiKeyId: String

        attr_accessor :ApiKeyId

        def initialize(apikeyid=nil)
          @ApiKeyId = apikeyid
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
        end
      end

      # CreateGlossaryEntries请求参数结构体
      class CreateGlossaryEntriesRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID。可通过 DescribeGlossaries 接口获取。
        # @type GlossaryId: String
        # @param Entries: 术语条目列表。单次最多 100 个。
        # @type Entries: Array

        attr_accessor :GlossaryId, :Entries

        def initialize(glossaryid=nil, entries=nil)
          @GlossaryId = glossaryid
          @Entries = entries
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentryinput_tmp = GlossaryEntryInput.new
              glossaryentryinput_tmp.deserialize(i)
              @Entries << glossaryentryinput_tmp
            end
          end
        end
      end

      # CreateGlossaryEntries返回参数结构体
      class CreateGlossaryEntriesResponse < TencentCloud::Common::AbstractModel
        # @param Entries: 创建成功的术语条目列表。
        # @type Entries: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Entries, :RequestId

        def initialize(entries=nil, requestid=nil)
          @Entries = entries
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentryitem_tmp = GlossaryEntryItem.new
              glossaryentryitem_tmp.deserialize(i)
              @Entries << glossaryentryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateGlossary请求参数结构体
      class CreateGlossaryRequest < TencentCloud::Common::AbstractModel
        # @param Name: 术语库名称。最大 50 字符。
        # @type Name: String
        # @param Source: 源语言代码。最大 16 字符。例如：zh（中文）、en（英文）。
        # @type Source: String
        # @param Target: 目标语言代码。最大 16 字符。例如：zh（中文）、en（英文）。
        # @type Target: String
        # @param Description: 术语库描述。最大 255 字符。
        # @type Description: String

        attr_accessor :Name, :Source, :Target, :Description

        def initialize(name=nil, source=nil, target=nil, description=nil)
          @Name = name
          @Source = source
          @Target = target
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Source = params['Source']
          @Target = params['Target']
          @Description = params['Description']
        end
      end

      # CreateGlossary返回参数结构体
      class CreateGlossaryResponse < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID。
        # @type GlossaryId: String
        # @param Name: 术语库名称。
        # @type Name: String
        # @param CreatedAt: 创建时间。Unix 时间戳（毫秒）。
        # @type CreatedAt: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GlossaryId, :Name, :CreatedAt, :RequestId

        def initialize(glossaryid=nil, name=nil, createdat=nil, requestid=nil)
          @GlossaryId = glossaryid
          @Name = name
          @CreatedAt = createdat
          @RequestId = requestid
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          @Name = params['Name']
          @CreatedAt = params['CreatedAt']
          @RequestId = params['RequestId']
        end
      end

      # CreateTokenPlanApiKeys请求参数结构体
      class CreateTokenPlanApiKeysRequest < TencentCloud::Common::AbstractModel
        # @param TeamId: 套餐 ID。可通过DescribeTokenPlanList接口获取。
        # @type TeamId: String
        # @param ApiKeyName: API Key 名称，最大 128 字符。如果创建 API Key 的数量超过1个，实际名称格式为 {ApiKeyName}-{序号}（如 mykey-1, mykey-2）。
        # @type ApiKeyName: String
        # @param Count: 创建数量。取值范围：1 ~ 10。
        # @type Count: Integer
        # @param AllowedModels: 可用模型列表。如果套餐类型为企业版专业套餐，可以指定模型，也可以传入“all”，传入 “all“表示可以使用套餐支持的所有模型，如果要指定具体模型，传入 Model ID，“all“和具体的 Model ID 不能同时传入，如果不传则表示该API Key不支持任何模型，从而影响API Key的正常使用。如果套餐类型为企业版轻享套餐，则无论是否传入该字段，以及该字段传入什么值，都会被强制覆盖为["auto"]。
        # @type AllowedModels: Array
        # @param ExclusiveQuota: 独占额度。不传则为0，代表该 API Key 不被分配任何独占配额。单位说明如下：
        # - 套餐类型为专业，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type ExclusiveQuota: Integer
        # @param TotalQuota: 总额度上限。-1 表示不限，必须为 -1 或 >= API Key 当前的 ExclusiveQuota（独占额度）。不传表示不设置上限。单位说明如下：
        # - 套餐类型为专业，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type TotalQuota: Integer
        # @param TPM: TPM（Tokens Per Minute）限制。不传使用套餐级别 TPM。必须 >= 0 且 <= 套餐 TPM。
        # @type TPM: Integer

        attr_accessor :TeamId, :ApiKeyName, :Count, :AllowedModels, :ExclusiveQuota, :TotalQuota, :TPM

        def initialize(teamid=nil, apikeyname=nil, count=nil, allowedmodels=nil, exclusivequota=nil, totalquota=nil, tpm=nil)
          @TeamId = teamid
          @ApiKeyName = apikeyname
          @Count = count
          @AllowedModels = allowedmodels
          @ExclusiveQuota = exclusivequota
          @TotalQuota = totalquota
          @TPM = tpm
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @ApiKeyName = params['ApiKeyName']
          @Count = params['Count']
          @AllowedModels = params['AllowedModels']
          @ExclusiveQuota = params['ExclusiveQuota']
          @TotalQuota = params['TotalQuota']
          @TPM = params['TPM']
        end
      end

      # CreateTokenPlanApiKeys返回参数结构体
      class CreateTokenPlanApiKeysResponse < TencentCloud::Common::AbstractModel
        # @param Items: 成功创建的项列表。
        # @type Items: Array
        # @param FailedItems: 创建失败的项列表。
        # @type FailedItems: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :FailedItems, :RequestId

        def initialize(items=nil, faileditems=nil, requestid=nil)
          @Items = items
          @FailedItems = faileditems
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              createapikeysresultitem_tmp = CreateApiKeysResultItem.new
              createapikeysresultitem_tmp.deserialize(i)
              @Items << createapikeysresultitem_tmp
            end
          end
          unless params['FailedItems'].nil?
            @FailedItems = []
            params['FailedItems'].each do |i|
              batchcreatefaileditem_tmp = BatchCreateFailedItem.new
              batchcreatefaileditem_tmp.deserialize(i)
              @FailedItems << batchcreatefaileditem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTokenPlanTeamOrderAndBuy请求参数结构体
      class CreateTokenPlanTeamOrderAndBuyRequest < TencentCloud::Common::AbstractModel
        # @param ProductType: 套餐类型。取值：enterprise（企业版专业套餐）、enterprise-auto（企业版轻享套餐）。
        # @type ProductType: String
        # @param TeamName: 套餐名称。只能包含中文、字母、数字、下划线、连字符，以中文或者字母开头，以中文或字母或数字结尾，2~50个字符
        # @type TeamName: String
        # @param TimeSpan: 购买时长。单位：月。必须大于 0。
        # @type TimeSpan: Integer
        # @param CreditOrToken: 购买的套餐规格。套餐类型为专业套餐（enterprise），单位取值为积分；轻享套餐（enterprise-auto），单位取值为 tokens。
        # @type CreditOrToken: Integer
        # @param EnableAutoRenew: 是否开启自动续费。默认不开启。
        # @type EnableAutoRenew: Boolean

        attr_accessor :ProductType, :TeamName, :TimeSpan, :CreditOrToken, :EnableAutoRenew

        def initialize(producttype=nil, teamname=nil, timespan=nil, creditortoken=nil, enableautorenew=nil)
          @ProductType = producttype
          @TeamName = teamname
          @TimeSpan = timespan
          @CreditOrToken = creditortoken
          @EnableAutoRenew = enableautorenew
        end

        def deserialize(params)
          @ProductType = params['ProductType']
          @TeamName = params['TeamName']
          @TimeSpan = params['TimeSpan']
          @CreditOrToken = params['CreditOrToken']
          @EnableAutoRenew = params['EnableAutoRenew']
        end
      end

      # CreateTokenPlanTeamOrderAndBuy返回参数结构体
      class CreateTokenPlanTeamOrderAndBuyResponse < TencentCloud::Common::AbstractModel
        # @param BigOrderId: 腾讯云订单 ID。用于关联一次购买操作下的所有子订单。
        # @type BigOrderId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BigOrderId, :RequestId

        def initialize(bigorderid=nil, requestid=nil)
          @BigOrderId = bigorderid
          @RequestId = requestid
        end

        def deserialize(params)
          @BigOrderId = params['BigOrderId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGlossaryEntries请求参数结构体
      class DeleteGlossaryEntriesRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID。可通过 DescribeGlossaries 接口获取。
        # @type GlossaryId: String
        # @param Entries: 待删除的术语条目列表。单次最多 200 个。
        # @type Entries: Array

        attr_accessor :GlossaryId, :Entries

        def initialize(glossaryid=nil, entries=nil)
          @GlossaryId = glossaryid
          @Entries = entries
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              deleteglossaryentryinput_tmp = DeleteGlossaryEntryInput.new
              deleteglossaryentryinput_tmp.deserialize(i)
              @Entries << deleteglossaryentryinput_tmp
            end
          end
        end
      end

      # DeleteGlossaryEntries返回参数结构体
      class DeleteGlossaryEntriesResponse < TencentCloud::Common::AbstractModel
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

      # 删除术语条目项
      class DeleteGlossaryEntryInput < TencentCloud::Common::AbstractModel
        # @param EntryId: 术语条目 ID。可通过 DescribeGlossaryEntries 接口获取。
        # @type EntryId: String

        attr_accessor :EntryId

        def initialize(entryid=nil)
          @EntryId = entryid
        end

        def deserialize(params)
          @EntryId = params['EntryId']
        end
      end

      # DeleteGlossary请求参数结构体
      class DeleteGlossaryRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID。可通过 DescribeGlossaries 接口获取。
        # @type GlossaryId: String

        attr_accessor :GlossaryId

        def initialize(glossaryid=nil)
          @GlossaryId = glossaryid
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
        end
      end

      # DeleteGlossary返回参数结构体
      class DeleteGlossaryResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTokenPlanApiKey请求参数结构体
      class DeleteTokenPlanApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API Key ID。可通过DescribeTokenPlanApiKeyList接口获取。
        # @type ApiKeyId: String

        attr_accessor :ApiKeyId

        def initialize(apikeyid=nil)
          @ApiKeyId = apikeyid
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
        end
      end

      # DeleteTokenPlanApiKey返回参数结构体
      class DeleteTokenPlanApiKeyResponse < TencentCloud::Common::AbstractModel
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

      # DescribeApiKeyList请求参数结构体
      class DescribeApiKeyListRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台类型。当前支持填值：maas
        # @type Platform: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件列表。支持的过滤字段：apikeyId（API 密钥 ID）、apiKeyName（名称）、platform（平台类型）、status（状态）、bindType（绑定类型）。
        # @type Filters: Array
        # @param Sorts: 排序条件列表。支持的排序字段：apiKeyName
        # @type Sorts: Array

        attr_accessor :Platform, :Limit, :Offset, :Filters, :Sorts

        def initialize(platform=nil, limit=nil, offset=nil, filters=nil, sorts=nil)
          @Platform = platform
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Sorts = sorts
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              requestfilter_tmp = RequestFilter.new
              requestfilter_tmp.deserialize(i)
              @Filters << requestfilter_tmp
            end
          end
          unless params['Sorts'].nil?
            @Sorts = []
            params['Sorts'].each do |i|
              requestsort_tmp = RequestSort.new
              requestsort_tmp.deserialize(i)
              @Sorts << requestsort_tmp
            end
          end
        end
      end

      # DescribeApiKeyList返回参数结构体
      class DescribeApiKeyListResponse < TencentCloud::Common::AbstractModel
        # @param ApiKeySet: API 密钥列表。
        # @type ApiKeySet: Array
        # @param TotalCount: 符合条件的 API 密钥总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApiKeySet, :TotalCount, :RequestId

        def initialize(apikeyset=nil, totalcount=nil, requestid=nil)
          @ApiKeySet = apikeyset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApiKeySet'].nil?
            @ApiKeySet = []
            params['ApiKeySet'].each do |i|
              apikeydetail_tmp = ApiKeyDetail.new
              apikeydetail_tmp.deserialize(i)
              @ApiKeySet << apikeydetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiKey请求参数结构体
      class DescribeApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台类型。当前支持填值：maas
        # @type Platform: String
        # @param ApiKeyId: API 密钥 ID，与 ApiKey 至少需传入其一，优先使用 ApiKeyId。
        # @type ApiKeyId: String
        # @param ApiKey: API 密钥明文，与 ApiKeyId 至少需传入其一。
        # @type ApiKey: String

        attr_accessor :Platform, :ApiKeyId, :ApiKey

        def initialize(platform=nil, apikeyid=nil, apikey=nil)
          @Platform = platform
          @ApiKeyId = apikeyid
          @ApiKey = apikey
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ApiKeyId = params['ApiKeyId']
          @ApiKey = params['ApiKey']
        end
      end

      # DescribeApiKey返回参数结构体
      class DescribeApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API 密钥 ID。
        # @type ApiKeyId: String
        # @param Name: 名称。
        # @type Name: String
        # @param ApiKey: API 密钥值（明文）。
        # @type ApiKey: String
        # @param Remark: 备注。
        # @type Remark: String
        # @param Platform: 平台类型。枚举：maas
        # @type Platform: String
        # @param Uin: 主账号。
        # @type Uin: String
        # @param SubUin: 子账号。
        # @type SubUin: String
        # @param Status: 状态。取值：enable（启用）、disable（禁用）。
        # @type Status: String
        # @param BindType: 绑定类型。取值：all（全部模型和接入点）、model_all_endpoint_custom（全部模型+自定义接入点）、model_custom_endpoint_all（自定义模型+全部接入点）、model_custom_endpoint_custom（自定义模型+自定义接入点）。
        # @type BindType: String
        # @param CreateTime: 创建时间。格式：YYYY-MM-DD HH:mm:ss。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。格式：YYYY-MM-DD HH:mm:ss。
        # @type UpdateTime: String
        # @param AppId: 应用 ID。
        # @type AppId: String
        # @param Editable: 是否可编辑。true 表示可编辑，false 表示不可编辑。
        # @type Editable: Boolean
        # @param BindingItems: 绑定资源列表，区分 endpoint 和 model 类型。
        # @type BindingItems: Array
        # @param IpWhitelist: IP 白名单列表。支持 IPv4和 CIDR 格式。空数组表示不限制 IP。
        # @type IpWhitelist: Array
        # @param Creator: 当Platform为maas时该字段为空
        # @type Creator: String
        # @param QuotaSet: Token 限额多维度信息。未配置限额时不返回该字段。
        # @type QuotaSet: Array
        # @param QuotaStatus: Token 限额状态。空字符串表示未配置任何限额包；active 表示已配置且当前可用；inactive 表示已配置但额度耗尽
        # @type QuotaStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApiKeyId, :Name, :ApiKey, :Remark, :Platform, :Uin, :SubUin, :Status, :BindType, :CreateTime, :UpdateTime, :AppId, :Editable, :BindingItems, :IpWhitelist, :Creator, :QuotaSet, :QuotaStatus, :RequestId

        def initialize(apikeyid=nil, name=nil, apikey=nil, remark=nil, platform=nil, uin=nil, subuin=nil, status=nil, bindtype=nil, createtime=nil, updatetime=nil, appid=nil, editable=nil, bindingitems=nil, ipwhitelist=nil, creator=nil, quotaset=nil, quotastatus=nil, requestid=nil)
          @ApiKeyId = apikeyid
          @Name = name
          @ApiKey = apikey
          @Remark = remark
          @Platform = platform
          @Uin = uin
          @SubUin = subuin
          @Status = status
          @BindType = bindtype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @AppId = appid
          @Editable = editable
          @BindingItems = bindingitems
          @IpWhitelist = ipwhitelist
          @Creator = creator
          @QuotaSet = quotaset
          @QuotaStatus = quotastatus
          @RequestId = requestid
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
          @Name = params['Name']
          @ApiKey = params['ApiKey']
          @Remark = params['Remark']
          @Platform = params['Platform']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @Status = params['Status']
          @BindType = params['BindType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @AppId = params['AppId']
          @Editable = params['Editable']
          unless params['BindingItems'].nil?
            @BindingItems = []
            params['BindingItems'].each do |i|
              bindingitem_tmp = BindingItem.new
              bindingitem_tmp.deserialize(i)
              @BindingItems << bindingitem_tmp
            end
          end
          @IpWhitelist = params['IpWhitelist']
          @Creator = params['Creator']
          unless params['QuotaSet'].nil?
            @QuotaSet = []
            params['QuotaSet'].each do |i|
              quotainfo_tmp = QuotaInfo.new
              quotainfo_tmp.deserialize(i)
              @QuotaSet << quotainfo_tmp
            end
          end
          @QuotaStatus = params['QuotaStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGlossaries请求参数结构体
      class DescribeGlossariesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量。默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量。默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件列表。支持的过滤字段：GlossaryId（术语库 ID）、Name（名称）、Source（源语言代码）、Target（目标语言代码）。
        # @type Filters: Array
        # @param Sorts: 排序条件列表。支持的排序字段：CreatedTime（创建时间）、UpdatedTime（更新时间）。
        # @type Sorts: Array

        attr_accessor :Limit, :Offset, :Filters, :Sorts

        def initialize(limit=nil, offset=nil, filters=nil, sorts=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Sorts = sorts
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              requestfilter_tmp = RequestFilter.new
              requestfilter_tmp.deserialize(i)
              @Filters << requestfilter_tmp
            end
          end
          unless params['Sorts'].nil?
            @Sorts = []
            params['Sorts'].each do |i|
              requestsort_tmp = RequestSort.new
              requestsort_tmp.deserialize(i)
              @Sorts << requestsort_tmp
            end
          end
        end
      end

      # DescribeGlossaries返回参数结构体
      class DescribeGlossariesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 术语库列表。
        # @type Items: Array
        # @param TotalCount: 符合条件的术语库总数。
        # @type TotalCount: Integer
        # @param Current: 当前页码。
        # @type Current: Integer
        # @param PageSize: 每页大小。
        # @type PageSize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :Current, :PageSize, :RequestId

        def initialize(items=nil, totalcount=nil, current=nil, pagesize=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @Current = current
          @PageSize = pagesize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              glossaryitem_tmp = GlossaryItem.new
              glossaryitem_tmp.deserialize(i)
              @Items << glossaryitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @Current = params['Current']
          @PageSize = params['PageSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGlossaryEntries请求参数结构体
      class DescribeGlossaryEntriesRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID。可通过 DescribeGlossaries 接口获取。
        # @type GlossaryId: String
        # @param Page: 页码。默认为 1。
        # @type Page: Integer
        # @param PageSize: 每页大小。默认为 20，最大值为 200。
        # @type PageSize: Integer

        attr_accessor :GlossaryId, :Page, :PageSize

        def initialize(glossaryid=nil, page=nil, pagesize=nil)
          @GlossaryId = glossaryid
          @Page = page
          @PageSize = pagesize
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          @Page = params['Page']
          @PageSize = params['PageSize']
        end
      end

      # DescribeGlossaryEntries返回参数结构体
      class DescribeGlossaryEntriesResponse < TencentCloud::Common::AbstractModel
        # @param Entries: 术语条目列表。
        # @type Entries: Array
        # @param Total: 符合条件的术语条目总数。
        # @type Total: Integer
        # @param Page: 当前页码。
        # @type Page: Integer
        # @param PageSize: 每页大小。
        # @type PageSize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Entries, :Total, :Page, :PageSize, :RequestId

        def initialize(entries=nil, total=nil, page=nil, pagesize=nil, requestid=nil)
          @Entries = entries
          @Total = total
          @Page = page
          @PageSize = pagesize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentryitem_tmp = GlossaryEntryItem.new
              glossaryentryitem_tmp.deserialize(i)
              @Entries << glossaryentryitem_tmp
            end
          end
          @Total = params['Total']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelList请求参数结构体
      class DescribeModelListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeModelList返回参数结构体
      class DescribeModelListResponse < TencentCloud::Common::AbstractModel
        # @param ModelSet: <p>模型列表。</p>
        # @type ModelSet: Array
        # @param TotalCount: <p>符合条件的模型总数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelSet, :TotalCount, :RequestId

        def initialize(modelset=nil, totalcount=nil, requestid=nil)
          @ModelSet = modelset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelSet'].nil?
            @ModelSet = []
            params['ModelSet'].each do |i|
              model_tmp = Model.new
              model_tmp.deserialize(i)
              @ModelSet << model_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTokenPlanApiKeyList请求参数结构体
      class DescribeTokenPlanApiKeyListRequest < TencentCloud::Common::AbstractModel
        # @param TeamId: 套餐 ID。可通过DescribeTokenPlanList接口获取。
        # @type TeamId: String
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Filters: 分页查询过滤条件列表。支持的过滤字段：ApiKeyId （API Key ID）、Name （API Key 名称）、Status （API Key是否可用）、StopReason （API Key停用原因）、UseStatus （API Key用户侧开关）。
        # @type Filters: Array
        # @param Sorts: 分页查询排序条件列表。支持的排序字段：CreatedAt（创建时间）、UpdatedAt（更新时间）。默认按 CreatedAt 降序。
        # @type Sorts: Array

        attr_accessor :TeamId, :Offset, :Limit, :Filters, :Sorts

        def initialize(teamid=nil, offset=nil, limit=nil, filters=nil, sorts=nil)
          @TeamId = teamid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Sorts = sorts
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              requestfilter_tmp = RequestFilter.new
              requestfilter_tmp.deserialize(i)
              @Filters << requestfilter_tmp
            end
          end
          unless params['Sorts'].nil?
            @Sorts = []
            params['Sorts'].each do |i|
              requestsort_tmp = RequestSort.new
              requestsort_tmp.deserialize(i)
              @Sorts << requestsort_tmp
            end
          end
        end
      end

      # DescribeTokenPlanApiKeyList返回参数结构体
      class DescribeTokenPlanApiKeyListResponse < TencentCloud::Common::AbstractModel
        # @param ApiKeySet: API Key 列表。
        # @type ApiKeySet: Array
        # @param TotalCount: API Key总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApiKeySet, :TotalCount, :RequestId

        def initialize(apikeyset=nil, totalcount=nil, requestid=nil)
          @ApiKeySet = apikeyset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApiKeySet'].nil?
            @ApiKeySet = []
            params['ApiKeySet'].each do |i|
              tokenplanapikeylistitem_tmp = TokenPlanApiKeyListItem.new
              tokenplanapikeylistitem_tmp.deserialize(i)
              @ApiKeySet << tokenplanapikeylistitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTokenPlanApiKey请求参数结构体
      class DescribeTokenPlanApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API Key ID。可通过DescribeTokenPlanApiKeyList接口获取。
        # @type ApiKeyId: String

        attr_accessor :ApiKeyId

        def initialize(apikeyid=nil)
          @ApiKeyId = apikeyid
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
        end
      end

      # DescribeTokenPlanApiKey返回参数结构体
      class DescribeTokenPlanApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param ApiKey: API Key 详情信息。
        # @type ApiKey: :class:`Tencentcloud::Tokenhub.v20260322.models.TokenPlanApiKeyInfo`
        # @param Balance: API Key 额度及用量信息。
        # @type Balance: :class:`Tencentcloud::Tokenhub.v20260322.models.SubPackageBalance`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApiKey, :Balance, :RequestId

        def initialize(apikey=nil, balance=nil, requestid=nil)
          @ApiKey = apikey
          @Balance = balance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApiKey'].nil?
            @ApiKey = TokenPlanApiKeyInfo.new
            @ApiKey.deserialize(params['ApiKey'])
          end
          unless params['Balance'].nil?
            @Balance = SubPackageBalance.new
            @Balance.deserialize(params['Balance'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTokenPlanApiKeySecret请求参数结构体
      class DescribeTokenPlanApiKeySecretRequest < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API Key ID。可通过DescribeTokenPlanApiKeyList接口获取。
        # @type ApiKeyId: String

        attr_accessor :ApiKeyId

        def initialize(apikeyid=nil)
          @ApiKeyId = apikeyid
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
        end
      end

      # DescribeTokenPlanApiKeySecret返回参数结构体
      class DescribeTokenPlanApiKeySecretResponse < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: APIKey ID。
        # @type ApiKeyId: String
        # @param ApiKey: APIKey 密钥值（明文）。请妥善保管。
        # @type ApiKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApiKeyId, :ApiKey, :RequestId

        def initialize(apikeyid=nil, apikey=nil, requestid=nil)
          @ApiKeyId = apikeyid
          @ApiKey = apikey
          @RequestId = requestid
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
          @ApiKey = params['ApiKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTokenPlanApiKeyUsageDetail请求参数结构体
      class DescribeTokenPlanApiKeyUsageDetailRequest < TencentCloud::Common::AbstractModel
        # @param TeamId: 套餐 ID。可通过DescribeTokenPlanList接口获取。
        # @type TeamId: String
        # @param From: 起始时间，RFC3339 格式。不传默认为结束时间前 15 分钟。
        # @type From: String
        # @param To: 结束时间，RFC3339 格式。不传默认为当前时间。
        # @type To: String
        # @param Sort: 排序方式。取值：asc（升序）、desc（降序），默认为 desc。
        # @type Sort: String
        # @param Limit: 返回条数，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Context: 翻页上下文，首次查询不传，后续传入上次返回的 Context，直到 ListOver 为 true。
        # @type Context: String
        # @param ApiKeyId: 按 API Key ID 精确过滤。最大 128 字符。与 ApiKeyName 至少需传入其一，都传时以 ApiKeyId 为准。可通过 DescribeTokenPlanApiKeyList 接口获取。
        # @type ApiKeyId: String
        # @param ApiKeyName: 按 API Key 名称模糊过滤。最大 64 字符。与 ApiKeyId 至少需传入其一，都传时以 ApiKeyId 为准。
        # @type ApiKeyName: String
        # @param ModelName: 按模型 ID (Model ID) 精确过滤。需要按模型名称过滤时传入该字段。
        # @type ModelName: String

        attr_accessor :TeamId, :From, :To, :Sort, :Limit, :Context, :ApiKeyId, :ApiKeyName, :ModelName

        def initialize(teamid=nil, from=nil, to=nil, sort=nil, limit=nil, context=nil, apikeyid=nil, apikeyname=nil, modelname=nil)
          @TeamId = teamid
          @From = from
          @To = to
          @Sort = sort
          @Limit = limit
          @Context = context
          @ApiKeyId = apikeyid
          @ApiKeyName = apikeyname
          @ModelName = modelname
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @From = params['From']
          @To = params['To']
          @Sort = params['Sort']
          @Limit = params['Limit']
          @Context = params['Context']
          @ApiKeyId = params['ApiKeyId']
          @ApiKeyName = params['ApiKeyName']
          @ModelName = params['ModelName']
        end
      end

      # DescribeTokenPlanApiKeyUsageDetail返回参数结构体
      class DescribeTokenPlanApiKeyUsageDetailResponse < TencentCloud::Common::AbstractModel
        # @param Context: 翻页上下文，传入下一次请求的 Context 参数继续翻页。
        # @type Context: String
        # @param ListOver: 是否已到末尾，为 true 时无需继续翻页。
        # @type ListOver: Boolean
        # @param List: 调用明细列表。
        # @type List: Array
        # @param ProductType: 	 套餐类型。取值：enterprise（企业版专业套餐）、enterprise-auto（企业版轻享套餐）
        # @type ProductType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :ListOver, :List, :ProductType, :RequestId

        def initialize(context=nil, listover=nil, list=nil, producttype=nil, requestid=nil)
          @Context = context
          @ListOver = listover
          @List = list
          @ProductType = producttype
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @ListOver = params['ListOver']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              usagedetailitem_tmp = UsageDetailItem.new
              usagedetailitem_tmp.deserialize(i)
              @List << usagedetailitem_tmp
            end
          end
          @ProductType = params['ProductType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTokenPlanList请求参数结构体
      class DescribeTokenPlanListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Filters: 分页查询过滤条件列表。支持的过滤字段：TeamId（套餐 ID）、Name（套餐名称）、StopReason（关停原因）、ProductType（套餐类型）。
        # @type Filters: Array
        # @param Sorts: 排序条件列表。支持的排序字段：CreatedAt（创建时间）、UpdatedAt（更新时间）。默认按 CreatedAt 降序。
        # @type Sorts: Array

        attr_accessor :Offset, :Limit, :Filters, :Sorts

        def initialize(offset=nil, limit=nil, filters=nil, sorts=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Sorts = sorts
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              requestfilter_tmp = RequestFilter.new
              requestfilter_tmp.deserialize(i)
              @Filters << requestfilter_tmp
            end
          end
          unless params['Sorts'].nil?
            @Sorts = []
            params['Sorts'].each do |i|
              requestsort_tmp = RequestSort.new
              requestsort_tmp.deserialize(i)
              @Sorts << requestsort_tmp
            end
          end
        end
      end

      # DescribeTokenPlanList返回参数结构体
      class DescribeTokenPlanListResponse < TencentCloud::Common::AbstractModel
        # @param TokenPlanSet: 套餐列表。
        # @type TokenPlanSet: Array
        # @param TotalCount: 套餐总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TokenPlanSet, :TotalCount, :RequestId

        def initialize(tokenplanset=nil, totalcount=nil, requestid=nil)
          @TokenPlanSet = tokenplanset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TokenPlanSet'].nil?
            @TokenPlanSet = []
            params['TokenPlanSet'].each do |i|
              tokenplanlistitem_tmp = TokenPlanListItem.new
              tokenplanlistitem_tmp.deserialize(i)
              @TokenPlanSet << tokenplanlistitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTokenPlan请求参数结构体
      class DescribeTokenPlanRequest < TencentCloud::Common::AbstractModel
        # @param TeamId: 套餐 ID。可通过 DescribeTokenPlanList 接口获取。
        # @type TeamId: String

        attr_accessor :TeamId

        def initialize(teamid=nil)
          @TeamId = teamid
        end

        def deserialize(params)
          @TeamId = params['TeamId']
        end
      end

      # DescribeTokenPlan返回参数结构体
      class DescribeTokenPlanResponse < TencentCloud::Common::AbstractModel
        # @param TeamId: 套餐 ID。
        # @type TeamId: String
        # @param Name: 套餐名称。
        # @type Name: String
        # @param AppId: 主账号 APP ID。
        # @type AppId: String
        # @param Uin: 主账号 UIN。
        # @type Uin: String
        # @param Status: 状态。取值：enable（启用）、disable（停用）。
        # @type Status: String
        # @param StopReason: 关停原因。取值：取值：NORMAL（套餐正常）、ISOLATED（隔离/欠费）、FROZEN（冻结）、EXHAUSTED（额度耗尽）、DESTROYED（已销毁）。
        # @type StopReason: String
        # @param ApiKeyMax: 可创建APIKey 上限。
        # @type ApiKeyMax: Integer
        # @param PrepayResourceID: 云计费预付费资源包 ID。
        # @type PrepayResourceID: String
        # @param Creator: 创建人，子账号创建的套餐将展示子账号UIN。
        # @type Creator: String
        # @param CreatedAt: 创建时间。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间。
        # @type UpdatedAt: String
        # @param PackageInfo: 套餐包基本信息
        # @type PackageInfo: :class:`Tencentcloud::Tokenhub.v20260322.models.TokenPlanPackageInfo`
        # @param AutoRenewFlag: 自动续费标识。取值：0（手动续费）、1（自动续费）、2（明确不自动续费）。未绑定预付费资源时不返回。
        # @type AutoRenewFlag: Integer
        # @param ApiKeyCount: 当前已创建的 API Key 数量
        # @type ApiKeyCount: Integer
        # @param TokenSummary: 当前周期 Token 用量明细
        # @type TokenSummary: :class:`Tencentcloud::Tokenhub.v20260322.models.TokenSummary`
        # @param ProductType: 套餐类型。取值：enterprise（企业版专业套餐）、enterprise-auto（企业版轻享套餐）
        # @type ProductType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TeamId, :Name, :AppId, :Uin, :Status, :StopReason, :ApiKeyMax, :PrepayResourceID, :Creator, :CreatedAt, :UpdatedAt, :PackageInfo, :AutoRenewFlag, :ApiKeyCount, :TokenSummary, :ProductType, :RequestId

        def initialize(teamid=nil, name=nil, appid=nil, uin=nil, status=nil, stopreason=nil, apikeymax=nil, prepayresourceid=nil, creator=nil, createdat=nil, updatedat=nil, packageinfo=nil, autorenewflag=nil, apikeycount=nil, tokensummary=nil, producttype=nil, requestid=nil)
          @TeamId = teamid
          @Name = name
          @AppId = appid
          @Uin = uin
          @Status = status
          @StopReason = stopreason
          @ApiKeyMax = apikeymax
          @PrepayResourceID = prepayresourceid
          @Creator = creator
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @PackageInfo = packageinfo
          @AutoRenewFlag = autorenewflag
          @ApiKeyCount = apikeycount
          @TokenSummary = tokensummary
          @ProductType = producttype
          @RequestId = requestid
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @Name = params['Name']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Status = params['Status']
          @StopReason = params['StopReason']
          @ApiKeyMax = params['ApiKeyMax']
          @PrepayResourceID = params['PrepayResourceID']
          @Creator = params['Creator']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          unless params['PackageInfo'].nil?
            @PackageInfo = TokenPlanPackageInfo.new
            @PackageInfo.deserialize(params['PackageInfo'])
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @ApiKeyCount = params['ApiKeyCount']
          unless params['TokenSummary'].nil?
            @TokenSummary = TokenSummary.new
            @TokenSummary.deserialize(params['TokenSummary'])
          end
          @ProductType = params['ProductType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsageRankList请求参数结构体
      class DescribeUsageRankListRequest < TencentCloud::Common::AbstractModel
        # @param Dimension: <p>统计维度。取值：apikey（按 APIKey 统计）、endpoint（按接入点统计）、model（按模型统计）。</p>
        # @type Dimension: String
        # @param StartTime: <p>起始时间（闭区间），RFC3339 格式。</p>
        # @type StartTime: String
        # @param EndTime: <p>结束时间（开区间），RFC3339 格式。与 StartTime 的跨度最大 90 天。</p>
        # @type EndTime: String
        # @param MetricType: <p>指标族切换字段。</p><ul><li>tokens（默认）：Token 消耗图（statistics=sum），支持 Dimension = apikey/endpoint/model</li><li>search【待上线】：联网搜索调用次数（statistics=sum），仅支持 Dimension = model</li><li>其他值返回 InvalidParameter。</li></ul><p>枚举值：</p><ul><li>tokens： tokens</li></ul>
        # @type MetricType: String
        # @param Target: <p>维度过滤值。空字符串表示查询全部对象，非空时仅查询指定单个对象（如指定 APIKey ID）。最大 256 字符。</p>
        # @type Target: String
        # @param Period: <p>统计粒度（秒）。取值：60、300、3600、86400。必须不小于跨度对应下限：跨度 ≤ 1 天 → 60；1 ~ 5 天 → 300；5 ~ 10 天 → 3600；&gt; 10 天 → 86400。仅 ShowAll=false 时使用。</p>
        # @type Period: Integer
        # @param Offset: <p>翻页起点，从 0 起，默认 0。ShowAll=true 时忽略。页大小固定为 10。</p>
        # @type Offset: Integer
        # @param ShowAll: <p>是否返回全量结果。</p><ul><li>false（默认）：按 Offset 分页返回 TopList（每页 10 条），每个对象包含<br>Series 时序点用于绘制曲线。</li><li>true：忽略 Offset，返回全量对象列表，不返回 Series（CSV 导出场景）。</li></ul>
        # @type ShowAll: Boolean

        attr_accessor :Dimension, :StartTime, :EndTime, :MetricType, :Target, :Period, :Offset, :ShowAll

        def initialize(dimension=nil, starttime=nil, endtime=nil, metrictype=nil, target=nil, period=nil, offset=nil, showall=nil)
          @Dimension = dimension
          @StartTime = starttime
          @EndTime = endtime
          @MetricType = metrictype
          @Target = target
          @Period = period
          @Offset = offset
          @ShowAll = showall
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricType = params['MetricType']
          @Target = params['Target']
          @Period = params['Period']
          @Offset = params['Offset']
          @ShowAll = params['ShowAll']
        end
      end

      # DescribeUsageRankList返回参数结构体
      class DescribeUsageRankListResponse < TencentCloud::Common::AbstractModel
        # @param Dimension: <p>回填请求的统计维度。</p>
        # @type Dimension: String
        # @param MetricType: <p>回填请求的指标族：tokens / search 。</p>
        # @type MetricType: String
        # @param MetricKeys: <p>本次响应中 Stats / Series / PageStats / TotalStats 实际包含的 metric key 列表，按MetricType 区分：tokens=[Total,Input,Output,Cache]、search=[SearchRequestCount,SearchCount]</p>
        # @type MetricKeys: Array
        # @param ViewName: <p>视图（数据来源）</p>
        # @type ViewName: String
        # @param Period: <p>回填请求的统计粒度（秒）。ShowAll=true 时为 0。</p>
        # @type Period: Integer
        # @param StartTime: <p>回填请求的起始时间。</p>
        # @type StartTime: String
        # @param EndTime: <p>回填请求的结束时间。</p>
        # @type EndTime: String
        # @param Total: <p>全量对象数。</p>
        # @type Total: Integer
        # @param Offset: <p>回填请求的翻页起点。ShowAll=true 时为 0。</p>
        # @type Offset: Integer
        # @param Limit: <p>页大小，恒为 10。ShowAll=true 时为 Total。</p>
        # @type Limit: Integer
        # @param Timestamps: <p>Series 数组对应的时间戳序列（Unix 秒）。ShowAll=true 时为空数组。</p>
        # @type Timestamps: Array
        # @param TopList: <p>对象排行列表，按<code>MetricKeys[0]</code>降序排序。ShowAll=false 时为当前页 10 个对象（含 Series）；ShowAll=true 时为全量对象（不含 Series，用于 CSV 导出）。</p>
        # @type TopList: Array
        # @param PageStats: <p>分页统计结果</p>
        # @type PageStats: :class:`Tencentcloud::Tokenhub.v20260322.models.UsageStats`
        # @param TotalStats: <p>总统计结果</p>
        # @type TotalStats: :class:`Tencentcloud::Tokenhub.v20260322.models.UsageStats`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Dimension, :MetricType, :MetricKeys, :ViewName, :Period, :StartTime, :EndTime, :Total, :Offset, :Limit, :Timestamps, :TopList, :PageStats, :TotalStats, :RequestId

        def initialize(dimension=nil, metrictype=nil, metrickeys=nil, viewname=nil, period=nil, starttime=nil, endtime=nil, total=nil, offset=nil, limit=nil, timestamps=nil, toplist=nil, pagestats=nil, totalstats=nil, requestid=nil)
          @Dimension = dimension
          @MetricType = metrictype
          @MetricKeys = metrickeys
          @ViewName = viewname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Total = total
          @Offset = offset
          @Limit = limit
          @Timestamps = timestamps
          @TopList = toplist
          @PageStats = pagestats
          @TotalStats = totalstats
          @RequestId = requestid
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          @MetricType = params['MetricType']
          @MetricKeys = params['MetricKeys']
          @ViewName = params['ViewName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Total = params['Total']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Timestamps = params['Timestamps']
          unless params['TopList'].nil?
            @TopList = []
            params['TopList'].each do |i|
              usagerankitem_tmp = UsageRankItem.new
              usagerankitem_tmp.deserialize(i)
              @TopList << usagerankitem_tmp
            end
          end
          unless params['PageStats'].nil?
            @PageStats = UsageStats.new
            @PageStats.deserialize(params['PageStats'])
          end
          unless params['TotalStats'].nil?
            @TotalStats = UsageStats.new
            @TotalStats.deserialize(params['TotalStats'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 新建术语条目项
      class GlossaryEntryInput < TencentCloud::Common::AbstractModel
        # @param SourceTerm: 源语言术语。最大 1000 字符。
        # @type SourceTerm: String
        # @param TargetTerm: 目标语言术语。最大 1000 字符。
        # @type TargetTerm: String

        attr_accessor :SourceTerm, :TargetTerm

        def initialize(sourceterm=nil, targetterm=nil)
          @SourceTerm = sourceterm
          @TargetTerm = targetterm
        end

        def deserialize(params)
          @SourceTerm = params['SourceTerm']
          @TargetTerm = params['TargetTerm']
        end
      end

      # 术语条目详情
      class GlossaryEntryItem < TencentCloud::Common::AbstractModel
        # @param EntryId: 术语条目 ID。
        # @type EntryId: String
        # @param SourceTerm: 源语言术语。
        # @type SourceTerm: String
        # @param TargetTerm: 目标语言术语。
        # @type TargetTerm: String
        # @param UpdatedAt: 更新时间。Unix 时间戳（毫秒）。
        # @type UpdatedAt: Integer

        attr_accessor :EntryId, :SourceTerm, :TargetTerm, :UpdatedAt

        def initialize(entryid=nil, sourceterm=nil, targetterm=nil, updatedat=nil)
          @EntryId = entryid
          @SourceTerm = sourceterm
          @TargetTerm = targetterm
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @EntryId = params['EntryId']
          @SourceTerm = params['SourceTerm']
          @TargetTerm = params['TargetTerm']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 术语库详情
      class GlossaryItem < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID。
        # @type GlossaryId: String
        # @param Name: 术语库名称。
        # @type Name: String
        # @param Description: 术语库描述。
        # @type Description: String
        # @param Source: 源语言代码。
        # @type Source: String
        # @param Target: 目标语言代码。
        # @type Target: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间。
        # @type UpdatedTime: String

        attr_accessor :GlossaryId, :Name, :Description, :Source, :Target, :CreatedTime, :UpdatedTime

        def initialize(glossaryid=nil, name=nil, description=nil, source=nil, target=nil, createdtime=nil, updatedtime=nil)
          @GlossaryId = glossaryid
          @Name = name
          @Description = description
          @Source = source
          @Target = target
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          @Name = params['Name']
          @Description = params['Description']
          @Source = params['Source']
          @Target = params['Target']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # 模型信息
      class Model < TencentCloud::Common::AbstractModel
        # @param ModelName: <p>模型名称</p>
        # @type ModelName: String
        # @param ModelId: <p>模型 ID。</p>
        # @type ModelId: String
        # @param DisplayName: <p>模型显示名称。</p>
        # @type DisplayName: String
        # @param Description: <p>模型描述。</p>
        # @type Description: String
        # @param Summary: <p>模型概要。</p>
        # @type Summary: String
        # @param ModelType: <p>模型类型。取值：Text（文本）、Vision（视觉）、Multimodal（多模态）、Speech（语音）、Embedding（向量）。</p><p>枚举值：</p><ul><li>Text： 语言模型</li><li>Vision： 视觉模型</li><li>Multimodal： 多模态模型</li></ul>
        # @type ModelType: String
        # @param Brand: <p>模型品牌。</p>
        # @type Brand: String
        # @param ModelImage: <p>模型图标。</p>
        # @type ModelImage: :class:`Tencentcloud::Tokenhub.v20260322.models.ModelImage`
        # @param Provider: <p>模型供应商。</p>
        # @type Provider: String
        # @param Status: <p>模型状态。取值：online（上线）、offline（下线）。</p><p>枚举值：</p><ul><li>online ： 上线</li><li>pre-offline： 预下线</li></ul>
        # @type Status: String
        # @param Tags: <p>标签列表。</p>
        # @type Tags: Array
        # @param ModelChargingInfo: <p>计费信息列表。</p>
        # @type ModelChargingInfo: Array
        # @param ModelSpec: <p>模型规格。</p>
        # @type ModelSpec: :class:`Tencentcloud::Tokenhub.v20260322.models.ModelSpec`
        # @param ReleaseAt: <p>发布时间。</p>
        # @type ReleaseAt: String
        # @param RecommendWeight: <p>推荐顺序，值越小排序越靠前。</p>
        # @type RecommendWeight: Integer
        # @param ModelAccessInfo: <p>模型访问信息。包含模型在各站点和地域的可用性配置。为空时表示未配置地域信息，模型不可用。</p>
        # @type ModelAccessInfo: :class:`Tencentcloud::Tokenhub.v20260322.models.ModelAccessInfo`
        # @param FreeTrialInfo: <p>体验包信息。</p>
        # @type FreeTrialInfo: :class:`Tencentcloud::Tokenhub.v20260322.models.ModelFreeTrialInfo`
        # @param OfflineAt: <p>模型下线时间，Status=pre-offline 时，会配置模型下线时间</p>
        # @type OfflineAt: String

        attr_accessor :ModelName, :ModelId, :DisplayName, :Description, :Summary, :ModelType, :Brand, :ModelImage, :Provider, :Status, :Tags, :ModelChargingInfo, :ModelSpec, :ReleaseAt, :RecommendWeight, :ModelAccessInfo, :FreeTrialInfo, :OfflineAt

        def initialize(modelname=nil, modelid=nil, displayname=nil, description=nil, summary=nil, modeltype=nil, brand=nil, modelimage=nil, provider=nil, status=nil, tags=nil, modelcharginginfo=nil, modelspec=nil, releaseat=nil, recommendweight=nil, modelaccessinfo=nil, freetrialinfo=nil, offlineat=nil)
          @ModelName = modelname
          @ModelId = modelid
          @DisplayName = displayname
          @Description = description
          @Summary = summary
          @ModelType = modeltype
          @Brand = brand
          @ModelImage = modelimage
          @Provider = provider
          @Status = status
          @Tags = tags
          @ModelChargingInfo = modelcharginginfo
          @ModelSpec = modelspec
          @ReleaseAt = releaseat
          @RecommendWeight = recommendweight
          @ModelAccessInfo = modelaccessinfo
          @FreeTrialInfo = freetrialinfo
          @OfflineAt = offlineat
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @ModelId = params['ModelId']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @Summary = params['Summary']
          @ModelType = params['ModelType']
          @Brand = params['Brand']
          unless params['ModelImage'].nil?
            @ModelImage = ModelImage.new
            @ModelImage.deserialize(params['ModelImage'])
          end
          @Provider = params['Provider']
          @Status = params['Status']
          @Tags = params['Tags']
          unless params['ModelChargingInfo'].nil?
            @ModelChargingInfo = []
            params['ModelChargingInfo'].each do |i|
              modelcharginginfo_tmp = ModelChargingInfo.new
              modelcharginginfo_tmp.deserialize(i)
              @ModelChargingInfo << modelcharginginfo_tmp
            end
          end
          unless params['ModelSpec'].nil?
            @ModelSpec = ModelSpec.new
            @ModelSpec.deserialize(params['ModelSpec'])
          end
          @ReleaseAt = params['ReleaseAt']
          @RecommendWeight = params['RecommendWeight']
          unless params['ModelAccessInfo'].nil?
            @ModelAccessInfo = ModelAccessInfo.new
            @ModelAccessInfo.deserialize(params['ModelAccessInfo'])
          end
          unless params['FreeTrialInfo'].nil?
            @FreeTrialInfo = ModelFreeTrialInfo.new
            @FreeTrialInfo.deserialize(params['FreeTrialInfo'])
          end
          @OfflineAt = params['OfflineAt']
        end
      end

      # 模型访问信息
      class ModelAccessInfo < TencentCloud::Common::AbstractModel
        # @param ModelSiteRegions: 各站点的地域可用性列表。为空时表示未配置地域信息，模型不可用。
        # @type ModelSiteRegions: Array

        attr_accessor :ModelSiteRegions

        def initialize(modelsiteregions=nil)
          @ModelSiteRegions = modelsiteregions
        end

        def deserialize(params)
          unless params['ModelSiteRegions'].nil?
            @ModelSiteRegions = []
            params['ModelSiteRegions'].each do |i|
              modelsiteregion_tmp = ModelSiteRegion.new
              modelsiteregion_tmp.deserialize(i)
              @ModelSiteRegions << modelsiteregion_tmp
            end
          end
        end
      end

      # 模型计费信息
      class ModelChargingInfo < TencentCloud::Common::AbstractModel
        # @param Type: 计费类型。取值：Uniform（统一计费）、Tiered（阶梯计费）。
        # @type Type: String
        # @param Name: 计费名称，阶梯计费时表示区间标识，统一计费为空。
        # @type Name: String
        # @param Scenario: 计费场景，用于区分同一产品不同功能的计费。
        # @type Scenario: String
        # @param ChargingItems: 计费条目列表，顺序即前端展示顺序。
        # @type ChargingItems: Array
        # @param ChargeUnit: 计费单位。取值：TOKEN（词元）、COUNT（次）、CREDIT（积分）、PICTURE（张）。
        # @type ChargeUnit: String
        # @param Reference: 计费参考链接。
        # @type Reference: String

        attr_accessor :Type, :Name, :Scenario, :ChargingItems, :ChargeUnit, :Reference

        def initialize(type=nil, name=nil, scenario=nil, chargingitems=nil, chargeunit=nil, reference=nil)
          @Type = type
          @Name = name
          @Scenario = scenario
          @ChargingItems = chargingitems
          @ChargeUnit = chargeunit
          @Reference = reference
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @Scenario = params['Scenario']
          unless params['ChargingItems'].nil?
            @ChargingItems = []
            params['ChargingItems'].each do |i|
              modelchargingitem_tmp = ModelChargingItem.new
              modelchargingitem_tmp.deserialize(i)
              @ChargingItems << modelchargingitem_tmp
            end
          end
          @ChargeUnit = params['ChargeUnit']
          @Reference = params['Reference']
        end
      end

      # 计费条目
      class ModelChargingItem < TencentCloud::Common::AbstractModel
        # @param PriceName: 价格维度标识。取值：Input（输入）、Output（输出）、Cache（缓存命中）、Thinking（思考）、BatchInput（批量输入）、BatchOutput（批量输出）、BatchCache（批量缓存命中）、ImageInput（输入图片）、ImageOutput（输出图片）、Search（搜索调用）。
        # @type PriceName: String
        # @param DisplayName: 价格维度展示名，后端直接提供当前语言文本（如 输入、Input），前端无需翻译。
        # @type DisplayName: String
        # @param Price: 价格数值。
        # @type Price: String
        # @param PriceUnit: 价格单位，后端直接提供当前语言文本（如 元/百万tokens、元/张、积分/次）。
        # @type PriceUnit: String

        attr_accessor :PriceName, :DisplayName, :Price, :PriceUnit

        def initialize(pricename=nil, displayname=nil, price=nil, priceunit=nil)
          @PriceName = pricename
          @DisplayName = displayname
          @Price = price
          @PriceUnit = priceunit
        end

        def deserialize(params)
          @PriceName = params['PriceName']
          @DisplayName = params['DisplayName']
          @Price = params['Price']
          @PriceUnit = params['PriceUnit']
        end
      end

      # 模型体验包信息
      class ModelFreeTrialInfo < TencentCloud::Common::AbstractModel
        # @param RecommendWeight: 推荐顺序，值越小排序越靠前。为空表示使用模型默认权重。
        # @type RecommendWeight: Integer
        # @param CapacitySize: 体验包容量大小。
        # @type CapacitySize: Integer
        # @param Unit: 容量单位。取值：token。
        # @type Unit: String
        # @param ValidityDays: 有效期天数（如90天）。为空表示不限期。
        # @type ValidityDays: Integer

        attr_accessor :RecommendWeight, :CapacitySize, :Unit, :ValidityDays

        def initialize(recommendweight=nil, capacitysize=nil, unit=nil, validitydays=nil)
          @RecommendWeight = recommendweight
          @CapacitySize = capacitysize
          @Unit = unit
          @ValidityDays = validitydays
        end

        def deserialize(params)
          @RecommendWeight = params['RecommendWeight']
          @CapacitySize = params['CapacitySize']
          @Unit = params['Unit']
          @ValidityDays = params['ValidityDays']
        end
      end

      # 模型图标信息
      class ModelImage < TencentCloud::Common::AbstractModel
        # @param Url: 图标 URL。
        # @type Url: String

        attr_accessor :Url

        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # 模型上线的站点、地域信息
      class ModelSiteRegion < TencentCloud::Common::AbstractModel
        # @param Site: 站点标识。取值：domestic（国内站）、international（国际站）。
        # @type Site: String
        # @param Regions: 该站点下可用的地域列表，遵循腾讯云标准地域编码（如 ap-guangzhou、ap-beijing、ap-singapore、na-siliconvalley 等）。为空数组时表示该站点无可用地域。
        # @type Regions: Array

        attr_accessor :Site, :Regions

        def initialize(site=nil, regions=nil)
          @Site = site
          @Regions = regions
        end

        def deserialize(params)
          @Site = params['Site']
          @Regions = params['Regions']
        end
      end

      # 模型规格信息
      class ModelSpec < TencentCloud::Common::AbstractModel
        # @param TPM: 每分钟处理 Token 数（Tokens Per Minute）。
        # @type TPM: String
        # @param QPM: 每分钟请求数（Queries Per Minute）。
        # @type QPM: String
        # @param MaxInputToken: 最大输入 Token 长度。
        # @type MaxInputToken: String
        # @param MaxOutputToken: 最大输出 Token 长度。
        # @type MaxOutputToken: String
        # @param ContextLength: 上下文窗口长度。
        # @type ContextLength: String
        # @param Concurrency: 并发数。
        # @type Concurrency: String
        # @param InputDescription: 输入要求描述。
        # @type InputDescription: String

        attr_accessor :TPM, :QPM, :MaxInputToken, :MaxOutputToken, :ContextLength, :Concurrency, :InputDescription

        def initialize(tpm=nil, qpm=nil, maxinputtoken=nil, maxoutputtoken=nil, contextlength=nil, concurrency=nil, inputdescription=nil)
          @TPM = tpm
          @QPM = qpm
          @MaxInputToken = maxinputtoken
          @MaxOutputToken = maxoutputtoken
          @ContextLength = contextlength
          @Concurrency = concurrency
          @InputDescription = inputdescription
        end

        def deserialize(params)
          @TPM = params['TPM']
          @QPM = params['QPM']
          @MaxInputToken = params['MaxInputToken']
          @MaxOutputToken = params['MaxOutputToken']
          @ContextLength = params['ContextLength']
          @Concurrency = params['Concurrency']
          @InputDescription = params['InputDescription']
        end
      end

      # ModifyGlossaryEntries请求参数结构体
      class ModifyGlossaryEntriesRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID。可通过 DescribeGlossaries 接口获取。
        # @type GlossaryId: String
        # @param Entries: 术语条目列表。单次最多 200 个。
        # @type Entries: Array

        attr_accessor :GlossaryId, :Entries

        def initialize(glossaryid=nil, entries=nil)
          @GlossaryId = glossaryid
          @Entries = entries
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              modifyglossaryentryinput_tmp = ModifyGlossaryEntryInput.new
              modifyglossaryentryinput_tmp.deserialize(i)
              @Entries << modifyglossaryentryinput_tmp
            end
          end
        end
      end

      # ModifyGlossaryEntries返回参数结构体
      class ModifyGlossaryEntriesResponse < TencentCloud::Common::AbstractModel
        # @param Entries: 修改后的术语条目列表。
        # @type Entries: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Entries, :RequestId

        def initialize(entries=nil, requestid=nil)
          @Entries = entries
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentryitem_tmp = GlossaryEntryItem.new
              glossaryentryitem_tmp.deserialize(i)
              @Entries << glossaryentryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改术语条目项
      class ModifyGlossaryEntryInput < TencentCloud::Common::AbstractModel
        # @param EntryId: 术语条目 ID。可通过 DescribeGlossaryEntries 接口获取。
        # @type EntryId: String
        # @param SourceTerm: 源语言术语。最大 1000 字符。不传则保持不变。
        # @type SourceTerm: String
        # @param TargetTerm: 目标语言术语。最大 1000 字符。不传则保持不变。
        # @type TargetTerm: String

        attr_accessor :EntryId, :SourceTerm, :TargetTerm

        def initialize(entryid=nil, sourceterm=nil, targetterm=nil)
          @EntryId = entryid
          @SourceTerm = sourceterm
          @TargetTerm = targetterm
        end

        def deserialize(params)
          @EntryId = params['EntryId']
          @SourceTerm = params['SourceTerm']
          @TargetTerm = params['TargetTerm']
        end
      end

      # ModifyTokenPlanApiKey请求参数结构体
      class ModifyTokenPlanApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API Key ID。
        # @type ApiKeyId: String
        # @param AllowedModels: 可用模型列表。不传则不修改。

        # - 如果套餐类型为企业版专业套餐：
        # 1）传入“all“ ：使用套餐支持的所有模型
        # 2）传入 Model ID：指定具体模型。“all“和具体的 Model ID 不能同时传入。

        # - 如果套餐类型为企业版轻享套餐，不允许传该参数。
        # @type AllowedModels: Array
        # @param ExclusiveQuota: 独占额度，不传则不修改。单位说明：

        # - 套餐类型为专业套餐，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type ExclusiveQuota: Integer
        # @param TotalQuota: 总额度上限。-1 表示不限，必须为 -1 或 >= API Key 当前的 ExclusiveQuota（独占额度），不传则不修改。单位说明如下：
        # - 套餐类型为专业套餐，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type TotalQuota: Integer
        # @param UseStatus: 是否启用该 API Key。取值：enable（启用）、disable（停用），不传则不修改。
        # @type UseStatus: String
        # @param TPM: TPM（Tokens Per Minute）限制。不传则不修改。必须 >= 0 且 <= 套餐 TPM。
        # @type TPM: Integer

        attr_accessor :ApiKeyId, :AllowedModels, :ExclusiveQuota, :TotalQuota, :UseStatus, :TPM

        def initialize(apikeyid=nil, allowedmodels=nil, exclusivequota=nil, totalquota=nil, usestatus=nil, tpm=nil)
          @ApiKeyId = apikeyid
          @AllowedModels = allowedmodels
          @ExclusiveQuota = exclusivequota
          @TotalQuota = totalquota
          @UseStatus = usestatus
          @TPM = tpm
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
          @AllowedModels = params['AllowedModels']
          @ExclusiveQuota = params['ExclusiveQuota']
          @TotalQuota = params['TotalQuota']
          @UseStatus = params['UseStatus']
          @TPM = params['TPM']
        end
      end

      # ModifyTokenPlanApiKey返回参数结构体
      class ModifyTokenPlanApiKeyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTokenPlanApiKeySecret请求参数结构体
      class ModifyTokenPlanApiKeySecretRequest < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API Key ID。可通过DescribeTokenPlanApiKeyList接口获取。
        # @type ApiKeyId: String

        attr_accessor :ApiKeyId

        def initialize(apikeyid=nil)
          @ApiKeyId = apikeyid
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
        end
      end

      # ModifyTokenPlanApiKeySecret返回参数结构体
      class ModifyTokenPlanApiKeySecretResponse < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API Key ID。
        # @type ApiKeyId: String
        # @param KeyVersion: 重置后的密钥版本号。
        # @type KeyVersion: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApiKeyId, :KeyVersion, :RequestId

        def initialize(apikeyid=nil, keyversion=nil, requestid=nil)
          @ApiKeyId = apikeyid
          @KeyVersion = keyversion
          @RequestId = requestid
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
          @KeyVersion = params['KeyVersion']
          @RequestId = params['RequestId']
        end
      end

      # Token 限额信息
      class QuotaInfo < TencentCloud::Common::AbstractModel
        # @param PkgId: 限额包 ID。
        # @type PkgId: String
        # @param Status: 限额包状态。取值：1（正常）、3（已耗尽）、4（已销毁）。
        # @type Status: Integer
        # @param CycleUnit: 限额周期。取值：d（按日）、m（按月）、lifetime（总额度，不重置）。
        # @type CycleUnit: String
        # @param CycleCredits: 维度当期限额总量（Token 数）。使用字符串避免大数精度丢失。
        # @type CycleCredits: String
        # @param CycleUsed: 维度当期已使用量（Token 数）。使用字符串避免大数精度丢失。
        # @type CycleUsed: String
        # @param StartTime: 限额生效起始时间。
        # @type StartTime: String
        # @param ExpireTime: 限额过期时间。
        # @type ExpireTime: String

        attr_accessor :PkgId, :Status, :CycleUnit, :CycleCredits, :CycleUsed, :StartTime, :ExpireTime

        def initialize(pkgid=nil, status=nil, cycleunit=nil, cyclecredits=nil, cycleused=nil, starttime=nil, expiretime=nil)
          @PkgId = pkgid
          @Status = status
          @CycleUnit = cycleunit
          @CycleCredits = cyclecredits
          @CycleUsed = cycleused
          @StartTime = starttime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @PkgId = params['PkgId']
          @Status = params['Status']
          @CycleUnit = params['CycleUnit']
          @CycleCredits = params['CycleCredits']
          @CycleUsed = params['CycleUsed']
          @StartTime = params['StartTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # RenewTokenPlanTeamOrder请求参数结构体
      class RenewTokenPlanTeamOrderRequest < TencentCloud::Common::AbstractModel
        # @param TeamId: 套餐 ID。可通过 DescribeTokenPlanList 接口获取。
        # @type TeamId: String
        # @param TimeSpan: 续费时长。单位：月。必须大于 0。
        # @type TimeSpan: Integer

        attr_accessor :TeamId, :TimeSpan

        def initialize(teamid=nil, timespan=nil)
          @TeamId = teamid
          @TimeSpan = timespan
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @TimeSpan = params['TimeSpan']
        end
      end

      # RenewTokenPlanTeamOrder返回参数结构体
      class RenewTokenPlanTeamOrderResponse < TencentCloud::Common::AbstractModel
        # @param BigOrderId: 腾讯云订单 ID。用于关联一次续费操作下的所有子订单。
        # @type BigOrderId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BigOrderId, :RequestId

        def initialize(bigorderid=nil, requestid=nil)
          @BigOrderId = bigorderid
          @RequestId = requestid
        end

        def deserialize(params)
          @BigOrderId = params['BigOrderId']
          @RequestId = params['RequestId']
        end
      end

      # 过滤条件
      class RequestFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名称。
        # @type Name: String
        # @param Op: 过滤操作符。取值：EXACT（精确匹配）、FUZZY（模糊匹配）、NOT（排除匹配）。
        # @type Op: String
        # @param Values: 过滤值列表。最多支持 10 个。
        # @type Values: Array

        attr_accessor :Name, :Op, :Values

        def initialize(name=nil, op=nil, values=nil)
          @Name = name
          @Op = op
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Op = params['Op']
          @Values = params['Values']
        end
      end

      # 排序条件
      class RequestSort < TencentCloud::Common::AbstractModel
        # @param Name: 排序字段名称。
        # @type Name: String
        # @param Order: 排序方向。取值：ASC（升序）、DESC（降序）。
        # @type Order: String

        attr_accessor :Name, :Order

        def initialize(name=nil, order=nil)
          @Name = name
          @Order = order
        end

        def deserialize(params)
          @Name = params['Name']
          @Order = params['Order']
        end
      end

      # API Key 额度及用量信息
      class SubPackageBalance < TencentCloud::Common::AbstractModel
        # @param ExclusiveQuota: 独占额度。单位说明如下：
        # - 套餐类型为专业套餐，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type ExclusiveQuota: String
        # @param ExclusiveUsed: 独占额度已用量。单位说明如下：
        # - 套餐类型为专业套餐，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type ExclusiveUsed: String
        # @param ExclusiveRemain: 独占额度剩余量。单位说明如下：
        # - 套餐类型为专业套餐，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type ExclusiveRemain: String
        # @param SharedQuota: 共享额度上限，-1 表示不限。单位说明如下：
        # - 套餐类型为专业套餐，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type SharedQuota: String
        # @param SharedUsed: 共享额度已用量。单位说明如下：
        # - 套餐类型为专业套餐，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type SharedUsed: String
        # @param SharedRemain: 共享额度剩余量。单位说明如下：
        # - 套餐类型为专业套餐，单位取值为积分；
        # - 套餐类型为轻享套餐，单位取值为 token。
        # @type SharedRemain: String
        # @param Status: API Key 额度包状态。取值：0（正常）、1（耗尽）。
        # @type Status: Integer

        attr_accessor :ExclusiveQuota, :ExclusiveUsed, :ExclusiveRemain, :SharedQuota, :SharedUsed, :SharedRemain, :Status

        def initialize(exclusivequota=nil, exclusiveused=nil, exclusiveremain=nil, sharedquota=nil, sharedused=nil, sharedremain=nil, status=nil)
          @ExclusiveQuota = exclusivequota
          @ExclusiveUsed = exclusiveused
          @ExclusiveRemain = exclusiveremain
          @SharedQuota = sharedquota
          @SharedUsed = sharedused
          @SharedRemain = sharedremain
          @Status = status
        end

        def deserialize(params)
          @ExclusiveQuota = params['ExclusiveQuota']
          @ExclusiveUsed = params['ExclusiveUsed']
          @ExclusiveRemain = params['ExclusiveRemain']
          @SharedQuota = params['SharedQuota']
          @SharedUsed = params['SharedUsed']
          @SharedRemain = params['SharedRemain']
          @Status = params['Status']
        end
      end

      # Token Plan API Key 详情
      class TokenPlanApiKeyInfo < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API Key ID。
        # @type ApiKeyId: String
        # @param ApiKey: API Key 密钥值（脱敏）。
        # @type ApiKey: String
        # @param Name: API Key 名称。
        # @type Name: String
        # @param TeamId: 所属套餐 ID。
        # @type TeamId: String
        # @param AppId: 账号APP ID。
        # @type AppId: String
        # @param Uin: 主账号 UIN。
        # @type Uin: String
        # @param AllowedModels: API Key 可用模型列表（JSON 数组字符串）。
        # @type AllowedModels: String
        # @param Status: API Key 是否可用。取值：enable（启用）、disable（停用）。
        # @type Status: String
        # @param StopReason: API Key 停用原因。取值：NORMAL（正常，默认值），QUOTA_EXHAUSTED（API Key额度包耗尽），ABNORMAL（异常，需人工介入）
        # @type StopReason: String
        # @param UseStatus: 用户侧开关。取值：enable（启用）、disable（停用）。
        # @type UseStatus: String
        # @param KeyVersion: 密钥版本号。
        # @type KeyVersion: Integer
        # @param LastRotatedAt: 最近一次重置时间。（ISO 8601）
        # @type LastRotatedAt: String
        # @param Creator: 创建人，如果是子账号创建，则该值为子账号UIN。
        # @type Creator: String
        # @param CreatedAt: 创建时间。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间。
        # @type UpdatedAt: String
        # @param TPM: TPM 限制（Tokens Per Minute）。
        # @type TPM: Integer
        # @param ProductType: 套餐类型。取值：enterprise（企业版专业套餐）、enterprise-auto（企业版轻享套餐）
        # @type ProductType: String

        attr_accessor :ApiKeyId, :ApiKey, :Name, :TeamId, :AppId, :Uin, :AllowedModels, :Status, :StopReason, :UseStatus, :KeyVersion, :LastRotatedAt, :Creator, :CreatedAt, :UpdatedAt, :TPM, :ProductType

        def initialize(apikeyid=nil, apikey=nil, name=nil, teamid=nil, appid=nil, uin=nil, allowedmodels=nil, status=nil, stopreason=nil, usestatus=nil, keyversion=nil, lastrotatedat=nil, creator=nil, createdat=nil, updatedat=nil, tpm=nil, producttype=nil)
          @ApiKeyId = apikeyid
          @ApiKey = apikey
          @Name = name
          @TeamId = teamid
          @AppId = appid
          @Uin = uin
          @AllowedModels = allowedmodels
          @Status = status
          @StopReason = stopreason
          @UseStatus = usestatus
          @KeyVersion = keyversion
          @LastRotatedAt = lastrotatedat
          @Creator = creator
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @TPM = tpm
          @ProductType = producttype
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
          @ApiKey = params['ApiKey']
          @Name = params['Name']
          @TeamId = params['TeamId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @AllowedModels = params['AllowedModels']
          @Status = params['Status']
          @StopReason = params['StopReason']
          @UseStatus = params['UseStatus']
          @KeyVersion = params['KeyVersion']
          @LastRotatedAt = params['LastRotatedAt']
          @Creator = params['Creator']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @TPM = params['TPM']
          @ProductType = params['ProductType']
        end
      end

      # Token Plan API Key 列表项
      class TokenPlanApiKeyListItem < TencentCloud::Common::AbstractModel
        # @param ApiKeyId: API Key ID。
        # @type ApiKeyId: String
        # @param ApiKey: API Key 密钥值（脱敏）。
        # @type ApiKey: String
        # @param Name: API Key 名称。
        # @type Name: String
        # @param TeamId: 所属套餐 ID。
        # @type TeamId: String
        # @param AppId: 账号APP ID。
        # @type AppId: String
        # @param Uin: 主账号 UIN。最大 128 字符。
        # @type Uin: String
        # @param AllowedModels: API Key 可用模型列表（JSON 数组字符串）。
        # @type AllowedModels: String
        # @param Status: API Key 是否可用。取值：enable（启用）、disable（停用）。
        # @type Status: String
        # @param StopReason: API Key 停用原因。取值：NORMAL（正常，默认值），QUOTA_EXHAUSTED（API Key额度包耗尽），ABNORMAL（异常，需人工介入）
        # @type StopReason: String
        # @param UseStatus: 用户侧开关。取值：enable（启用）、disable（停用）。
        # @type UseStatus: String
        # @param KeyVersion: 密钥版本号。
        # @type KeyVersion: Integer
        # @param LastRotatedAt: 最近一次重置时间。（ISO 8601）
        # @type LastRotatedAt: String
        # @param Creator: 创建人，如果是子账号创建，则该值为子账号UIN。
        # @type Creator: String
        # @param CreatedAt: 创建时间。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间。
        # @type UpdatedAt: String
        # @param Balance: API Key 额度用量信息
        # @type Balance: :class:`Tencentcloud::Tokenhub.v20260322.models.SubPackageBalance`
        # @param ProductType: 套餐类型。取值：enterprise（企业版专业套餐）、enterprise-auto（企业版轻享套餐）。
        # @type ProductType: String

        attr_accessor :ApiKeyId, :ApiKey, :Name, :TeamId, :AppId, :Uin, :AllowedModels, :Status, :StopReason, :UseStatus, :KeyVersion, :LastRotatedAt, :Creator, :CreatedAt, :UpdatedAt, :Balance, :ProductType

        def initialize(apikeyid=nil, apikey=nil, name=nil, teamid=nil, appid=nil, uin=nil, allowedmodels=nil, status=nil, stopreason=nil, usestatus=nil, keyversion=nil, lastrotatedat=nil, creator=nil, createdat=nil, updatedat=nil, balance=nil, producttype=nil)
          @ApiKeyId = apikeyid
          @ApiKey = apikey
          @Name = name
          @TeamId = teamid
          @AppId = appid
          @Uin = uin
          @AllowedModels = allowedmodels
          @Status = status
          @StopReason = stopreason
          @UseStatus = usestatus
          @KeyVersion = keyversion
          @LastRotatedAt = lastrotatedat
          @Creator = creator
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Balance = balance
          @ProductType = producttype
        end

        def deserialize(params)
          @ApiKeyId = params['ApiKeyId']
          @ApiKey = params['ApiKey']
          @Name = params['Name']
          @TeamId = params['TeamId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @AllowedModels = params['AllowedModels']
          @Status = params['Status']
          @StopReason = params['StopReason']
          @UseStatus = params['UseStatus']
          @KeyVersion = params['KeyVersion']
          @LastRotatedAt = params['LastRotatedAt']
          @Creator = params['Creator']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          unless params['Balance'].nil?
            @Balance = SubPackageBalance.new
            @Balance.deserialize(params['Balance'])
          end
          @ProductType = params['ProductType']
        end
      end

      # Token Plan 套餐列表项
      class TokenPlanListItem < TencentCloud::Common::AbstractModel
        # @param TeamId: 套餐 ID。
        # @type TeamId: String
        # @param ProductType: 套餐类型。取值：enterprise（企业版专业套餐）、enterprise-auto（企业版轻享套餐）
        # @type ProductType: String
        # @param Name: 套餐名称。最大 128 字符。
        # @type Name: String
        # @param AppId: 账号 APP ID。
        # @type AppId: String
        # @param Uin: 主账号 UIN。
        # @type Uin: String
        # @param Status: 套餐状态。取值：enable（启用）、disable（停用）。
        # @type Status: String
        # @param StopReason: 套餐关停原因。取值：NORMAL（正常）、ISOLATED（隔离/欠费）、FROZEN（冻结）、EXHAUSTED（额度耗尽）、DESTROYED（已销毁）
        # @type StopReason: String
        # @param ApiKeyMax: 可创建 API Key 上限。
        # @type ApiKeyMax: Integer
        # @param PrepayResourceID: 云计费预付费资源包 ID。
        # @type PrepayResourceID: String
        # @param Creator: 创建人。若为子账号创建的套餐，则该值为子账号UIN。
        # @type Creator: String
        # @param CreatedAt: 创建时间。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间。
        # @type UpdatedAt: String
        # @param PackageInfo: 套餐包基本信息。
        # @type PackageInfo: :class:`Tencentcloud::Tokenhub.v20260322.models.TokenPlanPackageInfo`
        # @param AutoRenewFlag: 是否开启自动续费。取值：0（未开启），1（开启）
        # @type AutoRenewFlag: Integer

        attr_accessor :TeamId, :ProductType, :Name, :AppId, :Uin, :Status, :StopReason, :ApiKeyMax, :PrepayResourceID, :Creator, :CreatedAt, :UpdatedAt, :PackageInfo, :AutoRenewFlag

        def initialize(teamid=nil, producttype=nil, name=nil, appid=nil, uin=nil, status=nil, stopreason=nil, apikeymax=nil, prepayresourceid=nil, creator=nil, createdat=nil, updatedat=nil, packageinfo=nil, autorenewflag=nil)
          @TeamId = teamid
          @ProductType = producttype
          @Name = name
          @AppId = appid
          @Uin = uin
          @Status = status
          @StopReason = stopreason
          @ApiKeyMax = apikeymax
          @PrepayResourceID = prepayresourceid
          @Creator = creator
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @PackageInfo = packageinfo
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @ProductType = params['ProductType']
          @Name = params['Name']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Status = params['Status']
          @StopReason = params['StopReason']
          @ApiKeyMax = params['ApiKeyMax']
          @PrepayResourceID = params['PrepayResourceID']
          @Creator = params['Creator']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          unless params['PackageInfo'].nil?
            @PackageInfo = TokenPlanPackageInfo.new
            @PackageInfo.deserialize(params['PackageInfo'])
          end
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # 主额度包信息
      class TokenPlanPackageInfo < TencentCloud::Common::AbstractModel
        # @param TotalQuota: 总额度。根据套餐类型区分单位：credits（企业版专业套餐），tokens（企业版auto套餐）
        # @type TotalQuota: String
        # @param TotalUsed: 总已使用额度。根据套餐类型区分单位：credits（企业版专业套餐），tokens（企业版auto套餐）
        # @type TotalUsed: String
        # @param TotalCycles: 总周期数。
        # @type TotalCycles: Integer
        # @param CycleUnit: 周期单位。取值：month（月）
        # @type CycleUnit: String
        # @param StartTime: 套餐包生效时间。
        # @type StartTime: String
        # @param ExpireTime: 套餐包到期时间。
        # @type ExpireTime: String
        # @param ExclusiveAllocated: 独占池已分配额度。根据套餐类型区分单位：credits（企业版专业套餐），tokens（企业版auto套餐）
        # @type ExclusiveAllocated: String
        # @param ExclusiveUsed: 独占池已用额度。根据套餐类型区分单位：credits（企业版专业套餐），tokens（企业版auto套餐）
        # @type ExclusiveUsed: String
        # @param SharedPool: 共享池总额度。根据套餐类型区分单位：credits（企业版专业套餐），tokens（企业版auto套餐）
        # @type SharedPool: String
        # @param SharedUsed: 共享已用额度。根据套餐类型区分单位：credits（企业版专业套餐），tokens（企业版auto套餐）
        # @type SharedUsed: String
        # @param CycleQuota: 当期额度。根据套餐类型区分单位：credits（企业版专业套餐），tokens（企业版auto套餐）
        # @type CycleQuota: String
        # @param CurrentCycle: 当前周期。
        # @type CurrentCycle: Integer
        # @param RemainCycles: 剩余周期。
        # @type RemainCycles: Integer

        attr_accessor :TotalQuota, :TotalUsed, :TotalCycles, :CycleUnit, :StartTime, :ExpireTime, :ExclusiveAllocated, :ExclusiveUsed, :SharedPool, :SharedUsed, :CycleQuota, :CurrentCycle, :RemainCycles

        def initialize(totalquota=nil, totalused=nil, totalcycles=nil, cycleunit=nil, starttime=nil, expiretime=nil, exclusiveallocated=nil, exclusiveused=nil, sharedpool=nil, sharedused=nil, cyclequota=nil, currentcycle=nil, remaincycles=nil)
          @TotalQuota = totalquota
          @TotalUsed = totalused
          @TotalCycles = totalcycles
          @CycleUnit = cycleunit
          @StartTime = starttime
          @ExpireTime = expiretime
          @ExclusiveAllocated = exclusiveallocated
          @ExclusiveUsed = exclusiveused
          @SharedPool = sharedpool
          @SharedUsed = sharedused
          @CycleQuota = cyclequota
          @CurrentCycle = currentcycle
          @RemainCycles = remaincycles
        end

        def deserialize(params)
          @TotalQuota = params['TotalQuota']
          @TotalUsed = params['TotalUsed']
          @TotalCycles = params['TotalCycles']
          @CycleUnit = params['CycleUnit']
          @StartTime = params['StartTime']
          @ExpireTime = params['ExpireTime']
          @ExclusiveAllocated = params['ExclusiveAllocated']
          @ExclusiveUsed = params['ExclusiveUsed']
          @SharedPool = params['SharedPool']
          @SharedUsed = params['SharedUsed']
          @CycleQuota = params['CycleQuota']
          @CurrentCycle = params['CurrentCycle']
          @RemainCycles = params['RemainCycles']
        end
      end

      # 主包Token总结
      class TokenSummary < TencentCloud::Common::AbstractModel
        # @param CycleSeq: 套餐包当前计费周期序号
        # @type CycleSeq: Integer
        # @param CycleStartTime: 套餐包计费周期开始时间（RFC3339）
        # @type CycleStartTime: String
        # @param CycleEndTime: 套餐包当前计费周期结束时间（RFC3339）
        # @type CycleEndTime: String
        # @param BillingItems: 按计费项分组的 token 汇总列表
        # @type BillingItems: Array

        attr_accessor :CycleSeq, :CycleStartTime, :CycleEndTime, :BillingItems

        def initialize(cycleseq=nil, cyclestarttime=nil, cycleendtime=nil, billingitems=nil)
          @CycleSeq = cycleseq
          @CycleStartTime = cyclestarttime
          @CycleEndTime = cycleendtime
          @BillingItems = billingitems
        end

        def deserialize(params)
          @CycleSeq = params['CycleSeq']
          @CycleStartTime = params['CycleStartTime']
          @CycleEndTime = params['CycleEndTime']
          unless params['BillingItems'].nil?
            @BillingItems = []
            params['BillingItems'].each do |i|
              tokensummarybillingitem_tmp = TokenSummaryBillingItem.new
              tokensummarybillingitem_tmp.deserialize(i)
              @BillingItems << tokensummarybillingitem_tmp
            end
          end
        end
      end

      # Token 汇总计费项
      class TokenSummaryBillingItem < TencentCloud::Common::AbstractModel
        # @param BillingItem: 计费项。取值：input（输入 Token）、output（输出 Token）、cache（缓存 Token）、call_count（调用次数）。
        # @type BillingItem: String
        # @param TotalQty: 该计费项在周期内的原始用量汇总，单位：tokens。
        # @type TotalQty: Integer

        attr_accessor :BillingItem, :TotalQty

        def initialize(billingitem=nil, totalqty=nil)
          @BillingItem = billingitem
          @TotalQty = totalqty
        end

        def deserialize(params)
          @BillingItem = params['BillingItem']
          @TotalQty = params['TotalQty']
        end
      end

      # UpgradeTokenPlanTeamOrder请求参数结构体
      class UpgradeTokenPlanTeamOrderRequest < TencentCloud::Common::AbstractModel
        # @param TeamId: 套餐 ID。可通过 DescribeTokenPlanList 接口获取。
        # @type TeamId: String
        # @param NewCreditOrToken: 升配后的新规格额度。套餐类型为 enterprise 时表示积分额度，套餐类型为 enterprise-auto 时表示 Token 数。必须大于当前额度。
        # @type NewCreditOrToken: Integer

        attr_accessor :TeamId, :NewCreditOrToken

        def initialize(teamid=nil, newcreditortoken=nil)
          @TeamId = teamid
          @NewCreditOrToken = newcreditortoken
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @NewCreditOrToken = params['NewCreditOrToken']
        end
      end

      # UpgradeTokenPlanTeamOrder返回参数结构体
      class UpgradeTokenPlanTeamOrderResponse < TencentCloud::Common::AbstractModel
        # @param BigOrderId: 腾讯云订单 ID。用于关联一次升配操作下的所有子订单。
        # @type BigOrderId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BigOrderId, :RequestId

        def initialize(bigorderid=nil, requestid=nil)
          @BigOrderId = bigorderid
          @RequestId = requestid
        end

        def deserialize(params)
          @BigOrderId = params['BigOrderId']
          @RequestId = params['RequestId']
        end
      end

      # Token Plan 企业版套餐调用明细项（字段与 CLS 日志对齐）
      class UsageDetailItem < TencentCloud::Common::AbstractModel
        # @param Uin: 主账号 UIN。
        # @type Uin: String
        # @param ModelName: 模型名称。
        # @type ModelName: String
        # @param ApiKeyId: APIKey ID。
        # @type ApiKeyId: String
        # @param ApiKeyName: APIKey 名称。
        # @type ApiKeyName: String
        # @param RequestId: 请求 ID。
        # @type RequestId: String
        # @param RequestTime: 请求时间（RFC3339 格式）。
        # @type RequestTime: String
        # @param InputToken: 输入 token 数。
        # @type InputToken: Integer
        # @param CacheToken: 缓存 token 数。
        # @type CacheToken: Integer
        # @param OutputToken: 输出 token 数。
        # @type OutputToken: Integer
        # @param TotalToken: 总 token 数。
        # @type TotalToken: Integer
        # @param InputQuota: 未命中缓存输入消耗额度。单位说明如下：
        # - 套餐类型为专业套餐（enterprise），单位取值为积分；
        # - 套餐类型轻享套餐（enterprise-auto），单位取值为 token。
        # @type InputQuota: String
        # @param CacheQuota: 缓存消耗额度。单位说明如下：
        # - 套餐类型为专业套餐（enterprise），单位取值为积分；
        # - 套餐类型轻享套餐（enterprise-auto），单位取值为 token。
        # @type CacheQuota: String
        # @param OutputQuota: 输出消耗额度。单位说明如下：
        # - 套餐类型为专业套餐（enterprise），单位取值为积分；
        # - 套餐类型轻享套餐（enterprise-auto），单位取值为 token。
        # @type OutputQuota: String
        # @param TotalQuota: 总消耗额度。单位说明如下：
        # - 套餐类型为专业套餐（enterprise），单位取值为积分；
        # - 套餐类型轻享套餐（enterprise-auto），单位取值为 token。
        # @type TotalQuota: String

        attr_accessor :Uin, :ModelName, :ApiKeyId, :ApiKeyName, :RequestId, :RequestTime, :InputToken, :CacheToken, :OutputToken, :TotalToken, :InputQuota, :CacheQuota, :OutputQuota, :TotalQuota

        def initialize(uin=nil, modelname=nil, apikeyid=nil, apikeyname=nil, requestid=nil, requesttime=nil, inputtoken=nil, cachetoken=nil, outputtoken=nil, totaltoken=nil, inputquota=nil, cachequota=nil, outputquota=nil, totalquota=nil)
          @Uin = uin
          @ModelName = modelname
          @ApiKeyId = apikeyid
          @ApiKeyName = apikeyname
          @RequestId = requestid
          @RequestTime = requesttime
          @InputToken = inputtoken
          @CacheToken = cachetoken
          @OutputToken = outputtoken
          @TotalToken = totaltoken
          @InputQuota = inputquota
          @CacheQuota = cachequota
          @OutputQuota = outputquota
          @TotalQuota = totalquota
        end

        def deserialize(params)
          @Uin = params['Uin']
          @ModelName = params['ModelName']
          @ApiKeyId = params['ApiKeyId']
          @ApiKeyName = params['ApiKeyName']
          @RequestId = params['RequestId']
          @RequestTime = params['RequestTime']
          @InputToken = params['InputToken']
          @CacheToken = params['CacheToken']
          @OutputToken = params['OutputToken']
          @TotalToken = params['TotalToken']
          @InputQuota = params['InputQuota']
          @CacheQuota = params['CacheQuota']
          @OutputQuota = params['OutputQuota']
          @TotalQuota = params['TotalQuota']
        end
      end

      # 排行列表中的单个对象用量项，含对象标识、时间周期内的统计值（Stats）和时间周期内的时序点列表（Series，仅 ShowAll=false 时返回）。
      class UsageRankItem < TencentCloud::Common::AbstractModel
        # @param Rank: 全局排名（从 1 起）。分页场景下仍为全量排序中的位次，非页内序号
        # @type Rank: Integer
        # @param Key: 对象标识。apikey 维度为 APIKey ID；endpoint 维度为接入点；model 维度为模型名。
        # @type Key: String
        # @param Name: 对象展示名。apikey 维度返回 APIKey 名称（已删除的 APIKey 仍保留原名）；
        # endpoint / model 维度等于 Key。
        # @type Name: String
        # @param Stats: 时间周期内的统计值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stats: :class:`Tencentcloud::Tokenhub.v20260322.models.UsageStats`
        # @param Series: 时间周期内的时序点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Series: :class:`Tencentcloud::Tokenhub.v20260322.models.UsageSeries`

        attr_accessor :Rank, :Key, :Name, :Stats, :Series

        def initialize(rank=nil, key=nil, name=nil, stats=nil, series=nil)
          @Rank = rank
          @Key = key
          @Name = name
          @Stats = stats
          @Series = series
        end

        def deserialize(params)
          @Rank = params['Rank']
          @Key = params['Key']
          @Name = params['Name']
          unless params['Stats'].nil?
            @Stats = UsageStats.new
            @Stats.deserialize(params['Stats'])
          end
          unless params['Series'].nil?
            @Series = UsageSeries.new
            @Series.deserialize(params['Series'])
          end
        end
      end

      # 用量时间周期内的时序点列表（按 metric key 索引）。为 JSON 数组的字符串形式,数组长度与响应 Timestamps 一致，无数据点处为 null。具体包含哪些 key 由响应 MetricKeys 决定。
      class UsageSeries < TencentCloud::Common::AbstractModel
        # @param TotalToken: <p>[tokens 族]总 token 数用量时间周期内的 JSON 字符串形式，如 <code>&quot;[12,null,15]&quot;</code>。</p>
        # @type TotalToken: String
        # @param InputTotalToken: <p>[tokens 族]输入 token 数用量时间周期内的 JSON 字符串形式，如 <code>&quot;[7,null,9]&quot;</code>。</p>
        # @type InputTotalToken: String
        # @param OutputTotalToken: <p>[tokens 族]输出 token 数用量时间周期内的 JSON 字符串形式，如 <code>&quot;[5,null,6]&quot;</code>。</p>
        # @type OutputTotalToken: String
        # @param CacheTotalToken: <p>[tokens 族]读缓存 token 数用量时间周期内的 JSON 字符串形式，如<code>&quot;[5,null,6]&quot;</code>。</p>
        # @type CacheTotalToken: String
        # @param SearchRequestCount: <p>[search 族] 搜索请求数用量时间周期内的 JSON 字符串形式，如<code>&quot;[5,null,6]&quot;</code>。</p>
        # @type SearchRequestCount: String
        # @param SearchCount: <p>[search 族] 搜索引擎调用次数用量时间周期内的 JSON 字符串形式，如<code>&quot;[5,null,6]&quot;</code>。</p>
        # @type SearchCount: String

        attr_accessor :TotalToken, :InputTotalToken, :OutputTotalToken, :CacheTotalToken, :SearchRequestCount, :SearchCount

        def initialize(totaltoken=nil, inputtotaltoken=nil, outputtotaltoken=nil, cachetotaltoken=nil, searchrequestcount=nil, searchcount=nil)
          @TotalToken = totaltoken
          @InputTotalToken = inputtotaltoken
          @OutputTotalToken = outputtotaltoken
          @CacheTotalToken = cachetotaltoken
          @SearchRequestCount = searchrequestcount
          @SearchCount = searchcount
        end

        def deserialize(params)
          @TotalToken = params['TotalToken']
          @InputTotalToken = params['InputTotalToken']
          @OutputTotalToken = params['OutputTotalToken']
          @CacheTotalToken = params['CacheTotalToken']
          @SearchRequestCount = params['SearchRequestCount']
          @SearchCount = params['SearchCount']
        end
      end

      # 时间周期内的统计聚合值（按 metric key 索引）。声明 tokens / search 两族字段都在本 schema 中，按 MetricKeys 实际返回取值，参见响应顶层 `MetricKeys` 字段。
      class UsageStats < TencentCloud::Common::AbstractModel
        # @param TotalToken: <p>[tokens 族] 时间周期内的累计总 token 数。</p>
        # @type TotalToken: Integer
        # @param InputTotalToken: <p>[tokens 族] 时间周期内的累计输入 token 数。</p>
        # @type InputTotalToken: Integer
        # @param OutputTotalToken: <p>[tokens 族] 时间周期内的累计输出 token 数。</p>
        # @type OutputTotalToken: Integer
        # @param CacheTotalToken: <p>[tokens 族] 时间周期内的累计读缓存 token 数（命中缓存部分）</p>
        # @type CacheTotalToken: Integer
        # @param SearchRequestCount: <p>[search 族] 整段累计联网搜索请求数</p>
        # @type SearchRequestCount: Integer
        # @param SearchCount: <p>[search 族] 整段累计搜索引擎调用次数</p>
        # @type SearchCount: Integer

        attr_accessor :TotalToken, :InputTotalToken, :OutputTotalToken, :CacheTotalToken, :SearchRequestCount, :SearchCount

        def initialize(totaltoken=nil, inputtotaltoken=nil, outputtotaltoken=nil, cachetotaltoken=nil, searchrequestcount=nil, searchcount=nil)
          @TotalToken = totaltoken
          @InputTotalToken = inputtotaltoken
          @OutputTotalToken = outputtotaltoken
          @CacheTotalToken = cachetotaltoken
          @SearchRequestCount = searchrequestcount
          @SearchCount = searchcount
        end

        def deserialize(params)
          @TotalToken = params['TotalToken']
          @InputTotalToken = params['InputTotalToken']
          @OutputTotalToken = params['OutputTotalToken']
          @CacheTotalToken = params['CacheTotalToken']
          @SearchRequestCount = params['SearchRequestCount']
          @SearchCount = params['SearchCount']
        end
      end

    end
  end
end

