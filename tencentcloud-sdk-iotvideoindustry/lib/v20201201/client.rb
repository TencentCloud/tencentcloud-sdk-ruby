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
  module Iotvideoindustry
    module V20201201
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-01'
            api_endpoint = 'iotvideoindustry.tencentcloudapi.com'
            sdk_version = 'IOTVIDEOINDUSTRY_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口(BindGroupDevices) 用于绑定设备到分组。

        # @param request: Request instance for BindGroupDevices.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::BindGroupDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::BindGroupDevicesResponse`
        def BindGroupDevices(request)
          body = send_request('BindGroupDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindGroupDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ControlChannelLocalRecord）用于对通道本地回放流进行控制，包括暂停、播放、拉动、结束等

        # @param request: Request instance for ControlChannelLocalRecord.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlChannelLocalRecordRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlChannelLocalRecordResponse`
        def ControlChannelLocalRecord(request)
          body = send_request('ControlChannelLocalRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlChannelLocalRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ControlChannelPTZ) 用于对支持GB28181 PTZ信令的设备进行指定通道的远程控制。

        # @param request: Request instance for ControlChannelPTZ.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlChannelPTZRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlChannelPTZResponse`
        def ControlChannelPTZ(request)
          body = send_request('ControlChannelPTZ', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlChannelPTZResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ControlDevicePTZ) 用于对支持GB28181 PTZ信令的设备进行远程控制。
        # 请使用ControlChannelPTZ接口

        # @param request: Request instance for ControlDevicePTZ.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlDevicePTZRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlDevicePTZResponse`
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

        # 看守位控制

        # @param request: Request instance for ControlHomePosition.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlHomePositionRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlHomePositionResponse`
        def ControlHomePosition(request)
          body = send_request('ControlHomePosition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlHomePositionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 预置位控制

        # @param request: Request instance for ControlPreset.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlPresetRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlPresetResponse`
        def ControlPreset(request)
          body = send_request('ControlPreset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlPresetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对回放流进行控制，包括暂停、播放、拉动、结束等
        # 请使用ControlChannelLocalRecord接口

        # @param request: Request instance for ControlRecordStream.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlRecordStreamRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ControlRecordStreamResponse`
        def ControlRecordStream(request)
          body = send_request('ControlRecordStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlRecordStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateDevice) 用于创建设备。

        # @param request: Request instance for CreateDevice.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateDeviceResponse`
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

        # 本接口(CreateDeviceGroup) 用于创建设备管理分组。

        # @param request: Request instance for CreateDeviceGroup.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateDeviceGroupResponse`
        def CreateDeviceGroup(request)
          body = send_request('CreateDeviceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeviceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建直播频道

        # @param request: Request instance for CreateLiveChannel.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateLiveChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateLiveChannelResponse`
        def CreateLiveChannel(request)
          body = send_request('CreateLiveChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建直播录制计划

        # @param request: Request instance for CreateLiveRecordPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateLiveRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateLiveRecordPlanResponse`
        def CreateLiveRecordPlan(request)
          body = send_request('CreateLiveRecordPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveRecordPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建消息转发配置

        # @param request: Request instance for CreateMessageForward.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateMessageForwardRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateMessageForwardResponse`
        def CreateMessageForward(request)
          body = send_request('CreateMessageForward', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMessageForwardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateRecordPlan) 用于创建录制计划，使设备与时间模板绑定，以便及时启动录制
        # 请使用CreateRecordingPlan代替

        # @param request: Request instance for CreateRecordPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateRecordPlanResponse`
        def CreateRecordPlan(request)
          body = send_request('CreateRecordPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRecordPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateRecordingPlan) 用于创建录制计划，使通道与时间模板绑定，以便及时启动录制

        # @param request: Request instance for CreateRecordingPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateRecordingPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateRecordingPlanResponse`
        def CreateRecordingPlan(request)
          body = send_request('CreateRecordingPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRecordingPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建场景

        # @param request: Request instance for CreateScene.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateSceneRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateSceneResponse`
        def CreateScene(request)
          body = send_request('CreateScene', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSceneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateTimeTemplate) 用于根据模板描述的具体录制时间片段，创建定制化的时间模板。

        # @param request: Request instance for CreateTimeTemplate.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateTimeTemplateRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::CreateTimeTemplateResponse`
        def CreateTimeTemplate(request)
          body = send_request('CreateTimeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTimeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除设备下的通道
        # 注意： 在线状态的设备不允许删除

        # @param request: Request instance for DeleteChannel.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteChannelResponse`
        def DeleteChannel(request)
          body = send_request('DeleteChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteDevice)用于删除设备。

        # @param request: Request instance for DeleteDevice.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteDeviceResponse`
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

        # 本接口(DeleteDeviceGroup)用于删除分组。

        # @param request: Request instance for DeleteDeviceGroup.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteDeviceGroupResponse`
        def DeleteDeviceGroup(request)
          body = send_request('DeleteDeviceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除直播接口

        # @param request: Request instance for DeleteLiveChannel.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteLiveChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteLiveChannelResponse`
        def DeleteLiveChannel(request)
          body = send_request('DeleteLiveChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除直播录制计划

        # @param request: Request instance for DeleteLiveRecordPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteLiveRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteLiveRecordPlanResponse`
        def DeleteLiveRecordPlan(request)
          body = send_request('DeleteLiveRecordPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveRecordPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播录像删除

        # @param request: Request instance for DeleteLiveVideoList.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteLiveVideoListRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteLiveVideoListResponse`
        def DeleteLiveVideoList(request)
          body = send_request('DeleteLiveVideoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveVideoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除消息转发配置

        # @param request: Request instance for DeleteMessageForward.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteMessageForwardRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteMessageForwardResponse`
        def DeleteMessageForward(request)
          body = send_request('DeleteMessageForward', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMessageForwardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteRecordPlan)用于删除录制计划
        # 录制计划删除的同时，会停止该录制计划下的全部录制任务。
        # 请使用DeleteRecordingPlan接口

        # @param request: Request instance for DeleteRecordPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteRecordPlanResponse`
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

        # 本接口(DeleteRecordingPlan)用于删除录制计划
        # 录制计划删除的同时，会停止该录制计划下的全部录制任务。

        # @param request: Request instance for DeleteRecordingPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteRecordingPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteRecordingPlanResponse`
        def DeleteRecordingPlan(request)
          body = send_request('DeleteRecordingPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordingPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除场景

        # @param request: Request instance for DeleteScene.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteSceneRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteSceneResponse`
        def DeleteScene(request)
          body = send_request('DeleteScene', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSceneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteTimeTemplate) 用于删除时间模板。

        # @param request: Request instance for DeleteTimeTemplate.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteTimeTemplateRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteTimeTemplateResponse`
        def DeleteTimeTemplate(request)
          body = send_request('DeleteTimeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTimeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除录像存储列表

        # @param request: Request instance for DeleteVideoList.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteVideoListRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteVideoListResponse`
        def DeleteVideoList(request)
          body = send_request('DeleteVideoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVideoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设备告警-删除告警

        # @param request: Request instance for DeleteWarning.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteWarningRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DeleteWarningResponse`
        def DeleteWarning(request)
          body = send_request('DeleteWarning', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWarningResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取异常事件统计

        # @param request: Request instance for DescribeAbnormalEvents.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeAbnormalEventsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeAbnormalEventsResponse`
        def DescribeAbnormalEvents(request)
          body = send_request('DescribeAbnormalEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAllDeviceList) 用于获取设备列表。
        # 请使用DescribeDevicesList接口

        # @param request: Request instance for DescribeAllDeviceList.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeAllDeviceListRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeAllDeviceListResponse`
        def DescribeAllDeviceList(request)
          body = send_request('DescribeAllDeviceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllDeviceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取场景绑定通道列表

        # @param request: Request instance for DescribeBindSceneChannels.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeBindSceneChannelsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeBindSceneChannelsResponse`
        def DescribeBindSceneChannels(request)
          body = send_request('DescribeBindSceneChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindSceneChannelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取场景绑定设备列表

        # @param request: Request instance for DescribeBindSceneDevices.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeBindSceneDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeBindSceneDevicesResponse`
        def DescribeBindSceneDevices(request)
          body = send_request('DescribeBindSceneDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindSceneDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeChannelLocalRecordURL）用于将NVR等设备对应通道本地回放文件，通过GB28181信令推送至云端，并生成对应的实时视频流URL，流地址URL是动态生成，如需重新播放请重新调用此接口获取最新地址。
        # 正常推流，如未设置对应录制计划，且180s无人观看此流，将会被自动掐断。

        # @param request: Request instance for DescribeChannelLocalRecordURL.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeChannelLocalRecordURLRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeChannelLocalRecordURLResponse`
        def DescribeChannelLocalRecordURL(request)
          body = send_request('DescribeChannelLocalRecordURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChannelLocalRecordURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeChannelStreamURL)用于获取设备指定通道实时流地址，地址是动态生成，如重新播放需要调用此接口重新获取最新播放地址。
        # 正常推流，如未设置对应录制计划，且180s无人观看此流，将会被自动掐断。

        # @param request: Request instance for DescribeChannelStreamURL.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeChannelStreamURLRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeChannelStreamURLResponse`
        def DescribeChannelStreamURL(request)
          body = send_request('DescribeChannelStreamURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChannelStreamURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeChannels）用于获取设备下属通道列表

        # @param request: Request instance for DescribeChannels.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeChannelsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeChannelsResponse`
        def DescribeChannels(request)
          body = send_request('DescribeChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChannelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据直播录制计划获取频道列表

        # @param request: Request instance for DescribeChannelsByLiveRecordPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeChannelsByLiveRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeChannelsByLiveRecordPlanResponse`
        def DescribeChannelsByLiveRecordPlan(request)
          body = send_request('DescribeChannelsByLiveRecordPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChannelsByLiveRecordPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询设备统计当前信息

        # @param request: Request instance for DescribeCurrentDeviceData.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeCurrentDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeCurrentDeviceDataResponse`
        def DescribeCurrentDeviceData(request)
          body = send_request('DescribeCurrentDeviceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCurrentDeviceDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定设备详细信息

        # @param request: Request instance for DescribeDevice.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceResponse`
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

        # 获取设备事件

        # @param request: Request instance for DescribeDeviceEvent.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceEventRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceEventResponse`
        def DescribeDeviceEvent(request)
          body = send_request('DescribeDeviceEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDeviceGroup)用于根据设备ID查询设备所在分组信息，可批量查询。

        # @param request: Request instance for DescribeDeviceGroup.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceGroupResponse`
        def DescribeDeviceGroup(request)
          body = send_request('DescribeDeviceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDevicesList) 用于获取设备列表，支持模糊搜索

        # @param request: Request instance for DescribeDeviceList.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceListRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceListResponse`
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

        # 查询设备统计monitor信息

        # @param request: Request instance for DescribeDeviceMonitorData.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceMonitorDataRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceMonitorDataResponse`
        def DescribeDeviceMonitorData(request)
          body = send_request('DescribeDeviceMonitorData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceMonitorDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDevicePassWord)用于查询设备密码。

        # @param request: Request instance for DescribeDevicePassWord.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDevicePassWordRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDevicePassWordResponse`
        def DescribeDevicePassWord(request)
          body = send_request('DescribeDevicePassWord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicePassWordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDeviceStreams)用于获取设备实时流地址。
        # 请使用DescribeChannelStreamURL接口

        # @param request: Request instance for DescribeDeviceStreams.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceStreamsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeDeviceStreamsResponse`
        def DescribeDeviceStreams(request)
          body = send_request('DescribeDeviceStreams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceStreamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeGroupById)用于根据分组ID查询分组。

        # @param request: Request instance for DescribeGroupById.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeGroupByIdRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeGroupByIdResponse`
        def DescribeGroupById(request)
          body = send_request('DescribeGroupById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据分组路径查询分组

        # @param request: Request instance for DescribeGroupByPath.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeGroupByPathRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeGroupByPathResponse`
        def DescribeGroupByPath(request)
          body = send_request('DescribeGroupByPath', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupByPathResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeGroupDevices)用于查询分组下的设备列表。

        # @param request: Request instance for DescribeGroupDevices.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeGroupDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeGroupDevicesResponse`
        def DescribeGroupDevices(request)
          body = send_request('DescribeGroupDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeGroups)用于批量查询分组信息。

        # @param request: Request instance for DescribeGroups.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeGroupsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeGroupsResponse`
        def DescribeGroups(request)
          body = send_request('DescribeGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取IPC设备下属通道
        # 请使用DescribeChannels接口

        # @param request: Request instance for DescribeIPCChannels.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeIPCChannelsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeIPCChannelsResponse`
        def DescribeIPCChannels(request)
          body = send_request('DescribeIPCChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIPCChannelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播详情接口

        # @param request: Request instance for DescribeLiveChannel.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveChannelResponse`
        def DescribeLiveChannel(request)
          body = send_request('DescribeLiveChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播列表接口

        # @param request: Request instance for DescribeLiveChannelList.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveChannelListRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveChannelListResponse`
        def DescribeLiveChannelList(request)
          body = send_request('DescribeLiveChannelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveChannelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取直播录制计划详情

        # @param request: Request instance for DescribeLiveRecordPlanById.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveRecordPlanByIdRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveRecordPlanByIdResponse`
        def DescribeLiveRecordPlanById(request)
          body = send_request('DescribeLiveRecordPlanById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveRecordPlanByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取直播录制计划列表

        # @param request: Request instance for DescribeLiveRecordPlanIds.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveRecordPlanIdsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveRecordPlanIdsResponse`
        def DescribeLiveRecordPlanIds(request)
          body = send_request('DescribeLiveRecordPlanIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveRecordPlanIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播拉流接口

        # @param request: Request instance for DescribeLiveStream.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveStreamResponse`
        def DescribeLiveStream(request)
          body = send_request('DescribeLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播录像回放列表

        # @param request: Request instance for DescribeLiveVideoList.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveVideoListRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeLiveVideoListResponse`
        def DescribeLiveVideoList(request)
          body = send_request('DescribeLiveVideoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveVideoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看消息转发配置详情

        # @param request: Request instance for DescribeMessageForward.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeMessageForwardRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeMessageForwardResponse`
        def DescribeMessageForward(request)
          body = send_request('DescribeMessageForward', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMessageForwardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看消息转发配置列表

        # @param request: Request instance for DescribeMessageForwards.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeMessageForwardsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeMessageForwardsResponse`
        def DescribeMessageForwards(request)
          body = send_request('DescribeMessageForwards', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMessageForwardsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运营中心-设备录像存储统计

        # @param request: Request instance for DescribeMonitorDataByDate.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeMonitorDataByDateRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeMonitorDataByDateResponse`
        def DescribeMonitorDataByDate(request)
          body = send_request('DescribeMonitorDataByDate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMonitorDataByDateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取预置位列表

        # @param request: Request instance for DescribePresetList.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribePresetListRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribePresetListResponse`
        def DescribePresetList(request)
          body = send_request('DescribePresetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePresetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeRecordDatesByChannel)用于查询设备含有录像文件的日期列表。

        # @param request: Request instance for DescribeRecordDatesByChannel.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordDatesByChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordDatesByChannelResponse`
        def DescribeRecordDatesByChannel(request)
          body = send_request('DescribeRecordDatesByChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordDatesByChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播录像存储日期列表

        # @param request: Request instance for DescribeRecordDatesByLive.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordDatesByLiveRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordDatesByLiveResponse`
        def DescribeRecordDatesByLive(request)
          body = send_request('DescribeRecordDatesByLive', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordDatesByLiveResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取回放视频流地址
        # 请使用DescribeChannelLocalRecordURL接口

        # RecordId和StartTime/EndTime互斥
        # 当存在RecordId时，StartTime和EndTime无效
        # 当RecordId为空，StartTime和EndTime生效

        # @param request: Request instance for DescribeRecordStream.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordStreamRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordStreamResponse`
        def DescribeRecordStream(request)
          body = send_request('DescribeRecordStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeRecordingPlanById)用于根据录制计划ID获取录制计划。

        # @param request: Request instance for DescribeRecordingPlanById.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordingPlanByIdRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordingPlanByIdResponse`
        def DescribeRecordingPlanById(request)
          body = send_request('DescribeRecordingPlanById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordingPlanByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeRecordingPlans)用于获取用户的全部录制计划。

        # @param request: Request instance for DescribeRecordingPlans.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordingPlansRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeRecordingPlansResponse`
        def DescribeRecordingPlans(request)
          body = send_request('DescribeRecordingPlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordingPlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取SIP服务器相关配置，用户可以通过这些配置项，将设备通过GB28181协议注册到本服务。

        # @param request: Request instance for DescribeSIPServer.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeSIPServerRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeSIPServerResponse`
        def DescribeSIPServer(request)
          body = send_request('DescribeSIPServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSIPServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 场景详情

        # @param request: Request instance for DescribeScene.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeSceneRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeSceneResponse`
        def DescribeScene(request)
          body = send_request('DescribeScene', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSceneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取场景列表

        # @param request: Request instance for DescribeScenes.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeScenesRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeScenesResponse`
        def DescribeScenes(request)
          body = send_request('DescribeScenes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScenesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeStatisticDetails)用于查询指定统计项详情，返回结果按天为单位聚合，支持的最大时间查询范围为31天。

        # @param request: Request instance for DescribeStatisticDetails.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeStatisticDetailsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeStatisticDetailsResponse`
        def DescribeStatisticDetails(request)
          body = send_request('DescribeStatisticDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStatisticDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeStatisticSummary)用于查询用户昨日的概览数据。

        # @param request: Request instance for DescribeStatisticSummary.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeStatisticSummaryRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeStatisticSummaryResponse`
        def DescribeStatisticSummary(request)
          body = send_request('DescribeStatisticSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStatisticSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeSubGroups)用于查询分组下的子分组列表。

        # @param request: Request instance for DescribeSubGroups.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeSubGroupsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeSubGroupsResponse`
        def DescribeSubGroups(request)
          body = send_request('DescribeSubGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主设备订阅状态

        # @param request: Request instance for DescribeSubscriptionStatus.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeSubscriptionStatusRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeSubscriptionStatusResponse`
        def DescribeSubscriptionStatus(request)
          body = send_request('DescribeSubscriptionStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubscriptionStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据时间获取云端录制文件列表

        # @param request: Request instance for DescribeVideoList.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeVideoListRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeVideoListResponse`
        def DescribeVideoList(request)
          body = send_request('DescribeVideoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeVideoListByChannel)用于查询指定通道的录制文件列表

        # @param request: Request instance for DescribeVideoListByChannel.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeVideoListByChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeVideoListByChannelResponse`
        def DescribeVideoListByChannel(request)
          body = send_request('DescribeVideoListByChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoListByChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 告警等级列表

        # @param request: Request instance for DescribeWarnMod.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeWarnModRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeWarnModResponse`
        def DescribeWarnMod(request)
          body = send_request('DescribeWarnMod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWarnModResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取告警列表

        # @param request: Request instance for DescribeWarnings.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeWarningsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeWarningsResponse`
        def DescribeWarnings(request)
          body = send_request('DescribeWarnings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWarningsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取X-P2P的统计数据

        # @param request: Request instance for DescribeXP2PData.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeXP2PDataRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::DescribeXP2PDataResponse`
        def DescribeXP2PData(request)
          body = send_request('DescribeXP2PData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeXP2PDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(GetRecordDatesByDev)用于查询设备含有录像文件的日期列表。
        # 请使用DescribeRecordDatesByChannel接口

        # @param request: Request instance for GetRecordDatesByDev.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::GetRecordDatesByDevRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::GetRecordDatesByDevResponse`
        def GetRecordDatesByDev(request)
          body = send_request('GetRecordDatesByDev', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRecordDatesByDevResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(GetRecordPlanByDev)用于根据设备ID查询其绑定的录制计划.

        # @param request: Request instance for GetRecordPlanByDev.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::GetRecordPlanByDevRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::GetRecordPlanByDevResponse`
        def GetRecordPlanByDev(request)
          body = send_request('GetRecordPlanByDev', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRecordPlanByDevResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(GetRecordPlanById)用于根据录制计划ID获取录制计划。
        # 请使用DescribeRecordingPlanById接口

        # @param request: Request instance for GetRecordPlanById.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::GetRecordPlanByIdRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::GetRecordPlanByIdResponse`
        def GetRecordPlanById(request)
          body = send_request('GetRecordPlanById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRecordPlanByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(GetRecordPlans)用于获取用户的全部录制计划。
        # 请使用DescribeRecordingPlans接口

        # @param request: Request instance for GetRecordPlans.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::GetRecordPlansRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::GetRecordPlansResponse`
        def GetRecordPlans(request)
          body = send_request('GetRecordPlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRecordPlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(GetTimeTemplateById)用于根据模板ID获取时间模板详情。

        # @param request: Request instance for GetTimeTemplateById.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::GetTimeTemplateByIdRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::GetTimeTemplateByIdResponse`
        def GetTimeTemplateById(request)
          body = send_request('GetTimeTemplateById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTimeTemplateByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(GetTimeTemplates)用于获取时间模板列表。

        # @param request: Request instance for GetTimeTemplates.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::GetTimeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::GetTimeTemplatesResponse`
        def GetTimeTemplates(request)
          body = send_request('GetTimeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTimeTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(GetVideoListByCon)用于查询设备的录制文件列表
        # 请使用DescribeVideoListByChannel接口

        # @param request: Request instance for GetVideoListByCon.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::GetVideoListByConRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::GetVideoListByConResponse`
        def GetVideoListByCon(request)
          body = send_request('GetVideoListByCon', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetVideoListByConResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播录制计划绑定解绑直播频道

        # @param request: Request instance for ModifyBindPlanLiveChannel.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyBindPlanLiveChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyBindPlanLiveChannelResponse`
        def ModifyBindPlanLiveChannel(request)
          body = send_request('ModifyBindPlanLiveChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBindPlanLiveChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyBindRecordingPlan)用于更新录制计划绑定的通道

        # @param request: Request instance for ModifyBindRecordingPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyBindRecordingPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyBindRecordingPlanResponse`
        def ModifyBindRecordingPlan(request)
          body = send_request('ModifyBindRecordingPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBindRecordingPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 场景绑定解绑通道接口

        # @param request: Request instance for ModifyBindSceneChannels.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyBindSceneChannelsRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyBindSceneChannelsResponse`
        def ModifyBindSceneChannels(request)
          body = send_request('ModifyBindSceneChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBindSceneChannelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 场景绑定/解绑通道接口

        # @param request: Request instance for ModifyBindSceneDevice.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyBindSceneDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyBindSceneDeviceResponse`
        def ModifyBindSceneDevice(request)
          body = send_request('ModifyBindSceneDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBindSceneDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDeviceData)用于编辑设备信息。

        # @param request: Request instance for ModifyDeviceData.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyDeviceDataRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyDeviceDataResponse`
        def ModifyDeviceData(request)
          body = send_request('ModifyDeviceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑直播接口

        # @param request: Request instance for ModifyLiveChannel.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyLiveChannelRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyLiveChannelResponse`
        def ModifyLiveChannel(request)
          body = send_request('ModifyLiveChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑直播录制计划

        # @param request: Request instance for ModifyLiveRecordPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyLiveRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyLiveRecordPlanResponse`
        def ModifyLiveRecordPlan(request)
          body = send_request('ModifyLiveRecordPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveRecordPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播录像编辑

        # @param request: Request instance for ModifyLiveVideo.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyLiveVideoRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyLiveVideoResponse`
        def ModifyLiveVideo(request)
          body = send_request('ModifyLiveVideo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveVideoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改消息转发配置

        # @param request: Request instance for ModifyMessageForward.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyMessageForwardRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyMessageForwardResponse`
        def ModifyMessageForward(request)
          body = send_request('ModifyMessageForward', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMessageForwardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑预置位信息

        # @param request: Request instance for ModifyPreset.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyPresetRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyPresetResponse`
        def ModifyPreset(request)
          body = send_request('ModifyPreset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPresetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyRecordingPlan)用于更新录制计划。

        # @param request: Request instance for ModifyRecordingPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyRecordingPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyRecordingPlanResponse`
        def ModifyRecordingPlan(request)
          body = send_request('ModifyRecordingPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRecordingPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改场景

        # @param request: Request instance for ModifyScene.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifySceneRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifySceneResponse`
        def ModifyScene(request)
          body = send_request('ModifyScene', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySceneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑设备订阅状态

        # @param request: Request instance for ModifySubscriptionStatus.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifySubscriptionStatusRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifySubscriptionStatusResponse`
        def ModifySubscriptionStatus(request)
          body = send_request('ModifySubscriptionStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubscriptionStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改录像存储列表

        # @param request: Request instance for ModifyVideoInfo.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyVideoInfoRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ModifyVideoInfoResponse`
        def ModifyVideoInfo(request)
          body = send_request('ModifyVideoInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVideoInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置设备告警

        # @param request: Request instance for ResetWarning.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::ResetWarningRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::ResetWarningResponse`
        def ResetWarning(request)
          body = send_request('ResetWarning', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetWarningResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(UpdateDeviceGroup)用于修改分组信息。

        # @param request: Request instance for UpdateDeviceGroup.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::UpdateDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::UpdateDeviceGroupResponse`
        def UpdateDeviceGroup(request)
          body = send_request('UpdateDeviceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDeviceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(UpdateDevicePassWord)用于修改设备密码。

        # @param request: Request instance for UpdateDevicePassWord.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::UpdateDevicePassWordRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::UpdateDevicePassWordResponse`
        def UpdateDevicePassWord(request)
          body = send_request('UpdateDevicePassWord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDevicePassWordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(UpdateRecordPlan)用于更新录制计划。
        # 请使用 ModifyRecordingPlan接口和ModifyBindRecordingPlan接口

        # @param request: Request instance for UpdateRecordPlan.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::UpdateRecordPlanRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::UpdateRecordPlanResponse`
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

        # 本接口(UpdateTimeTemplate)用于更新时间模板。

        # @param request: Request instance for UpdateTimeTemplate.
        # @type request: :class:`Tencentcloud::iotvideoindustry::V20201201::UpdateTimeTemplateRequest`
        # @rtype: :class:`Tencentcloud::iotvideoindustry::V20201201::UpdateTimeTemplateResponse`
        def UpdateTimeTemplate(request)
          body = send_request('UpdateTimeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTimeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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