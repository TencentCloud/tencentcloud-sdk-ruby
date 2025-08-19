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
  module Iss
    module V20230517
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-05-17'
            api_endpoint = 'iss.tencentcloudapi.com'
            sdk_version = 'ISS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加AI任务

        # @param request: Request instance for AddAITask.
        # @type request: :class:`Tencentcloud::iss::V20230517::AddAITaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::AddAITaskResponse`
        def AddAITask(request)
          body = send_request('AddAITask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAITaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于新增组织。

        # @param request: Request instance for AddOrganization.
        # @type request: :class:`Tencentcloud::iss::V20230517::AddOrganizationRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::AddOrganizationResponse`
        def AddOrganization(request)
          body = send_request('AddOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于新增录像上云计划 （当前仅适用于通过GB28181协议和网关接入的设备/视频通道）

        # @param request: Request instance for AddRecordBackupPlan.
        # @type request: :class:`Tencentcloud::iss::V20230517::AddRecordBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::AddRecordBackupPlanResponse`
        def AddRecordBackupPlan(request)
          body = send_request('AddRecordBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddRecordBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于新增录像上云模板。
        # > 该功能本质是拉取设备本地录像数据上云（即存在 IPC 摄像头存储卡或 NVR 硬盘中的录像），操作时需先设定录像时间段（即想要上云的设备本地录像），再设定上云时间段和上云倍速，平台将于上云时间段倍速拉取设备对应前一天的录像时间段数据。

        # > 设定需至少满足（上云时间段=前一天的录像时间段/上云倍速），建议上云时间段可多设定10%左右的时间，避免因网络波动导致数据拉取不完整。

        # @param request: Request instance for AddRecordBackupTemplate.
        # @type request: :class:`Tencentcloud::iss::V20230517::AddRecordBackupTemplateRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::AddRecordBackupTemplateResponse`
        def AddRecordBackupTemplate(request)
          body = send_request('AddRecordBackupTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddRecordBackupTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于新增实时上云计划

        # @param request: Request instance for AddRecordPlan.
        # @type request: :class:`Tencentcloud::iss::V20230517::AddRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::AddRecordPlanResponse`
        def AddRecordPlan(request)
          body = send_request('AddRecordPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddRecordPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于新建取回任务

        # @param request: Request instance for AddRecordRetrieveTask.
        # @type request: :class:`Tencentcloud::iss::V20230517::AddRecordRetrieveTaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::AddRecordRetrieveTaskResponse`
        def AddRecordRetrieveTask(request)
          body = send_request('AddRecordRetrieveTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddRecordRetrieveTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于新增实时上云模板

        # @param request: Request instance for AddRecordTemplate.
        # @type request: :class:`Tencentcloud::iss::V20230517::AddRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::AddRecordTemplateResponse`
        def AddRecordTemplate(request)
          body = send_request('AddRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddRecordTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于设置推拉流鉴权配置。

        # @param request: Request instance for AddStreamAuth.
        # @type request: :class:`Tencentcloud::iss::V20230517::AddStreamAuthRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::AddStreamAuthResponse`
        def AddStreamAuth(request)
          body = send_request('AddStreamAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddStreamAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于新增单个设备。添加设备之后，可根据返回结果到设备上进行配置，配置后等待设备注册/推流。

        # @param request: Request instance for AddUserDevice.
        # @type request: :class:`Tencentcloud::iss::V20230517::AddUserDeviceRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::AddUserDeviceResponse`
        def AddUserDevice(request)
          body = send_request('AddUserDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddUserDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于批量删除本地录像下载失败的任务

        # @param request: Request instance for BatchDeleteVideoDownloadTask.
        # @type request: :class:`Tencentcloud::iss::V20230517::BatchDeleteVideoDownloadTaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::BatchDeleteVideoDownloadTaskResponse`
        def BatchDeleteVideoDownloadTask(request)
          body = send_request('BatchDeleteVideoDownloadTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteVideoDownloadTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于批量操作（启用，禁用，删除）设备

        # @param request: Request instance for BatchOperateDevice.
        # @type request: :class:`Tencentcloud::iss::V20230517::BatchOperateDeviceRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::BatchOperateDeviceResponse`
        def BatchOperateDevice(request)
          body = send_request('BatchOperateDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchOperateDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口可基于海康ISUP 5.0协议实现透传ISAPI的请求数据，调用接口前需确保设备采用ISUP协议成功注册至本平台

        # @param request: Request instance for CallISAPI.
        # @type request: :class:`Tencentcloud::iss::V20230517::CallISAPIRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::CallISAPIResponse`
        def CallISAPI(request)
          body = send_request('CallISAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CallISAPIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于设备通道云台控制，包括转动、变倍、变焦、光圈等。

        # @param request: Request instance for ControlDevicePTZ.
        # @type request: :class:`Tencentcloud::iss::V20230517::ControlDevicePTZRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ControlDevicePTZResponse`
        def ControlDevicePTZ(request)
          body = send_request('ControlDevicePTZ', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlDevicePTZResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于操作设备预置位，包括设置、删除、调用。

        # @param request: Request instance for ControlDevicePreset.
        # @type request: :class:`Tencentcloud::iss::V20230517::ControlDevicePresetRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ControlDevicePresetResponse`
        def ControlDevicePreset(request)
          body = send_request('ControlDevicePreset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlDevicePresetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 控制设备抓拍--单次，当前仅支持国标设备

        # @param request: Request instance for ControlDeviceSnapshot.
        # @type request: :class:`Tencentcloud::iss::V20230517::ControlDeviceSnapshotRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ControlDeviceSnapshotResponse`
        def ControlDeviceSnapshot(request)
          body = send_request('ControlDeviceSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlDeviceSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取设备的实时开流地址。

        # @param request: Request instance for ControlDeviceStream.
        # @type request: :class:`Tencentcloud::iss::V20230517::ControlDeviceStreamRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ControlDeviceStreamResponse`
        def ControlDeviceStream(request)
          body = send_request('ControlDeviceStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlDeviceStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于录像回放过程中的倍速、跳转、播放/暂停/停止等控制。

        # @param request: Request instance for ControlRecord.
        # @type request: :class:`Tencentcloud::iss::V20230517::ControlRecordRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ControlRecordResponse`
        def ControlRecord(request)
          body = send_request('ControlRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询设备本地录像时间轴信息，为NVR/IPC本地存储的录像。

        # @param request: Request instance for ControlRecordTimeline.
        # @type request: :class:`Tencentcloud::iss::V20230517::ControlRecordTimelineRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ControlRecordTimelineResponse`
        def ControlRecordTimeline(request)
          body = send_request('ControlRecordTimeline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlRecordTimelineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建本地录像下载任务

        # @param request: Request instance for CreateVideoDownloadTask.
        # @type request: :class:`Tencentcloud::iss::V20230517::CreateVideoDownloadTaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::CreateVideoDownloadTaskResponse`
        def CreateVideoDownloadTask(request)
          body = send_request('CreateVideoDownloadTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVideoDownloadTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除AI任务

        # @param request: Request instance for DeleteAITask.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteAITaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteAITaskResponse`
        def DeleteAITask(request)
          body = send_request('DeleteAITask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAITaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除域名。

        # @param request: Request instance for DeleteDomain.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteDomainRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteDomainResponse`
        def DeleteDomain(request)
          body = send_request('DeleteDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除网关。

        # @param request: Request instance for DeleteGateway.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteGatewayRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteGatewayResponse`
        def DeleteGateway(request)
          body = send_request('DeleteGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除组织。

        # @param request: Request instance for DeleteOrganization.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteOrganizationRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteOrganizationResponse`
        def DeleteOrganization(request)
          body = send_request('DeleteOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除录像上云模板。

        # @param request: Request instance for DeleteRecordBackupPlan.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteRecordBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteRecordBackupPlanResponse`
        def DeleteRecordBackupPlan(request)
          body = send_request('DeleteRecordBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除录像上云模板。

        # @param request: Request instance for DeleteRecordBackupTemplate.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteRecordBackupTemplateRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteRecordBackupTemplateResponse`
        def DeleteRecordBackupTemplate(request)
          body = send_request('DeleteRecordBackupTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordBackupTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除实时上云计划

        # @param request: Request instance for DeleteRecordPlan.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteRecordPlanResponse`
        def DeleteRecordPlan(request)
          body = send_request('DeleteRecordPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除取回任务

        # @param request: Request instance for DeleteRecordRetrieveTask.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteRecordRetrieveTaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteRecordRetrieveTaskResponse`
        def DeleteRecordRetrieveTask(request)
          body = send_request('DeleteRecordRetrieveTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordRetrieveTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除实时上云模板

        # @param request: Request instance for DeleteRecordTemplate.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteRecordTemplateResponse`
        def DeleteRecordTemplate(request)
          body = send_request('DeleteRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除执行完成的任务

        # @param request: Request instance for DeleteTask.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteTaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteTaskResponse`
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

        # 用于删除已添加的设备。

        # @param request: Request instance for DeleteUserDevice.
        # @type request: :class:`Tencentcloud::iss::V20230517::DeleteUserDeviceRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DeleteUserDeviceResponse`
        def DeleteUserDevice(request)
          body = send_request('DeleteUserDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取AI任务详情

        # @param request: Request instance for DescribeAITask.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeAITaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeAITaskResponse`
        def DescribeAITask(request)
          body = send_request('DescribeAITask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAITaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取AI任务识别结果

        # @param request: Request instance for DescribeAITaskResult.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeAITaskResultRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeAITaskResultResponse`
        def DescribeAITaskResult(request)
          body = send_request('DescribeAITaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAITaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于根据服务节点获取 CNAME 值。

        # @param request: Request instance for DescribeCNAME.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeCNAMERequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeCNAMEResponse`
        def DescribeCNAME(request)
          body = send_request('DescribeCNAME', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCNAMEResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询设备的通道。

        # @param request: Request instance for DescribeDeviceChannel.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeDeviceChannelRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeDeviceChannelResponse`
        def DescribeDeviceChannel(request)
          body = send_request('DescribeDeviceChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询设备通道预置位信息。

        # @param request: Request instance for DescribeDevicePreset.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeDevicePresetRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeDevicePresetResponse`
        def DescribeDevicePreset(request)
          body = send_request('DescribeDevicePreset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicePresetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于添加设备时，查询设备可以使用的服务节点，查询结果为已经绑定了域名的服务节点。

        # @param request: Request instance for DescribeDeviceRegion.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeDeviceRegionRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeDeviceRegionResponse`
        def DescribeDeviceRegion(request)
          body = send_request('DescribeDeviceRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询添加的域名列表。

        # @param request: Request instance for DescribeDomain.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeDomainRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeDomainResponse`
        def DescribeDomain(request)
          body = send_request('DescribeDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于用户添加域名时，查询可以绑定的服务节点，结果为平台支持的所有服务节点。（注意：每个服务节点只能绑定一个域名）

        # @param request: Request instance for DescribeDomainRegion.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeDomainRegionRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeDomainRegionResponse`
        def DescribeDomainRegion(request)
          body = send_request('DescribeDomainRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取国标设备的公网地址

        # @param request: Request instance for DescribeGBDeviceAddr.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeGBDeviceAddrRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeGBDeviceAddrResponse`
        def DescribeGBDeviceAddr(request)
          body = send_request('DescribeGBDeviceAddr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGBDeviceAddrResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取网关详情。

        # @param request: Request instance for DescribeGateway.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeGatewayRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeGatewayResponse`
        def DescribeGateway(request)
          body = send_request('DescribeGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取网关的数据及流量监控信息。

        # @param request: Request instance for DescribeGatewayMonitor.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeGatewayMonitorRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeGatewayMonitorResponse`
        def DescribeGatewayMonitor(request)
          body = send_request('DescribeGatewayMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayMonitorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询网关接入协议。

        # @param request: Request instance for DescribeGatewayProtocol.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeGatewayProtocolRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeGatewayProtocolResponse`
        def DescribeGatewayProtocol(request)
          body = send_request('DescribeGatewayProtocol', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayProtocolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网关服务版本

        # @param request: Request instance for DescribeGatewayVersion.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeGatewayVersionRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeGatewayVersionResponse`
        def DescribeGatewayVersion(request)
          body = send_request('DescribeGatewayVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询组织。

        # @param request: Request instance for DescribeOrganization.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeOrganizationRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeOrganizationResponse`
        def DescribeOrganization(request)
          body = send_request('DescribeOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询录像上云计划详情。

        # @param request: Request instance for DescribeRecordBackupPlan.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeRecordBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeRecordBackupPlanResponse`
        def DescribeRecordBackupPlan(request)
          body = send_request('DescribeRecordBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询录像上云模板详情。

        # @param request: Request instance for DescribeRecordBackupTemplate.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeRecordBackupTemplateRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeRecordBackupTemplateResponse`
        def DescribeRecordBackupTemplate(request)
          body = send_request('DescribeRecordBackupTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordBackupTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询设备云端录像时间轴信息（即为视频上云后设置录像计划后云存储的录像）

        # @param request: Request instance for DescribeRecordFile.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeRecordFileRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeRecordFileResponse`
        def DescribeRecordFile(request)
          body = send_request('DescribeRecordFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询实时上云计划详情

        # @param request: Request instance for DescribeRecordPlan.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeRecordPlanResponse`
        def DescribeRecordPlan(request)
          body = send_request('DescribeRecordPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取云端录像回放url地址

        # @param request: Request instance for DescribeRecordPlaybackUrl.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeRecordPlaybackUrlRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeRecordPlaybackUrlResponse`
        def DescribeRecordPlaybackUrl(request)
          body = send_request('DescribeRecordPlaybackUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordPlaybackUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询云录像取回任务详情

        # @param request: Request instance for DescribeRecordRetrieveTask.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeRecordRetrieveTaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeRecordRetrieveTaskResponse`
        def DescribeRecordRetrieveTask(request)
          body = send_request('DescribeRecordRetrieveTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordRetrieveTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 平台支持将数据以TS切片的形式存入客户自有COS桶，该接口用于支持客户快捷查询切片信息列表
        # （注意：只支持标准存储类型的查询）

        # @param request: Request instance for DescribeRecordSlice.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeRecordSliceRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeRecordSliceResponse`
        def DescribeRecordSlice(request)
          body = send_request('DescribeRecordSlice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordSliceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询实时上云模板详情

        # @param request: Request instance for DescribeRecordTemplate.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeRecordTemplateResponse`
        def DescribeRecordTemplate(request)
          body = send_request('DescribeRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询推拉流鉴权配置。

        # @param request: Request instance for DescribeStreamAuth.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeStreamAuthRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeStreamAuthResponse`
        def DescribeStreamAuth(request)
          body = send_request('DescribeStreamAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询任务详情

        # @param request: Request instance for DescribeTask.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeTaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeTaskResponse`
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

        # 用于查询设备的详细信息。

        # @param request: Request instance for DescribeUserDevice.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeUserDeviceRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeUserDeviceResponse`
        def DescribeUserDevice(request)
          body = send_request('DescribeUserDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于批量查询设备详细信息。

        # @param request: Request instance for DescribeUserDeviceList.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeUserDeviceListRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeUserDeviceListResponse`
        def DescribeUserDeviceList(request)
          body = send_request('DescribeUserDeviceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserDeviceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取视频通道的码率信息

        # @param request: Request instance for DescribeVideoBitRate.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeVideoBitRateRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeVideoBitRateResponse`
        def DescribeVideoBitRate(request)
          body = send_request('DescribeVideoBitRate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoBitRateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取云录像下载 url

        # @param request: Request instance for DescribeVideoDownloadUrl.
        # @type request: :class:`Tencentcloud::iss::V20230517::DescribeVideoDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::DescribeVideoDownloadUrlResponse`
        def DescribeVideoDownloadUrl(request)
          body = send_request('DescribeVideoDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取AI任务列表

        # @param request: Request instance for ListAITasks.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListAITasksRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListAITasksResponse`
        def ListAITasks(request)
          body = send_request('ListAITasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAITasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设备抓拍结果列表

        # @param request: Request instance for ListDeviceSnapshots.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListDeviceSnapshotsRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListDeviceSnapshotsResponse`
        def ListDeviceSnapshots(request)
          body = send_request('ListDeviceSnapshots', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDeviceSnapshotsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取对应组织下的设备列表。

        # @param request: Request instance for ListDevices.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListDevicesRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListDevicesResponse`
        def ListDevices(request)
          body = send_request('ListDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询网关下挂载的设备列表。

        # @param request: Request instance for ListGatewayDevices.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListGatewayDevicesRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListGatewayDevicesResponse`
        def ListGatewayDevices(request)
          body = send_request('ListGatewayDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListGatewayDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取网关列表。

        # @param request: Request instance for ListGateways.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListGatewaysRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListGatewaysResponse`
        def ListGateways(request)
          body = send_request('ListGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListGatewaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询组织目录下的未添加到实时上云计划中的通道数量

        # @param request: Request instance for ListOrganizationChannelNumbers.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListOrganizationChannelNumbersRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListOrganizationChannelNumbersResponse`
        def ListOrganizationChannelNumbers(request)
          body = send_request('ListOrganizationChannelNumbers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrganizationChannelNumbersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询组织目录下的通道列表

        # @param request: Request instance for ListOrganizationChannels.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListOrganizationChannelsRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListOrganizationChannelsResponse`
        def ListOrganizationChannels(request)
          body = send_request('ListOrganizationChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrganizationChannelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询录像上云计划下的设备通道列表。

        # @param request: Request instance for ListRecordBackupPlanDevices.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListRecordBackupPlanDevicesRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListRecordBackupPlanDevicesResponse`
        def ListRecordBackupPlanDevices(request)
          body = send_request('ListRecordBackupPlanDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRecordBackupPlanDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询录像上云计划列表。

        # @param request: Request instance for ListRecordBackupPlans.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListRecordBackupPlansRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListRecordBackupPlansResponse`
        def ListRecordBackupPlans(request)
          body = send_request('ListRecordBackupPlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRecordBackupPlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询录像上云模板列表。

        # @param request: Request instance for ListRecordBackupTemplates.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListRecordBackupTemplatesRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListRecordBackupTemplatesResponse`
        def ListRecordBackupTemplates(request)
          body = send_request('ListRecordBackupTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRecordBackupTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询用户下所有实时上云计划中的通道列表

        # @param request: Request instance for ListRecordPlanChannels.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListRecordPlanChannelsRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListRecordPlanChannelsResponse`
        def ListRecordPlanChannels(request)
          body = send_request('ListRecordPlanChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRecordPlanChannelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询实时上云计划下的设备通道列表

        # @param request: Request instance for ListRecordPlanDevices.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListRecordPlanDevicesRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListRecordPlanDevicesResponse`
        def ListRecordPlanDevices(request)
          body = send_request('ListRecordPlanDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRecordPlanDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询实时上云计划列表

        # @param request: Request instance for ListRecordPlans.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListRecordPlansRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListRecordPlansResponse`
        def ListRecordPlans(request)
          body = send_request('ListRecordPlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRecordPlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询取回任务列表

        # @param request: Request instance for ListRecordRetrieveTasks.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListRecordRetrieveTasksRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListRecordRetrieveTasksResponse`
        def ListRecordRetrieveTasks(request)
          body = send_request('ListRecordRetrieveTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRecordRetrieveTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询实时上云模板列表

        # @param request: Request instance for ListRecordTemplates.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListRecordTemplatesRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListRecordTemplatesResponse`
        def ListRecordTemplates(request)
          body = send_request('ListRecordTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRecordTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询任务的子任务列表

        # @param request: Request instance for ListSubTasks.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListSubTasksRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListSubTasksResponse`
        def ListSubTasks(request)
          body = send_request('ListSubTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSubTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询批量任务和简单任务列表

        # @param request: Request instance for ListTasks.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListTasksRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListTasksResponse`
        def ListTasks(request)
          body = send_request('ListTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询本店里录像下载任务列表

        # @param request: Request instance for ListVideoDownloadTask.
        # @type request: :class:`Tencentcloud::iss::V20230517::ListVideoDownloadTaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::ListVideoDownloadTaskResponse`
        def ListVideoDownloadTask(request)
          body = send_request('ListVideoDownloadTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListVideoDownloadTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取设备本地录像 URL 地址。

        # @param request: Request instance for PlayRecord.
        # @type request: :class:`Tencentcloud::iss::V20230517::PlayRecordRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::PlayRecordResponse`
        def PlayRecord(request)
          body = send_request('PlayRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PlayRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询禁播通道列表

        # @param request: Request instance for QueryForbidPlayChannelList.
        # @type request: :class:`Tencentcloud::iss::V20230517::QueryForbidPlayChannelListRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::QueryForbidPlayChannelListResponse`
        def QueryForbidPlayChannelList(request)
          body = send_request('QueryForbidPlayChannelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryForbidPlayChannelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于同步国标设备的通道（接口调用后，触发向设备请求通道列表，新增的通道入库，设备上已删除的通道需自行删除、后台不自动删除）。

        # @param request: Request instance for RefreshDeviceChannel.
        # @type request: :class:`Tencentcloud::iss::V20230517::RefreshDeviceChannelRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::RefreshDeviceChannelResponse`
        def RefreshDeviceChannel(request)
          body = send_request('RefreshDeviceChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefreshDeviceChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 禁止主、子账号对视频通道的实况预览

        # @param request: Request instance for SetForbidPlayChannels.
        # @type request: :class:`Tencentcloud::iss::V20230517::SetForbidPlayChannelsRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::SetForbidPlayChannelsResponse`
        def SetForbidPlayChannels(request)
          body = send_request('SetForbidPlayChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetForbidPlayChannelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新AI任务

        # @param request: Request instance for UpdateAITask.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateAITaskRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateAITaskResponse`
        def UpdateAITask(request)
          body = send_request('UpdateAITask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAITaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新 AI 任务状态

        # @param request: Request instance for UpdateAITaskStatus.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateAITaskStatusRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateAITaskStatusResponse`
        def UpdateAITaskStatus(request)
          body = send_request('UpdateAITaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAITaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于批量更改设备的组织。

        # @param request: Request instance for UpdateDeviceOrganization.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateDeviceOrganizationRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateDeviceOrganizationResponse`
        def UpdateDeviceOrganization(request)
          body = send_request('UpdateDeviceOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDeviceOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于启用/禁用设备，禁用后拒绝设备注册。

        # @param request: Request instance for UpdateDeviceStatus.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateDeviceStatusRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateDeviceStatusResponse`
        def UpdateDeviceStatus(request)
          body = send_request('UpdateDeviceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDeviceStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改网关信息（支持对网关名称和描述的修改）。

        # @param request: Request instance for UpdateGateway.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateGatewayRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateGatewayResponse`
        def UpdateGateway(request)
          body = send_request('UpdateGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改组织。

        # @param request: Request instance for UpdateOrganization.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateOrganizationRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateOrganizationResponse`
        def UpdateOrganization(request)
          body = send_request('UpdateOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改录像上云计划。

        # @param request: Request instance for UpdateRecordBackupPlan.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateRecordBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateRecordBackupPlanResponse`
        def UpdateRecordBackupPlan(request)
          body = send_request('UpdateRecordBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRecordBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改录像上云模板。

        # @param request: Request instance for UpdateRecordBackupTemplate.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateRecordBackupTemplateRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateRecordBackupTemplateResponse`
        def UpdateRecordBackupTemplate(request)
          body = send_request('UpdateRecordBackupTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRecordBackupTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改实时上云计划

        # @param request: Request instance for UpdateRecordPlan.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateRecordPlanResponse`
        def UpdateRecordPlan(request)
          body = send_request('UpdateRecordPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRecordPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改实时上云模板

        # @param request: Request instance for UpdateRecordTemplate.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateRecordTemplateResponse`
        def UpdateRecordTemplate(request)
          body = send_request('UpdateRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRecordTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改设备的配置信息。

        # @param request: Request instance for UpdateUserDevice.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpdateUserDeviceRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpdateUserDeviceResponse`
        def UpdateUserDevice(request)
          body = send_request('UpdateUserDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUserDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于网关升级（支持对所有待更新的服务一键升级）。

        # @param request: Request instance for UpgradeGateway.
        # @type request: :class:`Tencentcloud::iss::V20230517::UpgradeGatewayRequest`
        # @rtype: :class:`Tencentcloud::iss::V20230517::UpgradeGatewayResponse`
        def UpgradeGateway(request)
          body = send_request('UpgradeGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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