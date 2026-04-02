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
  module Ga2
    module V20250115
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-01-15'
            api_endpoint = 'ga2.tencentcloudapi.com'
            sdk_version = 'GA2_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建全球加速实例

        # @param request: Request instance for CreateGlobalAccelerator.
        # @type request: :class:`Tencentcloud::ga2::V20250115::CreateGlobalAcceleratorRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::CreateGlobalAcceleratorResponse`
        def CreateGlobalAccelerator(request)
          body = send_request('CreateGlobalAccelerator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGlobalAcceleratorResponse.new
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

        # 查询跨境账单

        # @param request: Request instance for DescribeCrossBorderSettlement.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DescribeCrossBorderSettlementRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DescribeCrossBorderSettlementResponse`
        def DescribeCrossBorderSettlement(request)
          body = send_request('DescribeCrossBorderSettlement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCrossBorderSettlementResponse.new
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