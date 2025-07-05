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
  module Bpaas
    module V20181217
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-12-17'
            api_endpoint = 'bpaas.tencentcloudapi.com'
            sdk_version = 'BPAAS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 查看审批详情

        # @param request: Request instance for GetBpaasApproveDetail.
        # @type request: :class:`Tencentcloud::bpaas::V20181217::GetBpaasApproveDetailRequest`
        # @rtype: :class:`Tencentcloud::bpaas::V20181217::GetBpaasApproveDetailResponse`
        def GetBpaasApproveDetail(request)
          body = send_request('GetBpaasApproveDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBpaasApproveDetailResponse.new
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

        # 外部审批申请单

        # @param request: Request instance for OutApproveBpaasApplication.
        # @type request: :class:`Tencentcloud::bpaas::V20181217::OutApproveBpaasApplicationRequest`
        # @rtype: :class:`Tencentcloud::bpaas::V20181217::OutApproveBpaasApplicationResponse`
        def OutApproveBpaasApplication(request)
          body = send_request('OutApproveBpaasApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OutApproveBpaasApplicationResponse.new
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