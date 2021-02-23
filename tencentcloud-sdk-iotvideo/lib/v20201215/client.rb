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
  module Iotvideo
    module V20201215
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-12-15'
        @@endpoint = 'iotvideo.tencentcloudapi.com'
        @@sdk_version = 'IOTVIDEO_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 判断是否开启的转发的权限

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


      end
    end
  end
end