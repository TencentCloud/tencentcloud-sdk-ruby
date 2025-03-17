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
  module Trro
    module V20220325
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-03-25'
            api_endpoint = 'trro.tencentcloudapi.com'
            sdk_version = 'TRRO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 用于批量删除设备

        # @param request: Request instance for BatchDeleteDevices.
        # @type request: :class:`Tencentcloud::trro::V20220325::BatchDeleteDevicesRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::BatchDeleteDevicesResponse`
        def BatchDeleteDevices(request)
          body = send_request('BatchDeleteDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于批量删除修改权限配置

        # @param request: Request instance for BatchDeletePolicy.
        # @type request: :class:`Tencentcloud::trro::V20220325::BatchDeletePolicyRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::BatchDeletePolicyResponse`
        def BatchDeletePolicy(request)
          body = send_request('BatchDeletePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeletePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为推流设备绑定license，优先绑定到期时间最近的，到期时间相同优先绑定月包

        # @param request: Request instance for BoundLicenses.
        # @type request: :class:`Tencentcloud::trro::V20220325::BoundLicensesRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::BoundLicensesResponse`
        def BoundLicenses(request)
          body = send_request('BoundLicenses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BoundLicensesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建设备

        # @param request: Request instance for CreateDevice.
        # @type request: :class:`Tencentcloud::trro::V20220325::CreateDeviceRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::CreateDeviceResponse`
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

        # 用于创建项目

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::trro::V20220325::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::CreateProjectResponse`
        def CreateProject(request)
          body = send_request('CreateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除项目

        # @param request: Request instance for DeleteProject.
        # @type request: :class:`Tencentcloud::trro::V20220325::DeleteProjectRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DeleteProjectResponse`
        def DeleteProject(request)
          body = send_request('DeleteProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取指定设备信息

        # @param request: Request instance for DescribeDeviceInfo.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribeDeviceInfoRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribeDeviceInfoResponse`
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

        # 用于获取设备信息列表

        # @param request: Request instance for DescribeDeviceList.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribeDeviceListRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribeDeviceListResponse`
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

        # 获取设备会话数据详单

        # @param request: Request instance for DescribeDeviceSessionDetails.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribeDeviceSessionDetailsRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribeDeviceSessionDetailsResponse`
        def DescribeDeviceSessionDetails(request)
          body = send_request('DescribeDeviceSessionDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceSessionDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设备会话列表

        # @param request: Request instance for DescribeDeviceSessionList.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribeDeviceSessionListRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribeDeviceSessionListResponse`
        def DescribeDeviceSessionList(request)
          body = send_request('DescribeDeviceSessionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceSessionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查看权限配置

        # @param request: Request instance for DescribePolicy.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribePolicyRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribePolicyResponse`
        def DescribePolicy(request)
          body = send_request('DescribePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取项目信息

        # @param request: Request instance for DescribeProjectInfo.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribeProjectInfoRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribeProjectInfoResponse`
        def DescribeProjectInfo(request)
          body = send_request('DescribeProjectInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取项目列表

        # @param request: Request instance for DescribeProjectList.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribeProjectListRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribeProjectListResponse`
        def DescribeProjectList(request)
          body = send_request('DescribeProjectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取最新设备会话列表

        # @param request: Request instance for DescribeRecentSessionList.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribeRecentSessionListRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribeRecentSessionListResponse`
        def DescribeRecentSessionList(request)
          body = send_request('DescribeRecentSessionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecentSessionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取会话统计值

        # @param request: Request instance for DescribeSessionStatistics.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribeSessionStatisticsRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribeSessionStatisticsResponse`
        def DescribeSessionStatistics(request)
          body = send_request('DescribeSessionStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取各时间段的会话统计值

        # @param request: Request instance for DescribeSessionStatisticsByInterval.
        # @type request: :class:`Tencentcloud::trro::V20220325::DescribeSessionStatisticsByIntervalRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::DescribeSessionStatisticsByIntervalResponse`
        def DescribeSessionStatisticsByInterval(request)
          body = send_request('DescribeSessionStatisticsByInterval', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionStatisticsByIntervalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设备已经绑定的可用授权数量

        # @param request: Request instance for GetDeviceLicense.
        # @type request: :class:`Tencentcloud::trro::V20220325::GetDeviceLicenseRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::GetDeviceLicenseResponse`
        def GetDeviceLicense(request)
          body = send_request('GetDeviceLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeviceLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户设备的授权绑定情况

        # @param request: Request instance for GetDevices.
        # @type request: :class:`Tencentcloud::trro::V20220325::GetDevicesRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::GetDevicesResponse`
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

        # 统计license类型数量

        # @param request: Request instance for GetLicenseStat.
        # @type request: :class:`Tencentcloud::trro::V20220325::GetLicenseStatRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::GetLicenseStatResponse`
        def GetLicenseStat(request)
          body = send_request('GetLicenseStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLicenseStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按授权查看license列表

        # @param request: Request instance for GetLicenses.
        # @type request: :class:`Tencentcloud::trro::V20220325::GetLicensesRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::GetLicensesResponse`
        def GetLicenses(request)
          body = send_request('GetLicenses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLicensesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改设备信息

        # @param request: Request instance for ModifyDevice.
        # @type request: :class:`Tencentcloud::trro::V20220325::ModifyDeviceRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::ModifyDeviceResponse`
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

        # 用于修改权限配置

        # @param request: Request instance for ModifyPolicy.
        # @type request: :class:`Tencentcloud::trro::V20220325::ModifyPolicyRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::ModifyPolicyResponse`
        def ModifyPolicy(request)
          body = send_request('ModifyPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改项目信息

        # @param request: Request instance for ModifyProject.
        # @type request: :class:`Tencentcloud::trro::V20220325::ModifyProjectRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::ModifyProjectResponse`
        def ModifyProject(request)
          body = send_request('ModifyProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用项目共享密钥可动态生成设备登录密钥，登录前无需对设备进行提前注册，适合希望简化业务流程的客户。由于是公共密钥，请务必注意保护项目共享密钥，并及时更新。建议项目共享密钥保存在服务器侧。由服务器生成设备登录密码下发给设备，避免密钥保存在客户端侧产生的密钥泄露风险。

        # 开启项目共享密钥后，对于已注册的设备，仍可使用原设备密码登录。若希望仅能通过共享密钥生成密码登录，请通过云 API 将设备密码更新为"USEPROJECTKEYPWD"。

        # @param request: Request instance for ModifyProjectSecMode.
        # @type request: :class:`Tencentcloud::trro::V20220325::ModifyProjectSecModeRequest`
        # @rtype: :class:`Tencentcloud::trro::V20220325::ModifyProjectSecModeResponse`
        def ModifyProjectSecMode(request)
          body = send_request('ModifyProjectSecMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectSecModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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