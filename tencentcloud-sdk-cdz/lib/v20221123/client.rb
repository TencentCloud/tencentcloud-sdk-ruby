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
  module Cdz
    module V20221123
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-11-23'
            api_endpoint = 'cdz.tencentcloudapi.com'
            sdk_version = 'CDZ_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 查询可用区的Host和Host上部署的实例

        # @param request: Request instance for DescribeCloudDedicatedZoneHosts.
        # @type request: :class:`Tencentcloud::cdz::V20221123::DescribeCloudDedicatedZoneHostsRequest`
        # @rtype: :class:`Tencentcloud::cdz::V20221123::DescribeCloudDedicatedZoneHostsResponse`
        def DescribeCloudDedicatedZoneHosts(request)
          body = send_request('DescribeCloudDedicatedZoneHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudDedicatedZoneHostsResponse.new
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

        # 查询专属可用区各个垂直产品的资源使用情况

        # @param request: Request instance for DescribeCloudDedicatedZoneResourceSummary.
        # @type request: :class:`Tencentcloud::cdz::V20221123::DescribeCloudDedicatedZoneResourceSummaryRequest`
        # @rtype: :class:`Tencentcloud::cdz::V20221123::DescribeCloudDedicatedZoneResourceSummaryResponse`
        def DescribeCloudDedicatedZoneResourceSummary(request)
          body = send_request('DescribeCloudDedicatedZoneResourceSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudDedicatedZoneResourceSummaryResponse.new
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