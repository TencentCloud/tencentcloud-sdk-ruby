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
  module Ioa
    module V20220601
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-06-01'
            api_endpoint = 'ioa.tencentcloudapi.com'
            sdk_version = 'IOA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 提交送检任务

        # @param request: Request instance for CreateDLPFileDetectionTask.
        # @type request: :class:`Tencentcloud::ioa::V20220601::CreateDLPFileDetectionTaskRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::CreateDLPFileDetectionTaskResponse`
        def CreateDLPFileDetectionTask(request)
          body = send_request('CreateDLPFileDetectionTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDLPFileDetectionTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建终端自定义分组，私有化调用path为：/capi/Assets/Device/CreateDeviceVirtualGroup

        # @param request: Request instance for CreateDeviceVirtualGroup.
        # @type request: :class:`Tencentcloud::ioa::V20220601::CreateDeviceVirtualGroupRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::CreateDeviceVirtualGroupResponse`
        def CreateDeviceVirtualGroup(request)
          body = send_request('CreateDeviceVirtualGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeviceVirtualGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成特权码，私有化调用path为：capi/Assets/Device/CreatePrivilegeCode，生成的特权码、卸载码，仅对该设备当天有效

        # @param request: Request instance for CreatePrivilegeCode.
        # @type request: :class:`Tencentcloud::ioa::V20220601::CreatePrivilegeCodeRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::CreatePrivilegeCodeResponse`
        def CreatePrivilegeCode(request)
          body = send_request('CreatePrivilegeCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivilegeCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 以分页的方式查询账号分组列表，私有化调用path为：/capi/Assets/DescribeAccountGroups

        # @param request: Request instance for DescribeAccountGroups.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeAccountGroupsRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeAccountGroupsResponse`
        def DescribeAccountGroups(request)
          body = send_request('DescribeAccountGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # webservice查询文件检测结果

        # @param request: Request instance for DescribeDLPFileDetectResult.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDLPFileDetectResultRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDLPFileDetectResultResponse`
        def DescribeDLPFileDetectResult(request)
          body = send_request('DescribeDLPFileDetectResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDLPFileDetectResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询满足条件的查询终端硬件信息列表，私有化调用path为：/capi/Assets/Device/DescribeDeviceHardwareInfoList

        # @param request: Request instance for DescribeDeviceHardwareInfoList.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceHardwareInfoListRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceHardwareInfoListResponse`
        def DescribeDeviceHardwareInfoList(request)
          body = send_request('DescribeDeviceHardwareInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceHardwareInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询满足条件的终端数据详情，私有化调用path为：/capi/Assets/Device/DescribeDevices

        # @param request: Request instance for DescribeDevices.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDevicesRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDevicesResponse`
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

        # 获取账号列表，支持分页，模糊搜索，私有化调用path为：/capi/Assets/Account/DescribeLocalAccounts

        # @param request: Request instance for DescribeLocalAccounts.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeLocalAccountsRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeLocalAccountsResponse`
        def DescribeLocalAccounts(request)
          body = send_request('DescribeLocalAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLocalAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询账号根分组详情。对应“用户与授权管理”里内置不可见的全网根账号组，所有新建的目录，都挂在该全网根账号组下。

        # @param request: Request instance for DescribeRootAccountGroup.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeRootAccountGroupRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeRootAccountGroupResponse`
        def DescribeRootAccountGroup(request)
          body = send_request('DescribeRootAccountGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRootAccountGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看终端树下的软件列表,私有化调用path为：capi/Software/DescribeSoftCensusListByDevice

        # @param request: Request instance for DescribeSoftCensusListByDevice.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeSoftCensusListByDeviceRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeSoftCensusListByDeviceResponse`
        def DescribeSoftCensusListByDevice(request)
          body = send_request('DescribeSoftCensusListByDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSoftCensusListByDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看指定终端的软件详情列表,私有化调用path为：capi/Software/DescribeSoftwareInformation

        # @param request: Request instance for DescribeSoftwareInformation.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeSoftwareInformationRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeSoftwareInformationResponse`
        def DescribeSoftwareInformation(request)
          body = send_request('DescribeSoftwareInformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSoftwareInformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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