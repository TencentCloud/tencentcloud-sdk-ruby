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
  module Tchd
    module V20230306
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-03-06'
            api_endpoint = 'tchd.tencentcloudapi.com'
            sdk_version = 'TCHD_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口用于查询腾讯云健康看板的实时可用性事件信息，可以通过产品列表、地域进行过滤查询。
        # 可以参考健康看板历史事件页面来获取查询案例（链接：https://status.cloud.tencent.com/history）。

        # @param request: Request instance for DescribeEventStatistics.
        # @type request: :class:`Tencentcloud::tchd::V20230306::DescribeEventStatisticsRequest`
        # @rtype: :class:`Tencentcloud::tchd::V20230306::DescribeEventStatisticsResponse`
        def DescribeEventStatistics(request)
          body = send_request('DescribeEventStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventStatisticsResponse.new
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

        # 本接口用于查询腾讯云健康看板的可用性事件信息，可以通过产品列表、地域列表和事件发生日期进行过滤查询。
        # 当查询的产品对应时间内无事件时将返回空结果。
        # 可以参考健康看板历史事件页面来获取查询案例（链接：https://status.cloud.tencent.com/history）。

        # @param request: Request instance for DescribeEvents.
        # @type request: :class:`Tencentcloud::tchd::V20230306::DescribeEventsRequest`
        # @rtype: :class:`Tencentcloud::tchd::V20230306::DescribeEventsResponse`
        def DescribeEvents(request)
          body = send_request('DescribeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventsResponse.new
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