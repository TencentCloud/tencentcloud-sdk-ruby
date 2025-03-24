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
  module Chc
    module V20230418
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-04-18'
            api_endpoint = 'chc.tencentcloudapi.com'
            sdk_version = 'CHC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 确认通用服务工单

        # @param request: Request instance for ConfirmCommonServiceWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::ConfirmCommonServiceWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::ConfirmCommonServiceWorkOrderResponse`
        def ConfirmCommonServiceWorkOrder(request)
          body = send_request('ConfirmCommonServiceWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfirmCommonServiceWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建通用工单

        # @param request: Request instance for CreateCommonServiceWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreateCommonServiceWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreateCommonServiceWorkOrderResponse`
        def CreateCommonServiceWorkOrder(request)
          body = send_request('CreateCommonServiceWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCommonServiceWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建设备型号评估工单

        # @param request: Request instance for CreateModelEvaluationWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreateModelEvaluationWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreateModelEvaluationWorkOrderResponse`
        def CreateModelEvaluationWorkOrder(request)
          body = send_request('CreateModelEvaluationWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModelEvaluationWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建设备搬迁工单

        # @param request: Request instance for CreateMovingWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreateMovingWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreateMovingWorkOrderResponse`
        def CreateMovingWorkOrder(request)
          body = send_request('CreateMovingWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMovingWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建新的网络设备型号

        # @param request: Request instance for CreateNetDeviceModel.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreateNetDeviceModelRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreateNetDeviceModelResponse`
        def CreateNetDeviceModel(request)
          body = send_request('CreateNetDeviceModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetDeviceModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建人员到访工单

        # @param request: Request instance for CreatePersonnelVisitWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreatePersonnelVisitWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreatePersonnelVisitWorkOrderResponse`
        def CreatePersonnelVisitWorkOrder(request)
          body = send_request('CreatePersonnelVisitWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePersonnelVisitWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建设备关电工单

        # @param request: Request instance for CreatePowerOffWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreatePowerOffWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreatePowerOffWorkOrderResponse`
        def CreatePowerOffWorkOrder(request)
          body = send_request('CreatePowerOffWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePowerOffWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建设备开电工单

        # @param request: Request instance for CreatePowerOnWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreatePowerOnWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreatePowerOnWorkOrderResponse`
        def CreatePowerOnWorkOrder(request)
          body = send_request('CreatePowerOnWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePowerOnWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建设备退出工单

        # @param request: Request instance for CreateQuitWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreateQuitWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreateQuitWorkOrderResponse`
        def CreateQuitWorkOrder(request)
          body = send_request('CreateQuitWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateQuitWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建设备下架工单

        # @param request: Request instance for CreateRackOffWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreateRackOffWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreateRackOffWorkOrderResponse`
        def CreateRackOffWorkOrder(request)
          body = send_request('CreateRackOffWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRackOffWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建设备上架工单

        # @param request: Request instance for CreateRackOnWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreateRackOnWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreateRackOnWorkOrderResponse`
        def CreateRackOnWorkOrder(request)
          body = send_request('CreateRackOnWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRackOnWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建设备收货工单

        # @param request: Request instance for CreateReceivingWorkOrder.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreateReceivingWorkOrderRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreateReceivingWorkOrderResponse`
        def CreateReceivingWorkOrder(request)
          body = send_request('CreateReceivingWorkOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReceivingWorkOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增服务器设备型号

        # @param request: Request instance for CreateServerModel.
        # @type request: :class:`Tencentcloud::chc::V20230418::CreateServerModelRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::CreateServerModelResponse`
        def CreateServerModel(request)
          body = send_request('CreateServerModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServerModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机房内可用的型号列表

        # @param request: Request instance for DescribeAvailableModelList.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeAvailableModelListRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeAvailableModelListResponse`
        def DescribeAvailableModelList(request)
          body = send_request('DescribeAvailableModelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableModelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户可操作的园区列表

        # @param request: Request instance for DescribeCampusList.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeCampusListRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeCampusListResponse`
        def DescribeCampusList(request)
          body = send_request('DescribeCampusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCampusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询通用服务工单详情

        # @param request: Request instance for DescribeCommonServiceWorkOrderDetail.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeCommonServiceWorkOrderDetailRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeCommonServiceWorkOrderDetailResponse`
        def DescribeCommonServiceWorkOrderDetail(request)
          body = send_request('DescribeCommonServiceWorkOrderDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCommonServiceWorkOrderDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询客户信息

        # @param request: Request instance for DescribeCustomerInfo.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeCustomerInfoRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeCustomerInfoResponse`
        def DescribeCustomerInfo(request)
          body = send_request('DescribeCustomerInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomerInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeDeviceList.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeDeviceListRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeDeviceListResponse`
        def DescribeDeviceList(request)
          body = send_request('DescribeDeviceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询设备类工单的工单详情，如：'receiving', 'rackOn', 'powerOn', 'powerOff', 'rackOff', 'quit'

        # @param request: Request instance for DescribeDeviceWorkOrderDetail.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeDeviceWorkOrderDetailRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeDeviceWorkOrderDetailResponse`
        def DescribeDeviceWorkOrderDetail(request)
          body = send_request('DescribeDeviceWorkOrderDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceWorkOrderDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询机房管理单元资产详情

        # @param request: Request instance for DescribeIdcUnitAssetDetail.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeIdcUnitAssetDetailRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeIdcUnitAssetDetailResponse`
        def DescribeIdcUnitAssetDetail(request)
          body = send_request('DescribeIdcUnitAssetDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIdcUnitAssetDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询机房管理单元详情

        # @param request: Request instance for DescribeIdcUnitDetail.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeIdcUnitDetailRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeIdcUnitDetailResponse`
        def DescribeIdcUnitDetail(request)
          body = send_request('DescribeIdcUnitDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIdcUnitDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机房和机房管理单元信息

        # @param request: Request instance for DescribeIdcs.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeIdcsRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeIdcsResponse`
        def DescribeIdcs(request)
          body = send_request('DescribeIdcs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIdcsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询设备型号详情

        # @param request: Request instance for DescribeModel.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeModelRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeModelResponse`
        def DescribeModel(request)
          body = send_request('DescribeModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询设备型号评估工单详情

        # @param request: Request instance for DescribeModelEvaluationWorkOrderDetail.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeModelEvaluationWorkOrderDetailRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeModelEvaluationWorkOrderDetailResponse`
        def DescribeModelEvaluationWorkOrderDetail(request)
          body = send_request('DescribeModelEvaluationWorkOrderDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelEvaluationWorkOrderDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取型号的填写模板

        # @param request: Request instance for DescribeModelTemplate.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeModelTemplateRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeModelTemplateResponse`
        def DescribeModelTemplate(request)
          body = send_request('DescribeModelTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户的型号和对应的版本数量

        # @param request: Request instance for DescribeModelVersionList.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeModelVersionListRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeModelVersionListResponse`
        def DescribeModelVersionList(request)
          body = send_request('DescribeModelVersionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelVersionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询人员到访工单详情

        # @param request: Request instance for DescribePersonnelVisitWorkOrderDetail.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribePersonnelVisitWorkOrderDetailRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribePersonnelVisitWorkOrderDetailResponse`
        def DescribePersonnelVisitWorkOrderDetail(request)
          body = send_request('DescribePersonnelVisitWorkOrderDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonnelVisitWorkOrderDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机架总数及各状态对应的数量汇总

        # @param request: Request instance for DescribePositionStatusSummary.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribePositionStatusSummaryRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribePositionStatusSummaryResponse`
        def DescribePositionStatusSummary(request)
          body = send_request('DescribePositionStatusSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePositionStatusSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机位列表

        # @param request: Request instance for DescribePositions.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribePositionsRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribePositionsResponse`
        def DescribePositions(request)
          body = send_request('DescribePositions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePositionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机架列表

        # @param request: Request instance for DescribeRacks.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeRacksRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeRacksResponse`
        def DescribeRacks(request)
          body = send_request('DescribeRacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRacksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机房管理单元的机位分布

        # @param request: Request instance for DescribeRacksDistribution.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeRacksDistributionRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeRacksDistributionResponse`
        def DescribeRacksDistribution(request)
          body = send_request('DescribeRacksDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRacksDistributionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源汇总

        # @param request: Request instance for DescribeResourceUsage.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeResourceUsageRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeResourceUsageResponse`
        def DescribeResourceUsage(request)
          body = send_request('DescribeResourceUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询工单列表

        # @param request: Request instance for DescribeWorkOrderList.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeWorkOrderListRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeWorkOrderListResponse`
        def DescribeWorkOrderList(request)
          body = send_request('DescribeWorkOrderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkOrderListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 工单统计数据查询

        # @param request: Request instance for DescribeWorkOrderStatistics.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeWorkOrderStatisticsRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeWorkOrderStatisticsResponse`
        def DescribeWorkOrderStatistics(request)
          body = send_request('DescribeWorkOrderStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkOrderStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户可用的工单类型

        # @param request: Request instance for DescribeWorkOrderTypes.
        # @type request: :class:`Tencentcloud::chc::V20230418::DescribeWorkOrderTypesRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::DescribeWorkOrderTypesResponse`
        def DescribeWorkOrderTypes(request)
          body = send_request('DescribeWorkOrderTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkOrderTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 如果当前该工单类型是收藏状态，调用接口后变成未收藏状态，如果是未收藏状态，调用该接口变为收藏状态

        # @param request: Request instance for ModifyWorkOrderTypeCollectFlag.
        # @type request: :class:`Tencentcloud::chc::V20230418::ModifyWorkOrderTypeCollectFlagRequest`
        # @rtype: :class:`Tencentcloud::chc::V20230418::ModifyWorkOrderTypeCollectFlagResponse`
        def ModifyWorkOrderTypeCollectFlag(request)
          body = send_request('ModifyWorkOrderTypeCollectFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkOrderTypeCollectFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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