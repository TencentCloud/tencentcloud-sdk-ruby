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
  module Svp
    module V20240125
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-01-25'
            api_endpoint = 'svp.tencentcloudapi.com'
            sdk_version = 'SVP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建节省计划订单

        # @param request: Request instance for CreateSavingPlanOrder.
        # @type request: :class:`Tencentcloud::svp::V20240125::CreateSavingPlanOrderRequest`
        # @rtype: :class:`Tencentcloud::svp::V20240125::CreateSavingPlanOrderResponse`
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

        # 查询当前用户节省计划覆盖率明细数据，如无特别说明，金额单位均为元（国内站）或者美元（国际站）。

        # @param request: Request instance for DescribeSavingPlanCoverage.
        # @type request: :class:`Tencentcloud::svp::V20240125::DescribeSavingPlanCoverageRequest`
        # @rtype: :class:`Tencentcloud::svp::V20240125::DescribeSavingPlanCoverageResponse`
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

        # 查询节省计划抵扣明细

        # @param request: Request instance for DescribeSavingPlanDeduct.
        # @type request: :class:`Tencentcloud::svp::V20240125::DescribeSavingPlanDeductRequest`
        # @rtype: :class:`Tencentcloud::svp::V20240125::DescribeSavingPlanDeductResponse`
        def DescribeSavingPlanDeduct(request)
          body = send_request('DescribeSavingPlanDeduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSavingPlanDeductResponse.new
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
        # @type request: :class:`Tencentcloud::svp::V20240125::DescribeSavingPlanOverviewRequest`
        # @rtype: :class:`Tencentcloud::svp::V20240125::DescribeSavingPlanOverviewResponse`
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

        # 查用当前用户明细节省计划查询时段内的使用情况

        # @param request: Request instance for DescribeSavingPlanUsage.
        # @type request: :class:`Tencentcloud::svp::V20240125::DescribeSavingPlanUsageRequest`
        # @rtype: :class:`Tencentcloud::svp::V20240125::DescribeSavingPlanUsageResponse`
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


      end
    end
  end
end