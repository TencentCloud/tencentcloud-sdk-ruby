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
  module Billing
    module V20180709
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-07-09'
            api_endpoint = 'billing.tencentcloudapi.com'
            sdk_version = 'BILLING_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建公摊规则

        # @param request: Request instance for CreateAllocationRule.
        # @type request: :class:`Tencentcloud::billing::V20180709::CreateAllocationRuleRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::CreateAllocationRuleResponse`
        def CreateAllocationRule(request)
          body = send_request('CreateAllocationRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAllocationRuleResponse.new
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

        # 创建分账单元

        # @param request: Request instance for CreateAllocationUnit.
        # @type request: :class:`Tencentcloud::billing::V20180709::CreateAllocationUnitRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::CreateAllocationUnitResponse`
        def CreateAllocationUnit(request)
          body = send_request('CreateAllocationUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAllocationUnitResponse.new
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

        # 创建预算信息

        # @param request: Request instance for CreateBudget.
        # @type request: :class:`Tencentcloud::billing::V20180709::CreateBudgetRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::CreateBudgetResponse`
        def CreateBudget(request)
          body = send_request('CreateBudget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBudgetResponse.new
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

        # 创建归集规则

        # @param request: Request instance for CreateGatherRule.
        # @type request: :class:`Tencentcloud::billing::V20180709::CreateGatherRuleRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::CreateGatherRuleResponse`
        def CreateGatherRule(request)
          body = send_request('CreateGatherRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGatherRuleResponse.new
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

        # 创建一个实例资源，会创建一个新购实例资源的订单，并通过腾讯云账户余额自动支付。调用该接口的账号需要授予finace:trade的权限，否则无法支付成功。目前已接入并支持购买的产品包括：T-Sec-Web应用防火墙、云防火墙、主机安全、主机容器、云安全中心、T-Sec-密钥管理系统。

        # @param request: Request instance for CreateInstance.
        # @type request: :class:`Tencentcloud::billing::V20180709::CreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::CreateInstanceResponse`
        def CreateInstance(request)
          body = send_request('CreateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceResponse.new
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

        # 公摊规则删除接口

        # @param request: Request instance for DeleteAllocationRule.
        # @type request: :class:`Tencentcloud::billing::V20180709::DeleteAllocationRuleRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DeleteAllocationRuleResponse`
        def DeleteAllocationRule(request)
          body = send_request('DeleteAllocationRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAllocationRuleResponse.new
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

        # 删除分账单元

        # @param request: Request instance for DeleteAllocationUnit.
        # @type request: :class:`Tencentcloud::billing::V20180709::DeleteAllocationUnitRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DeleteAllocationUnitResponse`
        def DeleteAllocationUnit(request)
          body = send_request('DeleteAllocationUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAllocationUnitResponse.new
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

        # 依据预算ID删除对应预算项目

        # @param request: Request instance for DeleteBudget.
        # @type request: :class:`Tencentcloud::billing::V20180709::DeleteBudgetRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DeleteBudgetResponse`
        def DeleteBudget(request)
          body = send_request('DeleteBudget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBudgetResponse.new
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

        # 删除归集规则

        # @param request: Request instance for DeleteGatherRule.
        # @type request: :class:`Tencentcloud::billing::V20180709::DeleteGatherRuleRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DeleteGatherRuleResponse`
        def DeleteGatherRule(request)
          body = send_request('DeleteGatherRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGatherRuleResponse.new
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

        # 查询公摊规则详情

        # @param request: Request instance for DescribeAllocationRuleDetail.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationRuleDetailResponse`
        def DescribeAllocationRuleDetail(request)
          body = send_request('DescribeAllocationRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationRuleDetailResponse.new
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

        # 查询所有公摊规则概览

        # @param request: Request instance for DescribeAllocationRuleSummary.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationRuleSummaryRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationRuleSummaryResponse`
        def DescribeAllocationRuleSummary(request)
          body = send_request('DescribeAllocationRuleSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationRuleSummaryResponse.new
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

        # 查询分账目录树

        # @param request: Request instance for DescribeAllocationTree.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationTreeRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationTreeResponse`
        def DescribeAllocationTree(request)
          body = send_request('DescribeAllocationTree', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationTreeResponse.new
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

        # 查询分账单元详情

        # @param request: Request instance for DescribeAllocationUnitDetail.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAllocationUnitDetailRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAllocationUnitDetailResponse`
        def DescribeAllocationUnitDetail(request)
          body = send_request('DescribeAllocationUnitDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllocationUnitDetailResponse.new
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

        # 可以通过API获取当前UIN是否有调账，客户可以更快地主动地获取调账情况。

        # @param request: Request instance for DescribeBillAdjustInfo.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillAdjustInfoRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillAdjustInfoResponse`
        def DescribeBillAdjustInfo(request)
          body = send_request('DescribeBillAdjustInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillAdjustInfoResponse.new
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

        # 获取预算详细信息

        # @param request: Request instance for DescribeBudget.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBudgetRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBudgetResponse`
        def DescribeBudget(request)
          body = send_request('DescribeBudget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBudgetResponse.new
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

        # 查询预算修改记录

        # @param request: Request instance for DescribeBudgetOperationLog.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBudgetOperationLogRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBudgetOperationLogResponse`
        def DescribeBudgetOperationLog(request)
          body = send_request('DescribeBudgetOperationLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBudgetOperationLogResponse.new
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

        # 返回预算提醒记录，包括预算周期、检测时间、提醒时间、提醒类型、提醒内容

        # @param request: Request instance for DescribeBudgetRemindRecordList.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBudgetRemindRecordListRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBudgetRemindRecordListResponse`
        def DescribeBudgetRemindRecordList(request)
          body = send_request('DescribeBudgetRemindRecordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBudgetRemindRecordListResponse.new
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

        # 注意事项：
        # 1. 对于消耗明细数据量级很大（例如每月消耗明细量级超过100w）的客户，通过 API 调用明细数据会有超时风险，建议您开通消耗账单数据存储功能，通过存储桶中获取账单文件进行分析。[账单存储至COS桶](https://cloud.tencent.com/document/product/555/61275)

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

        # 获取按标签汇总消耗详情

        # @param request: Request instance for DescribeCostSummaryByTag.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByTagRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByTagResponse`
        def DescribeCostSummaryByTag(request)
          body = send_request('DescribeCostSummaryByTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostSummaryByTagResponse.new
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

        # 查询归集规则详情

        # @param request: Request instance for DescribeGatherRuleDetail.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeGatherRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeGatherRuleDetailResponse`
        def DescribeGatherRuleDetail(request)
          body = send_request('DescribeGatherRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatherRuleDetailResponse.new
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

        # 注意事项：
        # 1、本接口支持查询已接入续费管理页的包年包月实例，包括运行中、已隔离（部分产品不支持）
        # 2、子用户使用该接口时，应具备QcloudFinanceRenewManageFullAccess权限策略。

        # @param request: Request instance for DescribeRenewInstances.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeRenewInstancesRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeRenewInstancesResponse`
        def DescribeRenewInstances(request)
          body = send_request('DescribeRenewInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRenewInstancesResponse.new
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

        # 编辑公摊规则

        # @param request: Request instance for ModifyAllocationRule.
        # @type request: :class:`Tencentcloud::billing::V20180709::ModifyAllocationRuleRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::ModifyAllocationRuleResponse`
        def ModifyAllocationRule(request)
          body = send_request('ModifyAllocationRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAllocationRuleResponse.new
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

        # 修改分账单元信息

        # @param request: Request instance for ModifyAllocationUnit.
        # @type request: :class:`Tencentcloud::billing::V20180709::ModifyAllocationUnitRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::ModifyAllocationUnitResponse`
        def ModifyAllocationUnit(request)
          body = send_request('ModifyAllocationUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAllocationUnitResponse.new
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

        # 更新预算信息

        # @param request: Request instance for ModifyBudget.
        # @type request: :class:`Tencentcloud::billing::V20180709::ModifyBudgetRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::ModifyBudgetResponse`
        def ModifyBudget(request)
          body = send_request('ModifyBudget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBudgetResponse.new
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

        # 编辑归集规则

        # @param request: Request instance for ModifyGatherRule.
        # @type request: :class:`Tencentcloud::billing::V20180709::ModifyGatherRuleRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::ModifyGatherRuleResponse`
        def ModifyGatherRule(request)
          body = send_request('ModifyGatherRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGatherRuleResponse.new
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

        # 退订不再需要的实例，只退还实付金额的部分，已使用的代金券不退还，退还的实付金额默认退到腾讯云账户余额中。调用该接口的账号需要授予finace:RefundInstance的权限，否则无法支付成功。目前已接入并支持退订的产品包括：T-Sec-Web应用防火墙、云防火墙、主机安全、主机容器、云安全中心、T-Sec-密钥管理系统。

        # @param request: Request instance for RefundInstance.
        # @type request: :class:`Tencentcloud::billing::V20180709::RefundInstanceRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::RefundInstanceResponse`
        def RefundInstance(request)
          body = send_request('RefundInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefundInstanceResponse.new
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

        # 续费一台实例，调用该接口续费服务器时，您需要确保您的腾讯云账户余额充足，否则会续费失败。调用该接口的账号需要授予finace:trade的权限，否则无法续费成功。目前已接入并支持续费的产品包括：T-Sec-Web应用防火墙、云防火墙、主机安全、主机容器、云安全中心、T-Sec-密钥管理系统。

        # @param request: Request instance for RenewInstance.
        # @type request: :class:`Tencentcloud::billing::V20180709::RenewInstanceRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::RenewInstanceResponse`
        def RenewInstance(request)
          body = send_request('RenewInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewInstanceResponse.new
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