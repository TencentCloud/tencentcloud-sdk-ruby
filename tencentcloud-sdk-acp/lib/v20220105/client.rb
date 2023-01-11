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
  module Acp
    module V20220105
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-01-05'
            api_endpoint = 'acp.tencentcloudapi.com'
            sdk_version = 'ACP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建应用合规隐私诊断任务

        # @param request: Request instance for CreateAppScanTask.
        # @type request: :class:`Tencentcloud::acp::V20220105::CreateAppScanTaskRequest`
        # @rtype: :class:`Tencentcloud::acp::V20220105::CreateAppScanTaskResponse`
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

        # App应用合规隐私诊断重试任务

        # @param request: Request instance for CreateAppScanTaskRepeat.
        # @type request: :class:`Tencentcloud::acp::V20220105::CreateAppScanTaskRepeatRequest`
        # @rtype: :class:`Tencentcloud::acp::V20220105::CreateAppScanTaskRepeatResponse`
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

        # 获取子渠道的App合规诊断任务报告url

        # @param request: Request instance for DescribeChannelTaskReportUrl.
        # @type request: :class:`Tencentcloud::acp::V20220105::DescribeChannelTaskReportUrlRequest`
        # @rtype: :class:`Tencentcloud::acp::V20220105::DescribeChannelTaskReportUrlResponse`
        def DescribeChannelTaskReportUrl(request)
          body = send_request('DescribeChannelTaskReportUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChannelTaskReportUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用合规文件上传凭证，用于上传诊断文件

        # @param request: Request instance for DescribeFileTicket.
        # @type request: :class:`Tencentcloud::acp::V20220105::DescribeFileTicketRequest`
        # @rtype: :class:`Tencentcloud::acp::V20220105::DescribeFileTicketResponse`
        def DescribeFileTicket(request)
          body = send_request('DescribeFileTicket', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileTicketResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询应用合规平台用户资源的使用情况

        # @param request: Request instance for DescribeResourceUsageInfo.
        # @type request: :class:`Tencentcloud::acp::V20220105::DescribeResourceUsageInfoRequest`
        # @rtype: :class:`Tencentcloud::acp::V20220105::DescribeResourceUsageInfoResponse`
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

        # 获取App隐私合规诊断任务列表

        # @param request: Request instance for DescribeScanTaskList.
        # @type request: :class:`Tencentcloud::acp::V20220105::DescribeScanTaskListRequest`
        # @rtype: :class:`Tencentcloud::acp::V20220105::DescribeScanTaskListResponse`
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

        # 获取App合规诊断任务报告url

        # @param request: Request instance for DescribeScanTaskReportUrl.
        # @type request: :class:`Tencentcloud::acp::V20220105::DescribeScanTaskReportUrlRequest`
        # @rtype: :class:`Tencentcloud::acp::V20220105::DescribeScanTaskReportUrlResponse`
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

        # 查询App隐私合规诊断任务状态

        # @param request: Request instance for DescribeScanTaskStatus.
        # @type request: :class:`Tencentcloud::acp::V20220105::DescribeScanTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::acp::V20220105::DescribeScanTaskStatusResponse`
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