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
  module Advisor
    module V20200721
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-07-21'
            api_endpoint = 'advisor.tencentcloudapi.com'
            sdk_version = 'ADVISOR_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 开启智能顾问授权。会同步开启报告解读和云架构协作权限

        # @param request: Request instance for CreateAdvisorAuthorization.
        # @type request: :class:`Tencentcloud::advisor::V20200721::CreateAdvisorAuthorizationRequest`
        # @rtype: :class:`Tencentcloud::advisor::V20200721::CreateAdvisorAuthorizationResponse`
        def CreateAdvisorAuthorization(request)
          body = send_request('CreateAdvisorAuthorization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAdvisorAuthorizationResponse.new
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

        # 用于查询评估项的信息

        # @param request: Request instance for DescribeStrategies.
        # @type request: :class:`Tencentcloud::advisor::V20200721::DescribeStrategiesRequest`
        # @rtype: :class:`Tencentcloud::advisor::V20200721::DescribeStrategiesResponse`
        def DescribeStrategies(request)
          body = send_request('DescribeStrategies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStrategiesResponse.new
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

        # 查询评估项风险实例列表

        # @param request: Request instance for DescribeTaskStrategyRisks.
        # @type request: :class:`Tencentcloud::advisor::V20200721::DescribeTaskStrategyRisksRequest`
        # @rtype: :class:`Tencentcloud::advisor::V20200721::DescribeTaskStrategyRisksResponse`
        def DescribeTaskStrategyRisks(request)
          body = send_request('DescribeTaskStrategyRisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskStrategyRisksResponse.new
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