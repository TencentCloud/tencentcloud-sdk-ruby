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
  module Tiw
    module V20190919
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-09-19'
            api_endpoint = 'tiw.tencentcloudapi.com'
            sdk_version = 'TIW_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 申请互动白板试用，默认15天

        # @param request: Request instance for ApplyTiwTrial.
        # @type request: :class:`Tencentcloud::tiw::V20190919::ApplyTiwTrialRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::ApplyTiwTrialResponse`
        def ApplyTiwTrial(request)
          body = send_request('ApplyTiwTrial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyTiwTrialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建白板应用

        # @param request: Request instance for CreateApplication.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreateApplicationRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreateApplicationResponse`
        def CreateApplication(request)
          body = send_request('CreateApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建课后录制任务

        # @param request: Request instance for CreateOfflineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreateOfflineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreateOfflineRecordResponse`
        def CreateOfflineRecord(request)
          body = send_request('CreateOfflineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOfflineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建白板板书生成任务, 在任务结束后，如果提供了回调地址，将通过回调地址通知板书生成结果

        # @param request: Request instance for CreateSnapshotTask.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreateSnapshotTaskRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreateSnapshotTaskResponse`
        def CreateSnapshotTask(request)
          body = send_request('CreateSnapshotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSnapshotTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个文档转码任务

        # @param request: Request instance for CreateTranscode.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreateTranscodeRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreateTranscodeResponse`
        def CreateTranscode(request)
          body = send_request('CreateTranscode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTranscodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建视频生成任务

        # @param request: Request instance for CreateVideoGenerationTask.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreateVideoGenerationTaskRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreateVideoGenerationTaskResponse`
        def CreateVideoGenerationTask(request)
          body = send_request('CreateVideoGenerationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVideoGenerationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过服务角色调用其他云产品API接口获取信息

        # @param request: Request instance for DescribeAPIService.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeAPIServiceRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeAPIServiceResponse`
        def DescribeAPIService(request)
          body = send_request('DescribeAPIService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAPIServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询白板应用详情

        # @param request: Request instance for DescribeApplicationInfos.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeApplicationInfosRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeApplicationInfosResponse`
        def DescribeApplicationInfos(request)
          body = send_request('DescribeApplicationInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询互动白板各个子产品用量

        # @param request: Request instance for DescribeApplicationUsage.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeApplicationUsageRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeApplicationUsageResponse`
        def DescribeApplicationUsage(request)
          body = send_request('DescribeApplicationUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询客户端白板日志

        # @param request: Request instance for DescribeBoardSDKLog.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeBoardSDKLogRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeBoardSDKLogResponse`
        def DescribeBoardSDKLog(request)
          body = send_request('DescribeBoardSDKLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBoardSDKLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可用于创建白板应用的IM应用列表

        # @param request: Request instance for DescribeIMApplications.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeIMApplicationsRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeIMApplicationsResponse`
        def DescribeIMApplications(request)
          body = send_request('DescribeIMApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIMApplicationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询课后录制任务的进度与录制结果等相关信息

        # @param request: Request instance for DescribeOfflineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeOfflineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeOfflineRecordResponse`
        def DescribeOfflineRecord(request)
          body = send_request('DescribeOfflineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOfflineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询课后录制回调地址

        # @param request: Request instance for DescribeOfflineRecordCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeOfflineRecordCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeOfflineRecordCallbackResponse`
        def DescribeOfflineRecordCallback(request)
          body = send_request('DescribeOfflineRecordCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOfflineRecordCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询录制任务状态与结果

        # @param request: Request instance for DescribeOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordResponse`
        def DescribeOnlineRecord(request)
          body = send_request('DescribeOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实时录制回调地址

        # @param request: Request instance for DescribeOnlineRecordCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordCallbackResponse`
        def DescribeOnlineRecordCallback(request)
          body = send_request('DescribeOnlineRecordCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOnlineRecordCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户后付费用量

        # @param request: Request instance for DescribePostpaidUsage.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribePostpaidUsageRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribePostpaidUsageResponse`
        def DescribePostpaidUsage(request)
          body = send_request('DescribePostpaidUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePostpaidUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询互动白板质量数据

        # @param request: Request instance for DescribeQualityMetrics.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeQualityMetricsRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeQualityMetricsResponse`
        def DescribeQualityMetrics(request)
          body = send_request('DescribeQualityMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQualityMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据房间号搜索实时录制任务

        # @param request: Request instance for DescribeRecordSearch.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeRecordSearchRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeRecordSearchResponse`
        def DescribeRecordSearch(request)
          body = send_request('DescribeRecordSearch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordSearchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询白板房间列表

        # @param request: Request instance for DescribeRoomList.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeRoomListRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeRoomListResponse`
        def DescribeRoomList(request)
          body = send_request('DescribeRoomList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoomListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定白板板书生成任务信息

        # @param request: Request instance for DescribeSnapshotTask.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeSnapshotTaskRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeSnapshotTaskResponse`
        def DescribeSnapshotTask(request)
          body = send_request('DescribeSnapshotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询互动白板天维度计费用量。
        # 1. 单次查询统计区间最多不能超过31天。
        # 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量

        # @param request: Request instance for DescribeTIWDailyUsage.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTIWDailyUsageRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTIWDailyUsageResponse`
        def DescribeTIWDailyUsage(request)
          body = send_request('DescribeTIWDailyUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTIWDailyUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询互动白板房间维度每天计费用量。
        # 1. 单次查询统计区间最多不能超过31天。
        # 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量

        # @param request: Request instance for DescribeTIWRoomDailyUsage.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTIWRoomDailyUsageRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTIWRoomDailyUsageResponse`
        def DescribeTIWRoomDailyUsage(request)
          body = send_request('DescribeTIWRoomDailyUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTIWRoomDailyUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文档转码任务的执行进度与转码结果

        # @param request: Request instance for DescribeTranscode.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeResponse`
        def DescribeTranscode(request)
          body = send_request('DescribeTranscode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文档转码回调地址

        # @param request: Request instance for DescribeTranscodeCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeCallbackResponse`
        def DescribeTranscodeCallback(request)
          body = send_request('DescribeTranscodeCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按文档名称搜索转码任务

        # @param request: Request instance for DescribeTranscodeSearch.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeSearchRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeSearchResponse`
        def DescribeTranscodeSearch(request)
          body = send_request('DescribeTranscodeSearch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeSearchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定时间段内子产品的用量汇总

        # @param request: Request instance for DescribeUsageSummary.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeUsageSummaryRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeUsageSummaryResponse`
        def DescribeUsageSummary(request)
          body = send_request('DescribeUsageSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsageSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询白板用户列表

        # @param request: Request instance for DescribeUserList.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeUserListRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeUserListResponse`
        def DescribeUserList(request)
          body = send_request('DescribeUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询客户资源列表

        # @param request: Request instance for DescribeUserResources.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeUserResourcesRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeUserResourcesResponse`
        def DescribeUserResources(request)
          body = send_request('DescribeUserResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询互动白板用户详情，包括是否开通了互动白板，当前互动白板服务有效期等信息

        # @param request: Request instance for DescribeUserStatus.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeUserStatusRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeUserStatusResponse`
        def DescribeUserStatus(request)
          body = send_request('DescribeUserStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询录制视频生成任务状态与结果

        # @param request: Request instance for DescribeVideoGenerationTask.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeVideoGenerationTaskRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeVideoGenerationTaskResponse`
        def DescribeVideoGenerationTask(request)
          body = send_request('DescribeVideoGenerationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoGenerationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询录制视频生成回调地址

        # @param request: Request instance for DescribeVideoGenerationTaskCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeVideoGenerationTaskCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeVideoGenerationTaskCallbackResponse`
        def DescribeVideoGenerationTaskCallback(request)
          body = send_request('DescribeVideoGenerationTaskCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoGenerationTaskCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询白板应用任务相关的配置，包括存储桶、回调等

        # @param request: Request instance for DescribeWhiteboardApplicationConfig.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardApplicationConfigRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardApplicationConfigResponse`
        def DescribeWhiteboardApplicationConfig(request)
          body = send_request('DescribeWhiteboardApplicationConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteboardApplicationConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文档转码，实时录制存储桶的配置

        # @param request: Request instance for DescribeWhiteboardBucketConfig.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardBucketConfigRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardBucketConfigResponse`
        def DescribeWhiteboardBucketConfig(request)
          body = send_request('DescribeWhiteboardBucketConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteboardBucketConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询推流任务状态与结果

        # @param request: Request instance for DescribeWhiteboardPush.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushResponse`
        def DescribeWhiteboardPush(request)
          body = send_request('DescribeWhiteboardPush', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteboardPushResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询白板推流回调地址

        # @param request: Request instance for DescribeWhiteboardPushCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushCallbackResponse`
        def DescribeWhiteboardPushCallback(request)
          body = send_request('DescribeWhiteboardPushCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteboardPushCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据房间号搜索白板推流任务

        # @param request: Request instance for DescribeWhiteboardPushSearch.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushSearchRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushSearchResponse`
        def DescribeWhiteboardPushSearch(request)
          body = send_request('DescribeWhiteboardPushSearch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteboardPushSearchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改白板应用

        # @param request: Request instance for ModifyApplication.
        # @type request: :class:`Tencentcloud::tiw::V20190919::ModifyApplicationRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::ModifyApplicationResponse`
        def ModifyApplication(request)
          body = send_request('ModifyApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置白板月功能费自动续费

        # @param request: Request instance for ModifyAutoRenewFlag.
        # @type request: :class:`Tencentcloud::tiw::V20190919::ModifyAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::ModifyAutoRenewFlagResponse`
        def ModifyAutoRenewFlag(request)
          body = send_request('ModifyAutoRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改白板应用任务相关的配置，包括存储桶、回调等

        # @param request: Request instance for ModifyWhiteboardApplicationConfig.
        # @type request: :class:`Tencentcloud::tiw::V20190919::ModifyWhiteboardApplicationConfigRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::ModifyWhiteboardApplicationConfigResponse`
        def ModifyWhiteboardApplicationConfig(request)
          body = send_request('ModifyWhiteboardApplicationConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWhiteboardApplicationConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置文档转码，实时录制存储桶的配置

        # @param request: Request instance for ModifyWhiteboardBucketConfig.
        # @type request: :class:`Tencentcloud::tiw::V20190919::ModifyWhiteboardBucketConfigRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::ModifyWhiteboardBucketConfigResponse`
        def ModifyWhiteboardBucketConfig(request)
          body = send_request('ModifyWhiteboardBucketConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWhiteboardBucketConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停实时录制

        # @param request: Request instance for PauseOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::PauseOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::PauseOnlineRecordResponse`
        def PauseOnlineRecord(request)
          body = send_request('PauseOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复实时录制

        # @param request: Request instance for ResumeOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::ResumeOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::ResumeOnlineRecordResponse`
        def ResumeOnlineRecord(request)
          body = send_request('ResumeOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置课后录制回调地址

        # @param request: Request instance for SetOfflineRecordCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetOfflineRecordCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetOfflineRecordCallbackResponse`
        def SetOfflineRecordCallback(request)
          body = send_request('SetOfflineRecordCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetOfflineRecordCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置实时录制回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40258

        # @param request: Request instance for SetOnlineRecordCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackResponse`
        def SetOnlineRecordCallback(request)
          body = send_request('SetOnlineRecordCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetOnlineRecordCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置实时录制回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetOnlineRecordCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackKeyResponse`
        def SetOnlineRecordCallbackKey(request)
          body = send_request('SetOnlineRecordCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetOnlineRecordCallbackKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置文档转码回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260

        # @param request: Request instance for SetTranscodeCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackResponse`
        def SetTranscodeCallback(request)
          body = send_request('SetTranscodeCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTranscodeCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置文档转码回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetTranscodeCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackKeyResponse`
        def SetTranscodeCallbackKey(request)
          body = send_request('SetTranscodeCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTranscodeCallbackKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置录制视频生成回调地址

        # @param request: Request instance for SetVideoGenerationTaskCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetVideoGenerationTaskCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetVideoGenerationTaskCallbackResponse`
        def SetVideoGenerationTaskCallback(request)
          body = send_request('SetVideoGenerationTaskCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetVideoGenerationTaskCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置视频生成回调鉴权密钥

        # @param request: Request instance for SetVideoGenerationTaskCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetVideoGenerationTaskCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetVideoGenerationTaskCallbackKeyResponse`
        def SetVideoGenerationTaskCallbackKey(request)
          body = send_request('SetVideoGenerationTaskCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetVideoGenerationTaskCallbackKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置白板推流回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetWhiteboardPushCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetWhiteboardPushCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetWhiteboardPushCallbackResponse`
        def SetWhiteboardPushCallback(request)
          body = send_request('SetWhiteboardPushCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetWhiteboardPushCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置白板推流回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetWhiteboardPushCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetWhiteboardPushCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetWhiteboardPushCallbackKeyResponse`
        def SetWhiteboardPushCallbackKey(request)
          body = send_request('SetWhiteboardPushCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetWhiteboardPushCallbackKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发起一个实时录制任务

        # @param request: Request instance for StartOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StartOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StartOnlineRecordResponse`
        def StartOnlineRecord(request)
          body = send_request('StartOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发起一个白板推流任务

        # @param request: Request instance for StartWhiteboardPush.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StartWhiteboardPushRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StartWhiteboardPushResponse`
        def StartWhiteboardPush(request)
          body = send_request('StartWhiteboardPush', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartWhiteboardPushResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止实时录制

        # @param request: Request instance for StopOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StopOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StopOnlineRecordResponse`
        def StopOnlineRecord(request)
          body = send_request('StopOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止白板推流任务

        # @param request: Request instance for StopWhiteboardPush.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StopWhiteboardPushRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StopWhiteboardPushResponse`
        def StopWhiteboardPush(request)
          body = send_request('StopWhiteboardPush', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopWhiteboardPushResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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