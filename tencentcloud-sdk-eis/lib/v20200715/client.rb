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
  module Eis
    module V20200715
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-07-15'
            api_endpoint = 'eis.tencentcloudapi.com'
            sdk_version = 'EIS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取连接器配置参数

        # @param request: Request instance for DescribeEisConnectorConfig.
        # @type request: :class:`Tencentcloud::eis::V20200715::DescribeEisConnectorConfigRequest`
        # @rtype: :class:`Tencentcloud::eis::V20200715::DescribeEisConnectorConfigResponse`
        def DescribeEisConnectorConfig(request)
          body = send_request('DescribeEisConnectorConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEisConnectorConfigResponse.new
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

        # 获取连接器操作列表

        # @param request: Request instance for ListEisConnectorOperations.
        # @type request: :class:`Tencentcloud::eis::V20200715::ListEisConnectorOperationsRequest`
        # @rtype: :class:`Tencentcloud::eis::V20200715::ListEisConnectorOperationsResponse`
        def ListEisConnectorOperations(request)
          body = send_request('ListEisConnectorOperations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListEisConnectorOperationsResponse.new
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

        # 连接器列表

        # @param request: Request instance for ListEisConnectors.
        # @type request: :class:`Tencentcloud::eis::V20200715::ListEisConnectorsRequest`
        # @rtype: :class:`Tencentcloud::eis::V20200715::ListEisConnectorsResponse`
        def ListEisConnectors(request)
          body = send_request('ListEisConnectors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListEisConnectorsResponse.new
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