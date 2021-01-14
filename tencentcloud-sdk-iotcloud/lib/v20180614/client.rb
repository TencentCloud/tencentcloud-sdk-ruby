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
    module V20180614
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-06-14'
        @@endpoint = 'iotcloud.tencentcloudapi.com'
        @@sdk_version = 'IOTCLOUD_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口（BindDevices）用于网关设备批量绑定子设备

        # @param request: Request instance for BindDevices.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::BindDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::BindDevicesResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CancelDeviceFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CancelDeviceFirmwareTaskResponse`
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

        # 本接口（CancelTask）用于取消一个未被调度的任务。

        # @param request: Request instance for CancelTask.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CancelTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CancelTaskResponse`
        def CancelTask(request)
          body = send_request('CancelTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CreateDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CreateDeviceResponse`
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

        # 创建lora类型的设备

        # @param request: Request instance for CreateLoraDevice.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CreateLoraDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CreateLoraDeviceResponse`
        def CreateLoraDevice(request)
          body = send_request('CreateLoraDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoraDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateMultiDevice）用于批量创建物联云设备。

        # @param request: Request instance for CreateMultiDevice.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CreateMultiDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CreateMultiDeviceResponse`
        def CreateMultiDevice(request)
          body = send_request('CreateMultiDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMultiDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CreateMultiDevicesTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CreateMultiDevicesTaskResponse`
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

        # 本接口（CreateProduct）用于创建一个新的物联网通信产品

        # @param request: Request instance for CreateProduct.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CreateProductRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CreateProductResponse`
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

        # 本接口（CreateTask）用于创建一个批量任务。目前此接口可以创建批量更新影子以及批量下发消息的任务

        # @param request: Request instance for CreateTask.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CreateTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CreateTaskResponse`
        def CreateTask(request)
          body = send_request('CreateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CreateTaskFileUrlRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CreateTaskFileUrlResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CreateTopicPolicyRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CreateTopicPolicyResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::CreateTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::CreateTopicRuleResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DeleteDeviceResponse`
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

        # 删除lora类型的设备

        # @param request: Request instance for DeleteLoraDevice.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DeleteLoraDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DeleteLoraDeviceResponse`
        def DeleteLoraDevice(request)
          body = send_request('DeleteLoraDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoraDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DeleteProductRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DeleteProductResponse`
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

        # 本接口（DeleteTopicRule）用于删除规则

        # @param request: Request instance for DeleteTopicRule.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DeleteTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DeleteTopicRuleResponse`
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

        # 查询所有设备列表

        # @param request: Request instance for DescribeAllDevices.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeAllDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeAllDevicesResponse`
        def DescribeAllDevices(request)
          body = send_request('DescribeAllDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeDeviceResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeDeviceClientKeyRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeDeviceClientKeyResponse`
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

        # 本接口（DescribeDeviceShadow）用于查询虚拟设备信息。

        # @param request: Request instance for DescribeDeviceShadow.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeDeviceShadowRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeDeviceShadowResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeDevicesResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTaskResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTaskDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTaskDevicesResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTaskDistributionRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTaskDistributionResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTaskStatisticsRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTaskStatisticsResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTasksRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeFirmwareTasksResponse`
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

        # 获取lora类型设备的详细信息

        # @param request: Request instance for DescribeLoraDevice.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeLoraDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeLoraDeviceResponse`
        def DescribeLoraDevice(request)
          body = send_request('DescribeLoraDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoraDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMultiDevTask）用于查询批量创建设备任务的执行状态。

        # @param request: Request instance for DescribeMultiDevTask.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeMultiDevTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeMultiDevTaskResponse`
        def DescribeMultiDevTask(request)
          body = send_request('DescribeMultiDevTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMultiDevTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMultiDevices）用于查询批量创建设备的执行结果。

        # @param request: Request instance for DescribeMultiDevices.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeMultiDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeMultiDevicesResponse`
        def DescribeMultiDevices(request)
          body = send_request('DescribeMultiDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMultiDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeProductTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeProductTaskResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeProductTasksRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeProductTasksResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeProductsRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeProductsResponse`
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

        # 本接口（DescribeTask）用于查询一个已创建任务的详情，任务保留一个月

        # @param request: Request instance for DescribeTask.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeTaskResponse`
        def DescribeTask(request)
          body = send_request('DescribeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTasks）用于查询已创建的任务列表，任务保留一个月

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DescribeTasksResponse`
        def DescribeTasks(request)
          body = send_request('DescribeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::DisableTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::DisableTopicRuleResponse`
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

        # 编辑固件信息

        # @param request: Request instance for EditFirmware.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::EditFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::EditFirmwareResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::EnableTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::EnableTopicRuleResponse`
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

        # 模拟lora类型的设备端向服务器端发送消息

        # @param request: Request instance for PublishAsDevice.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::PublishAsDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::PublishAsDeviceResponse`
        def PublishAsDevice(request)
          body = send_request('PublishAsDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishAsDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::PublishBroadcastMessageRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::PublishBroadcastMessageResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::PublishMessageRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::PublishMessageResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::PublishRRPCMessageRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::PublishRRPCMessageResponse`
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

        # 服务器端下发消息给lora类型的设备

        # @param request: Request instance for PublishToDevice.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::PublishToDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::PublishToDeviceResponse`
        def PublishToDevice(request)
          body = send_request('PublishToDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishToDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::ReplaceTopicRuleRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::ReplaceTopicRuleResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::ResetDeviceStateRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::ResetDeviceStateResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::RetryDeviceFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::RetryDeviceFirmwareTaskResponse`
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

        # 本接口（UnbindDevices）用于网关设备批量解绑子设备

        # @param request: Request instance for UnbindDevices.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::UnbindDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::UnbindDevicesResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::UpdateDeviceAvailableStateRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::UpdateDeviceAvailableStateResponse`
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

        # 本接口（UpdateDeviceShadow）用于更新虚拟设备信息。

        # @param request: Request instance for UpdateDeviceShadow.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::UpdateDeviceShadowRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::UpdateDeviceShadowResponse`
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

        # 本接口（UpdateTopicPolicy）用于更新Topic信息

        # @param request: Request instance for UpdateTopicPolicy.
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::UpdateTopicPolicyRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::UpdateTopicPolicyResponse`
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
        # @type request: :class:`Tencentcloud::iotcloud::V20180614::UploadFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotcloud::V20180614::UploadFirmwareResponse`
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