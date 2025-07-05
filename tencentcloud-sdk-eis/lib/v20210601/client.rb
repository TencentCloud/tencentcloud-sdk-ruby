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
  module Eis
    module V20210601
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-06-01'
            api_endpoint = 'eis.tencentcloudapi.com'
            sdk_version = 'EIS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取运行时详情

        # @param request: Request instance for GetRuntimeMC.
        # @type request: :class:`Tencentcloud::eis::V20210601::GetRuntimeMCRequest`
        # @rtype: :class:`Tencentcloud::eis::V20210601::GetRuntimeMCResponse`
        def GetRuntimeMC(request)
          body = send_request('GetRuntimeMC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRuntimeMCResponse.new
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

        # 获取运行时资源监控详情，cpu，memory，bandwidth

        # @param request: Request instance for GetRuntimeResourceMonitorMetricMC.
        # @type request: :class:`Tencentcloud::eis::V20210601::GetRuntimeResourceMonitorMetricMCRequest`
        # @rtype: :class:`Tencentcloud::eis::V20210601::GetRuntimeResourceMonitorMetricMCResponse`
        def GetRuntimeResourceMonitorMetricMC(request)
          body = send_request('GetRuntimeResourceMonitorMetricMC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRuntimeResourceMonitorMetricMCResponse.new
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

        # 返回用户可用的运行时列表，发布应用时返回的运行时环境，仅shared和private运行时，无sandbox运行时，并且只有running/scaling状态的

        # @param request: Request instance for ListDeployableRuntimesMC.
        # @type request: :class:`Tencentcloud::eis::V20210601::ListDeployableRuntimesMCRequest`
        # @rtype: :class:`Tencentcloud::eis::V20210601::ListDeployableRuntimesMCResponse`
        def ListDeployableRuntimesMC(request)
          body = send_request('ListDeployableRuntimesMC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDeployableRuntimesMCResponse.new
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

        # 获取运行时部署的应用实例列表

        # @param request: Request instance for ListRuntimeDeployedInstancesMC.
        # @type request: :class:`Tencentcloud::eis::V20210601::ListRuntimeDeployedInstancesMCRequest`
        # @rtype: :class:`Tencentcloud::eis::V20210601::ListRuntimeDeployedInstancesMCResponse`
        def ListRuntimeDeployedInstancesMC(request)
          body = send_request('ListRuntimeDeployedInstancesMC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRuntimeDeployedInstancesMCResponse.new
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

        # 返回用户的运行时列表，运行时管理主页使用，包含沙箱、共享运行时及独立运行时环境，不包含已经删除的运行时

        # @param request: Request instance for ListRuntimesMC.
        # @type request: :class:`Tencentcloud::eis::V20210601::ListRuntimesMCRequest`
        # @rtype: :class:`Tencentcloud::eis::V20210601::ListRuntimesMCResponse`
        def ListRuntimesMC(request)
          body = send_request('ListRuntimesMC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRuntimesMCResponse.new
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