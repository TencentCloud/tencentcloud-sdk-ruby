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
  module Ump
    module V20200918
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-09-18'
            api_endpoint = 'ump.tencentcloudapi.com'
            sdk_version = 'UMP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 上报相机移动、遮挡等告警信息


        # @param request: Request instance for CreateCameraAlerts.
        # @type request: :class:`Tencentcloud::ump::V20200918::CreateCameraAlertsRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::CreateCameraAlertsResponse`
        def CreateCameraAlerts(request)
          body = send_request('CreateCameraAlerts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCameraAlertsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上报当前场内所有相机的当前状态

        # @param request: Request instance for CreateCameraState.
        # @type request: :class:`Tencentcloud::ump::V20200918::CreateCameraStateRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::CreateCameraStateResponse`
        def CreateCameraState(request)
          body = send_request('CreateCameraState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCameraStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 优mall产品下线

        # 场内抓拍上报接口

        # @param request: Request instance for CreateCapture.
        # @type request: :class:`Tencentcloud::ump::V20200918::CreateCaptureRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::CreateCaptureResponse`
        def CreateCapture(request)
          body = send_request('CreateCapture', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCaptureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集团广场的多经点位告警

        # @param request: Request instance for CreateMultiBizAlert.
        # @type request: :class:`Tencentcloud::ump::V20200918::CreateMultiBizAlertRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::CreateMultiBizAlertResponse`
        def CreateMultiBizAlert(request)
          body = send_request('CreateMultiBizAlert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMultiBizAlertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上报所有进程监控信息

        # @param request: Request instance for CreateProgramState.
        # @type request: :class:`Tencentcloud::ump::V20200918::CreateProgramStateRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::CreateProgramStateResponse`
        def CreateProgramState(request)
          body = send_request('CreateProgramState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProgramStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上报所有服务器硬件监控信息

        # @param request: Request instance for CreateServerState.
        # @type request: :class:`Tencentcloud::ump::V20200918::CreateServerStateRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::CreateServerStateResponse`
        def CreateServerState(request)
          body = send_request('CreateServerState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServerStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集团广场的多经点位消警

        # @param request: Request instance for DeleteMultiBizAlert.
        # @type request: :class:`Tencentcloud::ump::V20200918::DeleteMultiBizAlertRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::DeleteMultiBizAlertResponse`
        def DeleteMultiBizAlert(request)
          body = send_request('DeleteMultiBizAlert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMultiBizAlertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除集团广场对应的任务

        # @param request: Request instance for DeleteTask.
        # @type request: :class:`Tencentcloud::ump::V20200918::DeleteTaskRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::DeleteTaskResponse`
        def DeleteTask(request)
          body = send_request('DeleteTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集团广场对应的摄像头列表

        # @param request: Request instance for DescribeCameras.
        # @type request: :class:`Tencentcloud::ump::V20200918::DescribeCamerasRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::DescribeCamerasResponse`
        def DescribeCameras(request)
          body = send_request('DescribeCameras', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCamerasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取摄像头配置信息
        # mac不为空返回指定相机配置
        # mac为空返回对应GroupCode和MallId全量配置

        # @param request: Request instance for DescribeConfig.
        # @type request: :class:`Tencentcloud::ump::V20200918::DescribeConfigRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::DescribeConfigResponse`
        def DescribeConfig(request)
          body = send_request('DescribeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实时获取底图接口

        # @param request: Request instance for DescribeImage.
        # @type request: :class:`Tencentcloud::ump::V20200918::DescribeImageRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::DescribeImageResponse`
        def DescribeImage(request)
          body = send_request('DescribeImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取多经点位底图

        # @param request: Request instance for DescribeMultiBizBaseImage.
        # @type request: :class:`Tencentcloud::ump::V20200918::DescribeMultiBizBaseImageRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::DescribeMultiBizBaseImageResponse`
        def DescribeMultiBizBaseImage(request)
          body = send_request('DescribeMultiBizBaseImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMultiBizBaseImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集团广场对应的任务列表

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::ump::V20200918::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::DescribeTasksResponse`
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

        # 获取集团广场的点位列表

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::ump::V20200918::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::DescribeZonesResponse`
        def DescribeZones(request)
          body = send_request('DescribeZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZonesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集团广场的多经点位配置更新

        # @param request: Request instance for ModifyMultiBizConfig.
        # @type request: :class:`Tencentcloud::ump::V20200918::ModifyMultiBizConfigRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::ModifyMultiBizConfigResponse`
        def ModifyMultiBizConfig(request)
          body = send_request('ModifyMultiBizConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMultiBizConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上报服务注册自身的服务地址作为回调地址, 用于信息回传。

        # @param request: Request instance for ReportServiceRegister.
        # @type request: :class:`Tencentcloud::ump::V20200918::ReportServiceRegisterRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::ReportServiceRegisterResponse`
        def ReportServiceRegister(request)
          body = send_request('ReportServiceRegister', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportServiceRegisterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 以图搜图

        # @param request: Request instance for SearchImage.
        # @type request: :class:`Tencentcloud::ump::V20200918::SearchImageRequest`
        # @rtype: :class:`Tencentcloud::ump::V20200918::SearchImageResponse`
        def SearchImage(request)
          body = send_request('SearchImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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