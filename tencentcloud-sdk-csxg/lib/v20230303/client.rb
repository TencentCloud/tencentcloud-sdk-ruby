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
  module Csxg
    module V20230303
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-03-03'
            api_endpoint = 'csxg.tencentcloudapi.com'
            sdk_version = 'CSXG_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建5G入云服务接口

        # @param request: Request instance for Create5GInstance.
        # @type request: :class:`Tencentcloud::csxg::V20230303::Create5GInstanceRequest`
        # @rtype: :class:`Tencentcloud::csxg::V20230303::Create5GInstanceResponse`
        def Create5GInstance(request)
          body = send_request('Create5GInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = Create5GInstanceResponse.new
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

        # 删除5G入云服务

        # @param request: Request instance for Delete5GInstance.
        # @type request: :class:`Tencentcloud::csxg::V20230303::Delete5GInstanceRequest`
        # @rtype: :class:`Tencentcloud::csxg::V20230303::Delete5GInstanceResponse`
        def Delete5GInstance(request)
          body = send_request('Delete5GInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = Delete5GInstanceResponse.new
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

        # 查询APN信息

        # @param request: Request instance for Describe5GAPNs.
        # @type request: :class:`Tencentcloud::csxg::V20230303::Describe5GAPNsRequest`
        # @rtype: :class:`Tencentcloud::csxg::V20230303::Describe5GAPNsResponse`
        def Describe5GAPNs(request)
          body = send_request('Describe5GAPNs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = Describe5GAPNsResponse.new
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

        # 查询5G入云服务

        # @param request: Request instance for Describe5GInstances.
        # @type request: :class:`Tencentcloud::csxg::V20230303::Describe5GInstancesRequest`
        # @rtype: :class:`Tencentcloud::csxg::V20230303::Describe5GInstancesResponse`
        def Describe5GInstances(request)
          body = send_request('Describe5GInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = Describe5GInstancesResponse.new
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

        # 修改5G入云服务

        # @param request: Request instance for Modify5GInstanceAttribute.
        # @type request: :class:`Tencentcloud::csxg::V20230303::Modify5GInstanceAttributeRequest`
        # @rtype: :class:`Tencentcloud::csxg::V20230303::Modify5GInstanceAttributeResponse`
        def Modify5GInstanceAttribute(request)
          body = send_request('Modify5GInstanceAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = Modify5GInstanceAttributeResponse.new
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