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
  module Weilingwith
    module V20230427
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-04-27'
            api_endpoint = 'weilingwith.tencentcloudapi.com'
            sdk_version = 'WEILINGWITH_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加告警处理记录

        # @param request: Request instance for AddAlarmProcessRecord.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::AddAlarmProcessRecordRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::AddAlarmProcessRecordResponse`
        def AddAlarmProcessRecord(request)
          body = send_request('AddAlarmProcessRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAlarmProcessRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 单个/批量新增设备

        # @param request: Request instance for BatchCreateDevice.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::BatchCreateDeviceRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::BatchCreateDeviceResponse`
        def BatchCreateDevice(request)
          body = send_request('BatchCreateDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchCreateDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for BatchDeleteDevice.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::BatchDeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::BatchDeleteDeviceResponse`
        def BatchDeleteDevice(request)
          body = send_request('BatchDeleteDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量消警

        # @param request: Request instance for BatchKillAlarm.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::BatchKillAlarmRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::BatchKillAlarmResponse`
        def BatchKillAlarm(request)
          body = send_request('BatchKillAlarm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchKillAlarmResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量上报应用消息

        # @param request: Request instance for BatchReportAppMessage.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::BatchReportAppMessageRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::BatchReportAppMessageResponse`
        def BatchReportAppMessage(request)
          body = send_request('BatchReportAppMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchReportAppMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 变更告警状态

        # @param request: Request instance for ChangeAlarmStatus.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::ChangeAlarmStatusRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::ChangeAlarmStatusResponse`
        def ChangeAlarmStatus(request)
          body = send_request('ChangeAlarmStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeAlarmStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云台控制

        # @param request: Request instance for ControlCameraPTZ.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::ControlCameraPTZRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::ControlCameraPTZResponse`
        def ControlCameraPTZ(request)
          body = send_request('ControlCameraPTZ', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlCameraPTZResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设备控制（单个、批量控制）

        # @param request: Request instance for ControlDevice.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::ControlDeviceRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::ControlDeviceResponse`
        def ControlDevice(request)
          body = send_request('ControlDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调用方应用，创建调用租户API的授权令牌。

        # @param request: Request instance for CreateApplicationToken.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::CreateApplicationTokenRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::CreateApplicationTokenResponse`
        def CreateApplicationToken(request)
          body = send_request('CreateApplicationToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除设备分组

        # @param request: Request instance for DeleteDeviceGroup.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DeleteDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DeleteDeviceGroupResponse`
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

        # 动作列表查询

        # @param request: Request instance for DescribeActionList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeActionListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeActionListResponse`
        def DescribeActionList(request)
          body = send_request('DescribeActionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeActionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据标签获取行政区划列表

        # @param request: Request instance for DescribeAdministrationByTag.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeAdministrationByTagRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeAdministrationByTagResponse`
        def DescribeAdministrationByTag(request)
          body = send_request('DescribeAdministrationByTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAdministrationByTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 告警级别枚举获取

        # @param request: Request instance for DescribeAlarmLevelList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeAlarmLevelListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeAlarmLevelListResponse`
        def DescribeAlarmLevelList(request)
          body = send_request('DescribeAlarmLevelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmLevelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 告警列表查询

        # @param request: Request instance for DescribeAlarmList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeAlarmListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeAlarmListResponse`
        def DescribeAlarmList(request)
          body = send_request('DescribeAlarmList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用来查询系统中的告警状态列表

        # @param request: Request instance for DescribeAlarmStatusList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeAlarmStatusListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeAlarmStatusListResponse`
        def DescribeAlarmStatusList(request)
          body = send_request('DescribeAlarmStatusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmStatusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 告警类型获取

        # @param request: Request instance for DescribeAlarmTypeList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeAlarmTypeListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeAlarmTypeListResponse`
        def DescribeAlarmTypeList(request)
          body = send_request('DescribeAlarmTypeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmTypeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定空间关联的应用列表

        # @param request: Request instance for DescribeApplicationList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeApplicationListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeApplicationListResponse`
        def DescribeApplicationList(request)
          body = send_request('DescribeApplicationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询建筑列表

        # @param request: Request instance for DescribeBuildingList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeBuildingListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeBuildingListResponse`
        def DescribeBuildingList(request)
          body = send_request('DescribeBuildingList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBuildingListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询建筑三维模型

        # @param request: Request instance for DescribeBuildingModel.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeBuildingModelRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeBuildingModelResponse`
        def DescribeBuildingModel(request)
          body = send_request('DescribeBuildingModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBuildingModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询建筑信息

        # @param request: Request instance for DescribeBuildingProfile.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeBuildingProfileRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeBuildingProfileResponse`
        def DescribeBuildingProfile(request)
          body = send_request('DescribeBuildingProfile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBuildingProfileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取视频扩展信息

        # @param request: Request instance for DescribeCameraExtendInfo.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeCameraExtendInfoRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeCameraExtendInfoResponse`
        def DescribeCameraExtendInfo(request)
          body = send_request('DescribeCameraExtendInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCameraExtendInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 老微瓴后续不继续更新

        # 通过城市id查询工作空间列表

        # @param request: Request instance for DescribeCityWorkspaceList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeCityWorkspaceListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeCityWorkspaceListResponse`
        def DescribeCityWorkspaceList(request)
          body = send_request('DescribeCityWorkspaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCityWorkspaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设备分组列表

        # @param request: Request instance for DescribeDeviceGroupList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceGroupListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceGroupListResponse`
        def DescribeDeviceGroupList(request)
          body = send_request('DescribeDeviceGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设备列表查询/单个查询（支持通过筛选条件查询，设备类型、标签、PID、空间）

        # @param request: Request instance for DescribeDeviceList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceListResponse`
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

        # 获取设备影子数据

        # @param request: Request instance for DescribeDeviceShadowList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceShadowListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceShadowListResponse`
        def DescribeDeviceShadowList(request)
          body = send_request('DescribeDeviceShadowList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceShadowListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设备状态获取

        # @param request: Request instance for DescribeDeviceStatusList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceStatusListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceStatusListResponse`
        def DescribeDeviceStatusList(request)
          body = send_request('DescribeDeviceStatusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceStatusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设备状态统计

        # @param request: Request instance for DescribeDeviceStatusStat.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceStatusStatRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceStatusStatResponse`
        def DescribeDeviceStatusStat(request)
          body = send_request('DescribeDeviceStatusStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceStatusStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 标签列表查询

        # @param request: Request instance for DescribeDeviceTagList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceTagListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceTagListResponse`
        def DescribeDeviceTagList(request)
          body = send_request('DescribeDeviceTagList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceTagListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取设备的设备类型列表

        # @param request: Request instance for DescribeDeviceTypeList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceTypeListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeDeviceTypeListResponse`
        def DescribeDeviceTypeList(request)
          body = send_request('DescribeDeviceTypeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceTypeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询边缘应用凭证

        # @param request: Request instance for DescribeEdgeApplicationToken.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeEdgeApplicationTokenRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeEdgeApplicationTokenResponse`
        def DescribeEdgeApplicationToken(request)
          body = send_request('DescribeEdgeApplicationToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeApplicationTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询分页构件信息

        # @param request: Request instance for DescribeElementProfilePage.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeElementProfilePageRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeElementProfilePageResponse`
        def DescribeElementProfilePage(request)
          body = send_request('DescribeElementProfilePage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeElementProfilePageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询构件树

        # @param request: Request instance for DescribeElementProfileTree.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeElementProfileTreeRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeElementProfileTreeResponse`
        def DescribeElementProfileTree(request)
          body = send_request('DescribeElementProfileTree', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeElementProfileTreeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 事件列表查询

        # @param request: Request instance for DescribeEventList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeEventListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeEventListResponse`
        def DescribeEventList(request)
          body = send_request('DescribeEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取文件下载URL

        # @param request: Request instance for DescribeFileDownloadURL.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeFileDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeFileDownloadURLResponse`
        def DescribeFileDownloadURL(request)
          body = send_request('DescribeFileDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileDownloadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文件上传接口

        # @param request: Request instance for DescribeFileUploadURL.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeFileUploadURLRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeFileUploadURLResponse`
        def DescribeFileUploadURL(request)
          body = send_request('DescribeFileUploadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileUploadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询接口列表

        # @param request: Request instance for DescribeInterfaceList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeInterfaceListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeInterfaceListResponse`
        def DescribeInterfaceList(request)
          body = send_request('DescribeInterfaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInterfaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 联动规则列表查询

        # @param request: Request instance for DescribeLinkRuleList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeLinkRuleListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeLinkRuleListResponse`
        def DescribeLinkRuleList(request)
          body = send_request('DescribeLinkRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLinkRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 模型列表查询/单个查询（产品模型/标准模型）

        # @param request: Request instance for DescribeModelList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeModelListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeModelListResponse`
        def DescribeModelList(request)
          body = send_request('DescribeModelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 产品列表查询

        # @param request: Request instance for DescribeProductList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeProductListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeProductListResponse`
        def DescribeProductList(request)
          body = send_request('DescribeProductList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询构件属性（详情）

        # @param request: Request instance for DescribePropertyList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribePropertyListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribePropertyListResponse`
        def DescribePropertyList(request)
          body = send_request('DescribePropertyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePropertyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 联动规则详情查询

        # @param request: Request instance for DescribeRuleDetail.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeRuleDetailResponse`
        def DescribeRuleDetail(request)
          body = send_request('DescribeRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询场景列表

        # @param request: Request instance for DescribeSceneList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeSceneListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeSceneListResponse`
        def DescribeSceneList(request)
          body = send_request('DescribeSceneList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSceneListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定空间设备编号列表

        # @param request: Request instance for DescribeSpaceDeviceIdList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceDeviceIdListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceDeviceIdListResponse`
        def DescribeSpaceDeviceIdList(request)
          body = send_request('DescribeSpaceDeviceIdList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpaceDeviceIdListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定空间下设备与构件绑定关系列表

        # @param request: Request instance for DescribeSpaceDeviceRelationList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceDeviceRelationListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceDeviceRelationListResponse`
        def DescribeSpaceDeviceRelationList(request)
          body = send_request('DescribeSpaceDeviceRelationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpaceDeviceRelationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询设备绑定的空间信息

        # @param request: Request instance for DescribeSpaceInfoByDeviceId.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceInfoByDeviceIdRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceInfoByDeviceIdResponse`
        def DescribeSpaceInfoByDeviceId(request)
          body = send_request('DescribeSpaceInfoByDeviceId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpaceInfoByDeviceIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询设备绑定的空间层级关系

        # @param request: Request instance for DescribeSpaceRelationByDeviceId.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceRelationByDeviceIdRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceRelationByDeviceIdResponse`
        def DescribeSpaceRelationByDeviceId(request)
          body = send_request('DescribeSpaceRelationByDeviceId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpaceRelationByDeviceIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询空间分类

        # @param request: Request instance for DescribeSpaceTypeList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceTypeListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeSpaceTypeListResponse`
        def DescribeSpaceTypeList(request)
          body = send_request('DescribeSpaceTypeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpaceTypeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询租户楼栋数量和楼栋建筑面积

        # @param request: Request instance for DescribeTenantBuildingCountAndArea.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeTenantBuildingCountAndAreaRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeTenantBuildingCountAndAreaResponse`
        def DescribeTenantBuildingCountAndArea(request)
          body = send_request('DescribeTenantBuildingCountAndArea', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTenantBuildingCountAndAreaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询租户组织部门列表

        # @param request: Request instance for DescribeTenantDepartmentList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeTenantDepartmentListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeTenantDepartmentListResponse`
        def DescribeTenantDepartmentList(request)
          body = send_request('DescribeTenantDepartmentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTenantDepartmentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询租户人员列表

        # @param request: Request instance for DescribeTenantUserList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeTenantUserListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeTenantUserListResponse`
        def DescribeTenantUserList(request)
          body = send_request('DescribeTenantUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTenantUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云录像接口

        # @param request: Request instance for DescribeVideoCloudRecord.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeVideoCloudRecordRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeVideoCloudRecordResponse`
        def DescribeVideoCloudRecord(request)
          body = send_request('DescribeVideoCloudRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoCloudRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实时流接口

        # @param request: Request instance for DescribeVideoLiveStream.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeVideoLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeVideoLiveStreamResponse`
        def DescribeVideoLiveStream(request)
          body = send_request('DescribeVideoLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoLiveStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 历史流接口

        # @param request: Request instance for DescribeVideoRecordStream.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeVideoRecordStreamRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeVideoRecordStreamResponse`
        def DescribeVideoRecordStream(request)
          body = send_request('DescribeVideoRecordStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoRecordStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询项目空间楼栋数量与建筑面积

        # @param request: Request instance for DescribeWorkSpaceBuildingCountAndArea.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkSpaceBuildingCountAndAreaRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkSpaceBuildingCountAndAreaResponse`
        def DescribeWorkSpaceBuildingCountAndArea(request)
          body = send_request('DescribeWorkSpaceBuildingCountAndArea', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkSpaceBuildingCountAndAreaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取租户下的空间列表

        # @param request: Request instance for DescribeWorkspaceList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkspaceListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkspaceListResponse`
        def DescribeWorkspaceList(request)
          body = send_request('DescribeWorkspaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询项目空间人员列表

        # @param request: Request instance for DescribeWorkspaceUserList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkspaceUserListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkspaceUserListResponse`
        def DescribeWorkspaceUserList(request)
          body = send_request('DescribeWorkspaceUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspaceUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改设备自定义字段值

        # @param request: Request instance for ModifyDeviceField.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::ModifyDeviceFieldRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::ModifyDeviceFieldResponse`
        def ModifyDeviceField(request)
          body = send_request('ModifyDeviceField', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceFieldResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改设备组

        # @param request: Request instance for ModifyDeviceGroup.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::ModifyDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::ModifyDeviceGroupResponse`
        def ModifyDeviceGroup(request)
          body = send_request('ModifyDeviceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改设备名字

        # @param request: Request instance for ModifyDeviceName.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::ModifyDeviceNameRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::ModifyDeviceNameResponse`
        def ModifyDeviceName(request)
          body = send_request('ModifyDeviceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改设备标签

        # @param request: Request instance for ModifyDeviceTag.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::ModifyDeviceTagRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::ModifyDeviceTagResponse`
        def ModifyDeviceTag(request)
          body = send_request('ModifyDeviceTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上报应用消息

        # @param request: Request instance for ReportAppMessage.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::ReportAppMessageRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::ReportAppMessageResponse`
        def ReportAppMessage(request)
          body = send_request('ReportAppMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportAppMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设备分组新增/修改

        # @param request: Request instance for SaveDeviceGroup.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::SaveDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::SaveDeviceGroupResponse`
        def SaveDeviceGroup(request)
          body = send_request('SaveDeviceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SaveDeviceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 断流接口

        # @param request: Request instance for StopVideoStreaming.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::StopVideoStreamingRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::StopVideoStreamingResponse`
        def StopVideoStreaming(request)
          body = send_request('StopVideoStreaming', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopVideoStreamingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改工作空间园区属性

        # @param request: Request instance for UpdateWorkspaceParkAttributes.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::UpdateWorkspaceParkAttributesRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::UpdateWorkspaceParkAttributesResponse`
        def UpdateWorkspaceParkAttributes(request)
          body = send_request('UpdateWorkspaceParkAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateWorkspaceParkAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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