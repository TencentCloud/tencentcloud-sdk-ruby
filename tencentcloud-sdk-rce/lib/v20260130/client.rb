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
  module Rce
    module V20260130
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2026-01-30'
            api_endpoint = 'rce.tencentcloudapi.com'
            sdk_version = 'RCE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 设备风险评估-高级版

        # @param request: Request instance for AssessDeviceRiskPremiumPro.
        # @type request: :class:`Tencentcloud::rce::V20260130::AssessDeviceRiskPremiumProRequest`
        # @rtype: :class:`Tencentcloud::rce::V20260130::AssessDeviceRiskPremiumProResponse`
        def AssessDeviceRiskPremiumPro(request)
          body = send_request('AssessDeviceRiskPremiumPro', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssessDeviceRiskPremiumProResponse.new
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

        # 设备风险评估-基础版

        # @param request: Request instance for AssessDeviceRiskPro.
        # @type request: :class:`Tencentcloud::rce::V20260130::AssessDeviceRiskProRequest`
        # @rtype: :class:`Tencentcloud::rce::V20260130::AssessDeviceRiskProResponse`
        def AssessDeviceRiskPro(request)
          body = send_request('AssessDeviceRiskPro', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssessDeviceRiskProResponse.new
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

        # 环境风险评估

        # @param request: Request instance for AssessEnvironmentRisk.
        # @type request: :class:`Tencentcloud::rce::V20260130::AssessEnvironmentRiskRequest`
        # @rtype: :class:`Tencentcloud::rce::V20260130::AssessEnvironmentRiskResponse`
        def AssessEnvironmentRisk(request)
          body = send_request('AssessEnvironmentRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssessEnvironmentRiskResponse.new
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