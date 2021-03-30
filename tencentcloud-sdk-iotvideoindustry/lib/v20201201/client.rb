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
        @@api_version = '2020-12-01'
        @@endpoint = 'iotvideoindustry.tencentcloudapi.com'
        @@sdk_version = 'IOTVIDEOINDUSTRY_' + File.read(File.expand_path('../VERSION', __dir__)).strip


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

        # 本接口(ControlDevicePTZ) 用于对支持GB28181 PTZ信令的设备进行远程控制。

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

        # 本接口(CreateRecordPlan) 用于创建录制计划，使设备与时间模板绑定，以便及时启动录制

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

        # 本接口(DeleteRecordPlan)用于删除录制计划
        # 录制计划删除的同时，会停止该录制计划下的全部录制任务。

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

        # 本接口(DescribeAllDeviceList) 用于获取设备列表。

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

        # 本接口(GetRecordDatesByDev)用于查询设备含有录像文件的日期列表。

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