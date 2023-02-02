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


        # 如果批量注册的用户已存在，则会被覆盖。一次最多注册1000个用户。默认请求频率限制：10次/秒

        # @param request: Request instance for BatchRegister.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BatchRegisterRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BatchRegisterResponse`
        def BatchRegister(request)
          body = send_request('BatchRegister', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchRegisterResponse.new
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

        # 绑定文档到房间

        # @param request: Request instance for BindDocumentToRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BindDocumentToRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BindDocumentToRoomResponse`
        def BindDocumentToRoom(request)
          body = send_request('BindDocumentToRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindDocumentToRoomResponse.new
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

        # 创建房间内可以使用的文档。

        # @param request: Request instance for CreateDocument.
        # @type request: :class:`Tencentcloud::lcic::V20220817::CreateDocumentRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::CreateDocumentResponse`
        def CreateDocument(request)
          body = send_request('CreateDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDocumentResponse.new
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

        # 删除房间

        # @param request: Request instance for DeleteRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteRoomResponse`
        def DeleteRoom(request)
          body = send_request('DeleteRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoomResponse.new
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

        # 获取应用详情

        # @param request: Request instance for DescribeAppDetail.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeAppDetailRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeAppDetailResponse`
        def DescribeAppDetail(request)
          body = send_request('DescribeAppDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppDetailResponse.new
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

        # 获取房间统计信息，仅可在房间结束后调用。

        # @param request: Request instance for DescribeRoomStatistics.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeRoomStatisticsRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeRoomStatisticsResponse`
        def DescribeRoomStatistics(request)
          body = send_request('DescribeRoomStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoomStatisticsResponse.new
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

        # 修改应用

        # @param request: Request instance for ModifyApp.
        # @type request: :class:`Tencentcloud::lcic::V20220817::ModifyAppRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::ModifyAppResponse`
        def ModifyApp(request)
          body = send_request('ModifyApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAppResponse.new
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

        # 修改房间

        # @param request: Request instance for ModifyRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::ModifyRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::ModifyRoomResponse`
        def ModifyRoom(request)
          body = send_request('ModifyRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRoomResponse.new
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

        # 设置应用的自定义内容，包括应用图标，自定义的代码等。如果已存在，则为更新。更新js、css内容后，要生效也需要调用该接口

        # @param request: Request instance for SetAppCustomContent.
        # @type request: :class:`Tencentcloud::lcic::V20220817::SetAppCustomContentRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::SetAppCustomContentResponse`
        def SetAppCustomContent(request)
          body = send_request('SetAppCustomContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetAppCustomContentResponse.new
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

        # 文档从房间解绑

        # @param request: Request instance for UnbindDocumentFromRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::UnbindDocumentFromRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::UnbindDocumentFromRoomResponse`
        def UnbindDocumentFromRoom(request)
          body = send_request('UnbindDocumentFromRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindDocumentFromRoomResponse.new
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