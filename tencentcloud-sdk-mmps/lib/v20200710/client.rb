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
  module Mmps
    module V20200710
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-07-10'
            api_endpoint = 'mmps.tencentcloudapi.com'
            sdk_version = 'MMPS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建小程序隐私合规诊断任务

        # @param request: Request instance for CreateAppScanTask.
        # @type request: :class:`Tencentcloud::mmps::V20200710::CreateAppScanTaskRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::CreateAppScanTaskResponse`
        def CreateAppScanTask(request)
          body = send_request('CreateAppScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAppScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 小程序隐私合规诊断重试任务

        # @param request: Request instance for CreateAppScanTaskRepeat.
        # @type request: :class:`Tencentcloud::mmps::V20200710::CreateAppScanTaskRepeatRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::CreateAppScanTaskRepeatResponse`
        def CreateAppScanTaskRepeat(request)
          body = send_request('CreateAppScanTaskRepeat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAppScanTaskRepeatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建小程序翼扬安全的基础或深度诊断任务

        # @param request: Request instance for CreateFlySecMiniAppScanTask.
        # @type request: :class:`Tencentcloud::mmps::V20200710::CreateFlySecMiniAppScanTaskRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::CreateFlySecMiniAppScanTaskResponse`
        def CreateFlySecMiniAppScanTask(request)
          body = send_request('CreateFlySecMiniAppScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlySecMiniAppScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新提交基础诊断任务

        # @param request: Request instance for CreateFlySecMiniAppScanTaskRepeat.
        # @type request: :class:`Tencentcloud::mmps::V20200710::CreateFlySecMiniAppScanTaskRepeatRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::CreateFlySecMiniAppScanTaskRepeatResponse`
        def CreateFlySecMiniAppScanTaskRepeat(request)
          body = send_request('CreateFlySecMiniAppScanTaskRepeat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlySecMiniAppScanTaskRepeatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询翼扬安全基础诊断资源使用情况

        # @param request: Request instance for DescribeBasicDiagnosisResourceUsageInfo.
        # @type request: :class:`Tencentcloud::mmps::V20200710::DescribeBasicDiagnosisResourceUsageInfoRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::DescribeBasicDiagnosisResourceUsageInfoResponse`
        def DescribeBasicDiagnosisResourceUsageInfo(request)
          body = send_request('DescribeBasicDiagnosisResourceUsageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBasicDiagnosisResourceUsageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取翼扬诊断任务报告链接地址

        # @param request: Request instance for DescribeFlySecMiniAppReportUrl.
        # @type request: :class:`Tencentcloud::mmps::V20200710::DescribeFlySecMiniAppReportUrlRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::DescribeFlySecMiniAppReportUrlResponse`
        def DescribeFlySecMiniAppReportUrl(request)
          body = send_request('DescribeFlySecMiniAppReportUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlySecMiniAppReportUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取翼扬安全诊断任务列表

        # @param request: Request instance for DescribeFlySecMiniAppScanTaskList.
        # @type request: :class:`Tencentcloud::mmps::V20200710::DescribeFlySecMiniAppScanTaskListRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::DescribeFlySecMiniAppScanTaskListResponse`
        def DescribeFlySecMiniAppScanTaskList(request)
          body = send_request('DescribeFlySecMiniAppScanTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlySecMiniAppScanTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户提交的基础诊断任务参数信息

        # @param request: Request instance for DescribeFlySecMiniAppScanTaskParam.
        # @type request: :class:`Tencentcloud::mmps::V20200710::DescribeFlySecMiniAppScanTaskParamRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::DescribeFlySecMiniAppScanTaskParamResponse`
        def DescribeFlySecMiniAppScanTaskParam(request)
          body = send_request('DescribeFlySecMiniAppScanTaskParam', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlySecMiniAppScanTaskParamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询翼扬安全诊断任务状态

        # @param request: Request instance for DescribeFlySecMiniAppScanTaskStatus.
        # @type request: :class:`Tencentcloud::mmps::V20200710::DescribeFlySecMiniAppScanTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::DescribeFlySecMiniAppScanTaskStatusResponse`
        def DescribeFlySecMiniAppScanTaskStatus(request)
          body = send_request('DescribeFlySecMiniAppScanTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlySecMiniAppScanTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询翼扬安全资源使用情况

        # @param request: Request instance for DescribeResourceUsageInfo.
        # @type request: :class:`Tencentcloud::mmps::V20200710::DescribeResourceUsageInfoRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::DescribeResourceUsageInfoResponse`
        def DescribeResourceUsageInfo(request)
          body = send_request('DescribeResourceUsageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceUsageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取小程序隐私合规诊断任务列表

        # @param request: Request instance for DescribeScanTaskList.
        # @type request: :class:`Tencentcloud::mmps::V20200710::DescribeScanTaskListRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::DescribeScanTaskListResponse`
        def DescribeScanTaskList(request)
          body = send_request('DescribeScanTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取小程序合规诊断任务报告url

        # @param request: Request instance for DescribeScanTaskReportUrl.
        # @type request: :class:`Tencentcloud::mmps::V20200710::DescribeScanTaskReportUrlRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::DescribeScanTaskReportUrlResponse`
        def DescribeScanTaskReportUrl(request)
          body = send_request('DescribeScanTaskReportUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanTaskReportUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询小程序隐私合规诊断任务状态

        # @param request: Request instance for DescribeScanTaskStatus.
        # @type request: :class:`Tencentcloud::mmps::V20200710::DescribeScanTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::mmps::V20200710::DescribeScanTaskStatusResponse`
        def DescribeScanTaskStatus(request)
          body = send_request('DescribeScanTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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