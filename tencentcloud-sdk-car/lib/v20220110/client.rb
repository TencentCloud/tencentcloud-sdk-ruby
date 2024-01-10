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
  module Car
    module V20220110
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-01-10'
            api_endpoint = 'car.tencentcloudapi.com'
            sdk_version = 'CAR_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口用于申请并发。接口超时时间：20秒。

        # @param request: Request instance for ApplyConcurrent.
        # @type request: :class:`Tencentcloud::car::V20220110::ApplyConcurrentRequest`
        # @rtype: :class:`Tencentcloud::car::V20220110::ApplyConcurrentResponse`
        def ApplyConcurrent(request)
          body = send_request('ApplyConcurrent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyConcurrentResponse.new
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

        # 本接口用于创建会话。接口超时时间：5秒。

        # @param request: Request instance for CreateSession.
        # @type request: :class:`Tencentcloud::car::V20220110::CreateSessionRequest`
        # @rtype: :class:`Tencentcloud::car::V20220110::CreateSessionResponse`
        def CreateSession(request)
          body = send_request('CreateSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSessionResponse.new
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

        # 销毁会话。如果该会话开启了云端推流，那么销毁会话时会结束云端推流。

        # @param request: Request instance for DestroySession.
        # @type request: :class:`Tencentcloud::car::V20220110::DestroySessionRequest`
        # @rtype: :class:`Tencentcloud::car::V20220110::DestroySessionResponse`
        def DestroySession(request)
          body = send_request('DestroySession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroySessionResponse.new
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

        # 开始云端推流。云端推流 codec 根据客户端（SDK）能力来自动选择，默认优先顺序为 H265、H264、VP8、VP9。

        # @param request: Request instance for StartPublishStream.
        # @type request: :class:`Tencentcloud::car::V20220110::StartPublishStreamRequest`
        # @rtype: :class:`Tencentcloud::car::V20220110::StartPublishStreamResponse`
        def StartPublishStream(request)
          body = send_request('StartPublishStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartPublishStreamResponse.new
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

        # 开始云端推流到指定URL。云端推流 codec 根据客户端（SDK）能力来自动选择，默认优先顺序为 H265、H264、VP8、VP9。该推流方式需要单独计费，详细计费方式请查看[指定地址推流费用说明](https://cloud.tencent.com/document/product/1547/72168#98ac188a-d122-4caf-88be-05268ecefdf6)

        # @param request: Request instance for StartPublishStreamWithURL.
        # @type request: :class:`Tencentcloud::car::V20220110::StartPublishStreamWithURLRequest`
        # @rtype: :class:`Tencentcloud::car::V20220110::StartPublishStreamWithURLResponse`
        def StartPublishStreamWithURL(request)
          body = send_request('StartPublishStreamWithURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartPublishStreamWithURLResponse.new
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

        # 停止云端推流

        # @param request: Request instance for StopPublishStream.
        # @type request: :class:`Tencentcloud::car::V20220110::StopPublishStreamRequest`
        # @rtype: :class:`Tencentcloud::car::V20220110::StopPublishStreamResponse`
        def StopPublishStream(request)
          body = send_request('StopPublishStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopPublishStreamResponse.new
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