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
  module Mna
    module V20210119
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-01-19'
            api_endpoint = 'mna.tencentcloudapi.com'
            sdk_version = 'MNA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 激活硬件设备

        # @param request: Request instance for ActivateHardware.
        # @type request: :class:`Tencentcloud::mna::V20210119::ActivateHardwareRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::ActivateHardwareResponse`
        def ActivateHardware(request)
          body = send_request('ActivateHardware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActivateHardwareResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建设备记录

        # @param request: Request instance for AddDevice.
        # @type request: :class:`Tencentcloud::mna::V20210119::AddDeviceRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::AddDeviceResponse`
        def AddDevice(request)
          body = send_request('AddDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建分组

        # @param request: Request instance for AddGroup.
        # @type request: :class:`Tencentcloud::mna::V20210119::AddGroupRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::AddGroupResponse`
        def AddGroup(request)
          body = send_request('AddGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加硬件设备，生成未激活的硬件设备，可支持批量添加

        # @param request: Request instance for AddHardware.
        # @type request: :class:`Tencentcloud::mna::V20210119::AddHardwareRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::AddHardwareResponse`
        def AddHardware(request)
          body = send_request('AddHardware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddHardwareResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建互通规则

        # @param request: Request instance for AddL3Conn.
        # @type request: :class:`Tencentcloud::mna::V20210119::AddL3ConnRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::AddL3ConnResponse`
        def AddL3Conn(request)
          body = send_request('AddL3Conn', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddL3ConnResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过此接口设置和更新预置密钥

        # @param request: Request instance for CreateEncryptedKey.
        # @type request: :class:`Tencentcloud::mna::V20210119::CreateEncryptedKeyRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::CreateEncryptedKeyResponse`
        def CreateEncryptedKey(request)
          body = send_request('CreateEncryptedKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEncryptedKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 产品下线

        # 移动网络发起Qos加速过程

        # @param request: Request instance for CreateQos.
        # @type request: :class:`Tencentcloud::mna::V20210119::CreateQosRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::CreateQosResponse`
        def CreateQos(request)
          body = send_request('CreateQos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateQosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除设备信息

        # @param request: Request instance for DeleteDevice.
        # @type request: :class:`Tencentcloud::mna::V20210119::DeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::DeleteDeviceResponse`
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

        # 删除分组

        # @param request: Request instance for DeleteGroup.
        # @type request: :class:`Tencentcloud::mna::V20210119::DeleteGroupRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::DeleteGroupResponse`
        def DeleteGroup(request)
          body = send_request('DeleteGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除互通规则

        # @param request: Request instance for DeleteL3Conn.
        # @type request: :class:`Tencentcloud::mna::V20210119::DeleteL3ConnRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::DeleteL3ConnResponse`
        def DeleteL3Conn(request)
          body = send_request('DeleteL3Conn', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL3ConnResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 产品下线

        # 移动网络停止Qos加速过程

        # @param request: Request instance for DeleteQos.
        # @type request: :class:`Tencentcloud::mna::V20210119::DeleteQosRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::DeleteQosResponse`
        def DeleteQos(request)
          body = send_request('DeleteQos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteQosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 产品下线

        # 获取Qos加速状态

        # @param request: Request instance for DescribeQos.
        # @type request: :class:`Tencentcloud::mna::V20210119::DescribeQosRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::DescribeQosResponse`
        def DescribeQos(request)
          body = send_request('DescribeQos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下载活跃设备数量统计

        # @param request: Request instance for DownloadActiveDeviceCount.
        # @type request: :class:`Tencentcloud::mna::V20210119::DownloadActiveDeviceCountRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::DownloadActiveDeviceCountResponse`
        def DownloadActiveDeviceCount(request)
          body = send_request('DownloadActiveDeviceCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadActiveDeviceCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 活跃设备数量统计

        # @param request: Request instance for GetActiveDeviceCount.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetActiveDeviceCountRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetActiveDeviceCountResponse`
        def GetActiveDeviceCount(request)
          body = send_request('GetActiveDeviceCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetActiveDeviceCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过指定设备的ID查找设备详细信息

        # @param request: Request instance for GetDevice.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetDeviceRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetDeviceResponse`
        def GetDevice(request)
          body = send_request('GetDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设备付费模式

        # @param request: Request instance for GetDevicePayMode.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetDevicePayModeRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetDevicePayModeResponse`
        def GetDevicePayMode(request)
          body = send_request('GetDevicePayMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDevicePayModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设备信息列表

        # @param request: Request instance for GetDevices.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetDevicesRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetDevicesResponse`
        def GetDevices(request)
          body = send_request('GetDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据AppId查询用户设置的流量告警信息，包括阈值，回调url和key

        # @param request: Request instance for GetFlowAlarmInfo.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetFlowAlarmInfoRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetFlowAlarmInfoResponse`
        def GetFlowAlarmInfo(request)
          body = send_request('GetFlowAlarmInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFlowAlarmInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取流量包列表

        # @param request: Request instance for GetFlowPackages.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetFlowPackagesRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetFlowPackagesResponse`
        def GetFlowPackages(request)
          body = send_request('GetFlowPackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFlowPackagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定设备Id，指定时间点数据流量使用情况

        # @param request: Request instance for GetFlowStatistic.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetFlowStatisticRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetFlowStatisticResponse`
        def GetFlowStatistic(request)
          body = send_request('GetFlowStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFlowStatisticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定分组，指定时间数据流量使用情况

        # @param request: Request instance for GetFlowStatisticByGroup.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetFlowStatisticByGroupRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetFlowStatisticByGroupResponse`
        def GetFlowStatisticByGroup(request)
          body = send_request('GetFlowStatisticByGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFlowStatisticByGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定区域，指定时间点数据流量使用情况

        # @param request: Request instance for GetFlowStatisticByRegion.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetFlowStatisticByRegionRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetFlowStatisticByRegionResponse`
        def GetFlowStatisticByRegion(request)
          body = send_request('GetFlowStatisticByRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFlowStatisticByRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看分组详细信息

        # @param request: Request instance for GetGroupDetail.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetGroupDetailRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetGroupDetailResponse`
        def GetGroupDetail(request)
          body = send_request('GetGroupDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGroupDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分组列表

        # @param request: Request instance for GetGroupList.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetGroupListRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetGroupListResponse`
        def GetGroupList(request)
          body = send_request('GetGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取厂商硬件列表

        # @param request: Request instance for GetHardwareList.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetHardwareListRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetHardwareListResponse`
        def GetHardwareList(request)
          body = send_request('GetHardwareList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetHardwareListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取互通规则列表

        # @param request: Request instance for GetL3ConnList.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetL3ConnListRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetL3ConnListResponse`
        def GetL3ConnList(request)
          body = send_request('GetL3ConnList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetL3ConnListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量获取设备流量统计曲线

        # @param request: Request instance for GetMultiFlowStatistic.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetMultiFlowStatisticRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetMultiFlowStatisticResponse`
        def GetMultiFlowStatistic(request)
          body = send_request('GetMultiFlowStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetMultiFlowStatisticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单设备的实时流量统计指标

        # @param request: Request instance for GetNetMonitor.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetNetMonitorRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetNetMonitorResponse`
        def GetNetMonitor(request)
          body = send_request('GetNetMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetNetMonitorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取公钥用于验签

        # @param request: Request instance for GetPublicKey.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetPublicKeyRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetPublicKeyResponse`
        def GetPublicKey(request)
          body = send_request('GetPublicKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPublicKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在用量统计页面下载流量数据

        # @param request: Request instance for GetStatisticData.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetStatisticDataRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetStatisticDataResponse`
        def GetStatisticData(request)
          body = send_request('GetStatisticData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetStatisticDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取厂商硬件设备列表

        # @param request: Request instance for GetVendorHardware.
        # @type request: :class:`Tencentcloud::mna::V20210119::GetVendorHardwareRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GetVendorHardwareResponse`
        def GetVendorHardware(request)
          body = send_request('GetVendorHardware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetVendorHardwareResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 向已存在分组中添加设备

        # @param request: Request instance for GroupAddDevice.
        # @type request: :class:`Tencentcloud::mna::V20210119::GroupAddDeviceRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GroupAddDeviceResponse`
        def GroupAddDevice(request)
          body = send_request('GroupAddDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GroupAddDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除分组中的设备

        # @param request: Request instance for GroupDeleteDevice.
        # @type request: :class:`Tencentcloud::mna::V20210119::GroupDeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::GroupDeleteDeviceResponse`
        def GroupDeleteDevice(request)
          body = send_request('GroupDeleteDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GroupDeleteDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可开启/关闭流量包自动续费，不影响当前周期正在生效的流量包。

        # @param request: Request instance for ModifyPackageRenewFlag.
        # @type request: :class:`Tencentcloud::mna::V20210119::ModifyPackageRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::ModifyPackageRenewFlagResponse`
        def ModifyPackageRenewFlag(request)
          body = send_request('ModifyPackageRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPackageRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 购买预付费流量包

        # @param request: Request instance for OrderFlowPackage.
        # @type request: :class:`Tencentcloud::mna::V20210119::OrderFlowPackageRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::OrderFlowPackageResponse`
        def OrderFlowPackage(request)
          body = send_request('OrderFlowPackage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OrderFlowPackageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 购买一次性授权License

        # @param request: Request instance for OrderPerLicense.
        # @type request: :class:`Tencentcloud::mna::V20210119::OrderPerLicenseRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::OrderPerLicenseResponse`
        def OrderPerLicense(request)
          body = send_request('OrderPerLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OrderPerLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置用户流量告警信息接口，通过该接口设置流量包告警阈值以及告警时回调的url和key

        # @param request: Request instance for SetNotifyUrl.
        # @type request: :class:`Tencentcloud::mna::V20210119::SetNotifyUrlRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::SetNotifyUrlResponse`
        def SetNotifyUrl(request)
          body = send_request('SetNotifyUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetNotifyUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新设备信息

        # @param request: Request instance for UpdateDevice.
        # @type request: :class:`Tencentcloud::mna::V20210119::UpdateDeviceRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::UpdateDeviceResponse`
        def UpdateDevice(request)
          body = send_request('UpdateDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新分组备注

        # @param request: Request instance for UpdateGroup.
        # @type request: :class:`Tencentcloud::mna::V20210119::UpdateGroupRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::UpdateGroupResponse`
        def UpdateGroup(request)
          body = send_request('UpdateGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新硬件信息

        # @param request: Request instance for UpdateHardware.
        # @type request: :class:`Tencentcloud::mna::V20210119::UpdateHardwareRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::UpdateHardwareResponse`
        def UpdateHardware(request)
          body = send_request('UpdateHardware', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateHardwareResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新互通规则CIDR

        # @param request: Request instance for UpdateL3Cidr.
        # @type request: :class:`Tencentcloud::mna::V20210119::UpdateL3CidrRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::UpdateL3CidrResponse`
        def UpdateL3Cidr(request)
          body = send_request('UpdateL3Cidr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateL3CidrResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新互通规则备注

        # @param request: Request instance for UpdateL3Conn.
        # @type request: :class:`Tencentcloud::mna::V20210119::UpdateL3ConnRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::UpdateL3ConnResponse`
        def UpdateL3Conn(request)
          body = send_request('UpdateL3Conn', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateL3ConnResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新互通规则开关

        # @param request: Request instance for UpdateL3Switch.
        # @type request: :class:`Tencentcloud::mna::V20210119::UpdateL3SwitchRequest`
        # @rtype: :class:`Tencentcloud::mna::V20210119::UpdateL3SwitchResponse`
        def UpdateL3Switch(request)
          body = send_request('UpdateL3Switch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateL3SwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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