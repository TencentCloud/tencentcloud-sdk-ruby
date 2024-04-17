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
  module Iotexplorer
    module V20190423
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-04-23'
            api_endpoint = 'iotexplorer.tencentcloudapi.com'
            sdk_version = 'IOTEXPLORER_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 绑定云存用户

        # @param request: Request instance for BindCloudStorageUser.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::BindCloudStorageUserRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::BindCloudStorageUserResponse`
        def BindCloudStorageUser(request)
          body = send_request('BindCloudStorageUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindCloudStorageUserResponse.new
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

        # 批量绑定子设备

        # @param request: Request instance for BindDevices.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::BindDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::BindDevicesResponse`
        def BindDevices(request)
          body = send_request('BindDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindDevicesResponse.new
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

        # 批量绑定子产品

        # @param request: Request instance for BindProducts.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::BindProductsRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::BindProductsResponse`
        def BindProducts(request)
          body = send_request('BindProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindProductsResponse.new
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

        # 提供给用户异步调用设备行为的能力

        # @param request: Request instance for CallDeviceActionAsync.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CallDeviceActionAsyncRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CallDeviceActionAsyncResponse`
        def CallDeviceActionAsync(request)
          body = send_request('CallDeviceActionAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CallDeviceActionAsyncResponse.new
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

        # 为用户提供同步调用设备行为的能力。

        # @param request: Request instance for CallDeviceActionSync.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CallDeviceActionSyncRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CallDeviceActionSyncResponse`
        def CallDeviceActionSync(request)
          body = send_request('CallDeviceActionSync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CallDeviceActionSyncResponse.new
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

        # 根据设备产品ID、设备名称，设置控制设备的属性数据。

        # @param request: Request instance for ControlDeviceData.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ControlDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ControlDeviceDataResponse`
        def ControlDeviceData(request)
          body = send_request('ControlDeviceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlDeviceDataResponse.new
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

        # 用于新建批量生产设备

        # @param request: Request instance for CreateBatchProduction.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateBatchProductionRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateBatchProductionResponse`
        def CreateBatchProduction(request)
          body = send_request('CreateBatchProduction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBatchProductionResponse.new
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

        # 创建设备

        # @param request: Request instance for CreateDevice.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateDeviceResponse`
        def CreateDevice(request)
          body = send_request('CreateDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeviceResponse.new
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

        # 创建围栏绑定信息

        # @param request: Request instance for CreateFenceBind.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateFenceBindRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateFenceBindResponse`
        def CreateFenceBind(request)
          body = send_request('CreateFenceBind', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFenceBindResponse.new
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

        # 开通云存服务

        # @param request: Request instance for CreateIotVideoCloudStorage.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateIotVideoCloudStorageRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateIotVideoCloudStorageResponse`
        def CreateIotVideoCloudStorage(request)
          body = send_request('CreateIotVideoCloudStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIotVideoCloudStorageResponse.new
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

        # 创建 LoRa 自定义频点

        # @param request: Request instance for CreateLoRaFrequency.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateLoRaFrequencyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateLoRaFrequencyResponse`
        def CreateLoRaFrequency(request)
          body = send_request('CreateLoRaFrequency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoRaFrequencyResponse.new
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

        # 创建新 LoRa 网关设备接口

        # @param request: Request instance for CreateLoRaGateway.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateLoRaGatewayRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateLoRaGatewayResponse`
        def CreateLoRaGateway(request)
          body = send_request('CreateLoRaGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoRaGatewayResponse.new
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

        # 创建围栏

        # @param request: Request instance for CreatePositionFence.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreatePositionFenceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreatePositionFenceResponse`
        def CreatePositionFence(request)
          body = send_request('CreatePositionFence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePositionFenceResponse.new
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

        # 创建位置空间

        # @param request: Request instance for CreatePositionSpace.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreatePositionSpaceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreatePositionSpaceResponse`
        def CreatePositionSpace(request)
          body = send_request('CreatePositionSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePositionSpaceResponse.new
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

        # 为用户提供新建项目的能力，用于集中管理产品和应用。

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateProjectResponse`
        def CreateProject(request)
          body = send_request('CreateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProjectResponse.new
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

        # 为用户提供新建产品的能力，用于管理用户的设备

        # @param request: Request instance for CreateStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateStudioProductResponse`
        def CreateStudioProduct(request)
          body = send_request('CreateStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStudioProductResponse.new
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

        # 本接口（CreateTopicPolicy）用于创建一个Topic

        # @param request: Request instance for CreateTopicPolicy.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateTopicPolicyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateTopicPolicyResponse`
        def CreateTopicPolicy(request)
          body = send_request('CreateTopicPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTopicPolicyResponse.new
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

        # 创建规则

        # @param request: Request instance for CreateTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::CreateTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::CreateTopicRuleResponse`
        def CreateTopicRule(request)
          body = send_request('CreateTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTopicRuleResponse.new
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

        # 删除云存事件

        # @param request: Request instance for DeleteCloudStorageEvent.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteCloudStorageEventRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteCloudStorageEventResponse`
        def DeleteCloudStorageEvent(request)
          body = send_request('DeleteCloudStorageEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudStorageEventResponse.new
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

        # 删除设备

        # @param request: Request instance for DeleteDevice.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteDeviceResponse`
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

        # 批量删除设备

        # @param request: Request instance for DeleteDevices.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteDevicesResponse`
        def DeleteDevices(request)
          body = send_request('DeleteDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDevicesResponse.new
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

        # 删除围栏绑定信息

        # @param request: Request instance for DeleteFenceBind.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteFenceBindRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteFenceBindResponse`
        def DeleteFenceBind(request)
          body = send_request('DeleteFenceBind', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFenceBindResponse.new
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

        # 提供删除LoRa自定义频点的能力

        # @param request: Request instance for DeleteLoRaFrequency.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteLoRaFrequencyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteLoRaFrequencyResponse`
        def DeleteLoRaFrequency(request)
          body = send_request('DeleteLoRaFrequency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoRaFrequencyResponse.new
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

        # 删除  LoRa 网关的接口

        # @param request: Request instance for DeleteLoRaGateway.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteLoRaGatewayRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteLoRaGatewayResponse`
        def DeleteLoRaGateway(request)
          body = send_request('DeleteLoRaGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoRaGatewayResponse.new
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

        # 删除围栏

        # @param request: Request instance for DeletePositionFence.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeletePositionFenceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeletePositionFenceResponse`
        def DeletePositionFence(request)
          body = send_request('DeletePositionFence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePositionFenceResponse.new
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

        # 删除位置空间

        # @param request: Request instance for DeletePositionSpace.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeletePositionSpaceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeletePositionSpaceResponse`
        def DeletePositionSpace(request)
          body = send_request('DeletePositionSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePositionSpaceResponse.new
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

        # 提供删除某个项目的能力

        # @param request: Request instance for DeleteProject.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteProjectRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteProjectResponse`
        def DeleteProject(request)
          body = send_request('DeleteProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectResponse.new
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

        # 提供删除某个项目下产品的能力

        # @param request: Request instance for DeleteStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteStudioProductResponse`
        def DeleteStudioProduct(request)
          body = send_request('DeleteStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStudioProductResponse.new
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

        # 本接口（DeleteTopicPolicy）用于删除Topic

        # @param request: Request instance for DeleteTopicPolicy.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteTopicPolicyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteTopicPolicyResponse`
        def DeleteTopicPolicy(request)
          body = send_request('DeleteTopicPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicPolicyResponse.new
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

        # @param request: Request instance for DeleteTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DeleteTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DeleteTopicRuleResponse`
        def DeleteTopicRule(request)
          body = send_request('DeleteTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicRuleResponse.new
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

        # 获取量产详情信息。

        # @param request: Request instance for DescribeBatchProduction.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeBatchProductionRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeBatchProductionResponse`
        def DescribeBatchProduction(request)
          body = send_request('DescribeBatchProduction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchProductionResponse.new
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

        # 获取网关产品已经绑定的子产品

        # @param request: Request instance for DescribeBindedProducts.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeBindedProductsRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeBindedProductsResponse`
        def DescribeBindedProducts(request)
          body = send_request('DescribeBindedProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindedProductsResponse.new
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

        # 获取设备云存服务详情

        # @param request: Request instance for DescribeCloudStorage.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageResponse`
        def DescribeCloudStorage(request)
          body = send_request('DescribeCloudStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageResponse.new
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

        # 查询指定设备的云存 AI 服务开通状态与参数配置

        # @param request: Request instance for DescribeCloudStorageAIService.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageAIServiceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageAIServiceResponse`
        def DescribeCloudStorageAIService(request)
          body = send_request('DescribeCloudStorageAIService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageAIServiceResponse.new
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

        # 查询云存AI分析回调配置

        # @param request: Request instance for DescribeCloudStorageAIServiceCallback.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageAIServiceCallbackRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageAIServiceCallbackResponse`
        def DescribeCloudStorageAIServiceCallback(request)
          body = send_request('DescribeCloudStorageAIServiceCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageAIServiceCallbackResponse.new
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

        # 查询指定设备的云存 AI 分析任务列表

        # @param request: Request instance for DescribeCloudStorageAIServiceTasks.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageAIServiceTasksRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageAIServiceTasksResponse`
        def DescribeCloudStorageAIServiceTasks(request)
          body = send_request('DescribeCloudStorageAIServiceTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageAIServiceTasksResponse.new
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

        # 获取具有云存的日期

        # @param request: Request instance for DescribeCloudStorageDate.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageDateRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageDateResponse`
        def DescribeCloudStorageDate(request)
          body = send_request('DescribeCloudStorageDate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageDateResponse.new
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

        # 拉取云存事件列表

        # @param request: Request instance for DescribeCloudStorageEvents.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageEventsRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageEventsResponse`
        def DescribeCloudStorageEvents(request)
          body = send_request('DescribeCloudStorageEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageEventsResponse.new
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

        # 拉取多个云存事件缩略图

        # @param request: Request instance for DescribeCloudStorageMultiThumbnail.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageMultiThumbnailRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageMultiThumbnailResponse`
        def DescribeCloudStorageMultiThumbnail(request)
          body = send_request('DescribeCloudStorageMultiThumbnail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageMultiThumbnailResponse.new
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

        # 查询云存服务详情

        # @param request: Request instance for DescribeCloudStorageOrder.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageOrderRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageOrderResponse`
        def DescribeCloudStorageOrder(request)
          body = send_request('DescribeCloudStorageOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageOrderResponse.new
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

        # 获取云存套餐包消耗详细记录

        # @param request: Request instance for DescribeCloudStoragePackageConsumeDetails.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStoragePackageConsumeDetailsRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStoragePackageConsumeDetailsResponse`
        def DescribeCloudStoragePackageConsumeDetails(request)
          body = send_request('DescribeCloudStoragePackageConsumeDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStoragePackageConsumeDetailsResponse.new
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

        # 获取云存套餐包消耗统计

        # @param request: Request instance for DescribeCloudStoragePackageConsumeStats.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStoragePackageConsumeStatsRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStoragePackageConsumeStatsResponse`
        def DescribeCloudStoragePackageConsumeStats(request)
          body = send_request('DescribeCloudStoragePackageConsumeStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStoragePackageConsumeStatsResponse.new
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

        # 获取设备图片流数据

        # @param request: Request instance for DescribeCloudStorageStreamData.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageStreamDataRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageStreamDataResponse`
        def DescribeCloudStorageStreamData(request)
          body = send_request('DescribeCloudStorageStreamData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageStreamDataResponse.new
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

        # 拉取云存事件缩略图

        # @param request: Request instance for DescribeCloudStorageThumbnail.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageThumbnailRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageThumbnailResponse`
        def DescribeCloudStorageThumbnail(request)
          body = send_request('DescribeCloudStorageThumbnail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageThumbnailResponse.new
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

        # 批量拉取云存事件缩略图

        # @param request: Request instance for DescribeCloudStorageThumbnailList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageThumbnailListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageThumbnailListResponse`
        def DescribeCloudStorageThumbnailList(request)
          body = send_request('DescribeCloudStorageThumbnailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageThumbnailListResponse.new
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

        # 获取某一天云存时间轴

        # @param request: Request instance for DescribeCloudStorageTime.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageTimeRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageTimeResponse`
        def DescribeCloudStorageTime(request)
          body = send_request('DescribeCloudStorageTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageTimeResponse.new
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

        # 拉取云存用户列表

        # @param request: Request instance for DescribeCloudStorageUsers.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageUsersRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeCloudStorageUsersResponse`
        def DescribeCloudStorageUsers(request)
          body = send_request('DescribeCloudStorageUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudStorageUsersResponse.new
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

        # 用于查看某个设备的详细信息

        # @param request: Request instance for DescribeDevice.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceResponse`
        def DescribeDevice(request)
          body = send_request('DescribeDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceResponse.new
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

        # 查询设备绑定的网关设备

        # @param request: Request instance for DescribeDeviceBindGateway.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceBindGatewayRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceBindGatewayResponse`
        def DescribeDeviceBindGateway(request)
          body = send_request('DescribeDeviceBindGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceBindGatewayResponse.new
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

        # 根据设备产品ID、设备名称，获取设备上报的属性数据。

        # @param request: Request instance for DescribeDeviceData.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceDataResponse`
        def DescribeDeviceData(request)
          body = send_request('DescribeDeviceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceDataResponse.new
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

        # 获取设备在指定时间范围内上报的历史数据。

        # @param request: Request instance for DescribeDeviceDataHistory.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceDataHistoryRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceDataHistoryResponse`
        def DescribeDeviceDataHistory(request)
          body = send_request('DescribeDeviceDataHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceDataHistoryResponse.new
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

        # 获取设备固件信息

        # @param request: Request instance for DescribeDeviceFirmWare.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceFirmWareRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceFirmWareResponse`
        def DescribeDeviceFirmWare(request)
          body = send_request('DescribeDeviceFirmWare', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceFirmWareResponse.new
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

        # 获取实时位置解析

        # @param request: Request instance for DescribeDeviceLocationSolve.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceLocationSolveRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDeviceLocationSolveResponse`
        def DescribeDeviceLocationSolve(request)
          body = send_request('DescribeDeviceLocationSolve', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceLocationSolveResponse.new
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

        # 根据设备信息拉取有效套餐列表

        # @param request: Request instance for DescribeDevicePackages.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDevicePackagesRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDevicePackagesResponse`
        def DescribeDevicePackages(request)
          body = send_request('DescribeDevicePackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicePackagesResponse.new
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

        # 获取设备位置列表

        # @param request: Request instance for DescribeDevicePositionList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDevicePositionListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeDevicePositionListResponse`
        def DescribeDevicePositionList(request)
          body = send_request('DescribeDevicePositionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicePositionListResponse.new
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

        # 获取围栏绑定信息列表

        # @param request: Request instance for DescribeFenceBindList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeFenceBindListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeFenceBindListResponse`
        def DescribeFenceBindList(request)
          body = send_request('DescribeFenceBindList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFenceBindListResponse.new
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

        # 获取围栏告警事件列表

        # @param request: Request instance for DescribeFenceEventList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeFenceEventListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeFenceEventListResponse`
        def DescribeFenceEventList(request)
          body = send_request('DescribeFenceEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFenceEventListResponse.new
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

        # 查询固件升级任务列表

        # @param request: Request instance for DescribeFirmwareTask.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeFirmwareTaskResponse`
        def DescribeFirmwareTask(request)
          body = send_request('DescribeFirmwareTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirmwareTaskResponse.new
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

        # 获取网关绑定的子设备列表

        # @param request: Request instance for DescribeGatewayBindDevices.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeGatewayBindDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeGatewayBindDevicesResponse`
        def DescribeGatewayBindDevices(request)
          body = send_request('DescribeGatewayBindDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayBindDevicesResponse.new
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

        # 查询绑定到家庭的网关设备的子设备列表

        # @param request: Request instance for DescribeGatewaySubDeviceList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeGatewaySubDeviceListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeGatewaySubDeviceListResponse`
        def DescribeGatewaySubDeviceList(request)
          body = send_request('DescribeGatewaySubDeviceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewaySubDeviceListResponse.new
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

        # 用于获取网关可绑定或解绑的子产品

        # @param request: Request instance for DescribeGatewaySubProducts.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeGatewaySubProductsRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeGatewaySubProductsResponse`
        def DescribeGatewaySubProducts(request)
          body = send_request('DescribeGatewaySubProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewaySubProductsResponse.new
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

        # 公共实例过期时间 0001-01-01T00:00:00Z，公共实例是永久有效

        # @param request: Request instance for DescribeInstance.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeInstanceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeInstanceResponse`
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

        # 提供查询LoRa自定义频点详情的能力

        # @param request: Request instance for DescribeLoRaFrequency.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeLoRaFrequencyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeLoRaFrequencyResponse`
        def DescribeLoRaFrequency(request)
          body = send_request('DescribeLoRaFrequency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoRaFrequencyResponse.new
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

        # 查询产品配置的数据模板信息

        # @param request: Request instance for DescribeModelDefinition.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeModelDefinitionRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeModelDefinitionResponse`
        def DescribeModelDefinition(request)
          body = send_request('DescribeModelDefinition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelDefinitionResponse.new
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

        # 查询套餐消耗记录详情

        # @param request: Request instance for DescribePackageConsumeTask.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribePackageConsumeTaskRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribePackageConsumeTaskResponse`
        def DescribePackageConsumeTask(request)
          body = send_request('DescribePackageConsumeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePackageConsumeTaskResponse.new
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

        # 查询套餐消耗记录列表

        # @param request: Request instance for DescribePackageConsumeTasks.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribePackageConsumeTasksRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribePackageConsumeTasksResponse`
        def DescribePackageConsumeTasks(request)
          body = send_request('DescribePackageConsumeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePackageConsumeTasksResponse.new
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

        # 获取围栏列表

        # @param request: Request instance for DescribePositionFenceList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribePositionFenceListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribePositionFenceListResponse`
        def DescribePositionFenceList(request)
          body = send_request('DescribePositionFenceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePositionFenceListResponse.new
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

        # 查询指定产品的云存 AI 服务开通状态

        # @param request: Request instance for DescribeProductCloudStorageAIService.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeProductCloudStorageAIServiceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeProductCloudStorageAIServiceResponse`
        def DescribeProductCloudStorageAIService(request)
          body = send_request('DescribeProductCloudStorageAIService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductCloudStorageAIServiceResponse.new
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

        # 查询项目详情

        # @param request: Request instance for DescribeProject.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeProjectRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeProjectResponse`
        def DescribeProject(request)
          body = send_request('DescribeProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectResponse.new
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

        # 获取位置空间中围栏告警事件列表

        # @param request: Request instance for DescribeSpaceFenceEventList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeSpaceFenceEventListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeSpaceFenceEventListResponse`
        def DescribeSpaceFenceEventList(request)
          body = send_request('DescribeSpaceFenceEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpaceFenceEventListResponse.new
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

        # 提供查看产品详细信息的能力，包括产品的ID、数据协议、认证类型等重要参数

        # @param request: Request instance for DescribeStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeStudioProductResponse`
        def DescribeStudioProduct(request)
          body = send_request('DescribeStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStudioProductResponse.new
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

        # 本接口（DescribeTopicPolicy）用于查看Topic详细信息

        # @param request: Request instance for DescribeTopicPolicy.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeTopicPolicyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeTopicPolicyResponse`
        def DescribeTopicPolicy(request)
          body = send_request('DescribeTopicPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicPolicyResponse.new
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

        # 获取规则信息

        # @param request: Request instance for DescribeTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DescribeTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DescribeTopicRuleResponse`
        def DescribeTopicRule(request)
          body = send_request('DescribeTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicRuleResponse.new
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

        # 直接绑定设备和家庭

        # @param request: Request instance for DirectBindDeviceInFamily.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DirectBindDeviceInFamilyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DirectBindDeviceInFamilyResponse`
        def DirectBindDeviceInFamily(request)
          body = send_request('DirectBindDeviceInFamily', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DirectBindDeviceInFamilyResponse.new
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

        # @param request: Request instance for DisableTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::DisableTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::DisableTopicRuleResponse`
        def DisableTopicRule(request)
          body = send_request('DisableTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableTopicRuleResponse.new
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

        # 启用规则

        # @param request: Request instance for EnableTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::EnableTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::EnableTopicRuleResponse`
        def EnableTopicRule(request)
          body = send_request('EnableTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableTopicRuleResponse.new
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

        # 无

        # @param request: Request instance for GenSingleDeviceSignatureOfPublic.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GenSingleDeviceSignatureOfPublicRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GenSingleDeviceSignatureOfPublicResponse`
        def GenSingleDeviceSignatureOfPublic(request)
          body = send_request('GenSingleDeviceSignatureOfPublic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenSingleDeviceSignatureOfPublicResponse.new
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

        # 获取视频防盗链播放URL

        # @param request: Request instance for GenerateSignedVideoURL.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GenerateSignedVideoURLRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GenerateSignedVideoURLResponse`
        def GenerateSignedVideoURL(request)
          body = send_request('GenerateSignedVideoURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateSignedVideoURLResponse.new
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

        # 列出量产数据列表信息。

        # @param request: Request instance for GetBatchProductionsList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetBatchProductionsListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetBatchProductionsListResponse`
        def GetBatchProductionsList(request)
          body = send_request('GetBatchProductionsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBatchProductionsListResponse.new
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

        # 本接口（GetCOSURL）用于获取固件COS存储的上传请求URL地址

        # @param request: Request instance for GetCOSURL.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetCOSURLRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetCOSURLResponse`
        def GetCOSURL(request)
          body = send_request('GetCOSURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCOSURLResponse.new
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

        # 用于查询某个产品下的设备列表

        # @param request: Request instance for GetDeviceList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetDeviceListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetDeviceListResponse`
        def GetDeviceList(request)
          body = send_request('GetDeviceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceListResponse.new
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

        # 获取设备历史位置

        # @param request: Request instance for GetDeviceLocationHistory.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetDeviceLocationHistoryRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetDeviceLocationHistoryResponse`
        def GetDeviceLocationHistory(request)
          body = send_request('GetDeviceLocationHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceLocationHistoryResponse.new
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

        # 拉取设备统计汇总数据

        # @param request: Request instance for GetDeviceSumStatistics.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetDeviceSumStatisticsRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetDeviceSumStatisticsResponse`
        def GetDeviceSumStatistics(request)
          body = send_request('GetDeviceSumStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceSumStatisticsResponse.new
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

        # 用于获取设备绑定的用户列表

        # @param request: Request instance for GetFamilyDeviceUserList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetFamilyDeviceUserListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetFamilyDeviceUserListResponse`
        def GetFamilyDeviceUserList(request)
          body = send_request('GetFamilyDeviceUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFamilyDeviceUserListResponse.new
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

        # 获取指定网关设备的子设备列表

        # @param request: Request instance for GetGatewaySubDeviceList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetGatewaySubDeviceListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetGatewaySubDeviceListResponse`
        def GetGatewaySubDeviceList(request)
          body = send_request('GetGatewaySubDeviceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGatewaySubDeviceListResponse.new
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

        # 获取 LoRa 网关列表接口

        # @param request: Request instance for GetLoRaGatewayList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetLoRaGatewayListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetLoRaGatewayListResponse`
        def GetLoRaGatewayList(request)
          body = send_request('GetLoRaGatewayList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLoRaGatewayListResponse.new
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

        # 获取位置空间列表

        # @param request: Request instance for GetPositionSpaceList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetPositionSpaceListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetPositionSpaceListResponse`
        def GetPositionSpaceList(request)
          body = send_request('GetPositionSpaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPositionSpaceListResponse.new
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

        # 提供查询用户所创建的项目列表查询功能。

        # @param request: Request instance for GetProjectList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetProjectListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetProjectListResponse`
        def GetProjectList(request)
          body = send_request('GetProjectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetProjectListResponse.new
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

        # 提供查询某个项目下所有产品信息的能力。

        # @param request: Request instance for GetStudioProductList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetStudioProductListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetStudioProductListResponse`
        def GetStudioProductList(request)
          body = send_request('GetStudioProductList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetStudioProductListResponse.new
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

        # 获取规则列表

        # @param request: Request instance for GetTopicRuleList.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::GetTopicRuleListRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::GetTopicRuleListResponse`
        def GetTopicRuleList(request)
          body = send_request('GetTopicRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTopicRuleListResponse.new
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

        # 继承云存用户

        # @param request: Request instance for InheritCloudStorageUser.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::InheritCloudStorageUserRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::InheritCloudStorageUserResponse`
        def InheritCloudStorageUser(request)
          body = send_request('InheritCloudStorageUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InheritCloudStorageUserResponse.new
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

        # 获取设备的历史事件

        # @param request: Request instance for ListEventHistory.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ListEventHistoryRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ListEventHistoryResponse`
        def ListEventHistory(request)
          body = send_request('ListEventHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListEventHistoryResponse.new
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

        # 本接口（ListFirmwares）用于获取固件列表

        # @param request: Request instance for ListFirmwares.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ListFirmwaresRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ListFirmwaresResponse`
        def ListFirmwares(request)
          body = send_request('ListFirmwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListFirmwaresResponse.new
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

        # 本接口（ListTopicPolicy）用于获取Topic列表

        # @param request: Request instance for ListTopicPolicy.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ListTopicPolicyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ListTopicPolicyResponse`
        def ListTopicPolicy(request)
          body = send_request('ListTopicPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTopicPolicyResponse.new
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

        # 修改指定设备的云存 AI 服务开通状态与参数配置

        # @param request: Request instance for ModifyCloudStorageAIService.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyCloudStorageAIServiceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyCloudStorageAIServiceResponse`
        def ModifyCloudStorageAIService(request)
          body = send_request('ModifyCloudStorageAIService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudStorageAIServiceResponse.new
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

        # 修改云存AI分析回调配置

        # @param request: Request instance for ModifyCloudStorageAIServiceCallback.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyCloudStorageAIServiceCallbackRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyCloudStorageAIServiceCallbackResponse`
        def ModifyCloudStorageAIServiceCallback(request)
          body = send_request('ModifyCloudStorageAIServiceCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudStorageAIServiceCallbackResponse.new
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

        # 更新围栏绑定信息

        # @param request: Request instance for ModifyFenceBind.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyFenceBindRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyFenceBindResponse`
        def ModifyFenceBind(request)
          body = send_request('ModifyFenceBind', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFenceBindResponse.new
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

        # 修改LoRa自定义频点

        # @param request: Request instance for ModifyLoRaFrequency.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyLoRaFrequencyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyLoRaFrequencyResponse`
        def ModifyLoRaFrequency(request)
          body = send_request('ModifyLoRaFrequency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoRaFrequencyResponse.new
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

        # 修改 LoRa 网关信息

        # @param request: Request instance for ModifyLoRaGateway.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyLoRaGatewayRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyLoRaGatewayResponse`
        def ModifyLoRaGateway(request)
          body = send_request('ModifyLoRaGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoRaGatewayResponse.new
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

        # 提供修改产品的数据模板的能力

        # @param request: Request instance for ModifyModelDefinition.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyModelDefinitionRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyModelDefinitionResponse`
        def ModifyModelDefinition(request)
          body = send_request('ModifyModelDefinition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModelDefinitionResponse.new
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

        # 更新围栏

        # @param request: Request instance for ModifyPositionFence.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyPositionFenceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyPositionFenceResponse`
        def ModifyPositionFence(request)
          body = send_request('ModifyPositionFence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPositionFenceResponse.new
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

        # 更新位置空间

        # @param request: Request instance for ModifyPositionSpace.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyPositionSpaceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyPositionSpaceResponse`
        def ModifyPositionSpace(request)
          body = send_request('ModifyPositionSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPositionSpaceResponse.new
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

        # 修改指定产品的云存 AI 服务开通状态

        # @param request: Request instance for ModifyProductCloudStorageAIService.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyProductCloudStorageAIServiceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyProductCloudStorageAIServiceResponse`
        def ModifyProductCloudStorageAIService(request)
          body = send_request('ModifyProductCloudStorageAIService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProductCloudStorageAIServiceResponse.new
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

        # 修改项目

        # @param request: Request instance for ModifyProject.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyProjectRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyProjectResponse`
        def ModifyProject(request)
          body = send_request('ModifyProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectResponse.new
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

        # 更新位置空间产品属性

        # @param request: Request instance for ModifySpaceProperty.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifySpacePropertyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifySpacePropertyResponse`
        def ModifySpaceProperty(request)
          body = send_request('ModifySpaceProperty', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySpacePropertyResponse.new
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

        # 提供修改产品的名称和描述等信息的能力，对于已发布产品不允许进行修改。

        # @param request: Request instance for ModifyStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyStudioProductResponse`
        def ModifyStudioProduct(request)
          body = send_request('ModifyStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStudioProductResponse.new
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

        # 本接口（UpdateTopicPolicy）用于更新Topic信息

        # @param request: Request instance for ModifyTopicPolicy.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyTopicPolicyRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyTopicPolicyResponse`
        def ModifyTopicPolicy(request)
          body = send_request('ModifyTopicPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTopicPolicyResponse.new
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

        # 修改规则

        # @param request: Request instance for ModifyTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ModifyTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ModifyTopicRuleResponse`
        def ModifyTopicRule(request)
          body = send_request('ModifyTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTopicRuleResponse.new
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

        # 发布广播消息

        # @param request: Request instance for PublishBroadcastMessage.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::PublishBroadcastMessageRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::PublishBroadcastMessageResponse`
        def PublishBroadcastMessage(request)
          body = send_request('PublishBroadcastMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishBroadcastMessageResponse.new
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

        # 本接口（PublishMessage）用于使用自定义透传协议进行设备远控

        # @param request: Request instance for PublishMessage.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::PublishMessageRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::PublishMessageResponse`
        def PublishMessage(request)
          body = send_request('PublishMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishMessageResponse.new
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

        # 下发RRPC消息

        # @param request: Request instance for PublishRRPCMessage.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::PublishRRPCMessageRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::PublishRRPCMessageResponse`
        def PublishRRPCMessage(request)
          body = send_request('PublishRRPCMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishRRPCMessageResponse.new
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

        # 产品开发完成并测试通过后，通过发布产品将产品设置为发布状态

        # @param request: Request instance for ReleaseStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ReleaseStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ReleaseStudioProductResponse`
        def ReleaseStudioProduct(request)
          body = send_request('ReleaseStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseStudioProductResponse.new
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

        # 重置云存服务

        # @param request: Request instance for ResetCloudStorage.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ResetCloudStorageRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ResetCloudStorageResponse`
        def ResetCloudStorage(request)
          body = send_request('ResetCloudStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetCloudStorageResponse.new
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

        # 重置云存事件

        # @param request: Request instance for ResetCloudStorageEvent.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::ResetCloudStorageEventRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::ResetCloudStorageEventResponse`
        def ResetCloudStorageEvent(request)
          body = send_request('ResetCloudStorageEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetCloudStorageEventResponse.new
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

        # 搜索位置空间

        # @param request: Request instance for SearchPositionSpace.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::SearchPositionSpaceRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::SearchPositionSpaceResponse`
        def SearchPositionSpace(request)
          body = send_request('SearchPositionSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchPositionSpaceResponse.new
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

        # 提供根据产品名称查找产品的能力

        # @param request: Request instance for SearchStudioProduct.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::SearchStudioProductRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::SearchStudioProductResponse`
        def SearchStudioProduct(request)
          body = send_request('SearchStudioProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchStudioProductResponse.new
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

        # 搜索规则

        # @param request: Request instance for SearchTopicRule.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::SearchTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::SearchTopicRuleResponse`
        def SearchTopicRule(request)
          body = send_request('SearchTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchTopicRuleResponse.new
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

        # 转移云存服务

        # @param request: Request instance for TransferCloudStorage.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::TransferCloudStorageRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::TransferCloudStorageResponse`
        def TransferCloudStorage(request)
          body = send_request('TransferCloudStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransferCloudStorageResponse.new
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

        # 批量解绑子设备

        # @param request: Request instance for UnbindDevices.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::UnbindDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::UnbindDevicesResponse`
        def UnbindDevices(request)
          body = send_request('UnbindDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindDevicesResponse.new
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

        # 批量解绑子产品

        # @param request: Request instance for UnbindProducts.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::UnbindProductsRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::UnbindProductsResponse`
        def UnbindProducts(request)
          body = send_request('UnbindProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindProductsResponse.new
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

        # 批量禁用启用设备

        # @param request: Request instance for UpdateDevicesEnableState.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::UpdateDevicesEnableStateRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::UpdateDevicesEnableStateResponse`
        def UpdateDevicesEnableState(request)
          body = send_request('UpdateDevicesEnableState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDevicesEnableStateResponse.new
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

        # 本接口（UpdateFirmware）用于对指定设备发起固件升级请求

        # @param request: Request instance for UpdateFirmware.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::UpdateFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::UpdateFirmwareResponse`
        def UpdateFirmware(request)
          body = send_request('UpdateFirmware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFirmwareResponse.new
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

        # 本接口（UploadFirmware）用于创建设备固件版本信息，在平台用于固件版本升级、固件资源下发等。

        # @param request: Request instance for UploadFirmware.
        # @type request: :class:`Tencentcloud::iotexplorer::V20190423::UploadFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotexplorer::V20190423::UploadFirmwareResponse`
        def UploadFirmware(request)
          body = send_request('UploadFirmware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadFirmwareResponse.new
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