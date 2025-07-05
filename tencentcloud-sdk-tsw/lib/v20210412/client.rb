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
  module Tsw
    module V20210412
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-04-12'
            api_endpoint = 'tsw.tencentcloudapi.com'
            sdk_version = 'TSW_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取告警对象-组件告警

        # @param request: Request instance for DescribeComponentAlertObject.
        # @type request: :class:`Tencentcloud::tsw::V20210412::DescribeComponentAlertObjectRequest`
        # @rtype: :class:`Tencentcloud::tsw::V20210412::DescribeComponentAlertObjectResponse`
        def DescribeComponentAlertObject(request)
          body = send_request('DescribeComponentAlertObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComponentAlertObjectResponse.new
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

        # 获取告警对象-服务告警表

        # @param request: Request instance for DescribeServiceAlertObject.
        # @type request: :class:`Tencentcloud::tsw::V20210412::DescribeServiceAlertObjectRequest`
        # @rtype: :class:`Tencentcloud::tsw::V20210412::DescribeServiceAlertObjectResponse`
        def DescribeServiceAlertObject(request)
          body = send_request('DescribeServiceAlertObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceAlertObjectResponse.new
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

        # 查询token

        # @param request: Request instance for DescribeToken.
        # @type request: :class:`Tencentcloud::tsw::V20210412::DescribeTokenRequest`
        # @rtype: :class:`Tencentcloud::tsw::V20210412::DescribeTokenResponse`
        def DescribeToken(request)
          body = send_request('DescribeToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenResponse.new
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