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
  module Iot
    module V20180123
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-01-23'
            api_endpoint = 'iot.tencentcloudapi.com'
            sdk_version = 'IOT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 启用规则

        # @param request: Request instance for ActivateRule.
        # @type request: :class:`Tencentcloud::iot::V20180123::ActivateRuleRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::ActivateRuleResponse`
        def ActivateRule(request)
          body = send_request('ActivateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActivateRuleResponse.new
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

        # 提供在指定的产品Id下创建一个设备的能力，生成设备名称与设备秘钥。

        # @param request: Request instance for AddDevice.
        # @type request: :class:`Tencentcloud::iot::V20180123::AddDeviceRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AddDeviceResponse`
        def AddDevice(request)
          body = send_request('AddDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDeviceResponse.new
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

        # 本接口(AddProduct)用于创建、定义某款硬件产品。

        # @param request: Request instance for AddProduct.
        # @type request: :class:`Tencentcloud::iot::V20180123::AddProductRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AddProductResponse`
        def AddProduct(request)
          body = send_request('AddProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddProductResponse.new
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

        # 新增规则

        # @param request: Request instance for AddRule.
        # @type request: :class:`Tencentcloud::iot::V20180123::AddRuleRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AddRuleResponse`
        def AddRule(request)
          body = send_request('AddRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddRuleResponse.new
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

        # 新增Topic，用于设备或应用发布消息至该Topic或订阅该Topic的消息。

        # @param request: Request instance for AddTopic.
        # @type request: :class:`Tencentcloud::iot::V20180123::AddTopicRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AddTopicResponse`
        def AddTopic(request)
          body = send_request('AddTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddTopicResponse.new
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

        # 为APP提供用户注册功能

        # @param request: Request instance for AppAddUser.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppAddUserRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppAddUserResponse`
        def AppAddUser(request)
          body = send_request('AppAddUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppAddUserResponse.new
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

        # 用户解除与设备的关联关系，解除后APP用户无法控制设备，获取设备数据

        # @param request: Request instance for AppDeleteDevice.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppDeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppDeleteDeviceResponse`
        def AppDeleteDevice(request)
          body = send_request('AppDeleteDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppDeleteDeviceResponse.new
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

        # 获取绑定设备的基本信息与数据模板定义

        # @param request: Request instance for AppGetDevice.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppGetDeviceRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppGetDeviceResponse`
        def AppGetDevice(request)
          body = send_request('AppGetDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppGetDeviceResponse.new
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

        # 获取绑定设备数据，用于实时展示设备的最新数据

        # @param request: Request instance for AppGetDeviceData.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppGetDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppGetDeviceDataResponse`
        def AppGetDeviceData(request)
          body = send_request('AppGetDeviceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppGetDeviceDataResponse.new
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

        # 获取绑定设备的上下线状态

        # @param request: Request instance for AppGetDeviceStatuses.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppGetDeviceStatusesRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppGetDeviceStatusesResponse`
        def AppGetDeviceStatuses(request)
          body = send_request('AppGetDeviceStatuses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppGetDeviceStatusesResponse.new
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

        # 获取用户的绑定设备列表

        # @param request: Request instance for AppGetDevices.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppGetDevicesRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppGetDevicesResponse`
        def AppGetDevices(request)
          body = send_request('AppGetDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppGetDevicesResponse.new
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

        # 获取用户token

        # @param request: Request instance for AppGetToken.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppGetTokenRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppGetTokenResponse`
        def AppGetToken(request)
          body = send_request('AppGetToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppGetTokenResponse.new
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

        # @param request: Request instance for AppGetUser.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppGetUserRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppGetUserResponse`
        def AppGetUser(request)
          body = send_request('AppGetUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppGetUserResponse.new
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

        # 用户通过APP控制设备

        # @param request: Request instance for AppIssueDeviceControl.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppIssueDeviceControlRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppIssueDeviceControlResponse`
        def AppIssueDeviceControl(request)
          body = send_request('AppIssueDeviceControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppIssueDeviceControlResponse.new
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

        # 重置APP用户密码

        # @param request: Request instance for AppResetPassword.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppResetPasswordRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppResetPasswordResponse`
        def AppResetPassword(request)
          body = send_request('AppResetPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppResetPasswordResponse.new
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

        # 用户绑定设备，绑定后可以在APP端进行控制。绑定设备前需调用“获取设备绑定签名”接口

        # @param request: Request instance for AppSecureAddDevice.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppSecureAddDeviceRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppSecureAddDeviceResponse`
        def AppSecureAddDevice(request)
          body = send_request('AppSecureAddDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppSecureAddDeviceResponse.new
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

        # 修改设备别名，便于用户个性化定义设备的名称

        # @param request: Request instance for AppUpdateDevice.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppUpdateDeviceRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppUpdateDeviceResponse`
        def AppUpdateDevice(request)
          body = send_request('AppUpdateDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppUpdateDeviceResponse.new
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

        # 修改用户信息

        # @param request: Request instance for AppUpdateUser.
        # @type request: :class:`Tencentcloud::iot::V20180123::AppUpdateUserRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AppUpdateUserResponse`
        def AppUpdateUser(request)
          body = send_request('AppUpdateUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppUpdateUserResponse.new
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

        # 关联子设备产品和网关产品

        # @param request: Request instance for AssociateSubDeviceToGatewayProduct.
        # @type request: :class:`Tencentcloud::iot::V20180123::AssociateSubDeviceToGatewayProductRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::AssociateSubDeviceToGatewayProductResponse`
        def AssociateSubDeviceToGatewayProduct(request)
          body = send_request('AssociateSubDeviceToGatewayProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateSubDeviceToGatewayProductResponse.new
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

        # 禁用规则

        # @param request: Request instance for DeactivateRule.
        # @type request: :class:`Tencentcloud::iot::V20180123::DeactivateRuleRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::DeactivateRuleResponse`
        def DeactivateRule(request)
          body = send_request('DeactivateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeactivateRuleResponse.new
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

        # 提供在指定的产品Id下删除一个设备的能力。

        # @param request: Request instance for DeleteDevice.
        # @type request: :class:`Tencentcloud::iot::V20180123::DeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::DeleteDeviceResponse`
        def DeleteDevice(request)
          body = send_request('DeleteDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceResponse.new
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

        # 删除用户指定的产品Id对应的信息。

        # @param request: Request instance for DeleteProduct.
        # @type request: :class:`Tencentcloud::iot::V20180123::DeleteProductRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::DeleteProductResponse`
        def DeleteProduct(request)
          body = send_request('DeleteProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProductResponse.new
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

        # 删除规则

        # @param request: Request instance for DeleteRule.
        # @type request: :class:`Tencentcloud::iot::V20180123::DeleteRuleRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::DeleteRuleResponse`
        def DeleteRule(request)
          body = send_request('DeleteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRuleResponse.new
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

        # 删除Topic

        # @param request: Request instance for DeleteTopic.
        # @type request: :class:`Tencentcloud::iot::V20180123::DeleteTopicRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::DeleteTopicResponse`
        def DeleteTopic(request)
          body = send_request('DeleteTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicResponse.new
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

        # 批量获取设备某一段时间范围的设备上报数据。该接口适用于使用高级版类型的产品

        # @param request: Request instance for GetDataHistory.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetDataHistoryRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetDataHistoryResponse`
        def GetDataHistory(request)
          body = send_request('GetDataHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDataHistoryResponse.new
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

        # 获取设备的调试日志，用于定位问题

        # @param request: Request instance for GetDebugLog.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetDebugLogRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetDebugLogResponse`
        def GetDebugLog(request)
          body = send_request('GetDebugLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDebugLogResponse.new
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

        # 提供查询某个设备详细信息的能力。

        # @param request: Request instance for GetDevice.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetDeviceRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetDeviceResponse`
        def GetDevice(request)
          body = send_request('GetDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceResponse.new
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

        # 获取某个设备当前上报到云端的数据，该接口适用于使用数据模板协议的产品。

        # @param request: Request instance for GetDeviceData.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetDeviceDataResponse`
        def GetDeviceData(request)
          body = send_request('GetDeviceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceDataResponse.new
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

        # 批量获取设备与云端的详细通信日志，该接口适用于使用高级版类型的产品。

        # @param request: Request instance for GetDeviceLog.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetDeviceLogRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetDeviceLogResponse`
        def GetDeviceLog(request)
          body = send_request('GetDeviceLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceLogResponse.new
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

        # 获取设备绑定签名，用于用户绑定某个设备的应用场景

        # @param request: Request instance for GetDeviceSignatures.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetDeviceSignaturesRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetDeviceSignaturesResponse`
        def GetDeviceSignatures(request)
          body = send_request('GetDeviceSignatures', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceSignaturesResponse.new
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

        # 查询某段时间范围内产品的在线、激活设备数

        # @param request: Request instance for GetDeviceStatistics.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetDeviceStatisticsRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetDeviceStatisticsResponse`
        def GetDeviceStatistics(request)
          body = send_request('GetDeviceStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceStatisticsResponse.new
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

        # 批量获取设备的当前状态，状态包括在线、离线或未激活状态。

        # @param request: Request instance for GetDeviceStatuses.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetDeviceStatusesRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetDeviceStatusesResponse`
        def GetDeviceStatuses(request)
          body = send_request('GetDeviceStatuses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceStatusesResponse.new
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

        # 提供分页查询某个产品Id下设备信息的能力。

        # @param request: Request instance for GetDevices.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetDevicesRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetDevicesResponse`
        def GetDevices(request)
          body = send_request('GetDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDevicesResponse.new
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

        # 获取产品定义的详细信息，包括产品名称、产品描述，鉴权模式等信息。

        # @param request: Request instance for GetProduct.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetProductRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetProductResponse`
        def GetProduct(request)
          body = send_request('GetProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetProductResponse.new
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

        # 获取用户在物联网套件所创建的所有产品信息。

        # @param request: Request instance for GetProducts.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetProductsRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetProductsResponse`
        def GetProducts(request)
          body = send_request('GetProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetProductsResponse.new
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

        # 获取转发规则信息

        # @param request: Request instance for GetRule.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetRuleRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetRuleResponse`
        def GetRule(request)
          body = send_request('GetRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRuleResponse.new
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

        # 获取转发规则列表

        # @param request: Request instance for GetRules.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetRulesRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetRulesResponse`
        def GetRules(request)
          body = send_request('GetRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRulesResponse.new
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

        # 获取Topic信息

        # @param request: Request instance for GetTopic.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetTopicRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetTopicResponse`
        def GetTopic(request)
          body = send_request('GetTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTopicResponse.new
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

        # 获取Topic列表

        # @param request: Request instance for GetTopics.
        # @type request: :class:`Tencentcloud::iot::V20180123::GetTopicsRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::GetTopicsResponse`
        def GetTopics(request)
          body = send_request('GetTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTopicsResponse.new
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

        # 提供下发控制指令到指定设备的能力，该接口适用于使用高级版类型的产品。

        # @param request: Request instance for IssueDeviceControl.
        # @type request: :class:`Tencentcloud::iot::V20180123::IssueDeviceControlRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::IssueDeviceControlResponse`
        def IssueDeviceControl(request)
          body = send_request('IssueDeviceControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IssueDeviceControlResponse.new
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

        # 提供向指定的Topic发布消息的能力，常用于向设备下发控制指令。该接口只适用于产品版本为“基础版”类型的产品，使用高级版的产品需使用“下发设备控制指令”接口

        # @param request: Request instance for PublishMsg.
        # @type request: :class:`Tencentcloud::iot::V20180123::PublishMsgRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::PublishMsgResponse`
        def PublishMsg(request)
          body = send_request('PublishMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishMsgResponse.new
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

        # 重置设备操作，将会为设备生成新的证书及清空最新数据，需谨慎操作。

        # @param request: Request instance for ResetDevice.
        # @type request: :class:`Tencentcloud::iot::V20180123::ResetDeviceRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::ResetDeviceResponse`
        def ResetDevice(request)
          body = send_request('ResetDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetDeviceResponse.new
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

        # 业务无客户使用，下线接口。

        # 取消子设备产品与网关设备产品的关联

        # @param request: Request instance for UnassociateSubDeviceFromGatewayProduct.
        # @type request: :class:`Tencentcloud::iot::V20180123::UnassociateSubDeviceFromGatewayProductRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::UnassociateSubDeviceFromGatewayProductResponse`
        def UnassociateSubDeviceFromGatewayProduct(request)
          body = send_request('UnassociateSubDeviceFromGatewayProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnassociateSubDeviceFromGatewayProductResponse.new
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

        # 提供修改产品信息及数据模板的能力。

        # @param request: Request instance for UpdateProduct.
        # @type request: :class:`Tencentcloud::iot::V20180123::UpdateProductRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::UpdateProductResponse`
        def UpdateProduct(request)
          body = send_request('UpdateProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProductResponse.new
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

        # 更新规则

        # @param request: Request instance for UpdateRule.
        # @type request: :class:`Tencentcloud::iot::V20180123::UpdateRuleRequest`
        # @rtype: :class:`Tencentcloud::iot::V20180123::UpdateRuleResponse`
        def UpdateRule(request)
          body = send_request('UpdateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRuleResponse.new
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