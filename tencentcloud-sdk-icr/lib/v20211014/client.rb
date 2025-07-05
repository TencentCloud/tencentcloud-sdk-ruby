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
  module Icr
    module V20211014
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-10-14'
            api_endpoint = 'icr.tencentcloudapi.com'
            sdk_version = 'ICR_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取成员列表接口

        # @param request: Request instance for GetIndustryV1HomeMembers.
        # @type request: :class:`Tencentcloud::icr::V20211014::GetIndustryV1HomeMembersRequest`
        # @rtype: :class:`Tencentcloud::icr::V20211014::GetIndustryV1HomeMembersResponse`
        def GetIndustryV1HomeMembers(request)
          body = send_request('GetIndustryV1HomeMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetIndustryV1HomeMembersResponse.new
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