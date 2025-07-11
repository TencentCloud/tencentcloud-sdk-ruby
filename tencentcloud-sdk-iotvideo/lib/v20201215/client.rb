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
  module Iotvideo
    module V20201215
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-15'
            api_endpoint = 'iotvideo.tencentcloudapi.com'
            sdk_version = 'IOTVIDEO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 申请AI模型

        # @param request: Request instance for ApplyAIModel.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ApplyAIModelRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ApplyAIModelResponse`
        def ApplyAIModel(request)
          body = send_request('ApplyAIModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyAIModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（BatchUpdateFirmware）用于批量更新设备固件

        # @param request: Request instance for BatchUpdateFirmware.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::BatchUpdateFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::BatchUpdateFirmwareResponse`
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

        # 绑定云存用户

        # @param request: Request instance for BindCloudStorageUser.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::BindCloudStorageUserRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::BindCloudStorageUserResponse`
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

        # 取消AI模型申请

        # @param request: Request instance for CancelAIModelApplication.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CancelAIModelApplicationRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CancelAIModelApplicationResponse`
        def CancelAIModelApplication(request)
          body = send_request('CancelAIModelApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelAIModelApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于取消设备升级任务

        # @param request: Request instance for CancelDeviceFirmwareTask.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CancelDeviceFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CancelDeviceFirmwareTaskResponse`
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

        # 判断是否开启转发的权限

        # @param request: Request instance for CheckForwardAuth.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CheckForwardAuthRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CheckForwardAuthResponse`
        def CheckForwardAuth(request)
          body = send_request('CheckForwardAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckForwardAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ControlDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ControlDeviceDataResponse`
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

        # 发起AI推理请求

        # @param request: Request instance for CreateAIDetection.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CreateAIDetectionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CreateAIDetectionResponse`
        def CreateAIDetection(request)
          body = send_request('CreateAIDetection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAIDetectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建批次

        # @param request: Request instance for CreateBatch.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CreateBatchRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CreateBatchResponse`
        def CreateBatch(request)
          body = send_request('CreateBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建COS上传密钥

        # @param request: Request instance for CreateCOSCredentials.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CreateCOSCredentialsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CreateCOSCredentialsResponse`
        def CreateCOSCredentials(request)
          body = send_request('CreateCOSCredentials', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCOSCredentialsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for CreateCloudStorage.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CreateCloudStorageRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CreateCloudStorageResponse`
        def CreateCloudStorage(request)
          body = send_request('CreateCloudStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudStorageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据转发

        # @param request: Request instance for CreateDataForward.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CreateDataForwardRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CreateDataForwardResponse`
        def CreateDataForward(request)
          body = send_request('CreateDataForward', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataForwardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建转发规则

        # @param request: Request instance for CreateForwardRule.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CreateForwardRuleRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CreateForwardRuleResponse`
        def CreateForwardRule(request)
          body = send_request('CreateForwardRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateForwardRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建产品

        # @param request: Request instance for CreateProduct.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CreateProductRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CreateProductResponse`
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::CreateTaskFileUrlRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::CreateTaskFileUrlResponse`
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

        # 删除设备

        # @param request: Request instance for DeleteDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DeleteDeviceResponse`
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

        # 本接口（DeleteFirmware）用于删除固件

        # @param request: Request instance for DeleteFirmware.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DeleteFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DeleteFirmwareResponse`
        def DeleteFirmware(request)
          body = send_request('DeleteFirmware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFirmwareResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除转发规则

        # @param request: Request instance for DeleteForwardRule.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DeleteForwardRuleRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DeleteForwardRuleResponse`
        def DeleteForwardRule(request)
          body = send_request('DeleteForwardRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteForwardRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除产品

        # @param request: Request instance for DeleteProduct.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DeleteProductRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DeleteProductResponse`
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

        # 用户AI模型申请记录

        # @param request: Request instance for DescribeAIModelApplications.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeAIModelApplicationsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeAIModelApplicationsResponse`
        def DescribeAIModelApplications(request)
          body = send_request('DescribeAIModelApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIModelApplicationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看AI推理结果推送配置

        # @param request: Request instance for DescribeAIModelChannel.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeAIModelChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeAIModelChannelResponse`
        def DescribeAIModelChannel(request)
          body = send_request('DescribeAIModelChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIModelChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看AI模型资源包

        # @param request: Request instance for DescribeAIModelUsage.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeAIModelUsageRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeAIModelUsageResponse`
        def DescribeAIModelUsage(request)
          body = send_request('DescribeAIModelUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIModelUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取AI模型列表

        # @param request: Request instance for DescribeAIModels.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeAIModelsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeAIModelsResponse`
        def DescribeAIModels(request)
          body = send_request('DescribeAIModels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIModelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询账户余额

        # @param request: Request instance for DescribeBalance.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeBalanceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeBalanceResponse`
        def DescribeBalance(request)
          body = send_request('DescribeBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取账户流水

        # @param request: Request instance for DescribeBalanceTransactions.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeBalanceTransactionsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeBalanceTransactionsResponse`
        def DescribeBalanceTransactions(request)
          body = send_request('DescribeBalanceTransactions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBalanceTransactionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取批次详情

        # @param request: Request instance for DescribeBatch.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeBatchRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeBatchResponse`
        def DescribeBatch(request)
          body = send_request('DescribeBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取批次列表

        # @param request: Request instance for DescribeBatchs.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeBatchsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeBatchsResponse`
        def DescribeBatchs(request)
          body = send_request('DescribeBatchs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Category详情

        # @param request: Request instance for DescribeCategory.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeCategoryRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeCategoryResponse`
        def DescribeCategory(request)
          body = send_request('DescribeCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageResponse`
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

        # 获取具有云存的日期

        # @param request: Request instance for DescribeCloudStorageDate.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageDateRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageDateResponse`
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageEventsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageEventsResponse`
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

        # 拉取云存事件缩略图

        # @param request: Request instance for DescribeCloudStorageThumbnail.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageThumbnailRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageThumbnailResponse`
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

        # 获取某一天云存时间轴

        # @param request: Request instance for DescribeCloudStorageTime.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageTimeRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageTimeResponse`
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageUsersRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeCloudStorageUsersResponse`
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

        # 获取数据转发列表

        # @param request: Request instance for DescribeDataForwardList.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeDataForwardListRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeDataForwardListResponse`
        def DescribeDataForwardList(request)
          body = send_request('DescribeDataForwardList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataForwardListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看设备详情

        # @param request: Request instance for DescribeDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceResponse`
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

        # 为用户提供获取动作历史的能力。

        # @param request: Request instance for DescribeDeviceActionHistory.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceActionHistoryRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceActionHistoryResponse`
        def DescribeDeviceActionHistory(request)
          body = send_request('DescribeDeviceActionHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceActionHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设备在指定时间范围内的通讯日志

        # @param request: Request instance for DescribeDeviceCommLog.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceCommLogRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceCommLogResponse`
        def DescribeDeviceCommLog(request)
          body = send_request('DescribeDeviceCommLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceCommLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设备属性数据

        # @param request: Request instance for DescribeDeviceData.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceDataResponse`
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceDataHistoryRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceDataHistoryResponse`
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

        # 获取设备的历史事件

        # @param request: Request instance for DescribeDeviceEventHistory.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceEventHistoryRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceEventHistoryResponse`
        def DescribeDeviceEventHistory(request)
          body = send_request('DescribeDeviceEventHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceEventHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设备上下线日志

        # @param request: Request instance for DescribeDeviceStatusLog.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceStatusLogRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeDeviceStatusLogResponse`
        def DescribeDeviceStatusLog(request)
          body = send_request('DescribeDeviceStatusLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceStatusLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设备列表

        # @param request: Request instance for DescribeDevices.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeDevicesResponse`
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

        # 本接口（DescribeFirmware）用于查询固件信息

        # @param request: Request instance for DescribeFirmware.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareResponse`
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

        # 此接口查询固件升级任务详情

        # @param request: Request instance for DescribeFirmwareTask.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTaskResponse`
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

        # 本接口用于查询固件升级任务的设备列表

        # @param request: Request instance for DescribeFirmwareTaskDevices.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTaskDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTaskDevicesResponse`
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

        # 本接口用于查询固件升级任务状态分布

        # @param request: Request instance for DescribeFirmwareTaskDistribution.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTaskDistributionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTaskDistributionResponse`
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

        # 本接口用于查询固件升级任务统计信息

        # @param request: Request instance for DescribeFirmwareTaskStatistics.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTaskStatisticsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTaskStatisticsResponse`
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

        # 本接口用于查询固件升级任务列表

        # @param request: Request instance for DescribeFirmwareTasks.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTasksRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeFirmwareTasksResponse`
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

        # 获取产品转发规则

        # @param request: Request instance for DescribeForwardRule.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeForwardRuleRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeForwardRuleResponse`
        def DescribeForwardRule(request)
          body = send_request('DescribeForwardRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeForwardRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeModelDefinitionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeModelDefinitionResponse`
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

        # 获取产品详情

        # @param request: Request instance for DescribeProduct.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeProductRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeProductResponse`
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

        # 获取产品动态注册详情

        # @param request: Request instance for DescribeProductDynamicRegister.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeProductDynamicRegisterRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeProductDynamicRegisterResponse`
        def DescribeProductDynamicRegister(request)
          body = send_request('DescribeProductDynamicRegister', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductDynamicRegisterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取产品列表

        # @param request: Request instance for DescribeProducts.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeProductsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeProductsResponse`
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

        # 获取设备sdk日志

        # @param request: Request instance for DescribeSDKLog.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::DescribeSDKLogRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::DescribeSDKLogResponse`
        def DescribeSDKLog(request)
          body = send_request('DescribeSDKLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSDKLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于编辑固件信息

        # @param request: Request instance for EditFirmware.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::EditFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::EditFirmwareResponse`
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

        # 获取视频防盗链播放URL

        # @param request: Request instance for GenerateSignedVideoURL.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::GenerateSignedVideoURLRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::GenerateSignedVideoURLResponse`
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

        # 本接口（GetAllFirmwareVersion）用于获取所有的版本列表

        # @param request: Request instance for GetAllFirmwareVersion.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::GetAllFirmwareVersionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::GetAllFirmwareVersionResponse`
        def GetAllFirmwareVersion(request)
          body = send_request('GetAllFirmwareVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAllFirmwareVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（GetFirmwareURL）用于获取固件存储的URL

        # @param request: Request instance for GetFirmwareURL.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::GetFirmwareURLRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::GetFirmwareURLResponse`
        def GetFirmwareURL(request)
          body = send_request('GetFirmwareURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFirmwareURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导入其它产品的数据模板，覆盖现有数据模板的物模型和产品分类信息

        # @param request: Request instance for ImportModelDefinition.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ImportModelDefinitionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ImportModelDefinitionResponse`
        def ImportModelDefinition(request)
          body = send_request('ImportModelDefinition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportModelDefinitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::InheritCloudStorageUserRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::InheritCloudStorageUserResponse`
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

        # 本接口（ListFirmwares）用于获取固件列表

        # @param request: Request instance for ListFirmwares.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ListFirmwaresRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ListFirmwaresResponse`
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

        # 修改数据转发

        # @param request: Request instance for ModifyDataForward.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ModifyDataForwardRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ModifyDataForwardResponse`
        def ModifyDataForward(request)
          body = send_request('ModifyDataForward', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDataForwardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置数据转发状态

        # @param request: Request instance for ModifyDataForwardStatus.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ModifyDataForwardStatusRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ModifyDataForwardStatusResponse`
        def ModifyDataForwardStatus(request)
          body = send_request('ModifyDataForwardStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDataForwardStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改设备信息

        # @param request: Request instance for ModifyDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ModifyDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ModifyDeviceResponse`
        def ModifyDevice(request)
          body = send_request('ModifyDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新设备日志级别

        # @param request: Request instance for ModifyDeviceLogLevel.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ModifyDeviceLogLevelRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ModifyDeviceLogLevelResponse`
        def ModifyDeviceLogLevel(request)
          body = send_request('ModifyDeviceLogLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceLogLevelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改转发规则

        # @param request: Request instance for ModifyForwardRule.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ModifyForwardRuleRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ModifyForwardRuleResponse`
        def ModifyForwardRule(request)
          body = send_request('ModifyForwardRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyForwardRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ModifyModelDefinitionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ModifyModelDefinitionResponse`
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

        # 修改产品信息

        # @param request: Request instance for ModifyProduct.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ModifyProductRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ModifyProductResponse`
        def ModifyProduct(request)
          body = send_request('ModifyProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProductResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改产品动态注册

        # @param request: Request instance for ModifyProductDynamicRegister.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ModifyProductDynamicRegisterRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ModifyProductDynamicRegisterResponse`
        def ModifyProductDynamicRegister(request)
          body = send_request('ModifyProductDynamicRegister', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProductDynamicRegisterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::PublishMessageRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::PublishMessageResponse`
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

        # 上报活跃设备

        # @param request: Request instance for ReportAliveDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ReportAliveDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ReportAliveDeviceResponse`
        def ReportAliveDevice(request)
          body = send_request('ReportAliveDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportAliveDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::ResetCloudStorageRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::ResetCloudStorageResponse`
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

        # 本接口用于重试设备升级任务

        # @param request: Request instance for RetryDeviceFirmwareTask.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::RetryDeviceFirmwareTaskRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::RetryDeviceFirmwareTaskResponse`
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

        # 设置转发权限

        # @param request: Request instance for SetForwardAuth.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::SetForwardAuthRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::SetForwardAuthResponse`
        def SetForwardAuth(request)
          body = send_request('SetForwardAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetForwardAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::TransferCloudStorageRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::TransferCloudStorageResponse`
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

        # 更新AI推理结果推送配置

        # @param request: Request instance for UpdateAIModelChannel.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::UpdateAIModelChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::UpdateAIModelChannelResponse`
        def UpdateAIModelChannel(request)
          body = send_request('UpdateAIModelChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAIModelChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::UploadFirmwareRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::UploadFirmwareResponse`
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

        # 设备唤醒

        # @param request: Request instance for WakeUpDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20201215::WakeUpDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20201215::WakeUpDeviceResponse`
        def WakeUpDevice(request)
          body = send_request('WakeUpDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = WakeUpDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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