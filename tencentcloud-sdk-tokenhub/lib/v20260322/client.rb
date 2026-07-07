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

require 'json'

module TencentCloud
  module Tokenhub
    module V20260322
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2026-03-22'
            api_endpoint = 'tokenhub.tencentcloudapi.com'
            sdk_version = 'TOKENHUB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建 API 密钥。

        # 创建一个新的 API 密钥，创建成功后返回 API 密钥 ID。需指定平台类型、绑定方式和初始状态。

        # @param request: Request instance for CreateApiKey.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::CreateApiKeyRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::CreateApiKeyResponse`
        def CreateApiKey(request)
          body = send_request('CreateApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建术语库。

        # 在当前应用下创建一个新的翻译术语库，用于自定义源语言到目标语言的术语映射。创建成功后返回术语库 ID，可通过该 ID 进一步管理术语条目。

        # @param request: Request instance for CreateGlossary.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::CreateGlossaryRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::CreateGlossaryResponse`
        def CreateGlossary(request)
          body = send_request('CreateGlossary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGlossaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量创建术语条目。

        # 在指定术语库下批量创建术语条目。单次最多创建 100 条。

        # @param request: Request instance for CreateGlossaryEntries.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::CreateGlossaryEntriesRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::CreateGlossaryEntriesResponse`
        def CreateGlossaryEntries(request)
          body = send_request('CreateGlossaryEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGlossaryEntriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量创建 TokenPlan APIKey。

        # 传入名称前缀和数量，自动按 {ApiKeyName}-{序号} 格式生成名称（如 aaa-1, aaa-2）。允许同名。支持部分成功，最多 100 条。

        # @param request: Request instance for CreateTokenPlanApiKeys.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::CreateTokenPlanApiKeysRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::CreateTokenPlanApiKeysResponse`
        def CreateTokenPlanApiKeys(request)
          body = send_request('CreateTokenPlanApiKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTokenPlanApiKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 购买套餐。

        # 发起 TokenPlan 套餐下单并完成支付，成功后返回大订单 ID 及关联的子订单、资源信息。

        # @param request: Request instance for CreateTokenPlanTeamOrderAndBuy.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::CreateTokenPlanTeamOrderAndBuyRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::CreateTokenPlanTeamOrderAndBuyResponse`
        def CreateTokenPlanTeamOrderAndBuy(request)
          body = send_request('CreateTokenPlanTeamOrderAndBuy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTokenPlanTeamOrderAndBuyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定的 API 密钥，同时清理关联的模型绑定关系。

        # @param request: Request instance for DeleteApiKey.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DeleteApiKeyRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DeleteApiKeyResponse`
        def DeleteApiKey(request)
          body = send_request('DeleteApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除术语库。

        # 删除指定的术语库及其下所有术语条目。删除操作幂等，对不存在的术语库返回成功。调用接口后，若通过 DescribeGlossaries 接口查询不到对应术语库，则表示删除成功。

        # @param request: Request instance for DeleteGlossary.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DeleteGlossaryRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DeleteGlossaryResponse`
        def DeleteGlossary(request)
          body = send_request('DeleteGlossary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGlossaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除术语条目。

        # 在指定术语库下批量删除术语条目。单次最多删除 200 条。若术语库不存在或不属于当前应用，返回 ResourceNotFound 错误。

        # @param request: Request instance for DeleteGlossaryEntries.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DeleteGlossaryEntriesRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DeleteGlossaryEntriesResponse`
        def DeleteGlossaryEntries(request)
          body = send_request('DeleteGlossaryEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGlossaryEntriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 TokenPlan APIKey。

        # 同时删除额度中心子额度包并通知网关清除缓存。

        # @param request: Request instance for DeleteTokenPlanApiKey.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DeleteTokenPlanApiKeyRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DeleteTokenPlanApiKeyResponse`
        def DeleteTokenPlanApiKey(request)
          body = send_request('DeleteTokenPlanApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTokenPlanApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据 API 密钥 ID 或密钥值查询 API 密钥详情，返回明文密钥。ApiKeyId 和 ApiKey 至少需传入其一，优先使用 ApiKeyId。

        # @param request: Request instance for DescribeApiKey.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeApiKeyRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeApiKeyResponse`
        def DescribeApiKey(request)
          body = send_request('DescribeApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 API 密钥列表。

        # 查询当前用户的 API 密钥列表，密钥值脱敏展示。支持分页、过滤和排序。

        # @param request: Request instance for DescribeApiKeyList.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeApiKeyListRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeApiKeyListResponse`
        def DescribeApiKeyList(request)
          body = send_request('DescribeApiKeyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiKeyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询术语库列表。

        # 查询当前应用下的术语库列表。支持分页、过滤和排序。

        # @param request: Request instance for DescribeGlossaries.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeGlossariesRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeGlossariesResponse`
        def DescribeGlossaries(request)
          body = send_request('DescribeGlossaries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGlossariesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询术语条目列表。

        # 查询指定术语库下的术语条目。支持分页。

        # @param request: Request instance for DescribeGlossaryEntries.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeGlossaryEntriesRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeGlossaryEntriesResponse`
        def DescribeGlossaryEntries(request)
          body = send_request('DescribeGlossaryEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGlossaryEntriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询模型列表。

        # 支持按模型 ID、模型名称、模型能力等条件筛选，支持分页和排序。

        # @param request: Request instance for DescribeModelList.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeModelListRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeModelListResponse`
        def DescribeModelList(request)
          body = send_request('DescribeModelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 TokenPlan 套餐详情。

        # 返回套餐基本信息及额度中心主额度包余量。

        # @param request: Request instance for DescribeTokenPlan.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanResponse`
        def DescribeTokenPlan(request)
          body = send_request('DescribeTokenPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 TokenPlan APIKey 详情。

        # 返回 APIKey 完整信息（含明文密钥）及子额度包余量。

        # @param request: Request instance for DescribeTokenPlanApiKey.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanApiKeyRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanApiKeyResponse`
        def DescribeTokenPlanApiKey(request)
          body = send_request('DescribeTokenPlanApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenPlanApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 TokenPlan APIKey 列表。

        # 返回指定套餐下的 APIKey 列表，密钥已脱敏。主账号可查看全部，子账号仅可查看自己创建的。

        # @param request: Request instance for DescribeTokenPlanApiKeyList.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanApiKeyListRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanApiKeyListResponse`
        def DescribeTokenPlanApiKeyList(request)
          body = send_request('DescribeTokenPlanApiKeyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenPlanApiKeyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 TokenPlan APIKey 密钥（明文）。

        # 返回指定 APIKey 的明文密钥值，请妥善保管。

        # @param request: Request instance for DescribeTokenPlanApiKeySecret.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanApiKeySecretRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanApiKeySecretResponse`
        def DescribeTokenPlanApiKeySecret(request)
          body = send_request('DescribeTokenPlanApiKeySecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenPlanApiKeySecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 TokenPlan APIKey 调用明细。

        # 从 CLS 日志服务查询套餐下的调用明细，按 pkg_id 过滤，支持游标分页。

        # @param request: Request instance for DescribeTokenPlanApiKeyUsageDetail.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanApiKeyUsageDetailRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanApiKeyUsageDetailResponse`
        def DescribeTokenPlanApiKeyUsageDetail(request)
          body = send_request('DescribeTokenPlanApiKeyUsageDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenPlanApiKeyUsageDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 TokenPlan 套餐列表。

        # 支持分页、过滤和排序。主账号可查看全部，子账号仅可查看自己创建的。返回结果包含每个套餐关联的额度中心主额度包详情。

        # @param request: Request instance for DescribeTokenPlanList.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanListRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeTokenPlanListResponse`
        def DescribeTokenPlanList(request)
          body = send_request('DescribeTokenPlanList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenPlanListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用量排行列表。

        # 指标族（MetricType）
        # - `tokens`（默认）：Token 用量统计。支持 Dimension = apikey / endpoint / model。
        #   返回指标：TotalToken（总）/ InputTotalToken（输入）/ OutputTotalToken（输出）/ CacheTotalToken（读缓存）。
        # - `search`：【待上线】联网搜索用量统计。支持 Dimension = apikey / endpoint / model。
        #   返回指标：SearchRequestCount（搜索请求数）/ SearchCount（搜索引擎调用次数）。

        # 响应内容
        # - MetricType 字段用于切换指标族，响应回显 MetricType 与 MetricKeys。
        # - TotalStats：时间窗内全部对象的整段聚合值。
        # - PageStats：当前翻页内对象的整段聚合值。
        # - TopList：按MetricKeys[0]降序的对象列表，含整段聚合值与逐时间点曲线。

        # @param request: Request instance for DescribeUsageRankList.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::DescribeUsageRankListRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::DescribeUsageRankListResponse`
        def DescribeUsageRankList(request)
          body = send_request('DescribeUsageRankList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsageRankListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新 API 密钥信息。

        # 更新 API 密钥的备注信息、 IP 白名单和 Token 限额（修改限额推荐使用QuotaDesired参数）。所有可选参数不传表示不修改。

        # @param request: Request instance for ModifyApiKeyInfo.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::ModifyApiKeyInfoRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::ModifyApiKeyInfoResponse`
        def ModifyApiKeyInfo(request)
          body = send_request('ModifyApiKeyInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApiKeyInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新 API 密钥的启用或禁用状态。

        # @param request: Request instance for ModifyApiKeyStatus.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::ModifyApiKeyStatusRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::ModifyApiKeyStatusResponse`
        def ModifyApiKeyStatus(request)
          body = send_request('ModifyApiKeyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApiKeyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改术语条目。

        # 在指定术语库下批量修改术语条目。单次最多修改 200 条。

        # @param request: Request instance for ModifyGlossaryEntries.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::ModifyGlossaryEntriesRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::ModifyGlossaryEntriesResponse`
        def ModifyGlossaryEntries(request)
          body = send_request('ModifyGlossaryEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGlossaryEntriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 TokenPlan APIKey 配置（网关关注字段）。

        # 修改后自动通知网关更新缓存并同步额度中心。

        # @param request: Request instance for ModifyTokenPlanApiKey.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::ModifyTokenPlanApiKeyRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::ModifyTokenPlanApiKeyResponse`
        def ModifyTokenPlanApiKey(request)
          body = send_request('ModifyTokenPlanApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTokenPlanApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置 TokenPlan APIKey 密钥。

        # 重新生成密钥值，密钥版本号递增，旧密钥立即失效。APIKey ID 不变。重置后需通过 DescribeTokenPlanApiKeySecret 查询新密钥。

        # @param request: Request instance for ModifyTokenPlanApiKeySecret.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::ModifyTokenPlanApiKeySecretRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::ModifyTokenPlanApiKeySecretResponse`
        def ModifyTokenPlanApiKeySecret(request)
          body = send_request('ModifyTokenPlanApiKeySecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTokenPlanApiKeySecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 续费套餐。

        # 对已有的 TokenPlan 套餐发起续费下单并完成支付，成功后返回大订单 ID 及关联的子订单、资源信息。

        # @param request: Request instance for RenewTokenPlanTeamOrder.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::RenewTokenPlanTeamOrderRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::RenewTokenPlanTeamOrderResponse`
        def RenewTokenPlanTeamOrder(request)
          body = send_request('RenewTokenPlanTeamOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewTokenPlanTeamOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 升配套餐。

        # 对已有的 TokenPlan 套餐发起升配下单并完成支付，扩容积分或 Token 额度，成功后返回大订单 ID 及关联的子订单、资源信息。新额度必须大于当前额度。

        # @param request: Request instance for UpgradeTokenPlanTeamOrder.
        # @type request: :class:`Tencentcloud::tokenhub::V20260322::UpgradeTokenPlanTeamOrderRequest`
        # @rtype: :class:`Tencentcloud::tokenhub::V20260322::UpgradeTokenPlanTeamOrderResponse`
        def UpgradeTokenPlanTeamOrder(request)
          body = send_request('UpgradeTokenPlanTeamOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeTokenPlanTeamOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end