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
  module Tcex
    module V20200727
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-07-27'
        @@endpoint = 'tcex.tencentcloudapi.com'
        @@sdk_version = 'TCEX_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 获取服务调用结果。和InvokeService接口配置合适，其InvokeId参数为InvokeService接口返回的RequestId。

        # @param request: Request instance for DescribeInvocationResult.
        # @type request: :class:`Tencentcloud::tcex::V20200727::DescribeInvocationResultRequest`
        # @rtype: :class:`Tencentcloud::tcex::V20200727::DescribeInvocationResultResponse`
        def DescribeInvocationResult(request)
          body = send_request('DescribeInvocationResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInvocationResultResponse.new
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

        # 通过传入文档url，测试服务算法。此接口需要和DescribeInvocationResult接口配置使用，该接口使用InvokeService返回的RequestId作为InvokeId参数，用于查询调用结果。

        # @param request: Request instance for InvokeService.
        # @type request: :class:`Tencentcloud::tcex::V20200727::InvokeServiceRequest`
        # @rtype: :class:`Tencentcloud::tcex::V20200727::InvokeServiceResponse`
        def InvokeService(request)
          body = send_request('InvokeService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InvokeServiceResponse.new
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