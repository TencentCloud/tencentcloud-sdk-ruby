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

require 'json'

module TencentCloud
  module Billing
    module V20180709
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-07-09'
            api_endpoint = 'billing.tencentcloudapi.com'
            sdk_version = 'BILLING_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 批量设置分账标签

        # @param request: Request instance for CreateAllocationTag.
        # @type request: :class:`Tencentcloud::billing::V20180709::CreateAllocationTagRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::CreateAllocationTagResponse`
        def CreateAllocationTag(request)
          body = send_request('CreateAllocationTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAllocationTagResponse.new
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

        # 创建节省计划订单，创建订单完成需调用PayDeals接口完成订单支付

        # @param request: Request instance for CreateSavingPlanOrder.
        # @type request: :class:`Tencentcloud::billing::V20180709::CreateSavingPlanOrderRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::CreateSavingPlanOrderResponse`
        def CreateSavingPlanOrder(request)
          body = send_request('CreateSavingPlanOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSavingPlanOrderResponse.new
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

        # 批量取消设置分账标签

        # @param request: Request instance for DeleteAllocationTag.
        # @type request: :class:`Tencentcloud::billing::V20180709::DeleteAllocationTagRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DeleteAllocationTagResponse`
        def DeleteAllocationTag(request)
          body = send_request('DeleteAllocationTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAllocationTagResponse.new
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

        # 获取云账户余额信息。

        # @param request: Request instance for DescribeAccountBalance.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAccountBalanceRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAccountBalanceResponse`
        def DescribeAccountBalance(request)
          body = send_request('DescribeAccountBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountBalanceResponse.new
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

        # 查询资源目录筛选条件

        # @param request: Request instance for DescribeAllocateConditions.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocateConditionsRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocateConditionsResponse`
        def DescribeAllocateConditions(request)
          body = send_request('DescribeAllocateConditions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocateConditionsResponse.new
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

        # 查询分账账单筛选条件

        # @param request: Request instance for DescribeAllocationBillConditions.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationBillConditionsRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationBillConditionsResponse`
        def DescribeAllocationBillConditions(request)
          body = send_request('DescribeAllocationBillConditions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationBillConditionsResponse.new
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

        # 查询分账账单明细

        # @param request: Request instance for DescribeAllocationBillDetail.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationBillDetailRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationBillDetailResponse`
        def DescribeAllocationBillDetail(request)
          body = send_request('DescribeAllocationBillDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationBillDetailResponse.new
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

        # 查询分账账单月概览

        # @param request: Request instance for DescribeAllocationMonthOverview.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationMonthOverviewRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationMonthOverviewResponse`
        def DescribeAllocationMonthOverview(request)
          body = send_request('DescribeAllocationMonthOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationMonthOverviewResponse.new
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

        # 查询分账账单日概览

        # @param request: Request instance for DescribeAllocationOverview.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationOverviewRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationOverviewResponse`
        def DescribeAllocationOverview(request)
          body = send_request('DescribeAllocationOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationOverviewResponse.new
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

        # 查询分账账单按产品汇总

        # @param request: Request instance for DescribeAllocationSummaryByBusiness.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationSummaryByBusinessRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationSummaryByBusinessResponse`
        def DescribeAllocationSummaryByBusiness(request)
          body = send_request('DescribeAllocationSummaryByBusiness', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationSummaryByBusinessResponse.new
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

        # 查询分账账单按组件汇总

        # @param request: Request instance for DescribeAllocationSummaryByItem.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationSummaryByItemRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationSummaryByItemResponse`
        def DescribeAllocationSummaryByItem(request)
          body = send_request('DescribeAllocationSummaryByItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationSummaryByItemResponse.new
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

        # 查询分账账单按资源汇总

        # @param request: Request instance for DescribeAllocationSummaryByResource.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationSummaryByResourceRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationSummaryByResourceResponse`
        def DescribeAllocationSummaryByResource(request)
          body = send_request('DescribeAllocationSummaryByResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationSummaryByResourceResponse.new
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

        # 查询分账账单费用趋势

        # @param request: Request instance for DescribeAllocationTrendByMonth.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationTrendByMonthRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationTrendByMonthResponse`
        def DescribeAllocationTrendByMonth(request)
          body = send_request('DescribeAllocationTrendByMonth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationTrendByMonthResponse.new
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

        # 获取账单明细数据。
        # 注意事项：
        # 1.在请求接口时，由于网络不稳定或其它异常，可能会导致请求失败。如果您遇到这种情况，我们建议您在接口请求失败时，手动发起重试操作，这样可以更好地确保您的接口请求能够成功执行。
        # 2.对于账单明细数据量级很大（例如每月账单明细量级超过20w）的客户，通过 API 调用账单数据效率较低，建议您开通账单数据存储功能，通过存储桶中获取账单文件进行分析。[账单存储至COS桶](https://cloud.tencent.com/document/product/555/61275)

        # @param request: Request instance for DescribeBillDetail.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillDetailRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillDetailResponse`
        def DescribeBillDetail(request)
          body = send_request('DescribeBillDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillDetailResponse.new
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

        # 成员账号获取管理账号代付账单（费用明细）。
        # 注意事项：在请求接口时，由于网络不稳定或其它异常，可能会导致请求失败。如果您遇到这种情况，我们建议您在接口请求失败时，手动发起重试操作，这样可以更好地确保您的接口请求能够成功执行。

        # @param request: Request instance for DescribeBillDetailForOrganization.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillDetailForOrganizationRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillDetailForOrganizationResponse`
        def DescribeBillDetailForOrganization(request)
          body = send_request('DescribeBillDetailForOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillDetailForOrganizationResponse.new
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

        # 该接口支持通过传参，获取L0-PDF、L1-汇总、L2-资源、L3-明细、账单包、五类账单文件下载链接

        # @param request: Request instance for DescribeBillDownloadUrl.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillDownloadUrlResponse`
        def DescribeBillDownloadUrl(request)
          body = send_request('DescribeBillDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillDownloadUrlResponse.new
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

        # 获取收支明细列表，支持翻页和参数过滤

        # @param request: Request instance for DescribeBillList.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillListRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillListResponse`
        def DescribeBillList(request)
          body = send_request('DescribeBillList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillListResponse.new
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

        # 获取账单资源汇总数据

        # @param request: Request instance for DescribeBillResourceSummary.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillResourceSummaryRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillResourceSummaryResponse`
        def DescribeBillResourceSummary(request)
          body = send_request('DescribeBillResourceSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillResourceSummaryResponse.new
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

        # 成员账号获取管理账号代付账单（按资源汇总）

        # @param request: Request instance for DescribeBillResourceSummaryForOrganization.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillResourceSummaryForOrganizationRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillResourceSummaryForOrganizationResponse`
        def DescribeBillResourceSummaryForOrganization(request)
          body = send_request('DescribeBillResourceSummaryForOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillResourceSummaryForOrganizationResponse.new
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

        # 该接口支持通过传参，按照产品、项目、地域、计费模式和标签五个维度获取账单费用明细。

        # @param request: Request instance for DescribeBillSummary.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryResponse`
        def DescribeBillSummary(request)
          body = send_request('DescribeBillSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryResponse.new
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

        # 获取按计费模式汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByPayMode.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByPayModeRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByPayModeResponse`
        def DescribeBillSummaryByPayMode(request)
          body = send_request('DescribeBillSummaryByPayMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByPayModeResponse.new
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

        # 获取产品汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByProduct.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByProductRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByProductResponse`
        def DescribeBillSummaryByProduct(request)
          body = send_request('DescribeBillSummaryByProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByProductResponse.new
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

        # 获取按项目汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByProject.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByProjectRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByProjectResponse`
        def DescribeBillSummaryByProject(request)
          body = send_request('DescribeBillSummaryByProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByProjectResponse.new
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

        # 获取按地域汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByRegion.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByRegionRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByRegionResponse`
        def DescribeBillSummaryByRegion(request)
          body = send_request('DescribeBillSummaryByRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByRegionResponse.new
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

        # 获取按标签汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByTag.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByTagRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByTagResponse`
        def DescribeBillSummaryByTag(request)
          body = send_request('DescribeBillSummaryByTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByTagResponse.new
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

        # 该接口支持通过传参，按照产品、项目、地域、计费模式和标签五个维度获取账单费用明细。

        # @param request: Request instance for DescribeBillSummaryForOrganization.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryForOrganizationRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryForOrganizationResponse`
        def DescribeBillSummaryForOrganization(request)
          body = send_request('DescribeBillSummaryForOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryForOrganizationResponse.new
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

        # 查询消耗明细

        # @param request: Request instance for DescribeCostDetail.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostDetailRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostDetailResponse`
        def DescribeCostDetail(request)
          body = send_request('DescribeCostDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostDetailResponse.new
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

        # 查看成本分析明细

        # @param request: Request instance for DescribeCostExplorerSummary.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostExplorerSummaryRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostExplorerSummaryResponse`
        def DescribeCostExplorerSummary(request)
          body = send_request('DescribeCostExplorerSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostExplorerSummaryResponse.new
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

        # 获取按产品汇总消耗详情

        # @param request: Request instance for DescribeCostSummaryByProduct.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByProductRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByProductResponse`
        def DescribeCostSummaryByProduct(request)
          body = send_request('DescribeCostSummaryByProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostSummaryByProductResponse.new
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

        # 获取按项目汇总消耗详情

        # @param request: Request instance for DescribeCostSummaryByProject.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByProjectRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByProjectResponse`
        def DescribeCostSummaryByProject(request)
          body = send_request('DescribeCostSummaryByProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostSummaryByProjectResponse.new
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

        # 获取按地域汇总消耗详情

        # @param request: Request instance for DescribeCostSummaryByRegion.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByRegionRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByRegionResponse`
        def DescribeCostSummaryByRegion(request)
          body = send_request('DescribeCostSummaryByRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostSummaryByRegionResponse.new
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

        # 获取按资源汇总消耗详情

        # @param request: Request instance for DescribeCostSummaryByResource.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByResourceRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByResourceResponse`
        def DescribeCostSummaryByResource(request)
          body = send_request('DescribeCostSummaryByResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostSummaryByResourceResponse.new
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

        # 查询订单

        # @param request: Request instance for DescribeDealsByCond.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeDealsByCondRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeDealsByCondResponse`
        def DescribeDealsByCond(request)
          body = send_request('DescribeDealsByCond', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDealsByCondResponse.new
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

        # 获取COS产品用量明细

        # @param request: Request instance for DescribeDosageCosDetailByDate.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeDosageCosDetailByDateRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeDosageCosDetailByDateResponse`
        def DescribeDosageCosDetailByDate(request)
          body = send_request('DescribeDosageCosDetailByDate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDosageCosDetailByDateResponse.new
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

        # 按日期获取产品用量明细

        # @param request: Request instance for DescribeDosageDetailByDate.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeDosageDetailByDateRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeDosageDetailByDateResponse`
        def DescribeDosageDetailByDate(request)
          body = send_request('DescribeDosageDetailByDate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDosageDetailByDateResponse.new
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

        # 获取已接入标准用量明细模板产品的用量明细数据，目前已接入并支持查询的产品包括：云联络中心、实时音视频、实时音视频、智能媒资托管、CODING DevOps、全球IP应用加速

        # @param request: Request instance for DescribeDosageDetailList.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeDosageDetailListRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeDosageDetailListResponse`
        def DescribeDosageDetailList(request)
          body = send_request('DescribeDosageDetailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDosageDetailListResponse.new
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

        # 查询分账账单资源归集汇总

        # @param request: Request instance for DescribeGatherResource.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeGatherResourceRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeGatherResourceResponse`
        def DescribeGatherResource(request)
          body = send_request('DescribeGatherResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatherResourceResponse.new
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

        # 查询当前用户节省计划覆盖率明细数据，如无特别说明，金额单位均为元（国内站）或者美元（国际站）。

        # @param request: Request instance for DescribeSavingPlanCoverage.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeSavingPlanCoverageRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeSavingPlanCoverageResponse`
        def DescribeSavingPlanCoverage(request)
          body = send_request('DescribeSavingPlanCoverage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSavingPlanCoverageResponse.new
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

        # 查用当前用户明细节省计划总览查询时段内的使用情况

        # @param request: Request instance for DescribeSavingPlanOverview.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeSavingPlanOverviewRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeSavingPlanOverviewResponse`
        def DescribeSavingPlanOverview(request)
          body = send_request('DescribeSavingPlanOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSavingPlanOverviewResponse.new
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

        # 查询节省计划详情

        # @param request: Request instance for DescribeSavingPlanResourceInfo.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeSavingPlanResourceInfoRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeSavingPlanResourceInfoResponse`
        def DescribeSavingPlanResourceInfo(request)
          body = send_request('DescribeSavingPlanResourceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSavingPlanResourceInfoResponse.new
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

        # 查用当前用户明细节省计划查询时段内的使用情况

        # @param request: Request instance for DescribeSavingPlanUsage.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeSavingPlanUsageRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeSavingPlanUsageResponse`
        def DescribeSavingPlanUsage(request)
          body = send_request('DescribeSavingPlanUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSavingPlanUsageResponse.new
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

        # 获取分账标签

        # @param request: Request instance for DescribeTagList.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeTagListRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeTagListResponse`
        def DescribeTagList(request)
          body = send_request('DescribeTagList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagListResponse.new
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

        # 获取代金券相关信息

        # @param request: Request instance for DescribeVoucherInfo.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeVoucherInfoRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeVoucherInfoResponse`
        def DescribeVoucherInfo(request)
          body = send_request('DescribeVoucherInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVoucherInfoResponse.new
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

        # 获取代金券使用记录

        # @param request: Request instance for DescribeVoucherUsageDetails.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeVoucherUsageDetailsRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeVoucherUsageDetailsResponse`
        def DescribeVoucherUsageDetails(request)
          body = send_request('DescribeVoucherUsageDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVoucherUsageDetailsResponse.new
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

        # 支付订单

        # @param request: Request instance for PayDeals.
        # @type request: :class:`Tencentcloud::billing::V20180709::PayDealsRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::PayDealsResponse`
        def PayDeals(request)
          body = send_request('PayDeals', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PayDealsResponse.new
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