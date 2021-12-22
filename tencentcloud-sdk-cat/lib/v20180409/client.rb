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
  module Cat
    module V20180409
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-09'
            api_endpoint = 'cat.tencentcloudapi.com'
            sdk_version = 'CAT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 绑定拨测任务和告警策略组

        # @param request: Request instance for BindAlarmPolicy.
        # @type request: :class:`Tencentcloud::cat::V20180409::BindAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::BindAlarmPolicyResponse`
        def BindAlarmPolicy(request)
          body = send_request('BindAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindAlarmPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加拨测分组

        # @param request: Request instance for CreateAgentGroup.
        # @type request: :class:`Tencentcloud::cat::V20180409::CreateAgentGroupRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::CreateAgentGroupResponse`
        def CreateAgentGroup(request)
          body = send_request('CreateAgentGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量创建拨测任务

        # @param request: Request instance for CreateProbeTasks.
        # @type request: :class:`Tencentcloud::cat::V20180409::CreateProbeTasksRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::CreateProbeTasksResponse`
        def CreateProbeTasks(request)
          body = send_request('CreateProbeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProbeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建拨测任务(扩展)

        # @param request: Request instance for CreateTaskEx.
        # @type request: :class:`Tencentcloud::cat::V20180409::CreateTaskExRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::CreateTaskExResponse`
        def CreateTaskEx(request)
          body = send_request('CreateTaskEx', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskExResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除拨测分组

        # @param request: Request instance for DeleteAgentGroup.
        # @type request: :class:`Tencentcloud::cat::V20180409::DeleteAgentGroupRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DeleteAgentGroupResponse`
        def DeleteAgentGroup(request)
          body = send_request('DeleteAgentGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAgentGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除拨测任务

        # @param request: Request instance for DeleteProbeTask.
        # @type request: :class:`Tencentcloud::cat::V20180409::DeleteProbeTaskRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DeleteProbeTaskResponse`
        def DeleteProbeTask(request)
          body = send_request('DeleteProbeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProbeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除多个拨测任务

        # @param request: Request instance for DeleteTasks.
        # @type request: :class:`Tencentcloud::cat::V20180409::DeleteTasksRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DeleteTasksResponse`
        def DeleteTasks(request)
          body = send_request('DeleteTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测分组列表

        # @param request: Request instance for DescribeAgentGroups.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeAgentGroupsRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeAgentGroupsResponse`
        def DescribeAgentGroups(request)
          body = send_request('DescribeAgentGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询本用户可选的拨测点列表

        # @param request: Request instance for DescribeAgents.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeAgentsRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeAgentsResponse`
        def DescribeAgents(request)
          body = send_request('DescribeAgents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户的告警主题列表

        # @param request: Request instance for DescribeAlarmTopic.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeAlarmTopicRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeAlarmTopicResponse`
        def DescribeAlarmTopic(request)
          body = send_request('DescribeAlarmTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测告警列表

        # @param request: Request instance for DescribeAlarms.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeAlarmsRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeAlarmsResponse`
        def DescribeAlarms(request)
          body = send_request('DescribeAlarms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按任务查询拨测告警列表

        # @param request: Request instance for DescribeAlarmsByTask.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeAlarmsByTaskRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeAlarmsByTaskResponse`
        def DescribeAlarmsByTask(request)
          body = send_request('DescribeAlarmsByTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmsByTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测流水

        # @param request: Request instance for DescribeCatLogs.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeCatLogsRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeCatLogsResponse`
        def DescribeCatLogs(request)
          body = send_request('DescribeCatLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCatLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据时间范围、任务ID、运营商等条件查询单次拨测详情数据

        # @param request: Request instance for DescribeDetailedSingleProbeData.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeDetailedSingleProbeDataRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeDetailedSingleProbeDataResponse`
        def DescribeDetailedSingleProbeData(request)
          body = send_request('DescribeDetailedSingleProbeData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDetailedSingleProbeDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测节点

        # @param request: Request instance for DescribeProbeNodes.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeProbeNodesRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeProbeNodesResponse`
        def DescribeProbeNodes(request)
          body = send_request('DescribeProbeNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProbeNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测任务列表

        # @param request: Request instance for DescribeProbeTasks.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeProbeTasksRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeProbeTasksResponse`
        def DescribeProbeTasks(request)
          body = send_request('DescribeProbeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProbeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测任务信息

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeTaskDetailResponse`
        def DescribeTaskDetail(request)
          body = send_request('DescribeTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按类型查询拨测任务列表

        # @param request: Request instance for DescribeTasksByType.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeTasksByTypeRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeTasksByTypeResponse`
        def DescribeTasksByType(request)
          body = send_request('DescribeTasksByType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksByTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户可用资源限制

        # @param request: Request instance for DescribeUserLimit.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeUserLimitRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeUserLimitResponse`
        def DescribeUserLimit(request)
          body = send_request('DescribeUserLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定时刻的可用率地图信息

        # @param request: Request instance for GetAvailRatioHistory.
        # @type request: :class:`Tencentcloud::cat::V20180409::GetAvailRatioHistoryRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::GetAvailRatioHistoryResponse`
        def GetAvailRatioHistory(request)
          body = send_request('GetAvailRatioHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAvailRatioHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取一天的整体可用率信息

        # @param request: Request instance for GetDailyAvailRatio.
        # @type request: :class:`Tencentcloud::cat::V20180409::GetDailyAvailRatioRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::GetDailyAvailRatioResponse`
        def GetDailyAvailRatio(request)
          body = send_request('GetDailyAvailRatio', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDailyAvailRatioResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实时可用率信息

        # @param request: Request instance for GetRealAvailRatio.
        # @type request: :class:`Tencentcloud::cat::V20180409::GetRealAvailRatioRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::GetRealAvailRatioResponse`
        def GetRealAvailRatio(request)
          body = send_request('GetRealAvailRatio', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRealAvailRatioResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测任务的走势数据

        # @param request: Request instance for GetRespTimeTrendEx.
        # @type request: :class:`Tencentcloud::cat::V20180409::GetRespTimeTrendExRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::GetRespTimeTrendExResponse`
        def GetRespTimeTrendEx(request)
          body = send_request('GetRespTimeTrendEx', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRespTimeTrendExResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务列表的实时数据

        # @param request: Request instance for GetResultSummary.
        # @type request: :class:`Tencentcloud::cat::V20180409::GetResultSummaryRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::GetResultSummaryResponse`
        def GetResultSummary(request)
          body = send_request('GetResultSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetResultSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测任务的历史返回码信息

        # @param request: Request instance for GetReturnCodeHistory.
        # @type request: :class:`Tencentcloud::cat::V20180409::GetReturnCodeHistoryRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::GetReturnCodeHistoryResponse`
        def GetReturnCodeHistory(request)
          body = send_request('GetReturnCodeHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetReturnCodeHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测任务的返回码统计信息

        # @param request: Request instance for GetReturnCodeInfo.
        # @type request: :class:`Tencentcloud::cat::V20180409::GetReturnCodeInfoRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::GetReturnCodeInfoResponse`
        def GetReturnCodeInfo(request)
          body = send_request('GetReturnCodeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetReturnCodeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取AppId下的拨测任务总数

        # @param request: Request instance for GetTaskTotalNumber.
        # @type request: :class:`Tencentcloud::cat::V20180409::GetTaskTotalNumberRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::GetTaskTotalNumberResponse`
        def GetTaskTotalNumber(request)
          body = send_request('GetTaskTotalNumber', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskTotalNumberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改拨测分组

        # @param request: Request instance for ModifyAgentGroup.
        # @type request: :class:`Tencentcloud::cat::V20180409::ModifyAgentGroupRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::ModifyAgentGroupResponse`
        def ModifyAgentGroup(request)
          body = send_request('ModifyAgentGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改拨测任务(扩展)

        # @param request: Request instance for ModifyTaskEx.
        # @type request: :class:`Tencentcloud::cat::V20180409::ModifyTaskExRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::ModifyTaskExResponse`
        def ModifyTaskEx(request)
          body = send_request('ModifyTaskEx', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTaskExResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停拨测任务

        # @param request: Request instance for PauseTask.
        # @type request: :class:`Tencentcloud::cat::V20180409::PauseTaskRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::PauseTaskResponse`
        def PauseTask(request)
          body = send_request('PauseTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复拨测任务

        # @param request: Request instance for ResumeProbeTask.
        # @type request: :class:`Tencentcloud::cat::V20180409::ResumeProbeTaskRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::ResumeProbeTaskResponse`
        def ResumeProbeTask(request)
          body = send_request('ResumeProbeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeProbeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行拨测任务

        # @param request: Request instance for RunTask.
        # @type request: :class:`Tencentcloud::cat::V20180409::RunTaskRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::RunTaskResponse`
        def RunTask(request)
          body = send_request('RunTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停拨测任务

        # @param request: Request instance for SuspendProbeTask.
        # @type request: :class:`Tencentcloud::cat::V20180409::SuspendProbeTaskRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::SuspendProbeTaskResponse`
        def SuspendProbeTask(request)
          body = send_request('SuspendProbeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SuspendProbeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量更新拨测任务配置

        # @param request: Request instance for UpdateProbeTaskConfigurationList.
        # @type request: :class:`Tencentcloud::cat::V20180409::UpdateProbeTaskConfigurationListRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::UpdateProbeTaskConfigurationListResponse`
        def UpdateProbeTaskConfigurationList(request)
          body = send_request('UpdateProbeTaskConfigurationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProbeTaskConfigurationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 验证拨测任务，结果验证查询（验证成功的，才建议创建拨测任务）

        # @param request: Request instance for VerifyResult.
        # @type request: :class:`Tencentcloud::cat::V20180409::VerifyResultRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::VerifyResultResponse`
        def VerifyResult(request)
          body = send_request('VerifyResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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