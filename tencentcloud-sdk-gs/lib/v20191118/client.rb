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
  module Gs
    module V20191118
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-11-18'
        @@endpoint = 'gs.tencentcloudapi.com'
        @@sdk_version = 'GS_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 创建会话

        # @param request: Request instance for CreateSession.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateSessionRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateSessionResponse`
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

        # 获取实例总数和运行数

        # @param request: Request instance for DescribeInstancesCount.
        # @type request: :class:`Tencentcloud::gs::V20191118::DescribeInstancesCountRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DescribeInstancesCountResponse`
        def DescribeInstancesCount(request)
          body = send_request('DescribeInstancesCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesCountResponse.new
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

        # 保存游戏存档

        # @param request: Request instance for SaveGameArchive.
        # @type request: :class:`Tencentcloud::gs::V20191118::SaveGameArchiveRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::SaveGameArchiveResponse`
        def SaveGameArchive(request)
          body = send_request('SaveGameArchive', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SaveGameArchiveResponse.new
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
        # @type request: :class:`Tencentcloud::gs::V20191118::StopGameRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::StopGameResponse`
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

        # 切换游戏存档

        # @param request: Request instance for SwitchGameArchive.
        # @type request: :class:`Tencentcloud::gs::V20191118::SwitchGameArchiveRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::SwitchGameArchiveResponse`
        def SwitchGameArchive(request)
          body = send_request('SwitchGameArchive', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchGameArchiveResponse.new
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

        # 尝试锁定机器

        # @param request: Request instance for TrylockWorker.
        # @type request: :class:`Tencentcloud::gs::V20191118::TrylockWorkerRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::TrylockWorkerResponse`
        def TrylockWorker(request)
          body = send_request('TrylockWorker', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TrylockWorkerResponse.new
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