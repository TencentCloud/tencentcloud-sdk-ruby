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
  module Ioa
    module V20220601
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-06-01'
            api_endpoint = 'ioa.tencentcloudapi.com'
            sdk_version = 'IOA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建文件鉴定任务，私有化调用path为：capi/DlpOpenApi/CreateDLPFileDetectTask

        # @param request: Request instance for CreateDLPFileDetectTask.
        # @type request: :class:`Tencentcloud::ioa::V20220601::CreateDLPFileDetectTaskRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::CreateDLPFileDetectTaskResponse`
        def CreateDLPFileDetectTask(request)
          body = send_request('CreateDLPFileDetectTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDLPFileDetectTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
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

        # 创建获取终端进程网络服务信息任务，私有化调用path为：capi/Assets/Device/DescribeDeviceInfo

        # @param request: Request instance for CreateDeviceTask.
        # @type request: :class:`Tencentcloud::ioa::V20220601::CreateDeviceTaskRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::CreateDeviceTaskResponse`
        def CreateDeviceTask(request)
          body = send_request('CreateDeviceTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeviceTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 聚合的分类软件列表

        # @param request: Request instance for DescribeAggrSoftCategorySoftList.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeAggrSoftCategorySoftListRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeAggrSoftCategorySoftListResponse`
        def DescribeAggrSoftCategorySoftList(request)
          body = send_request('DescribeAggrSoftCategorySoftList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAggrSoftCategorySoftListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 聚合的软件详情

        # @param request: Request instance for DescribeAggrSoftDetail.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeAggrSoftDetailRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeAggrSoftDetailResponse`
        def DescribeAggrSoftDetail(request)
          body = send_request('DescribeAggrSoftDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAggrSoftDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 聚合软件的已安装终端列表

        # @param request: Request instance for DescribeAggrSoftDeviceList.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeAggrSoftDeviceListRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeAggrSoftDeviceListResponse`
        def DescribeAggrSoftDeviceList(request)
          body = send_request('DescribeAggrSoftDeviceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAggrSoftDeviceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询边缘节点分组，私有化调用path为：capi/Connectors/DescribeDLPEdgeNodeGroups

        # @param request: Request instance for DescribeDLPEdgeNodeGroups.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDLPEdgeNodeGroupsRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDLPEdgeNodeGroupsResponse`
        def DescribeDLPEdgeNodeGroups(request)
          body = send_request('DescribeDLPEdgeNodeGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDLPEdgeNodeGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询边缘节点列表，私有化调用path为：capi/DlpOpenApi/DescribeDLPEdgeNodes

        # @param request: Request instance for DescribeDLPEdgeNodes.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDLPEdgeNodesRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDLPEdgeNodesResponse`
        def DescribeDLPEdgeNodes(request)
          body = send_request('DescribeDLPEdgeNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDLPEdgeNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询文件鉴定任务结果

        # @param request: Request instance for DescribeDLPFileDetectTaskResult.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDLPFileDetectTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDLPFileDetectTaskResultResponse`
        def DescribeDLPFileDetectTaskResult(request)
          body = send_request('DescribeDLPFileDetectTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDLPFileDetectTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询设备组子分组详情，私有化调用path为：capi/Assets/Device/DescribeDeviceChildGroups

        # @param request: Request instance for DescribeDeviceChildGroups.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceChildGroupsRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceChildGroupsResponse`
        def DescribeDeviceChildGroups(request)
          body = send_request('DescribeDeviceChildGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceChildGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 基于软件查看终端详情列表,私有化调用path为：capi/Software/DescribeDeviceDetailList

        # @param request: Request instance for DescribeDeviceDetailList.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceDetailListRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceDetailListResponse`
        def DescribeDeviceDetailList(request)
          body = send_request('DescribeDeviceDetailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceDetailListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取终端进程网络服务信息，私有化调用path为：capi/Assets/Device/DescribeDeviceInfo

        # @param request: Request instance for DescribeDeviceInfo.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceInfoRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceInfoResponse`
        def DescribeDeviceInfo(request)
          body = send_request('DescribeDeviceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询终端自定义分组列表，私有化调用path为：/capi/Assets/Device/DescribeDeviceVirtualGroups

        # @param request: Request instance for DescribeDeviceVirtualGroups.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceVirtualGroupsRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDeviceVirtualGroupsResponse`
        def DescribeDeviceVirtualGroups(request)
          body = send_request('DescribeDeviceVirtualGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceVirtualGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 展示自定义分组终端列表，私有化调用path为：/capi/Assets/DescribeVirtualDevices

        # @param request: Request instance for DescribeVirtualDevices.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeVirtualDevicesRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeVirtualDevicesResponse`
        def DescribeVirtualDevices(request)
          body = send_request('DescribeVirtualDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirtualDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出基于指定终端查看软件信息详情列表查询,私有化调用path为：capi/Software/ExportSoftwareInformationList

        # @param request: Request instance for ExportSoftwareInformationList.
        # @type request: :class:`Tencentcloud::ioa::V20220601::ExportSoftwareInformationListRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::ExportSoftwareInformationListResponse`
        def ExportSoftwareInformationList(request)
          body = send_request('ExportSoftwareInformationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportSoftwareInformationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 终端自定义分组增减终端，私有化调用path为：/capi/Assets/Device/ModifyVirtualDeviceGroups

        # @param request: Request instance for ModifyVirtualDeviceGroups.
        # @type request: :class:`Tencentcloud::ioa::V20220601::ModifyVirtualDeviceGroupsRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::ModifyVirtualDeviceGroupsResponse`
        def ModifyVirtualDeviceGroups(request)
          body = send_request('ModifyVirtualDeviceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVirtualDeviceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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