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
  module Iotcloud
    module V20210408
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-04-08'
            api_endpoint = 'iotcloud.tencentcloudapi.com'
            sdk_version = 'IOTCLOUD_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（CreateDevice）用于新建一个物联网通信设备。

        # @param request: Request instance for CreateDevice.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::CreateDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::CreateDeviceResponse`
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

        # 创建私有CA证书

        # @param request: Request instance for CreatePrivateCA.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::CreatePrivateCARequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::CreatePrivateCAResponse`
        def CreatePrivateCA(request)
          body = send_request('CreatePrivateCA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivateCAResponse.new
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

        # 本接口（DeleteDevice）用于删除物联网通信设备。

        # @param request: Request instance for DeleteDevice.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DeleteDeviceResponse`
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

        # 删除私有CA证书

        # @param request: Request instance for DeletePrivateCA.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DeletePrivateCARequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DeletePrivateCAResponse`
        def DeletePrivateCA(request)
          body = send_request('DeletePrivateCA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivateCAResponse.new
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

        # 本接口（DeleteProduct）用于删除一个物联网通信产品

        # @param request: Request instance for DeleteProduct.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DeleteProductRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DeleteProductResponse`
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

        # 删除产品的私有CA证书

        # @param request: Request instance for DeleteProductPrivateCA.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DeleteProductPrivateCARequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DeleteProductPrivateCAResponse`
        def DeleteProductPrivateCA(request)
          body = send_request('DeleteProductPrivateCA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProductPrivateCAResponse.new
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

        # 本接口（DescribeDevice）用于查看设备信息

        # @param request: Request instance for DescribeDevice.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceResponse`
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

        # 本接口（DescribeDevices）用于查询物联网通信设备的设备列表。

        # @param request: Request instance for DescribeDevices.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeDevicesResponse`
        def DescribeDevices(request)
          body = send_request('DescribeDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicesResponse.new
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

        # 查询私有化CA信息

        # @param request: Request instance for DescribePrivateCA.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribePrivateCARequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribePrivateCAResponse`
        def DescribePrivateCA(request)
          body = send_request('DescribePrivateCA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateCAResponse.new
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

        # 查询私有CA绑定的产品列表

        # @param request: Request instance for DescribePrivateCABindedProducts.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribePrivateCABindedProductsRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribePrivateCABindedProductsResponse`
        def DescribePrivateCABindedProducts(request)
          body = send_request('DescribePrivateCABindedProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateCABindedProductsResponse.new
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

        # 查询私有CA证书列表

        # @param request: Request instance for DescribePrivateCAs.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribePrivateCAsRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribePrivateCAsResponse`
        def DescribePrivateCAs(request)
          body = send_request('DescribePrivateCAs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateCAsResponse.new
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

        # 本接口（DescribeProduct）用于查看产品详情

        # @param request: Request instance for DescribeProduct.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductResponse`
        def DescribeProduct(request)
          body = send_request('DescribeProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductResponse.new
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

        # 查询产品绑定的CA证书

        # @param request: Request instance for DescribeProductCA.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductCARequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductCAResponse`
        def DescribeProductCA(request)
          body = send_request('DescribeProductCA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductCAResponse.new
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

        # 本接口（ListLog）用于查看日志信息

        # @param request: Request instance for ListLog.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::ListLogRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::ListLogResponse`
        def ListLog(request)
          body = send_request('ListLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListLogResponse.new
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

        # 获取日志内容列表

        # @param request: Request instance for ListLogPayload.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::ListLogPayloadRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::ListLogPayloadResponse`
        def ListLogPayload(request)
          body = send_request('ListLogPayload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListLogPayloadResponse.new
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

        # 获取设备上报的日志

        # @param request: Request instance for ListSDKLog.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::ListSDKLogRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::ListSDKLogResponse`
        def ListSDKLog(request)
          body = send_request('ListSDKLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSDKLogResponse.new
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
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::PublishBroadcastMessageRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::PublishBroadcastMessageResponse`
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

        # 批量设置产品禁用状态

        # @param request: Request instance for SetProductsForbiddenStatus.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::SetProductsForbiddenStatusRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::SetProductsForbiddenStatusResponse`
        def SetProductsForbiddenStatus(request)
          body = send_request('SetProductsForbiddenStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetProductsForbiddenStatusResponse.new
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

        # 设置设备上报的日志级别

        # @param request: Request instance for UpdateDeviceLogLevel.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UpdateDeviceLogLevelRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UpdateDeviceLogLevelResponse`
        def UpdateDeviceLogLevel(request)
          body = send_request('UpdateDeviceLogLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDeviceLogLevelResponse.new
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

        # 本接口（UpdateDevicePSK）用于更新设备的PSK

        # @param request: Request instance for UpdateDevicePSK.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UpdateDevicePSKRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UpdateDevicePSKResponse`
        def UpdateDevicePSK(request)
          body = send_request('UpdateDevicePSK', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDevicePSKResponse.new
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

        # 批量启用或者禁用设备

        # @param request: Request instance for UpdateDevicesEnableState.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UpdateDevicesEnableStateRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UpdateDevicesEnableStateResponse`
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

        # 更新私有CA证书

        # @param request: Request instance for UpdatePrivateCA.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UpdatePrivateCARequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UpdatePrivateCAResponse`
        def UpdatePrivateCA(request)
          body = send_request('UpdatePrivateCA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdatePrivateCAResponse.new
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

        # 更新产品动态注册的配置

        # @param request: Request instance for UpdateProductDynamicRegister.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UpdateProductDynamicRegisterRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UpdateProductDynamicRegisterResponse`
        def UpdateProductDynamicRegister(request)
          body = send_request('UpdateProductDynamicRegister', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProductDynamicRegisterResponse.new
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

        # 更新产品的私有CA

        # @param request: Request instance for UpdateProductPrivateCA.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UpdateProductPrivateCARequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UpdateProductPrivateCAResponse`
        def UpdateProductPrivateCA(request)
          body = send_request('UpdateProductPrivateCA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProductPrivateCAResponse.new
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