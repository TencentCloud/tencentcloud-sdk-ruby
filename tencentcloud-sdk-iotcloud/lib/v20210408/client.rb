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


        # 本接口（BatchUpdateFirmware）用于批量更新设备固件

        # @param request: Request instance for BatchUpdateFirmware.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::BatchUpdateFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::BatchUpdateFirmwareResponse`
        def BatchUpdateFirmware(request)
          body = send_request('BatchUpdateFirmware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchUpdateFirmwareResponse.new
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

        # 本接口（BindDevices）用于网关设备批量绑定子设备

        # @param request: Request instance for BindDevices.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::BindDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::BindDevicesResponse`
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

        # 取消设备升级任务

        # @param request: Request instance for CancelDeviceFirmwareTask.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::CancelDeviceFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::CancelDeviceFirmwareTaskResponse`
        def CancelDeviceFirmwareTask(request)
          body = send_request('CancelDeviceFirmwareTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelDeviceFirmwareTaskResponse.new
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

        # 本接口（CreateMultiDevicesTask）用于创建产品级别的批量创建设备任务

        # @param request: Request instance for CreateMultiDevicesTask.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::CreateMultiDevicesTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::CreateMultiDevicesTaskResponse`
        def CreateMultiDevicesTask(request)
          body = send_request('CreateMultiDevicesTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMultiDevicesTaskResponse.new
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

        # 本接口（CreateProduct）用于创建一个新的物联网通信产品

        # @param request: Request instance for CreateProduct.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::CreateProductRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::CreateProductResponse`
        def CreateProduct(request)
          body = send_request('CreateProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProductResponse.new
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

        # 本接口（CreateTaskFileUrl）用于获取产品级任务文件上传链接

        # @param request: Request instance for CreateTaskFileUrl.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::CreateTaskFileUrlRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::CreateTaskFileUrlResponse`
        def CreateTaskFileUrl(request)
          body = send_request('CreateTaskFileUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskFileUrlResponse.new
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
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::CreateTopicPolicyRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::CreateTopicPolicyResponse`
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

        # 本接口（CreateTopicRule）用于创建一个规则

        # @param request: Request instance for CreateTopicRule.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::CreateTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::CreateTopicRuleResponse`
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

        # 本接口（DeleteDeviceResource）用于删除设备资源

        # @param request: Request instance for DeleteDeviceResource.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DeleteDeviceResourceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DeleteDeviceResourceResponse`
        def DeleteDeviceResource(request)
          body = send_request('DeleteDeviceResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceResourceResponse.new
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

        # 本接口（DeleteDeviceShadow）用于删除设备影子

        # @param request: Request instance for DeleteDeviceShadow.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DeleteDeviceShadowRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DeleteDeviceShadowResponse`
        def DeleteDeviceShadow(request)
          body = send_request('DeleteDeviceShadow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceShadowResponse.new
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

        # 本接口（DeleteTopicRule）用于删除规则

        # @param request: Request instance for DeleteTopicRule.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DeleteTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DeleteTopicRuleResponse`
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

        # 获取证书认证类型设备的私钥，刚生成或者重置设备后仅可调用一次

        # @param request: Request instance for DescribeDeviceClientKey.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceClientKeyRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceClientKeyResponse`
        def DescribeDeviceClientKey(request)
          body = send_request('DescribeDeviceClientKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceClientKeyResponse.new
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

        # 本接口（DescribeDeviceResource）用于查询设备资源详情。

        # @param request: Request instance for DescribeDeviceResource.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceResourceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceResourceResponse`
        def DescribeDeviceResource(request)
          body = send_request('DescribeDeviceResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceResourceResponse.new
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

        # 本接口（DescribeDeviceResources）用于查询设备资源列表。

        # @param request: Request instance for DescribeDeviceResources.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceResourcesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceResourcesResponse`
        def DescribeDeviceResources(request)
          body = send_request('DescribeDeviceResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceResourcesResponse.new
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

        # 本接口（DescribeDeviceShadow）用于查询虚拟设备信息。

        # @param request: Request instance for DescribeDeviceShadow.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceShadowRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeDeviceShadowResponse`
        def DescribeDeviceShadow(request)
          body = send_request('DescribeDeviceShadow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceShadowResponse.new
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

        # 查询固件信息

        # @param request: Request instance for DescribeFirmware.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareResponse`
        def DescribeFirmware(request)
          body = send_request('DescribeFirmware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirmwareResponse.new
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

        # 查询固件升级任务详情

        # @param request: Request instance for DescribeFirmwareTask.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTaskResponse`
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

        # 查询固件升级任务的设备列表

        # @param request: Request instance for DescribeFirmwareTaskDevices.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTaskDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTaskDevicesResponse`
        def DescribeFirmwareTaskDevices(request)
          body = send_request('DescribeFirmwareTaskDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirmwareTaskDevicesResponse.new
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

        # 查询固件升级任务状态分布

        # @param request: Request instance for DescribeFirmwareTaskDistribution.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTaskDistributionRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTaskDistributionResponse`
        def DescribeFirmwareTaskDistribution(request)
          body = send_request('DescribeFirmwareTaskDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirmwareTaskDistributionResponse.new
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

        # 查询固件升级任务统计信息

        # @param request: Request instance for DescribeFirmwareTaskStatistics.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTaskStatisticsRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTaskStatisticsResponse`
        def DescribeFirmwareTaskStatistics(request)
          body = send_request('DescribeFirmwareTaskStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirmwareTaskStatisticsResponse.new
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

        # @param request: Request instance for DescribeFirmwareTasks.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTasksRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeFirmwareTasksResponse`
        def DescribeFirmwareTasks(request)
          body = send_request('DescribeFirmwareTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirmwareTasksResponse.new
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

        # 本接口（DescribeGatewayBindDevices）用于获取网关绑定的子设备列表

        # @param request: Request instance for DescribeGatewayBindDevices.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeGatewayBindDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeGatewayBindDevicesResponse`
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

        # 本接口（DescribeProductResource）用于查询产品资源详情。

        # @param request: Request instance for DescribeProductResource.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductResourceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductResourceResponse`
        def DescribeProductResource(request)
          body = send_request('DescribeProductResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductResourceResponse.new
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

        # 本接口（DescribeProductResources）用于查询产品资源列表。

        # @param request: Request instance for DescribeProductResources.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductResourcesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductResourcesResponse`
        def DescribeProductResources(request)
          body = send_request('DescribeProductResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductResourcesResponse.new
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

        # 本接口（DescribeProductTask）用于查看产品级别的任务信息

        # @param request: Request instance for DescribeProductTask.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductTaskResponse`
        def DescribeProductTask(request)
          body = send_request('DescribeProductTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductTaskResponse.new
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

        # 本接口（DescribeProductTasks）用于查看产品级别的任务列表

        # @param request: Request instance for DescribeProductTasks.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductTasksRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductTasksResponse`
        def DescribeProductTasks(request)
          body = send_request('DescribeProductTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductTasksResponse.new
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

        # 本接口（DescribeProducts）用于列出产品列表。

        # @param request: Request instance for DescribeProducts.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductsRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeProductsResponse`
        def DescribeProducts(request)
          body = send_request('DescribeProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductsResponse.new
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

        # 查询推送资源任务统计信息

        # @param request: Request instance for DescribePushResourceTaskStatistics.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribePushResourceTaskStatisticsRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribePushResourceTaskStatisticsResponse`
        def DescribePushResourceTaskStatistics(request)
          body = send_request('DescribePushResourceTaskStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePushResourceTaskStatisticsResponse.new
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

        # 查询资源推送任务列表

        # @param request: Request instance for DescribeResourceTasks.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DescribeResourceTasksRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DescribeResourceTasksResponse`
        def DescribeResourceTasks(request)
          body = send_request('DescribeResourceTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceTasksResponse.new
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

        # 本接口（DisableTopicRule）用于禁用规则

        # @param request: Request instance for DisableTopicRule.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DisableTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DisableTopicRuleResponse`
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

        # 本接口（DownloadDeviceResource）用于下载设备资源

        # @param request: Request instance for DownloadDeviceResource.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::DownloadDeviceResourceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::DownloadDeviceResourceResponse`
        def DownloadDeviceResource(request)
          body = send_request('DownloadDeviceResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadDeviceResourceResponse.new
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

        # 编辑固件信息

        # @param request: Request instance for EditFirmware.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::EditFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::EditFirmwareResponse`
        def EditFirmware(request)
          body = send_request('EditFirmware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditFirmwareResponse.new
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

        # 本接口（EnableTopicRule）用于启用规则

        # @param request: Request instance for EnableTopicRule.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::EnableTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::EnableTopicRuleResponse`
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

        # 本接口（GetAllVersion）用于获取所有的版本列表

        # @param request: Request instance for GetAllVersion.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::GetAllVersionRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::GetAllVersionResponse`
        def GetAllVersion(request)
          body = send_request('GetAllVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAllVersionResponse.new
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

        # 本接口（GetCOSURL）用于获取固件存储在COS的URL

        # @param request: Request instance for GetCOSURL.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::GetCOSURLRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::GetCOSURLResponse`
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

        # 本接口（GetUserResourceInfo）用于查询用户资源使用信息。

        # @param request: Request instance for GetUserResourceInfo.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::GetUserResourceInfoRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::GetUserResourceInfoResponse`
        def GetUserResourceInfo(request)
          body = send_request('GetUserResourceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUserResourceInfoResponse.new
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
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::ListFirmwaresRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::ListFirmwaresResponse`
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

        # 本接口（ListTopicRules）用于分页获取规则列表

        # @param request: Request instance for ListTopicRules.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::ListTopicRulesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::ListTopicRulesResponse`
        def ListTopicRules(request)
          body = send_request('ListTopicRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTopicRulesResponse.new
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

        # 本接口（PublishMessage）用于向某个主题发消息。

        # @param request: Request instance for PublishMessage.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::PublishMessageRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::PublishMessageResponse`
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

        # 发布RRPC消息

        # @param request: Request instance for PublishRRPCMessage.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::PublishRRPCMessageRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::PublishRRPCMessageResponse`
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

        # 本接口（ReplaceTopicRule）用于修改替换规则

        # @param request: Request instance for ReplaceTopicRule.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::ReplaceTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::ReplaceTopicRuleResponse`
        def ReplaceTopicRule(request)
          body = send_request('ReplaceTopicRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceTopicRuleResponse.new
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

        # 重置设备的连接状态

        # @param request: Request instance for ResetDeviceState.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::ResetDeviceStateRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::ResetDeviceStateResponse`
        def ResetDeviceState(request)
          body = send_request('ResetDeviceState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetDeviceStateResponse.new
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

        # 重试设备升级任务

        # @param request: Request instance for RetryDeviceFirmwareTask.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::RetryDeviceFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::RetryDeviceFirmwareTaskResponse`
        def RetryDeviceFirmwareTask(request)
          body = send_request('RetryDeviceFirmwareTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryDeviceFirmwareTaskResponse.new
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

        # 本接口（UnbindDevices）用于网关设备批量解绑子设备

        # @param request: Request instance for UnbindDevices.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UnbindDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UnbindDevicesResponse`
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

        # 启用或者禁用设备

        # @param request: Request instance for UpdateDeviceAvailableState.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UpdateDeviceAvailableStateRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UpdateDeviceAvailableStateResponse`
        def UpdateDeviceAvailableState(request)
          body = send_request('UpdateDeviceAvailableState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDeviceAvailableStateResponse.new
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

        # 本接口（UpdateDeviceShadow）用于更新虚拟设备信息。

        # @param request: Request instance for UpdateDeviceShadow.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UpdateDeviceShadowRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UpdateDeviceShadowResponse`
        def UpdateDeviceShadow(request)
          body = send_request('UpdateDeviceShadow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDeviceShadowResponse.new
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

        # 本接口（UpdateTopicPolicy）用于更新Topic信息

        # @param request: Request instance for UpdateTopicPolicy.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UpdateTopicPolicyRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UpdateTopicPolicyResponse`
        def UpdateTopicPolicy(request)
          body = send_request('UpdateTopicPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTopicPolicyResponse.new
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

        # 本接口（UploadFirmware）用于上传设备固件信息

        # @param request: Request instance for UploadFirmware.
        # @type request: :class:`Tencentcloud::iotcloud::V20210408::UploadFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20210408::UploadFirmwareResponse`
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