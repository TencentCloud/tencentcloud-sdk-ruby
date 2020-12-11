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
  module Bizlive
    module V20190313
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-03-13'
        @@endpoint = 'bizlive.tencentcloudapi.com'
        @@sdk_version = 'BIZLIVE_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 创建会话

        # @param request: Request instance for CreateSession.
        # @type request: :class:`Tencentcloud::bizlive::V20190313::CreateSessionRequest`
        # @rtype: :class:`Tencentcloud::bizlive::V20190313::CreateSessionResponse`
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

        # 查询播放数据，支持按流名称查询详细播放数据，也可按播放域名查询详细总数据。

        # @param request: Request instance for DescribeStreamPlayInfoList.
        # @type request: :class:`Tencentcloud::bizlive::V20190313::DescribeStreamPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::bizlive::V20190313::DescribeStreamPlayInfoListResponse`
        def DescribeStreamPlayInfoList(request)
          body = send_request('DescribeStreamPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamPlayInfoListResponse.new
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

        # 查询空闲机器数量

        # @param request: Request instance for DescribeWorkers.
        # @type request: :class:`Tencentcloud::bizlive::V20190313::DescribeWorkersRequest`
        # @rtype: :class:`Tencentcloud::bizlive::V20190313::DescribeWorkersResponse`
        def DescribeWorkers(request)
          body = send_request('DescribeWorkers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkersResponse.new
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

        # 禁止某条流的推送，可以预设某个时刻将流恢复。

        # @param request: Request instance for ForbidLiveStream.
        # @type request: :class:`Tencentcloud::bizlive::V20190313::ForbidLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::bizlive::V20190313::ForbidLiveStreamResponse`
        def ForbidLiveStream(request)
          body = send_request('ForbidLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForbidLiveStreamResponse.new
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

        # 注册聊天室

        # @param request: Request instance for RegisterIM.
        # @type request: :class:`Tencentcloud::bizlive::V20190313::RegisterIMRequest`
        # @rtype: :class:`Tencentcloud::bizlive::V20190313::RegisterIMResponse`
        def RegisterIM(request)
          body = send_request('RegisterIM', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterIMResponse.new
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

        # 强制退出游戏

        # @param request: Request instance for StopGame.
        # @type request: :class:`Tencentcloud::bizlive::V20190313::StopGameRequest`
        # @rtype: :class:`Tencentcloud::bizlive::V20190313::StopGameResponse`
        def StopGame(request)
          body = send_request('StopGame', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopGameResponse.new
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