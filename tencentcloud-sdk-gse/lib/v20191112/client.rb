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
  module Gse
    module V20191112
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-11-12'
        @@endpoint = 'gse.tencentcloudapi.com'
        @@sdk_version = 'GSE_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口（CreateGameServerSession）用于创建游戏服务会话

        # @param request: Request instance for CreateGameServerSession.
        # @type request: :class:`Tencentcloud::gse::V20191112::CreateGameServerSessionRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::CreateGameServerSessionResponse`
        def CreateGameServerSession(request)
          body = send_request('CreateGameServerSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGameServerSessionResponse.new
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

        # 用于删除扩缩容配置

        # @param request: Request instance for DeleteScalingPolicy.
        # @type request: :class:`Tencentcloud::gse::V20191112::DeleteScalingPolicyRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DeleteScalingPolicyResponse`
        def DeleteScalingPolicy(request)
          body = send_request('DeleteScalingPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScalingPolicyResponse.new
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

        # 本接口（DescribeGameServerSessionDetails）用于查询游戏服务器会话详情列表

        # @param request: Request instance for DescribeGameServerSessionDetails.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionDetailsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionDetailsResponse`
        def DescribeGameServerSessionDetails(request)
          body = send_request('DescribeGameServerSessionDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGameServerSessionDetailsResponse.new
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

        # 本接口（DescribeGameServerSessionPlacement）用于查询游戏服务器会话的放置

        # @param request: Request instance for DescribeGameServerSessionPlacement.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionPlacementRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionPlacementResponse`
        def DescribeGameServerSessionPlacement(request)
          body = send_request('DescribeGameServerSessionPlacement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGameServerSessionPlacementResponse.new
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

        # 本接口（DescribeGameServerSessionQueues）用于查询游戏服务器会话队列

        # @param request: Request instance for DescribeGameServerSessionQueues.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionQueuesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionQueuesResponse`
        def DescribeGameServerSessionQueues(request)
          body = send_request('DescribeGameServerSessionQueues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGameServerSessionQueuesResponse.new
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

        # 本接口（DescribeGameServerSessions）用于查询游戏服务器会话列表

        # @param request: Request instance for DescribeGameServerSessions.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionsResponse`
        def DescribeGameServerSessions(request)
          body = send_request('DescribeGameServerSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGameServerSessionsResponse.new
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

        # 用于查询服务器实例列表

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeInstancesResponse`
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

        # 本接口（DescribePlayerSessions）用于获取玩家会话列表

        # @param request: Request instance for DescribePlayerSessions.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribePlayerSessionsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribePlayerSessionsResponse`
        def DescribePlayerSessions(request)
          body = send_request('DescribePlayerSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePlayerSessionsResponse.new
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

        # 用于查询服务部署的动态扩缩容配置

        # @param request: Request instance for DescribeScalingPolicies.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeScalingPoliciesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeScalingPoliciesResponse`
        def DescribeScalingPolicies(request)
          body = send_request('DescribeScalingPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScalingPoliciesResponse.new
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

        # 本接口（GetGameServerSessionLogUrl）用于获取游戏服务器会话的日志URL

        # @param request: Request instance for GetGameServerSessionLogUrl.
        # @type request: :class:`Tencentcloud::gse::V20191112::GetGameServerSessionLogUrlRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::GetGameServerSessionLogUrlResponse`
        def GetGameServerSessionLogUrl(request)
          body = send_request('GetGameServerSessionLogUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGameServerSessionLogUrlResponse.new
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

        # 获取实例登录所需要的凭据

        # @param request: Request instance for GetInstanceAccess.
        # @type request: :class:`Tencentcloud::gse::V20191112::GetInstanceAccessRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::GetInstanceAccessResponse`
        def GetInstanceAccess(request)
          body = send_request('GetInstanceAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetInstanceAccessResponse.new
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

        # 本接口（JoinGameServerSession）用于加入游戏服务器会话

        # @param request: Request instance for JoinGameServerSession.
        # @type request: :class:`Tencentcloud::gse::V20191112::JoinGameServerSessionRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::JoinGameServerSessionResponse`
        def JoinGameServerSession(request)
          body = send_request('JoinGameServerSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = JoinGameServerSessionResponse.new
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

        # 用于设置动态扩缩容配置

        # @param request: Request instance for PutScalingPolicy.
        # @type request: :class:`Tencentcloud::gse::V20191112::PutScalingPolicyRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::PutScalingPolicyResponse`
        def PutScalingPolicy(request)
          body = send_request('PutScalingPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutScalingPolicyResponse.new
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

        # 本接口（SearchGameServerSessions）用于搜索游戏服务器会话列表

        # @param request: Request instance for SearchGameServerSessions.
        # @type request: :class:`Tencentcloud::gse::V20191112::SearchGameServerSessionsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::SearchGameServerSessionsResponse`
        def SearchGameServerSessions(request)
          body = send_request('SearchGameServerSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchGameServerSessionsResponse.new
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

        # 设置服务器权重

        # @param request: Request instance for SetServerWeight.
        # @type request: :class:`Tencentcloud::gse::V20191112::SetServerWeightRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::SetServerWeightResponse`
        def SetServerWeight(request)
          body = send_request('SetServerWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetServerWeightResponse.new
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

        # 本接口（StartGameServerSessionPlacement）用于开始放置游戏服务器会话

        # @param request: Request instance for StartGameServerSessionPlacement.
        # @type request: :class:`Tencentcloud::gse::V20191112::StartGameServerSessionPlacementRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::StartGameServerSessionPlacementResponse`
        def StartGameServerSessionPlacement(request)
          body = send_request('StartGameServerSessionPlacement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartGameServerSessionPlacementResponse.new
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

        # 本接口（StartMatchPlacement）用于开始匹配放置游戏服务器会话

        # @param request: Request instance for StartMatchPlacement.
        # @type request: :class:`Tencentcloud::gse::V20191112::StartMatchPlacementRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::StartMatchPlacementResponse`
        def StartMatchPlacement(request)
          body = send_request('StartMatchPlacement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartMatchPlacementResponse.new
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

        # 本接口（StopGameServerSessionPlacement）用于停止放置游戏服务器会话

        # @param request: Request instance for StopGameServerSessionPlacement.
        # @type request: :class:`Tencentcloud::gse::V20191112::StopGameServerSessionPlacementRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::StopGameServerSessionPlacementResponse`
        def StopGameServerSessionPlacement(request)
          body = send_request('StopGameServerSessionPlacement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopGameServerSessionPlacementResponse.new
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

        # 本接口（UpdateGameServerSession）用于更新游戏服务器会话

        # @param request: Request instance for UpdateGameServerSession.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateGameServerSessionRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateGameServerSessionResponse`
        def UpdateGameServerSession(request)
          body = send_request('UpdateGameServerSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGameServerSessionResponse.new
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