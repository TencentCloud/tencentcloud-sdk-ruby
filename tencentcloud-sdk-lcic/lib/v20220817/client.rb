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
  module Lcic
    module V20220817
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-08-17'
            api_endpoint = 'lcic.tencentcloudapi.com'
            sdk_version = 'LCIC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建房间

        # @param request: Request instance for CreateRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::CreateRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::CreateRoomResponse`
        def CreateRoom(request)
          body = send_request('CreateRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoomResponse.new
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

        # 创建巡课

        # @param request: Request instance for CreateSupervisor.
        # @type request: :class:`Tencentcloud::lcic::V20220817::CreateSupervisorRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::CreateSupervisorResponse`
        def CreateSupervisor(request)
          body = send_request('CreateSupervisor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSupervisorResponse.new
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

        # 获取房间信息

        # @param request: Request instance for DescribeRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeRoomResponse`
        def DescribeRoom(request)
          body = send_request('DescribeRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoomResponse.new
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

        # 获取用户信息

        # @param request: Request instance for DescribeUser.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeUserRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeUserResponse`
        def DescribeUser(request)
          body = send_request('DescribeUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserResponse.new
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

        # 使用源账号登录，源账号为注册时填入的originId

        # @param request: Request instance for LoginOriginId.
        # @type request: :class:`Tencentcloud::lcic::V20220817::LoginOriginIdRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::LoginOriginIdResponse`
        def LoginOriginId(request)
          body = send_request('LoginOriginId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LoginOriginIdResponse.new
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

        # 登录

        # @param request: Request instance for LoginUser.
        # @type request: :class:`Tencentcloud::lcic::V20220817::LoginUserRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::LoginUserResponse`
        def LoginUser(request)
          body = send_request('LoginUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LoginUserResponse.new
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

        # 注册用户

        # @param request: Request instance for RegisterUser.
        # @type request: :class:`Tencentcloud::lcic::V20220817::RegisterUserRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::RegisterUserResponse`
        def RegisterUser(request)
          body = send_request('RegisterUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterUserResponse.new
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