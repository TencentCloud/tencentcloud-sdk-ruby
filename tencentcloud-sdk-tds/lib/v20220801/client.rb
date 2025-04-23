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
  module Tds
    module V20220801
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-08-01'
            api_endpoint = 'tds.tencentcloudapi.com'
            sdk_version = 'TDS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 查询设备标识及风险（金融旗舰版）

        # @param request: Request instance for DescribeFinanceFraudUltimate.
        # @type request: :class:`Tencentcloud::tds::V20220801::DescribeFinanceFraudUltimateRequest`
        # @rtype: :class:`Tencentcloud::tds::V20220801::DescribeFinanceFraudUltimateResponse`
        def DescribeFinanceFraudUltimate(request)
          body = send_request('DescribeFinanceFraudUltimate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFinanceFraudUltimateResponse.new
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

        # 查询设备风险

        # @param request: Request instance for DescribeFraudBase.
        # @type request: :class:`Tencentcloud::tds::V20220801::DescribeFraudBaseRequest`
        # @rtype: :class:`Tencentcloud::tds::V20220801::DescribeFraudBaseResponse`
        def DescribeFraudBase(request)
          body = send_request('DescribeFraudBase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFraudBaseResponse.new
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

        # 查询设备标识及风险

        # @param request: Request instance for DescribeFraudPremium.
        # @type request: :class:`Tencentcloud::tds::V20220801::DescribeFraudPremiumRequest`
        # @rtype: :class:`Tencentcloud::tds::V20220801::DescribeFraudPremiumResponse`
        def DescribeFraudPremium(request)
          body = send_request('DescribeFraudPremium', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFraudPremiumResponse.new
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

        # 查询设备标识及风险（旗舰版）

        # @param request: Request instance for DescribeFraudUltimate.
        # @type request: :class:`Tencentcloud::tds::V20220801::DescribeFraudUltimateRequest`
        # @rtype: :class:`Tencentcloud::tds::V20220801::DescribeFraudUltimateResponse`
        def DescribeFraudUltimate(request)
          body = send_request('DescribeFraudUltimate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFraudUltimateResponse.new
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

        # 查询设备标识

        # @param request: Request instance for DescribeTrustedID.
        # @type request: :class:`Tencentcloud::tds::V20220801::DescribeTrustedIDRequest`
        # @rtype: :class:`Tencentcloud::tds::V20220801::DescribeTrustedIDResponse`
        def DescribeTrustedID(request)
          body = send_request('DescribeTrustedID', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrustedIDResponse.new
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