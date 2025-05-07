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
  module Wedata
    module V20210820
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-08-20'
            api_endpoint = 'wedata.tencentcloudapi.com'
            sdk_version = 'WEDATA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加项目用户角色

        # @param request: Request instance for AddProjectUserRole.
        # @type request: :class:`Tencentcloud::wedata::V20210820::AddProjectUserRoleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::AddProjectUserRoleResponse`
        def AddProjectUserRole(request)
          body = send_request('AddProjectUserRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddProjectUserRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量创建任务告警规则

        # @param request: Request instance for BatchCreateIntegrationTaskAlarms.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchCreateIntegrationTaskAlarmsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchCreateIntegrationTaskAlarmsResponse`
        def BatchCreateIntegrationTaskAlarms(request)
          body = send_request('BatchCreateIntegrationTaskAlarms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchCreateIntegrationTaskAlarmsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 异步批量创建任务版本

        # @param request: Request instance for BatchCreateTaskVersionAsync.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchCreateTaskVersionAsyncRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchCreateTaskVersionAsyncResponse`
        def BatchCreateTaskVersionAsync(request)
          body = send_request('BatchCreateTaskVersionAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchCreateTaskVersionAsyncResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除集成任务

        # @param request: Request instance for BatchDeleteIntegrationTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchDeleteIntegrationTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchDeleteIntegrationTasksResponse`
        def BatchDeleteIntegrationTasks(request)
          body = send_request('BatchDeleteIntegrationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteIntegrationTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务运维-批量删除任务

        # @param request: Request instance for BatchDeleteOpsTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchDeleteOpsTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchDeleteOpsTasksResponse`
        def BatchDeleteOpsTasks(request)
          body = send_request('BatchDeleteOpsTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteOpsTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量置成功集成任务实例

        # @param request: Request instance for BatchForceSuccessIntegrationTaskInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchForceSuccessIntegrationTaskInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchForceSuccessIntegrationTaskInstancesResponse`
        def BatchForceSuccessIntegrationTaskInstances(request)
          body = send_request('BatchForceSuccessIntegrationTaskInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchForceSuccessIntegrationTaskInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量终止集成任务实例

        # @param request: Request instance for BatchKillIntegrationTaskInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchKillIntegrationTaskInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchKillIntegrationTaskInstancesResponse`
        def BatchKillIntegrationTaskInstances(request)
          body = send_request('BatchKillIntegrationTaskInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchKillIntegrationTaskInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对集成离线任务执行批量补数据操作

        # @param request: Request instance for BatchMakeUpIntegrationTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchMakeUpIntegrationTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchMakeUpIntegrationTasksResponse`
        def BatchMakeUpIntegrationTasks(request)
          body = send_request('BatchMakeUpIntegrationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchMakeUpIntegrationTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改任务责任人

        # @param request: Request instance for BatchModifyOpsOwners.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchModifyOpsOwnersRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchModifyOpsOwnersResponse`
        def BatchModifyOpsOwners(request)
          body = send_request('BatchModifyOpsOwners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyOpsOwnersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量重跑集成任务实例

        # @param request: Request instance for BatchRerunIntegrationTaskInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchRerunIntegrationTaskInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchRerunIntegrationTaskInstancesResponse`
        def BatchRerunIntegrationTaskInstances(request)
          body = send_request('BatchRerunIntegrationTaskInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchRerunIntegrationTaskInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量继续执行集成实时任务

        # @param request: Request instance for BatchResumeIntegrationTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchResumeIntegrationTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchResumeIntegrationTasksResponse`
        def BatchResumeIntegrationTasks(request)
          body = send_request('BatchResumeIntegrationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchResumeIntegrationTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务运维-任务列表 批量启动

        # @param request: Request instance for BatchRunOpsTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchRunOpsTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchRunOpsTaskResponse`
        def BatchRunOpsTask(request)
          body = send_request('BatchRunOpsTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchRunOpsTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量运行集成任务

        # @param request: Request instance for BatchStartIntegrationTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchStartIntegrationTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchStartIntegrationTasksResponse`
        def BatchStartIntegrationTasks(request)
          body = send_request('BatchStartIntegrationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchStartIntegrationTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量停止集成任务

        # @param request: Request instance for BatchStopIntegrationTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchStopIntegrationTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchStopIntegrationTasksResponse`
        def BatchStopIntegrationTasks(request)
          body = send_request('BatchStopIntegrationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchStopIntegrationTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 仅对任务状态为”调度中“和”已暂停“有效，对所选任务的任务实例进行终止，并停止调度

        # @param request: Request instance for BatchStopOpsTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchStopOpsTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchStopOpsTasksResponse`
        def BatchStopOpsTasks(request)
          body = send_request('BatchStopOpsTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchStopOpsTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量停止工作流

        # @param request: Request instance for BatchStopWorkflowsByIds.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchStopWorkflowsByIdsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchStopWorkflowsByIdsResponse`
        def BatchStopWorkflowsByIds(request)
          body = send_request('BatchStopWorkflowsByIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchStopWorkflowsByIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量暂停集成任务

        # @param request: Request instance for BatchSuspendIntegrationTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchSuspendIntegrationTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchSuspendIntegrationTasksResponse`
        def BatchSuspendIntegrationTasks(request)
          body = send_request('BatchSuspendIntegrationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchSuspendIntegrationTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量更新集成任务（暂时仅支持批量更新责任人）

        # @param request: Request instance for BatchUpdateIntegrationTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchUpdateIntegrationTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchUpdateIntegrationTasksResponse`
        def BatchUpdateIntegrationTasks(request)
          body = send_request('BatchUpdateIntegrationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchUpdateIntegrationTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 判断告警规则重名

        # @param request: Request instance for CheckAlarmRegularNameExist.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CheckAlarmRegularNameExistRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CheckAlarmRegularNameExistResponse`
        def CheckAlarmRegularNameExist(request)
          body = send_request('CheckAlarmRegularNameExist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckAlarmRegularNameExistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 判断集成节点名称是否存在

        # @param request: Request instance for CheckIntegrationNodeNameExists.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CheckIntegrationNodeNameExistsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CheckIntegrationNodeNameExistsResponse`
        def CheckIntegrationNodeNameExists(request)
          body = send_request('CheckIntegrationNodeNameExists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckIntegrationNodeNameExistsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 判断集成任务名称是否存在

        # @param request: Request instance for CheckIntegrationTaskNameExists.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CheckIntegrationTaskNameExistsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CheckIntegrationTaskNameExistsResponse`
        def CheckIntegrationTaskNameExists(request)
          body = send_request('CheckIntegrationTaskNameExists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckIntegrationTaskNameExistsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 离线任务重名校验

        # @param request: Request instance for CheckTaskNameExist.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CheckTaskNameExistRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CheckTaskNameExistResponse`
        def CheckTaskNameExist(request)
          body = send_request('CheckTaskNameExist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckTaskNameExistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交集成任务

        # @param request: Request instance for CommitIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CommitIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CommitIntegrationTaskResponse`
        def CommitIntegrationTask(request)
          body = send_request('CommitIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CommitIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交规则组运行任务接口

        # @param request: Request instance for CommitRuleGroupTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CommitRuleGroupTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CommitRuleGroupTaskResponse`
        def CommitRuleGroupTask(request)
          body = send_request('CommitRuleGroupTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CommitRuleGroupTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 统计任务实例状态

        # @param request: Request instance for CountOpsInstanceState.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CountOpsInstanceStateRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CountOpsInstanceStateResponse`
        def CountOpsInstanceState(request)
          body = send_request('CountOpsInstanceState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CountOpsInstanceStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户自定义函数

        # @param request: Request instance for CreateCustomFunction.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateCustomFunctionRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateCustomFunctionResponse`
        def CreateCustomFunction(request)
          body = send_request('CreateCustomFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomFunctionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据建模，提供给云应用使用，实现“Wedata数据建模”的下单发货

        # @param request: Request instance for CreateDataModel.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateDataModelRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateDataModelResponse`
        def CreateDataModel(request)
          body = send_request('CreateDataModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据源

        # @param request: Request instance for CreateDataSource.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateDataSourceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateDataSourceResponse`
        def CreateDataSource(request)
          body = send_request('CreateDataSource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataSourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编排空间-创建文件夹

        # @param request: Request instance for CreateDsFolder.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateDsFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateDsFolderResponse`
        def CreateDsFolder(request)
          body = send_request('CreateDsFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDsFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 建hive表

        # @param request: Request instance for CreateHiveTable.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateHiveTableRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateHiveTableResponse`
        def CreateHiveTable(request)
          body = send_request('CreateHiveTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHiveTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建hive表，返回表名称

        # @param request: Request instance for CreateHiveTableByDDL.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateHiveTableByDDLRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateHiveTableByDDLResponse`
        def CreateHiveTableByDDL(request)
          body = send_request('CreateHiveTableByDDL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHiveTableByDDLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集成节点

        # @param request: Request instance for CreateIntegrationNode.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateIntegrationNodeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateIntegrationNodeResponse`
        def CreateIntegrationNode(request)
          body = send_request('CreateIntegrationNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIntegrationNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集成任务

        # @param request: Request instance for CreateIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateIntegrationTaskResponse`
        def CreateIntegrationTask(request)
          body = send_request('CreateIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建离线任务

        # @param request: Request instance for CreateOfflineTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateOfflineTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateOfflineTaskResponse`
        def CreateOfflineTask(request)
          body = send_request('CreateOfflineTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOfflineTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量补数据（创建补录任务）

        # @param request: Request instance for CreateOpsMakePlan.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateOpsMakePlanRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateOpsMakePlanResponse`
        def CreateOpsMakePlan(request)
          body = send_request('CreateOpsMakePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpsMakePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建质量规则接口

        # @param request: Request instance for CreateRule.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateRuleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateRuleResponse`
        def CreateRule(request)
          body = send_request('CreateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建规则模板

        # @param request: Request instance for CreateRuleTemplate.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateRuleTemplateRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateRuleTemplateResponse`
        def CreateRuleTemplate(request)
          body = send_request('CreateRuleTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRuleTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建任务

        # @param request: Request instance for CreateTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateTaskResponse`
        def CreateTask(request)
          body = send_request('CreateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建任务告警规则

        # @param request: Request instance for CreateTaskAlarmRegular.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateTaskAlarmRegularRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateTaskAlarmRegularResponse`
        def CreateTaskAlarmRegular(request)
          body = send_request('CreateTaskAlarmRegular', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskAlarmRegularResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编排空间-工作流-创建任务文件夹

        # @param request: Request instance for CreateTaskFolder.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateTaskFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateTaskFolderResponse`
        def CreateTaskFolder(request)
          body = send_request('CreateTaskFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交任务版本

        # @param request: Request instance for CreateTaskVersionDs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateTaskVersionDsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateTaskVersionDsResponse`
        def CreateTaskVersionDs(request)
          body = send_request('CreateTaskVersionDs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskVersionDsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建工作流

        # @param request: Request instance for CreateWorkflowDs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateWorkflowDsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateWorkflowDsResponse`
        def CreateWorkflowDs(request)
          body = send_request('CreateWorkflowDs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkflowDsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取dag实例

        # @param request: Request instance for DagInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DagInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DagInstancesResponse`
        def DagInstances(request)
          body = send_request('DagInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DagInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户自定义函数

        # @param request: Request instance for DeleteCustomFunction.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteCustomFunctionRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteCustomFunctionResponse`
        def DeleteCustomFunction(request)
          body = send_request('DeleteCustomFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomFunctionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁数据建模，提供给云应用使用，实现“Wedata数据建模”的销毁

        # @param request: Request instance for DeleteDataModel.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteDataModelRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteDataModelResponse`
        def DeleteDataModel(request)
          body = send_request('DeleteDataModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDataModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除数据源

        # @param request: Request instance for DeleteDataSources.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteDataSourcesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteDataSourcesResponse`
        def DeleteDataSources(request)
          body = send_request('DeleteDataSources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDataSourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编排空间-删除文件夹

        # @param request: Request instance for DeleteDsFolder.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteDsFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteDsFolderResponse`
        def DeleteDsFolder(request)
          body = send_request('DeleteDsFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDsFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteFile.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteFileResponse`
        def DeleteFile(request)
          body = send_request('DeleteFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开发空间-批量删除目录和文件

        # @param request: Request instance for DeleteFilePath.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteFilePathRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteFilePathResponse`
        def DeleteFilePath(request)
          body = send_request('DeleteFilePath', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFilePathResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除集成节点

        # @param request: Request instance for DeleteIntegrationNode.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteIntegrationNodeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteIntegrationNodeResponse`
        def DeleteIntegrationNode(request)
          body = send_request('DeleteIntegrationNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIntegrationNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除集成任务

        # @param request: Request instance for DeleteIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteIntegrationTaskResponse`
        def DeleteIntegrationTask(request)
          body = send_request('DeleteIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteOfflineTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteOfflineTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteOfflineTaskResponse`
        def DeleteOfflineTask(request)
          body = send_request('DeleteOfflineTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOfflineTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除项目参数

        # @param request: Request instance for DeleteProjectParamDs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteProjectParamDsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteProjectParamDsResponse`
        def DeleteProjectParamDs(request)
          body = send_request('DeleteProjectParamDs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectParamDsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除项目用户

        # @param request: Request instance for DeleteProjectUsers.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteProjectUsersRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteProjectUsersResponse`
        def DeleteProjectUsers(request)
          body = send_request('DeleteProjectUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资源管理删除资源

        # @param request: Request instance for DeleteResource.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteResourceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteResourceResponse`
        def DeleteResource(request)
          body = send_request('DeleteResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资源管理-删除资源文件

        # @param request: Request instance for DeleteResourceFile.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteResourceFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteResourceFileResponse`
        def DeleteResourceFile(request)
          body = send_request('DeleteResourceFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteResourceFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资源管理-批量删除资源文件

        # @param request: Request instance for DeleteResourceFiles.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteResourceFilesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteResourceFilesResponse`
        def DeleteResourceFiles(request)
          body = send_request('DeleteResourceFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteResourceFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除质量规则接口

        # @param request: Request instance for DeleteRule.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteRuleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteRuleResponse`
        def DeleteRule(request)
          body = send_request('DeleteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除规则模板

        # @param request: Request instance for DeleteRuleTemplate.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteRuleTemplateRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteRuleTemplateResponse`
        def DeleteRuleTemplate(request)
          body = send_request('DeleteRuleTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRuleTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除任务告警规则

        # @param request: Request instance for DeleteTaskAlarmRegular.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteTaskAlarmRegularRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteTaskAlarmRegularResponse`
        def DeleteTaskAlarmRegular(request)
          body = send_request('DeleteTaskAlarmRegular', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTaskAlarmRegularResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除编排空间任务

        # @param request: Request instance for DeleteTaskDs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteTaskDsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteTaskDsResponse`
        def DeleteTaskDs(request)
          body = send_request('DeleteTaskDs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTaskDsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过工作流Id删除工作流

        # @param request: Request instance for DeleteWorkflowById.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteWorkflowByIdRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteWorkflowByIdResponse`
        def DeleteWorkflowById(request)
          body = send_request('DeleteWorkflowById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWorkflowByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 告警事件列表

        # @param request: Request instance for DescribeAlarmEvents.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeAlarmEventsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeAlarmEventsResponse`
        def DescribeAlarmEvents(request)
          body = send_request('DescribeAlarmEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 告警接收人详情

        # @param request: Request instance for DescribeAlarmReceiver.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeAlarmReceiverRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeAlarmReceiverResponse`
        def DescribeAlarmReceiver(request)
          body = send_request('DescribeAlarmReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询父目录下所有子文件夹+工作流

        # @param request: Request instance for DescribeAllByFolderNew.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeAllByFolderNewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeAllByFolderNewResponse`
        def DescribeAllByFolderNew(request)
          body = send_request('DescribeAllByFolderNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllByFolderNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取待审批列表

        # @param request: Request instance for DescribeApproveList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeApproveListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeApproveListResponse`
        def DescribeApproveList(request)
          body = send_request('DescribeApproveList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApproveListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取审批分类列表

        # @param request: Request instance for DescribeApproveTypeList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeApproveTypeListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeApproveTypeListResponse`
        def DescribeApproveTypeList(request)
          body = send_request('DescribeApproveTypeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApproveTypeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量操作页面获取任务列表

        # @param request: Request instance for DescribeBatchOperateTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeBatchOperateTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeBatchOperateTaskResponse`
        def DescribeBatchOperateTask(request)
          body = send_request('DescribeBatchOperateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchOperateTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出字段血缘信息

        # @param request: Request instance for DescribeColumnLineage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeColumnLineageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeColumnLineageResponse`
        def DescribeColumnLineage(request)
          body = send_request('DescribeColumnLineage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeColumnLineageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询表的所有列元数据

        # @param request: Request instance for DescribeColumnsMeta.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeColumnsMetaRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeColumnsMetaResponse`
        def DescribeColumnsMeta(request)
          body = send_request('DescribeColumnsMeta', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeColumnsMetaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据质量的概览页面数据监测情况接口

        # @param request: Request instance for DescribeDataCheckStat.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDataCheckStatRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDataCheckStatResponse`
        def DescribeDataCheckStat(request)
          body = send_request('DescribeDataCheckStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataCheckStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据服务API的发布态信息

        # @param request: Request instance for DescribeDataServicePublishedApiDetail.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDataServicePublishedApiDetailRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDataServicePublishedApiDetailResponse`
        def DescribeDataServicePublishedApiDetail(request)
          body = send_request('DescribeDataServicePublishedApiDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataServicePublishedApiDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据服务API的发布态信息列表

        # @param request: Request instance for DescribeDataServicePublishedApiList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDataServicePublishedApiListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDataServicePublishedApiListResponse`
        def DescribeDataServicePublishedApiList(request)
          body = send_request('DescribeDataServicePublishedApiList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataServicePublishedApiListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据源信息-数据源分页列表

        # @param request: Request instance for DescribeDataSourceInfoList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDataSourceInfoListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDataSourceInfoListResponse`
        def DescribeDataSourceInfoList(request)
          body = send_request('DescribeDataSourceInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataSourceInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据源详情

        # @param request: Request instance for DescribeDataSourceList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDataSourceListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDataSourceListResponse`
        def DescribeDataSourceList(request)
          body = send_request('DescribeDataSourceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataSourceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据库信息

        # @param request: Request instance for DescribeDatabaseInfoList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDatabaseInfoListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDatabaseInfoListResponse`
        def DescribeDatabaseInfoList(request)
          body = send_request('DescribeDatabaseInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据库列表

        # @param request: Request instance for DescribeDatabaseMetas.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDatabaseMetasRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDatabaseMetasResponse`
        def DescribeDatabaseMetas(request)
          body = send_request('DescribeDatabaseMetas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseMetasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据源详情

        # @param request: Request instance for DescribeDatasource.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDatasourceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDatasourceResponse`
        def DescribeDatasource(request)
          body = send_request('DescribeDatasource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatasourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据层级查找上/下游任务节点

        # @param request: Request instance for DescribeDependOpsTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDependOpsTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDependOpsTasksResponse`
        def DescribeDependOpsTasks(request)
          body = send_request('DescribeDependOpsTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDependOpsTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过taskIds查询task详情列表

        # @param request: Request instance for DescribeDependTaskLists.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDependTaskListsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDependTaskListsResponse`
        def DescribeDependTaskLists(request)
          body = send_request('DescribeDependTaskLists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDependTaskListsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 质量报告-查询质量评分

        # @param request: Request instance for DescribeDimensionScore.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDimensionScoreRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDimensionScoreResponse`
        def DescribeDimensionScore(request)
          body = send_request('DescribeDimensionScore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDimensionScoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 无效API，没有上线过的业务功能

        # 分页查询试运行实例列表

        # @param request: Request instance for DescribeDrInstancePage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDrInstancePageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDrInstancePageResponse`
        def DescribeDrInstancePage(request)
          body = send_request('DescribeDrInstancePage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDrInstancePageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询目录树

        # @param request: Request instance for DescribeDsFolderTree.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDsFolderTreeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDsFolderTreeResponse`
        def DescribeDsFolderTree(request)
          body = send_request('DescribeDsFolderTree', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDsFolderTreeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询父目录树，用于工作流、任务定位

        # @param request: Request instance for DescribeDsParentFolderTree.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDsParentFolderTreeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDsParentFolderTreeResponse`
        def DescribeDsParentFolderTree(request)
          body = send_request('DescribeDsParentFolderTree', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDsParentFolderTreeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取值班日历

        # @param request: Request instance for DescribeDutyScheduleDetails.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDutyScheduleDetailsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDutyScheduleDetailsResponse`
        def DescribeDutyScheduleDetails(request)
          body = send_request('DescribeDutyScheduleDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDutyScheduleDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取值班表列表

        # @param request: Request instance for DescribeDutyScheduleList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDutyScheduleListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDutyScheduleListResponse`
        def DescribeDutyScheduleList(request)
          body = send_request('DescribeDutyScheduleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDutyScheduleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据项目ID和事件名称查看事件详情

        # @param request: Request instance for DescribeEvent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeEventRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeEventResponse`
        def DescribeEvent(request)
          body = send_request('DescribeEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据条件查找事件实例

        # @param request: Request instance for DescribeEventCases.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeEventCasesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeEventCasesResponse`
        def DescribeEventCases(request)
          body = send_request('DescribeEventCases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventCasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看事件实例的消费任务

        # @param request: Request instance for DescribeEventConsumeTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeEventConsumeTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeEventConsumeTasksResponse`
        def DescribeEventConsumeTasks(request)
          body = send_request('DescribeEventConsumeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventConsumeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则组执行策略

        # @param request: Request instance for DescribeExecStrategy.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeExecStrategyRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeExecStrategyResponse`
        def DescribeExecStrategy(request)
          body = send_request('DescribeExecStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExecStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 元数据模型-字段基础信息查询接口

        # @param request: Request instance for DescribeFieldBasicInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeFieldBasicInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeFieldBasicInfoResponse`
        def DescribeFieldBasicInfo(request)
          body = send_request('DescribeFieldBasicInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFieldBasicInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据项目id 获取项目下所有工作流列表

        # @param request: Request instance for DescribeFolderWorkflowList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeFolderWorkflowListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeFolderWorkflowListResponse`
        def DescribeFolderWorkflowList(request)
          body = send_request('DescribeFolderWorkflowList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFolderWorkflowListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询函数分类

        # @param request: Request instance for DescribeFunctionKinds.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeFunctionKindsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeFunctionKindsResponse`
        def DescribeFunctionKinds(request)
          body = send_request('DescribeFunctionKinds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFunctionKindsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询函数类型

        # @param request: Request instance for DescribeFunctionTypes.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeFunctionTypesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeFunctionTypesResponse`
        def DescribeFunctionTypes(request)
          body = send_request('DescribeFunctionTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFunctionTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据周期类型查询所有实例

        # @param request: Request instance for DescribeInstanceByCycle.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceByCycleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceByCycleResponse`
        def DescribeInstanceByCycle(request)
          body = send_request('DescribeInstanceByCycle', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceByCycleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例详情页，返回某个实例所有生命周期信息

        # @param request: Request instance for DescribeInstanceDetailInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceDetailInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceDetailInfoResponse`
        def DescribeInstanceDetailInfo(request)
          body = send_request('DescribeInstanceDetailInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceDetailInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 日志获取详情页面

        # @param request: Request instance for DescribeInstanceLastLog.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLastLogRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLastLogResponse`
        def DescribeInstanceLastLog(request)
          body = send_request('DescribeInstanceLastLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLastLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例列表

        # @param request: Request instance for DescribeInstanceList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceListResponse`
        def DescribeInstanceList(request)
          body = send_request('DescribeInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例运行日志

        # @param request: Request instance for DescribeInstanceLog.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogResponse`
        def DescribeInstanceLog(request)
          body = send_request('DescribeInstanceLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取具体实例相关日志信息

        # @param request: Request instance for DescribeInstanceLogDetail.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogDetailRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogDetailResponse`
        def DescribeInstanceLogDetail(request)
          body = send_request('DescribeInstanceLogDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLogDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下载日志文件，返回日志下载URL

        # @param request: Request instance for DescribeInstanceLogFile.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogFileResponse`
        def DescribeInstanceLogFile(request)
          body = send_request('DescribeInstanceLogFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLogFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 离线任务实例运行日志列表

        # @param request: Request instance for DescribeInstanceLogList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogListResponse`
        def DescribeInstanceLogList(request)
          body = send_request('DescribeInstanceLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集成节点

        # @param request: Request instance for DescribeIntegrationNode.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationNodeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationNodeResponse`
        def DescribeIntegrationNode(request)
          body = send_request('DescribeIntegrationNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据集成大屏概览

        # @param request: Request instance for DescribeIntegrationStatistics.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsResponse`
        def DescribeIntegrationStatistics(request)
          body = send_request('DescribeIntegrationStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据集成大屏实例状态统计趋势

        # @param request: Request instance for DescribeIntegrationStatisticsInstanceTrend.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsInstanceTrendRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsInstanceTrendResponse`
        def DescribeIntegrationStatisticsInstanceTrend(request)
          body = send_request('DescribeIntegrationStatisticsInstanceTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationStatisticsInstanceTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据集成大屏同步条数统计趋势

        # @param request: Request instance for DescribeIntegrationStatisticsRecordsTrend.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsRecordsTrendRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsRecordsTrendResponse`
        def DescribeIntegrationStatisticsRecordsTrend(request)
          body = send_request('DescribeIntegrationStatisticsRecordsTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationStatisticsRecordsTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据集成大屏任务状态分布统计

        # @param request: Request instance for DescribeIntegrationStatisticsTaskStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsTaskStatusResponse`
        def DescribeIntegrationStatisticsTaskStatus(request)
          body = send_request('DescribeIntegrationStatisticsTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationStatisticsTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据集成大屏任务状态统计趋势

        # @param request: Request instance for DescribeIntegrationStatisticsTaskStatusTrend.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsTaskStatusTrendRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsTaskStatusTrendResponse`
        def DescribeIntegrationStatisticsTaskStatusTrend(request)
          body = send_request('DescribeIntegrationStatisticsTaskStatusTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationStatisticsTaskStatusTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集成任务

        # @param request: Request instance for DescribeIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationTaskResponse`
        def DescribeIntegrationTask(request)
          body = send_request('DescribeIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集成任务列表

        # @param request: Request instance for DescribeIntegrationTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationTasksResponse`
        def DescribeIntegrationTasks(request)
          body = send_request('DescribeIntegrationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集成任务版本节点信息

        # @param request: Request instance for DescribeIntegrationVersionNodesInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationVersionNodesInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationVersionNodesInfoResponse`
        def DescribeIntegrationVersionNodesInfo(request)
          body = send_request('DescribeIntegrationVersionNodesInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationVersionNodesInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取离线任务长连接Token

        # @param request: Request instance for DescribeOfflineTaskToken.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOfflineTaskTokenRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOfflineTaskTokenResponse`
        def DescribeOfflineTaskToken(request)
          body = send_request('DescribeOfflineTaskToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOfflineTaskTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务运维列表组合条件查询

        # @param request: Request instance for DescribeOperateOpsTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOperateOpsTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOperateOpsTasksResponse`
        def DescribeOperateOpsTasks(request)
          body = send_request('DescribeOperateOpsTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOperateOpsTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例运维-获取实例日志列表

        # @param request: Request instance for DescribeOpsInstanceLogList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOpsInstanceLogListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOpsInstanceLogListResponse`
        def DescribeOpsInstanceLogList(request)
          body = send_request('DescribeOpsInstanceLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpsInstanceLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据补录计划和补录任务获取补录实例列表。

        # @param request: Request instance for DescribeOpsMakePlanInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOpsMakePlanInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOpsMakePlanInstancesResponse`
        def DescribeOpsMakePlanInstances(request)
          body = send_request('DescribeOpsMakePlanInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpsMakePlanInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看补录计划任务

        # @param request: Request instance for DescribeOpsMakePlanTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOpsMakePlanTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOpsMakePlanTasksResponse`
        def DescribeOpsMakePlanTasks(request)
          body = send_request('DescribeOpsMakePlanTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpsMakePlanTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据条件分页查询补录计划

        # @param request: Request instance for DescribeOpsMakePlans.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOpsMakePlansRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOpsMakePlansResponse`
        def DescribeOpsMakePlans(request)
          body = send_request('DescribeOpsMakePlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpsMakePlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户生产工作流列表

        # @param request: Request instance for DescribeOpsWorkflows.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOpsWorkflowsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOpsWorkflowsResponse`
        def DescribeOpsWorkflows(request)
          body = send_request('DescribeOpsWorkflows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpsWorkflowsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询全量函数

        # @param request: Request instance for DescribeOrganizationalFunctions.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOrganizationalFunctionsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOrganizationalFunctionsResponse`
        def DescribeOrganizationalFunctions(request)
          body = send_request('DescribeOrganizationalFunctions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationalFunctionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取待提交任务预提交校验信息（注意：工作流编号或者任务编号列表，必须填一项）

        # @param request: Request instance for DescribePendingSubmitTaskList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribePendingSubmitTaskListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribePendingSubmitTaskListResponse`
        def DescribePendingSubmitTaskList(request)
          body = send_request('DescribePendingSubmitTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePendingSubmitTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目信息

        # @param request: Request instance for DescribeProject.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeProjectRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeProjectResponse`
        def DescribeProject(request)
          body = send_request('DescribeProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目下的用户，分页返回

        # @param request: Request instance for DescribeProjectUsers.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeProjectUsersRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeProjectUsersResponse`
        def DescribeProjectUsers(request)
          body = send_request('DescribeProjectUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 质量报告-质量评分

        # @param request: Request instance for DescribeQualityScore.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeQualityScoreRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeQualityScoreResponse`
        def DescribeQualityScore(request)
          body = send_request('DescribeQualityScore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQualityScoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 质量报告-质量分周期趋势

        # @param request: Request instance for DescribeQualityScoreTrend.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeQualityScoreTrendRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeQualityScoreTrendResponse`
        def DescribeQualityScoreTrend(request)
          body = send_request('DescribeQualityScoreTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQualityScoreTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实时任务实例节点信息

        # @param request: Request instance for DescribeRealTimeTaskInstanceNodeInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRealTimeTaskInstanceNodeInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRealTimeTaskInstanceNodeInfoResponse`
        def DescribeRealTimeTaskInstanceNodeInfo(request)
          body = send_request('DescribeRealTimeTaskInstanceNodeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRealTimeTaskInstanceNodeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实时任务运行指标概览

        # @param request: Request instance for DescribeRealTimeTaskMetricOverview.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRealTimeTaskMetricOverviewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRealTimeTaskMetricOverviewResponse`
        def DescribeRealTimeTaskMetricOverview(request)
          body = send_request('DescribeRealTimeTaskMetricOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRealTimeTaskMetricOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实时任务同步速度趋势

        # @param request: Request instance for DescribeRealTimeTaskSpeed.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRealTimeTaskSpeedRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRealTimeTaskSpeedResponse`
        def DescribeRealTimeTaskSpeed(request)
          body = send_request('DescribeRealTimeTaskSpeed', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRealTimeTaskSpeedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询上报任务详情

        # @param request: Request instance for DescribeReportTaskDetail.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeReportTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeReportTaskDetailResponse`
        def DescribeReportTaskDetail(request)
          body = send_request('DescribeReportTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReportTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询上报任务列表

        # @param request: Request instance for DescribeReportTaskList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeReportTaskListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeReportTaskListResponse`
        def DescribeReportTaskList(request)
          body = send_request('DescribeReportTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReportTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资源管理目录树

        # @param request: Request instance for DescribeResourceManagePathTrees.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeResourceManagePathTreesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeResourceManagePathTreesResponse`
        def DescribeResourceManagePathTrees(request)
          body = send_request('DescribeResourceManagePathTrees', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceManagePathTreesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取角色列表信息

        # @param request: Request instance for DescribeRoleList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRoleListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRoleListResponse`
        def DescribeRoleList(request)
          body = send_request('DescribeRoleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则详情

        # @param request: Request instance for DescribeRule.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleResponse`
        def DescribeRule(request)
          body = send_request('DescribeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据质量概览页面触发维度分布统计接口

        # @param request: Request instance for DescribeRuleDimStat.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleDimStatRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleDimStatResponse`
        def DescribeRuleDimStat(request)
          body = send_request('DescribeRuleDimStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleDimStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则执行结果详情

        # @param request: Request instance for DescribeRuleExecDetail.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecDetailRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecDetailResponse`
        def DescribeRuleExecDetail(request)
          body = send_request('DescribeRuleExecDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleExecDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 规则执行日志查询

        # @param request: Request instance for DescribeRuleExecLog.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecLogRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecLogResponse`
        def DescribeRuleExecLog(request)
          body = send_request('DescribeRuleExecLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleExecLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 规则执行结果列表查询

        # @param request: Request instance for DescribeRuleExecResults.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecResultsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecResultsResponse`
        def DescribeRuleExecResults(request)
          body = send_request('DescribeRuleExecResults', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleExecResultsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据质量概览页面规则运行情况接口

        # @param request: Request instance for DescribeRuleExecStat.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecStatRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecStatResponse`
        def DescribeRuleExecStat(request)
          body = send_request('DescribeRuleExecStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleExecStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则组详情接口

        # @param request: Request instance for DescribeRuleGroup.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupResponse`
        def DescribeRuleGroup(request)
          body = send_request('DescribeRuleGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 规则组执行结果分页查询接口

        # @param request: Request instance for DescribeRuleGroupExecResultsByPage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupExecResultsByPageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupExecResultsByPageResponse`
        def DescribeRuleGroupExecResultsByPage(request)
          body = send_request('DescribeRuleGroupExecResultsByPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleGroupExecResultsByPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则组订阅信息

        # @param request: Request instance for DescribeRuleGroupSubscription.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupSubscriptionRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupSubscriptionResponse`
        def DescribeRuleGroupSubscription(request)
          body = send_request('DescribeRuleGroupSubscription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleGroupSubscriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询表绑定执行规则组信息

        # @param request: Request instance for DescribeRuleGroupTable.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupTableRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupTableResponse`
        def DescribeRuleGroupTable(request)
          body = send_request('DescribeRuleGroupTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleGroupTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 【过滤条件】
        # {表名称TableName,支持模糊匹配}       {表负责人TableOwnerName,支持模糊匹配}      {监控方式MonitorTypes，1.未配置 2.关联生产调度 3.离线周期检测,支持多选}  {订阅人ReceiverUin}
        # 【必要字段】
        # {数据来源DatasourceId}

        # @param request: Request instance for DescribeRuleGroupsByPage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupsByPageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupsByPageResponse`
        def DescribeRuleGroupsByPage(request)
          body = send_request('DescribeRuleGroupsByPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleGroupsByPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询模板详情

        # @param request: Request instance for DescribeRuleTemplate.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleTemplateRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleTemplateResponse`
        def DescribeRuleTemplate(request)
          body = send_request('DescribeRuleTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则模板列表

        # @param request: Request instance for DescribeRuleTemplates.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleTemplatesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleTemplatesResponse`
        def DescribeRuleTemplates(request)
          body = send_request('DescribeRuleTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 【过滤条件】 {模板名称Name,支持模糊匹配} {模板类型type，1.系统模板 2.自定义模板} {质量检测维度QualityDims, 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性} 【排序字段】 { 引用数排序类型CitationOrderType，根据引用数量排序 ASC DESC}

        # @param request: Request instance for DescribeRuleTemplatesByPage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleTemplatesByPageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleTemplatesByPageResponse`
        def DescribeRuleTemplatesByPage(request)
          body = send_request('DescribeRuleTemplatesByPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleTemplatesByPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询质量规则列表

        # @param request: Request instance for DescribeRules.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRulesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRulesResponse`
        def DescribeRules(request)
          body = send_request('DescribeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询质量规则

        # @param request: Request instance for DescribeRulesByPage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRulesByPageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRulesByPageResponse`
        def DescribeRulesByPage(request)
          body = send_request('DescribeRulesByPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRulesByPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例列表

        # @param request: Request instance for DescribeScheduleInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeScheduleInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeScheduleInstancesResponse`
        def DescribeScheduleInstances(request)
          body = send_request('DescribeScheduleInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScheduleInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运维大屏-实例状态分布

        # @param request: Request instance for DescribeSchedulerInstanceStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeSchedulerInstanceStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeSchedulerInstanceStatusResponse`
        def DescribeSchedulerInstanceStatus(request)
          body = send_request('DescribeSchedulerInstanceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSchedulerInstanceStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运维大屏-实例运行时长排行

        # @param request: Request instance for DescribeSchedulerRunTimeInstanceCntByStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeSchedulerRunTimeInstanceCntByStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeSchedulerRunTimeInstanceCntByStatusResponse`
        def DescribeSchedulerRunTimeInstanceCntByStatus(request)
          body = send_request('DescribeSchedulerRunTimeInstanceCntByStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSchedulerRunTimeInstanceCntByStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务状态统计

        # @param request: Request instance for DescribeSchedulerTaskCntByStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeSchedulerTaskCntByStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeSchedulerTaskCntByStatusResponse`
        def DescribeSchedulerTaskCntByStatus(request)
          body = send_request('DescribeSchedulerTaskCntByStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSchedulerTaskCntByStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运维大屏-任务状态分布

        # @param request: Request instance for DescribeSchedulerTaskTypeCnt.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeSchedulerTaskTypeCntRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeSchedulerTaskTypeCntResponse`
        def DescribeSchedulerTaskTypeCnt(request)
          body = send_request('DescribeSchedulerTaskTypeCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSchedulerTaskTypeCntResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务状态趋势

        # @param request: Request instance for DescribeStatisticInstanceStatusTrendOps.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeStatisticInstanceStatusTrendOpsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeStatisticInstanceStatusTrendOpsResponse`
        def DescribeStatisticInstanceStatusTrendOps(request)
          body = send_request('DescribeStatisticInstanceStatusTrendOps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStatisticInstanceStatusTrendOpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实时任务日志列表

        # @param request: Request instance for DescribeStreamTaskLogList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeStreamTaskLogListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeStreamTaskLogListResponse`
        def DescribeStreamTaskLogList(request)
          body = send_request('DescribeStreamTaskLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamTaskLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取下游任务信息

        # @param request: Request instance for DescribeSuccessorOpsTaskInfos.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeSuccessorOpsTaskInfosRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeSuccessorOpsTaskInfosResponse`
        def DescribeSuccessorOpsTaskInfos(request)
          body = send_request('DescribeSuccessorOpsTaskInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSuccessorOpsTaskInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 元数据模型-表基础信息查询接口

        # @param request: Request instance for DescribeTableBasicInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTableBasicInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTableBasicInfoResponse`
        def DescribeTableBasicInfo(request)
          body = send_request('DescribeTableBasicInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableBasicInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据表信息

        # @param request: Request instance for DescribeTableInfoList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTableInfoListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTableInfoListResponse`
        def DescribeTableInfoList(request)
          body = send_request('DescribeTableInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出表血缘信息

        # @param request: Request instance for DescribeTableLineage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTableLineageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTableLineageResponse`
        def DescribeTableLineage(request)
          body = send_request('DescribeTableLineage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableLineageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出表血缘信息

        # @param request: Request instance for DescribeTableLineageInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTableLineageInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTableLineageInfoResponse`
        def DescribeTableLineageInfo(request)
          body = send_request('DescribeTableLineageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableLineageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询表元数据详情

        # @param request: Request instance for DescribeTableMeta.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTableMetaRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTableMetaResponse`
        def DescribeTableMeta(request)
          body = send_request('DescribeTableMeta', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableMetaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取表元数据list

        # @param request: Request instance for DescribeTableMetas.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTableMetasRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTableMetasResponse`
        def DescribeTableMetas(request)
          body = send_request('DescribeTableMetas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableMetasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询表的分区详情信息

        # @param request: Request instance for DescribeTablePartitions.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTablePartitionsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTablePartitionsResponse`
        def DescribeTablePartitions(request)
          body = send_request('DescribeTablePartitions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablePartitionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 质量报告-查询表质量详情

        # @param request: Request instance for DescribeTableQualityDetails.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTableQualityDetailsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTableQualityDetailsResponse`
        def DescribeTableQualityDetails(request)
          body = send_request('DescribeTableQualityDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableQualityDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取表schema信息

        # @param request: Request instance for DescribeTableSchemaInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTableSchemaInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTableSchemaInfoResponse`
        def DescribeTableSchemaInfo(request)
          body = send_request('DescribeTableSchemaInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableSchemaInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询表得分趋势

        # @param request: Request instance for DescribeTableScoreTrend.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTableScoreTrendRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTableScoreTrendResponse`
        def DescribeTableScoreTrend(request)
          body = send_request('DescribeTableScoreTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableScoreTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务告警规则列表

        # @param request: Request instance for DescribeTaskAlarmRegulations.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskAlarmRegulationsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskAlarmRegulationsResponse`
        def DescribeTaskAlarmRegulations(request)
          body = send_request('DescribeTaskAlarmRegulations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskAlarmRegulationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据周期类型 查询所有任务

        # @param request: Request instance for DescribeTaskByCycle.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskByCycleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskByCycleResponse`
        def DescribeTaskByCycle(request)
          body = send_request('DescribeTaskByCycle', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskByCycleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 能够调通但该API已经没有使用了，看北京数据最后一次上报是23年10月，有接近一千万条数据历史无效数据。当前策略，云API示例修订然后已经分析出来的无效API走预下线流程。
        # https://capi.woa.com/api/detail?product=wedata&env=api_formal&version=2021-08-20&action=DescribeTaskByCycleReport
        # 这两天在分析API的时候 有较多运维大屏的原始API当前已经没有使用了，但API没有下线。预计需要专项去梳理这一系列待下线API。

        # 任务状态周期增长趋势

        # @param request: Request instance for DescribeTaskByCycleReport.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskByCycleReportRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskByCycleReportResponse`
        def DescribeTaskByCycleReport(request)
          body = send_request('DescribeTaskByCycleReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskByCycleReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务状态趋势

        # @param request: Request instance for DescribeTaskByStatusReport.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskByStatusReportRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskByStatusReportResponse`
        def DescribeTaskByStatusReport(request)
          body = send_request('DescribeTaskByStatusReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskByStatusReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过任务查询表的血缘关系

        # @param request: Request instance for DescribeTaskLineage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskLineageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskLineageResponse`
        def DescribeTaskLineage(request)
          body = send_request('DescribeTaskLineage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskLineageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看任务锁状态信息

        # @param request: Request instance for DescribeTaskLockStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskLockStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskLockStatusResponse`
        def DescribeTaskLockStatus(request)
          body = send_request('DescribeTaskLockStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskLockStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询任务运行历史

        # @param request: Request instance for DescribeTaskRunHistory.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskRunHistoryRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskRunHistoryResponse`
        def DescribeTaskRunHistory(request)
          body = send_request('DescribeTaskRunHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskRunHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务脚本

        # @param request: Request instance for DescribeTaskScript.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskScriptRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskScriptResponse`
        def DescribeTaskScript(request)
          body = send_request('DescribeTaskScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实时任务表粒度指标概览

        # @param request: Request instance for DescribeTaskTableMetricOverview.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskTableMetricOverviewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskTableMetricOverviewResponse`
        def DescribeTaskTableMetricOverview(request)
          body = send_request('DescribeTaskTableMetricOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskTableMetricOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则模板维度分布情况

        # @param request: Request instance for DescribeTemplateDimCount.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTemplateDimCountRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTemplateDimCountResponse`
        def DescribeTemplateDimCount(request)
          body = send_request('DescribeTemplateDimCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplateDimCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 租户全局范围的项目列表，与用户查看范围无关.

        # @param request: Request instance for DescribeTenantProjects.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTenantProjectsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTenantProjectsResponse`
        def DescribeTenantProjects(request)
          body = send_request('DescribeTenantProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTenantProjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取第三方运行日志

        # @param request: Request instance for DescribeThirdTaskRunLog.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeThirdTaskRunLogRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeThirdTaskRunLogResponse`
        def DescribeThirdTaskRunLog(request)
          body = send_request('DescribeThirdTaskRunLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeThirdTaskRunLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据质量概览页面表排行接口

        # @param request: Request instance for DescribeTopTableStat.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTopTableStatRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTopTableStatResponse`
        def DescribeTopTableStat(request)
          body = send_request('DescribeTopTableStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopTableStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据质量概览页面趋势变化接口

        # @param request: Request instance for DescribeTrendStat.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTrendStatRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTrendStatResponse`
        def DescribeTrendStat(request)
          body = send_request('DescribeTrendStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrendStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询工作流画布

        # @param request: Request instance for DescribeWorkflowCanvasInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowCanvasInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowCanvasInfoResponse`
        def DescribeWorkflowCanvasInfo(request)
          body = send_request('DescribeWorkflowCanvasInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkflowCanvasInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询工作流画布运行起止时间

        # @param request: Request instance for DescribeWorkflowExecuteById.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowExecuteByIdRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowExecuteByIdResponse`
        def DescribeWorkflowExecuteById(request)
          body = send_request('DescribeWorkflowExecuteById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkflowExecuteByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过工作流id，查询工作流详情

        # @param request: Request instance for DescribeWorkflowInfoById.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowInfoByIdRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowInfoByIdResponse`
        def DescribeWorkflowInfoById(request)
          body = send_request('DescribeWorkflowInfoById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkflowInfoByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据项目id 获取项目下所有工作流列表

        # @param request: Request instance for DescribeWorkflowListByProjectId.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowListByProjectIdRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowListByProjectIdResponse`
        def DescribeWorkflowListByProjectId(request)
          body = send_request('DescribeWorkflowListByProjectId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkflowListByProjectIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取工作流调度信息

        # @param request: Request instance for DescribeWorkflowSchedulerInfoDs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowSchedulerInfoDsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowSchedulerInfoDsResponse`
        def DescribeWorkflowSchedulerInfoDs(request)
          body = send_request('DescribeWorkflowSchedulerInfoDs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkflowSchedulerInfoDsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询工作流任务数

        # @param request: Request instance for DescribeWorkflowTaskCount.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowTaskCountRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowTaskCountResponse`
        def DescribeWorkflowTaskCount(request)
          body = send_request('DescribeWorkflowTaskCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkflowTaskCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例诊断，用于诊断 INITIAL、DEPENDENCE、ALLOCATED、LAUNCHED、EVENT_LISTENING、BEFORE_ASPECT、EXPIRED、FAILED状态的实例

        # @param request: Request instance for DiagnosePro.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DiagnoseProRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DiagnoseProResponse`
        def DiagnosePro(request)
          body = send_request('DiagnosePro', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DiagnoseProResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调试运行集成任务

        # @param request: Request instance for DryRunDIOfflineTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DryRunDIOfflineTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DryRunDIOfflineTaskResponse`
        def DryRunDIOfflineTask(request)
          body = send_request('DryRunDIOfflineTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DryRunDIOfflineTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编排空间批量操作页面查找全部的文件夹

        # @param request: Request instance for FindAllFolder.
        # @type request: :class:`Tencentcloud::wedata::V20210820::FindAllFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::FindAllFolderResponse`
        def FindAllFolder(request)
          body = send_request('FindAllFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FindAllFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务运维-批量暂停任务

        # @param request: Request instance for FreezeOpsTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::FreezeOpsTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::FreezeOpsTasksResponse`
        def FreezeOpsTasks(request)
          body = send_request('FreezeOpsTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FreezeOpsTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停工作流下的所有任务

        # @param request: Request instance for FreezeTasksByWorkflowIds.
        # @type request: :class:`Tencentcloud::wedata::V20210820::FreezeTasksByWorkflowIdsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::FreezeTasksByWorkflowIdsResponse`
        def FreezeTasksByWorkflowIds(request)
          body = send_request('FreezeTasksByWorkflowIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FreezeTasksByWorkflowIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成建hive表的sql

        # @param request: Request instance for GenHiveTableDDLSql.
        # @type request: :class:`Tencentcloud::wedata::V20210820::GenHiveTableDDLSqlRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::GenHiveTableDDLSqlResponse`
        def GenHiveTableDDLSql(request)
          body = send_request('GenHiveTableDDLSql', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenHiveTableDDLSqlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取cos token

        # @param request: Request instance for GetCosToken.
        # @type request: :class:`Tencentcloud::wedata::V20210820::GetCosTokenRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::GetCosTokenResponse`
        def GetCosToken(request)
          body = send_request('GetCosToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCosTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开发空间-获取数据开发脚本信息

        # @param request: Request instance for GetFileInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::GetFileInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::GetFileInfoResponse`
        def GetFileInfo(request)
          body = send_request('GetFileInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFileInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例列表

        # @param request: Request instance for GetInstanceLog.
        # @type request: :class:`Tencentcloud::wedata::V20210820::GetInstanceLogRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::GetInstanceLogResponse`
        def GetInstanceLog(request)
          body = send_request('GetInstanceLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetInstanceLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提取数据集成节点字段Schema

        # @param request: Request instance for GetIntegrationNodeColumnSchema.
        # @type request: :class:`Tencentcloud::wedata::V20210820::GetIntegrationNodeColumnSchemaRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::GetIntegrationNodeColumnSchemaResponse`
        def GetIntegrationNodeColumnSchema(request)
          body = send_request('GetIntegrationNodeColumnSchema', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetIntegrationNodeColumnSchemaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取离线任务实例列表(新)

        # @param request: Request instance for GetOfflineDIInstanceList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::GetOfflineDIInstanceListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::GetOfflineDIInstanceListResponse`
        def GetOfflineDIInstanceList(request)
          body = send_request('GetOfflineDIInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOfflineDIInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取离线任务实例

        # @param request: Request instance for GetOfflineInstanceList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::GetOfflineInstanceListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::GetOfflineInstanceListResponse`
        def GetOfflineInstanceList(request)
          body = send_request('GetOfflineInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOfflineInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例列表

        # @param request: Request instance for GetTaskInstance.
        # @type request: :class:`Tencentcloud::wedata::V20210820::GetTaskInstanceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::GetTaskInstanceResponse`
        def GetTaskInstance(request)
          body = send_request('GetTaskInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资源管理-判断资源文件是否存在

        # @param request: Request instance for JudgeResourceFile.
        # @type request: :class:`Tencentcloud::wedata::V20210820::JudgeResourceFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::JudgeResourceFileResponse`
        def JudgeResourceFile(request)
          body = send_request('JudgeResourceFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = JudgeResourceFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按补录计划批量终止实例。

        # @param request: Request instance for KillOpsMakePlanInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::KillOpsMakePlanInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::KillOpsMakePlanInstancesResponse`
        def KillOpsMakePlanInstances(request)
          body = send_request('KillOpsMakePlanInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillOpsMakePlanInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量终止实例

        # @param request: Request instance for KillScheduleInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::KillScheduleInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::KillScheduleInstancesResponse`
        def KillScheduleInstances(request)
          body = send_request('KillScheduleInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillScheduleInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例列表

        # @param request: Request instance for ListInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ListInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ListInstancesResponse`
        def ListInstances(request)
          body = send_request('ListInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 锁定集成任务

        # @param request: Request instance for LockIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::LockIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::LockIntegrationTaskResponse`
        def LockIntegrationTask(request)
          body = send_request('LockIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LockIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改审批单状态

        # @param request: Request instance for ModifyApproveStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyApproveStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyApproveStatusResponse`
        def ModifyApproveStatus(request)
          body = send_request('ModifyApproveStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApproveStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改数据源

        # @param request: Request instance for ModifyDataSource.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyDataSourceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyDataSourceResponse`
        def ModifyDataSource(request)
          body = send_request('ModifyDataSource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDataSourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 质量报告-修改维度权限

        # @param request: Request instance for ModifyDimensionWeight.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyDimensionWeightRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyDimensionWeightResponse`
        def ModifyDimensionWeight(request)
          body = send_request('ModifyDimensionWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDimensionWeightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据开发模块-文件夹更新

        # @param request: Request instance for ModifyDsFolder.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyDsFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyDsFolderResponse`
        def ModifyDsFolder(request)
          body = send_request('ModifyDsFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDsFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新规则组执行策略

        # @param request: Request instance for ModifyExecStrategy.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyExecStrategyRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyExecStrategyResponse`
        def ModifyExecStrategy(request)
          body = send_request('ModifyExecStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyExecStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新集成节点

        # @param request: Request instance for ModifyIntegrationNode.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyIntegrationNodeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyIntegrationNodeResponse`
        def ModifyIntegrationNode(request)
          body = send_request('ModifyIntegrationNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIntegrationNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新集成任务

        # @param request: Request instance for ModifyIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyIntegrationTaskResponse`
        def ModifyIntegrationTask(request)
          body = send_request('ModifyIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新监控状态

        # @param request: Request instance for ModifyMonitorStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyMonitorStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyMonitorStatusResponse`
        def ModifyMonitorStatus(request)
          body = send_request('ModifyMonitorStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMonitorStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新质量规则接口

        # @param request: Request instance for ModifyRule.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyRuleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyRuleResponse`
        def ModifyRule(request)
          body = send_request('ModifyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新规则组订阅信息

        # @param request: Request instance for ModifyRuleGroupSubscription.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyRuleGroupSubscriptionRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyRuleGroupSubscriptionResponse`
        def ModifyRuleGroupSubscription(request)
          body = send_request('ModifyRuleGroupSubscription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleGroupSubscriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑规则模板

        # @param request: Request instance for ModifyRuleTemplate.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyRuleTemplateRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyRuleTemplateResponse`
        def ModifyRuleTemplate(request)
          body = send_request('ModifyRuleTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改任务告警规则

        # @param request: Request instance for ModifyTaskAlarmRegular.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyTaskAlarmRegularRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyTaskAlarmRegularResponse`
        def ModifyTaskAlarmRegular(request)
          body = send_request('ModifyTaskAlarmRegular', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTaskAlarmRegularResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该版本只满足广州区部分白名单客户使用]</p>
        # 更新任务

        # @param request: Request instance for ModifyTaskInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyTaskInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyTaskInfoResponse`
        def ModifyTaskInfo(request)
          body = send_request('ModifyTaskInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTaskInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该版本只满足广州区部分白名单客户使用]</p>
        # 添加父任务依赖

        # @param request: Request instance for ModifyTaskLinks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyTaskLinksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyTaskLinksResponse`
        def ModifyTaskLinks(request)
          body = send_request('ModifyTaskLinks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTaskLinksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重命名任务（任务编辑）

        # @param request: Request instance for ModifyTaskName.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyTaskNameRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyTaskNameResponse`
        def ModifyTaskName(request)
          body = send_request('ModifyTaskName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTaskNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该版本只满足广州区部分白名单客户使用]</p>
        # 修改任务脚本

        # @param request: Request instance for ModifyTaskScript.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyTaskScriptRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyTaskScriptResponse`
        def ModifyTaskScript(request)
          body = send_request('ModifyTaskScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTaskScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新工作流信息

        # @param request: Request instance for ModifyWorkflowInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyWorkflowInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyWorkflowInfoResponse`
        def ModifyWorkflowInfo(request)
          body = send_request('ModifyWorkflowInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkflowInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新工作流调度。本接口已废弃，请使用接口RenewWorkflowSchedulerInfoDs。

        # @param request: Request instance for ModifyWorkflowSchedule.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyWorkflowScheduleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyWorkflowScheduleResponse`
        def ModifyWorkflowSchedule(request)
          body = send_request('ModifyWorkflowSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkflowScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编排空间-工作流-移动任务到工作流文件夹

        # @param request: Request instance for MoveTasksToFolder.
        # @type request: :class:`Tencentcloud::wedata::V20210820::MoveTasksToFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::MoveTasksToFolderResponse`
        def MoveTasksToFolder(request)
          body = send_request('MoveTasksToFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MoveTasksToFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该版本只满足广州区部分白名单客户使用]</p>
        # 注册事件

        # @param request: Request instance for RegisterEvent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RegisterEventRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RegisterEventResponse`
        def RegisterEvent(request)
          body = send_request('RegisterEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该版本只满足广州区部分白名单客户使用]</p>
        # 注册事件监听器

        # @param request: Request instance for RegisterEventListener.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RegisterEventListenerRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RegisterEventListenerResponse`
        def RegisterEventListener(request)
          body = send_request('RegisterEventListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterEventListenerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除编排空间工作流

        # @param request: Request instance for RemoveWorkflowDs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RemoveWorkflowDsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RemoveWorkflowDsResponse`
        def RemoveWorkflowDs(request)
          body = send_request('RemoveWorkflowDs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveWorkflowDsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新工作流下任务调度信息

        # @param request: Request instance for RenewWorkflowSchedulerInfoDs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RenewWorkflowSchedulerInfoDsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RenewWorkflowSchedulerInfoDsResponse`
        def RenewWorkflowSchedulerInfoDs(request)
          body = send_request('RenewWorkflowSchedulerInfoDs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewWorkflowSchedulerInfoDsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 继续集成任务

        # @param request: Request instance for ResumeIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ResumeIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ResumeIntegrationTaskResponse`
        def ResumeIntegrationTask(request)
          body = send_request('ResumeIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 抢占锁定集成任务

        # @param request: Request instance for RobAndLockIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RobAndLockIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RobAndLockIntegrationTaskResponse`
        def RobAndLockIntegrationTask(request)
          body = send_request('RobAndLockIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RobAndLockIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例批量置成功

        # @param request: Request instance for RunForceSucScheduleInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RunForceSucScheduleInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RunForceSucScheduleInstancesResponse`
        def RunForceSucScheduleInstances(request)
          body = send_request('RunForceSucScheduleInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunForceSucScheduleInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例批量重跑

        # @param request: Request instance for RunRerunScheduleInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RunRerunScheduleInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RunRerunScheduleInstancesResponse`
        def RunRerunScheduleInstances(request)
          body = send_request('RunRerunScheduleInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunRerunScheduleInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量启动工作流

        # @param request: Request instance for RunTasksByMultiWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RunTasksByMultiWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RunTasksByMultiWorkflowResponse`
        def RunTasksByMultiWorkflow(request)
          body = send_request('RunTasksByMultiWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunTasksByMultiWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 保存用户自定义函数

        # @param request: Request instance for SaveCustomFunction.
        # @type request: :class:`Tencentcloud::wedata::V20210820::SaveCustomFunctionRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::SaveCustomFunctionResponse`
        def SaveCustomFunction(request)
          body = send_request('SaveCustomFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SaveCustomFunctionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该版本只满足广州区部分白名单客户使用]</p>
        # 设置任务告警，新建/更新告警信息（最新）

        # @param request: Request instance for SetTaskAlarmNew.
        # @type request: :class:`Tencentcloud::wedata::V20210820::SetTaskAlarmNewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::SetTaskAlarmNewResponse`
        def SetTaskAlarmNew(request)
          body = send_request('SetTaskAlarmNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTaskAlarmNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动集成任务

        # @param request: Request instance for StartIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::StartIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::StartIntegrationTaskResponse`
        def StartIntegrationTask(request)
          body = send_request('StartIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止集成任务

        # @param request: Request instance for StopIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::StopIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::StopIntegrationTaskResponse`
        def StopIntegrationTask(request)
          body = send_request('StopIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交自定义函数

        # @param request: Request instance for SubmitCustomFunction.
        # @type request: :class:`Tencentcloud::wedata::V20210820::SubmitCustomFunctionRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::SubmitCustomFunctionResponse`
        def SubmitCustomFunction(request)
          body = send_request('SubmitCustomFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitCustomFunctionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 即席分析提交SQL任务

        # @param request: Request instance for SubmitSqlTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::SubmitSqlTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::SubmitSqlTaskResponse`
        def SubmitSqlTask(request)
          body = send_request('SubmitSqlTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitSqlTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该版本只满足广州区部分白名单客户使用]</p>
        # 提交任务。本接口已废弃，请使用接口CreateTaskVersionDs。

        # @param request: Request instance for SubmitTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::SubmitTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::SubmitTaskResponse`
        def SubmitTask(request)
          body = send_request('SubmitTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 无

        # @param request: Request instance for SubmitTaskTestRun.
        # @type request: :class:`Tencentcloud::wedata::V20210820::SubmitTaskTestRunRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::SubmitTaskTestRunResponse`
        def SubmitTaskTestRun(request)
          body = send_request('SubmitTaskTestRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTaskTestRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交工作流。本接口已废弃，请使用接口BatchCreateTaskVersionAsync。

        # @param request: Request instance for SubmitWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20210820::SubmitWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::SubmitWorkflowResponse`
        def SubmitWorkflow(request)
          body = send_request('SubmitWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停集成任务

        # @param request: Request instance for SuspendIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::SuspendIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::SuspendIntegrationTaskResponse`
        def SuspendIntegrationTask(request)
          body = send_request('SuspendIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SuspendIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Inlong manager日志

        # @param request: Request instance for TaskLog.
        # @type request: :class:`Tencentcloud::wedata::V20210820::TaskLogRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::TaskLogResponse`
        def TaskLog(request)
          body = send_request('TaskLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TaskLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 事件管理-触发事件

        # @param request: Request instance for TriggerDsEvent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::TriggerDsEventRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::TriggerDsEventResponse`
        def TriggerDsEvent(request)
          body = send_request('TriggerDsEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TriggerDsEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该版本只满足广州区部分白名单客户使用]</p>
        # 触发事件。本接口已废弃，请使用接口TriggerDsEvent。

        # @param request: Request instance for TriggerEvent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::TriggerEventRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::TriggerEventResponse`
        def TriggerEvent(request)
          body = send_request('TriggerEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TriggerEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 手动任务触发运行

        # @param request: Request instance for TriggerManualTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::TriggerManualTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::TriggerManualTasksResponse`
        def TriggerManualTasks(request)
          body = send_request('TriggerManualTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TriggerManualTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解锁集成任务

        # @param request: Request instance for UnlockIntegrationTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::UnlockIntegrationTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::UnlockIntegrationTaskResponse`
        def UnlockIntegrationTask(request)
          body = send_request('UnlockIntegrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnlockIntegrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数语向wedata注册，提供自身cam角色信息，跳转域名、ip、端口信息等

        # @param request: Request instance for UpdateDataModelRegistryInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::UpdateDataModelRegistryInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::UpdateDataModelRegistryInfoResponse`
        def UpdateDataModelRegistryInfo(request)
          body = send_request('UpdateDataModelRegistryInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDataModelRegistryInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改项目用户角色

        # @param request: Request instance for UpdateProjectUserRole.
        # @type request: :class:`Tencentcloud::wedata::V20210820::UpdateProjectUserRoleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::UpdateProjectUserRoleResponse`
        def UpdateProjectUserRole(request)
          body = send_request('UpdateProjectUserRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProjectUserRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改工作流责任人

        # @param request: Request instance for UpdateWorkflowOwner.
        # @type request: :class:`Tencentcloud::wedata::V20210820::UpdateWorkflowOwnerRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::UpdateWorkflowOwnerResponse`
        def UpdateWorkflowOwner(request)
          body = send_request('UpdateWorkflowOwner', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateWorkflowOwnerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 保存任务信息

        # @param request: Request instance for UploadContent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::UploadContentRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::UploadContentResponse`
        def UploadContent(request)
          body = send_request('UploadContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadContentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资源管理-上传资源

        # @param request: Request instance for UploadResource.
        # @type request: :class:`Tencentcloud::wedata::V20210820::UploadResourceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::UploadResourceResponse`
        def UploadResource(request)
          body = send_request('UploadResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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