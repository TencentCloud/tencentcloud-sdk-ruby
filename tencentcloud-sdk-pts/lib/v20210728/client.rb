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
  module Pts
    module V20210728
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-07-28'
            api_endpoint = 'pts.tencentcloudapi.com'
            sdk_version = 'PTS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 停止定时任务

        # @param request: Request instance for AbortCronJobs.
        # @type request: :class:`Tencentcloud::pts::V20210728::AbortCronJobsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::AbortCronJobsResponse`
        def AbortCronJobs(request)
          body = send_request('AbortCronJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AbortCronJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止任务

        # @param request: Request instance for AbortJob.
        # @type request: :class:`Tencentcloud::pts::V20210728::AbortJobRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::AbortJobResponse`
        def AbortJob(request)
          body = send_request('AbortJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AbortJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整任务的目标RPS

        # @param request: Request instance for AdjustJobSpeed.
        # @type request: :class:`Tencentcloud::pts::V20210728::AdjustJobSpeedRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::AdjustJobSpeedResponse`
        def AdjustJobSpeed(request)
          body = send_request('AdjustJobSpeed', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AdjustJobSpeedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 复制场景

        # @param request: Request instance for CopyScenario.
        # @type request: :class:`Tencentcloud::pts::V20210728::CopyScenarioRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::CopyScenarioResponse`
        def CopyScenario(request)
          body = send_request('CopyScenario', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyScenarioResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建告警通知接收组

        # @param request: Request instance for CreateAlertChannel.
        # @type request: :class:`Tencentcloud::pts::V20210728::CreateAlertChannelRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::CreateAlertChannelResponse`
        def CreateAlertChannel(request)
          body = send_request('CreateAlertChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAlertChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建定时任务

        # @param request: Request instance for CreateCronJob.
        # @type request: :class:`Tencentcloud::pts::V20210728::CreateCronJobRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::CreateCronJobResponse`
        def CreateCronJob(request)
          body = send_request('CreateCronJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCronJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建文件

        # @param request: Request instance for CreateFile.
        # @type request: :class:`Tencentcloud::pts::V20210728::CreateFileRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::CreateFileResponse`
        def CreateFile(request)
          body = send_request('CreateFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建项目

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::pts::V20210728::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::CreateProjectResponse`
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

        # 创建场景

        # @param request: Request instance for CreateScenario.
        # @type request: :class:`Tencentcloud::pts::V20210728::CreateScenarioRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::CreateScenarioResponse`
        def CreateScenario(request)
          body = send_request('CreateScenario', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScenarioResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除告警通知接收组

        # @param request: Request instance for DeleteAlertChannel.
        # @type request: :class:`Tencentcloud::pts::V20210728::DeleteAlertChannelRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DeleteAlertChannelResponse`
        def DeleteAlertChannel(request)
          body = send_request('DeleteAlertChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAlertChannelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除定时任务

        # @param request: Request instance for DeleteCronJobs.
        # @type request: :class:`Tencentcloud::pts::V20210728::DeleteCronJobsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DeleteCronJobsResponse`
        def DeleteCronJobs(request)
          body = send_request('DeleteCronJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCronJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除文件

        # @param request: Request instance for DeleteFiles.
        # @type request: :class:`Tencentcloud::pts::V20210728::DeleteFilesRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DeleteFilesResponse`
        def DeleteFiles(request)
          body = send_request('DeleteFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除任务

        # @param request: Request instance for DeleteJobs.
        # @type request: :class:`Tencentcloud::pts::V20210728::DeleteJobsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DeleteJobsResponse`
        def DeleteJobs(request)
          body = send_request('DeleteJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除项目

        # @param request: Request instance for DeleteProjects.
        # @type request: :class:`Tencentcloud::pts::V20210728::DeleteProjectsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DeleteProjectsResponse`
        def DeleteProjects(request)
          body = send_request('DeleteProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteScenarios.
        # @type request: :class:`Tencentcloud::pts::V20210728::DeleteScenariosRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DeleteScenariosResponse`
        def DeleteScenarios(request)
          body = send_request('DeleteScenarios', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScenariosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警通知接收组

        # @param request: Request instance for DescribeAlertChannels.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeAlertChannelsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeAlertChannelsResponse`
        def DescribeAlertChannels(request)
          body = send_request('DescribeAlertChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlertChannelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回告警历史项的列表

        # @param request: Request instance for DescribeAlertRecords.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeAlertRecordsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeAlertRecordsResponse`
        def DescribeAlertRecords(request)
          body = send_request('DescribeAlertRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlertRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询系统支持的指标

        # @param request: Request instance for DescribeAvailableMetrics.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeAvailableMetricsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeAvailableMetricsResponse`
        def DescribeAvailableMetrics(request)
          body = send_request('DescribeAvailableMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询检查点汇总信息

        # @param request: Request instance for DescribeCheckSummary.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeCheckSummaryRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeCheckSummaryResponse`
        def DescribeCheckSummary(request)
          body = send_request('DescribeCheckSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCheckSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出定时任务，非必填数组为空就默认全选

        # @param request: Request instance for DescribeCronJobs.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeCronJobsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeCronJobsResponse`
        def DescribeCronJobs(request)
          body = send_request('DescribeCronJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCronJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询错误详情汇总信息

        # @param request: Request instance for DescribeErrorSummary.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeErrorSummaryRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeErrorSummaryResponse`
        def DescribeErrorSummary(request)
          body = send_request('DescribeErrorSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeErrorSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文件列表

        # @param request: Request instance for DescribeFiles.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeFilesRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeFilesResponse`
        def DescribeFiles(request)
          body = send_request('DescribeFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务列表

        # @param request: Request instance for DescribeJobs.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeJobsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeJobsResponse`
        def DescribeJobs(request)
          body = send_request('DescribeJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询标签内容

        # @param request: Request instance for DescribeLabelValues.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeLabelValuesRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeLabelValuesResponse`
        def DescribeLabelValues(request)
          body = send_request('DescribeLabelValues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLabelValuesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指标所有的label及values值

        # @param request: Request instance for DescribeMetricLabelWithValues.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeMetricLabelWithValuesRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeMetricLabelWithValuesResponse`
        def DescribeMetricLabelWithValues(request)
          body = send_request('DescribeMetricLabelWithValues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMetricLabelWithValuesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 压测过程日志包括引擎输出日志及用户输出日志

        # @param request: Request instance for DescribeNormalLogs.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeNormalLogsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeNormalLogsResponse`
        def DescribeNormalLogs(request)
          body = send_request('DescribeNormalLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNormalLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询项目列表

        # @param request: Request instance for DescribeProjects.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeProjectsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeProjectsResponse`
        def DescribeProjects(request)
          body = send_request('DescribeProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询地域列表

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeRegionsResponse`
        def DescribeRegions(request)
          body = send_request('DescribeRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询请求汇总信息

        # @param request: Request instance for DescribeRequestSummary.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeRequestSummaryRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeRequestSummaryResponse`
        def DescribeRequestSummary(request)
          body = send_request('DescribeRequestSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRequestSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量查询指标，返回固定时间点指标内容

        # @param request: Request instance for DescribeSampleBatchQuery.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeSampleBatchQueryRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeSampleBatchQueryResponse`
        def DescribeSampleBatchQuery(request)
          body = send_request('DescribeSampleBatchQuery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSampleBatchQueryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询采样日志

        # @param request: Request instance for DescribeSampleLogs.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeSampleLogsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeSampleLogsResponse`
        def DescribeSampleLogs(request)
          body = send_request('DescribeSampleLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSampleLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量查询指标矩阵

        # @param request: Request instance for DescribeSampleMatrixBatchQuery.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeSampleMatrixBatchQueryRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeSampleMatrixBatchQueryResponse`
        def DescribeSampleMatrixBatchQuery(request)
          body = send_request('DescribeSampleMatrixBatchQuery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSampleMatrixBatchQueryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指标矩阵

        # @param request: Request instance for DescribeSampleMatrixQuery.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeSampleMatrixQueryRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeSampleMatrixQueryResponse`
        def DescribeSampleMatrixQuery(request)
          body = send_request('DescribeSampleMatrixQuery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSampleMatrixQueryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指标，返回固定时间点指标内容

        # @param request: Request instance for DescribeSampleQuery.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeSampleQueryRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeSampleQueryResponse`
        def DescribeSampleQuery(request)
          body = send_request('DescribeSampleQuery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSampleQueryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询场景配置并附带已经执行的任务内容

        # @param request: Request instance for DescribeScenarioWithJobs.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeScenarioWithJobsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeScenarioWithJobsResponse`
        def DescribeScenarioWithJobs(request)
          body = send_request('DescribeScenarioWithJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScenarioWithJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeScenarios.
        # @type request: :class:`Tencentcloud::pts::V20210728::DescribeScenariosRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::DescribeScenariosResponse`
        def DescribeScenarios(request)
          body = send_request('DescribeScenarios', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScenariosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成临时COS凭证

        # @param request: Request instance for GenerateTmpKey.
        # @type request: :class:`Tencentcloud::pts::V20210728::GenerateTmpKeyRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::GenerateTmpKeyResponse`
        def GenerateTmpKey(request)
          body = send_request('GenerateTmpKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateTmpKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启状态为已中止的定时任务

        # @param request: Request instance for RestartCronJobs.
        # @type request: :class:`Tencentcloud::pts::V20210728::RestartCronJobsRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::RestartCronJobsResponse`
        def RestartCronJobs(request)
          body = send_request('RestartCronJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartCronJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建并启动任务

        # @param request: Request instance for StartJob.
        # @type request: :class:`Tencentcloud::pts::V20210728::StartJobRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::StartJobResponse`
        def StartJob(request)
          body = send_request('StartJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新定时任务

        # @param request: Request instance for UpdateCronJob.
        # @type request: :class:`Tencentcloud::pts::V20210728::UpdateCronJobRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::UpdateCronJobResponse`
        def UpdateCronJob(request)
          body = send_request('UpdateCronJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCronJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新关联文件场景

        # @param request: Request instance for UpdateFileScenarioRelation.
        # @type request: :class:`Tencentcloud::pts::V20210728::UpdateFileScenarioRelationRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::UpdateFileScenarioRelationResponse`
        def UpdateFileScenarioRelation(request)
          body = send_request('UpdateFileScenarioRelation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFileScenarioRelationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新任务

        # @param request: Request instance for UpdateJob.
        # @type request: :class:`Tencentcloud::pts::V20210728::UpdateJobRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::UpdateJobResponse`
        def UpdateJob(request)
          body = send_request('UpdateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新项目

        # @param request: Request instance for UpdateProject.
        # @type request: :class:`Tencentcloud::pts::V20210728::UpdateProjectRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::UpdateProjectResponse`
        def UpdateProject(request)
          body = send_request('UpdateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新场景

        # @param request: Request instance for UpdateScenario.
        # @type request: :class:`Tencentcloud::pts::V20210728::UpdateScenarioRequest`
        # @rtype: :class:`Tencentcloud::pts::V20210728::UpdateScenarioResponse`
        def UpdateScenario(request)
          body = send_request('UpdateScenario', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateScenarioResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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