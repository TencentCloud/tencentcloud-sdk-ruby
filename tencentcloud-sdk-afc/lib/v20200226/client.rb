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
  module Afc
    module V20200226
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-02-26'
            api_endpoint = 'afc.tencentcloudapi.com'
            sdk_version = 'AFC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 反欺诈VIP评分接口

        # @param request: Request instance for GetAntiFraudVip.
        # @type request: :class:`Tencentcloud::afc::V20200226::GetAntiFraudVipRequest`
        # @rtype: :class:`Tencentcloud::afc::V20200226::GetAntiFraudVipResponse`
        def GetAntiFraudVip(request)
          body = send_request('GetAntiFraudVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAntiFraudVipResponse.new
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

        # 天御反欺诈服务，主要应用于银行、证券、保险、P2P等金融行业客户，通过腾讯的大数据风控能力，
        # 可以准确识别恶意用户信息，解决客户在支付、活动、理财，风控等业务环节遇到的欺诈威胁，降低企业
        # 的损失。

        # @param request: Request instance for QueryAntiFraudVip.
        # @type request: :class:`Tencentcloud::afc::V20200226::QueryAntiFraudVipRequest`
        # @rtype: :class:`Tencentcloud::afc::V20200226::QueryAntiFraudVipResponse`
        def QueryAntiFraudVip(request)
          body = send_request('QueryAntiFraudVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAntiFraudVipResponse.new
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

        # 天御信鸽取数平台接口

        # @param request: Request instance for TransportGeneralInterface.
        # @type request: :class:`Tencentcloud::afc::V20200226::TransportGeneralInterfaceRequest`
        # @rtype: :class:`Tencentcloud::afc::V20200226::TransportGeneralInterfaceResponse`
        def TransportGeneralInterface(request)
          body = send_request('TransportGeneralInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransportGeneralInterfaceResponse.new
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