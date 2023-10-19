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
  module Cdwpg
    module V20201230
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-30'
            api_endpoint = 'cdwpg.tencentcloudapi.com'
            sdk_version = 'CDWPG_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建集群

        # @param request: Request instance for CreateInstanceByApi.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::CreateInstanceByApiRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::CreateInstanceByApiResponse`
        def CreateInstanceByApi(request)
          body = send_request('CreateInstanceByApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceByApiResponse.new
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

        # 根据实例ID查询某个实例的具体信息

        # @param request: Request instance for DescribeInstance.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceResponse`
        def DescribeInstance(request)
          body = send_request('DescribeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceResponse.new
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

        # 集群详情页中显示集群状态、流程进度等

        # @param request: Request instance for DescribeInstanceState.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceStateRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceStateResponse`
        def DescribeInstanceState(request)
          body = send_request('DescribeInstanceState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceStateResponse.new
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

        # 获取云原生实例列表

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
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

        # 获取集群实例列表

        # @param request: Request instance for DescribeSimpleInstances.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeSimpleInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeSimpleInstancesResponse`
        def DescribeSimpleInstances(request)
          body = send_request('DescribeSimpleInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSimpleInstancesResponse.new
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

        # 销毁集群

        # @param request: Request instance for DestroyInstanceByApi.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DestroyInstanceByApiRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DestroyInstanceByApiResponse`
        def DestroyInstanceByApi(request)
          body = send_request('DestroyInstanceByApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyInstanceByApiResponse.new
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

        # 修改实例信息，目前为实例名称

        # @param request: Request instance for ModifyInstance.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::ModifyInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::ModifyInstanceResponse`
        def ModifyInstance(request)
          body = send_request('ModifyInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceResponse.new
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