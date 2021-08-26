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
  module Organization
    module V20210331
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-03-31'
            api_endpoint = 'organization.tencentcloudapi.com'
            sdk_version = 'ORGANIZATION_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 绑定组织成员和子账号的授权关系

        # @param request: Request instance for BindOrganizationMemberAuthAccount.
        # @type request: :class:`Tencentcloud::organization::V20210331::BindOrganizationMemberAuthAccountRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::BindOrganizationMemberAuthAccountResponse`
        def BindOrganizationMemberAuthAccount(request)
          body = send_request('BindOrganizationMemberAuthAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindOrganizationMemberAuthAccountResponse.new
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