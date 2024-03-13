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

        # 批量创建任务版本Ds

        # @param request: Request instance for BatchCreateTaskVersionDs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchCreateTaskVersionDsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchCreateTaskVersionDsResponse`
        def BatchCreateTaskVersionDs(request)
          body = send_request('BatchCreateTaskVersionDs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchCreateTaskVersionDsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 智能运维-批量删除任务

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

        # Ds批量删除任务，仅对任务状态为”已停止“有效；

        # @param request: Request instance for BatchDeleteTasksDs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchDeleteTasksDsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchDeleteTasksDsResponse`
        def BatchDeleteTasksDs(request)
          body = send_request('BatchDeleteTasksDs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteTasksDsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 批量删除任务，仅对任务状态为”已停止“有效；

        # @param request: Request instance for BatchDeleteTasksNew.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchDeleteTasksNewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchDeleteTasksNewResponse`
        def BatchDeleteTasksNew(request)
          body = send_request('BatchDeleteTasksNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteTasksNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 批量修改任务责任人

        # @param request: Request instance for BatchModifyOwnersNew.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchModifyOwnersNewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchModifyOwnersNewResponse`
        def BatchModifyOwnersNew(request)
          body = send_request('BatchModifyOwnersNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyOwnersNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 任务运维-任务列表 批量运行

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 仅对任务状态为”调度中“和”已暂停“有效，对所选任务的任务实例进行终止，并停止调度

        # @param request: Request instance for BatchStopTasksNew.
        # @type request: :class:`Tencentcloud::wedata::V20210820::BatchStopTasksNewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::BatchStopTasksNewResponse`
        def BatchStopTasksNew(request)
          body = send_request('BatchStopTasksNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchStopTasksNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 检查规则名称是否重复

        # @param request: Request instance for CheckDuplicateRuleName.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CheckDuplicateRuleNameRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CheckDuplicateRuleNameResponse`
        def CheckDuplicateRuleName(request)
          body = send_request('CheckDuplicateRuleName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckDuplicateRuleNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查规则模板名称是否重复

        # @param request: Request instance for CheckDuplicateTemplateName.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CheckDuplicateTemplateNameRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CheckDuplicateTemplateNameResponse`
        def CheckDuplicateTemplateName(request)
          body = send_request('CheckDuplicateTemplateName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckDuplicateTemplateNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 提交数据导出任务

        # @param request: Request instance for CommitExportTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CommitExportTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CommitExportTaskResponse`
        def CommitExportTask(request)
          body = send_request('CommitExportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CommitExportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # Runner 规则检测结果上报

        # @param request: Request instance for CommitRuleGroupExecResult.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CommitRuleGroupExecResultRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CommitRuleGroupExecResultResponse`
        def CommitRuleGroupExecResult(request)
          body = send_request('CommitRuleGroupExecResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CommitRuleGroupExecResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建基线

        # @param request: Request instance for CreateBaseline.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateBaselineRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateBaselineResponse`
        def CreateBaseline(request)
          body = send_request('CreateBaseline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBaselineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 创建文件夹

        # @param request: Request instance for CreateFolder.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateFolderResponse`
        def CreateFolder(request)
          body = send_request('CreateFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 注册采集器

        # @param request: Request instance for CreateInLongAgent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateInLongAgentRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateInLongAgentResponse`
        def CreateInLongAgent(request)
          body = send_request('CreateInLongAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInLongAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 补录任务

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

        # 资源管理需要先将资源上传到cos中，然后调用该接口，将cos资源绑定到wedata

        # @param request: Request instance for CreateOrUpdateResource.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateOrUpdateResourceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateOrUpdateResourceResponse`
        def CreateOrUpdateResource(request)
          body = send_request('CreateOrUpdateResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrUpdateResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文件路径的根目录为 /datastudio/resource，如果要在根目录下创建 aaa 文件夹，FilePath的值应该为 /datastudio/resource，如果根目录下已经创建了 aaa 文件夹，要在 aaa 下创建  bbb 文件夹，FilePath的值应该为 /datastudio/resource/aaa

        # @param request: Request instance for CreateResourcePath.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateResourcePathRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateResourcePathResponse`
        def CreateResourcePath(request)
          body = send_request('CreateResourcePath', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourcePathResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # 创建任务版本

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 创建工作流

        # @param request: Request instance for CreateWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20210820::CreateWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::CreateWorkflowResponse`
        def CreateWorkflow(request)
          body = send_request('CreateWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # DeleteBaseline

        # @param request: Request instance for DeleteBaseline.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteBaselineRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteBaselineResponse`
        def DeleteBaseline(request)
          body = send_request('DeleteBaseline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBaselineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 删除文件夹

        # @param request: Request instance for DeleteFolder.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteFolderResponse`
        def DeleteFolder(request)
          body = send_request('DeleteFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除采集器

        # @param request: Request instance for DeleteInLongAgent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteInLongAgentRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteInLongAgentResponse`
        def DeleteInLongAgent(request)
          body = send_request('DeleteInLongAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInLongAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除任务Ds

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 删除工作流

        # @param request: Request instance for DeleteWorkflowNew.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DeleteWorkflowNewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DeleteWorkflowNewResponse`
        def DeleteWorkflowNew(request)
          body = send_request('DeleteWorkflowNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWorkflowNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取所有任务类型

        # @param request: Request instance for DescribeAllTaskType.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeAllTaskTypeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeAllTaskTypeResponse`
        def DescribeAllTaskType(request)
          body = send_request('DescribeAllTaskType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllTaskTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据任务Id查找生产态子任务

        # @param request: Request instance for DescribeAllUsedVersionSon.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeAllUsedVersionSonRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeAllUsedVersionSonResponse`
        def DescribeAllUsedVersionSon(request)
          body = send_request('DescribeAllUsedVersionSon', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllUsedVersionSonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询基线DAG

        # @param request: Request instance for DescribeBaselineAllTaskDag.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineAllTaskDagRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineAllTaskDagResponse`
        def DescribeBaselineAllTaskDag(request)
          body = send_request('DescribeBaselineAllTaskDag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineAllTaskDagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 基线列表

        # @param request: Request instance for DescribeBaselineById.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineByIdRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineByIdResponse`
        def DescribeBaselineById(request)
          body = send_request('DescribeBaselineById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询基线实例DAG

        # @param request: Request instance for DescribeBaselineInstanceDag.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineInstanceDagRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineInstanceDagResponse`
        def DescribeBaselineInstanceDag(request)
          body = send_request('DescribeBaselineInstanceDag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineInstanceDagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询基线实例关键任务实例甘特图

        # @param request: Request instance for DescribeBaselineInstanceGantt.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineInstanceGanttRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineInstanceGanttResponse`
        def DescribeBaselineInstanceGantt(request)
          body = send_request('DescribeBaselineInstanceGantt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineInstanceGanttResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询基线实例列表

        # @param request: Request instance for DescribeBaselineInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeBaselineInstancesResponse`
        def DescribeBaselineInstances(request)
          body = send_request('DescribeBaselineInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 基线列表

        # @param request: Request instance for DescribeBaselines.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeBaselinesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeBaselinesResponse`
        def DescribeBaselines(request)
          body = send_request('DescribeBaselines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量操作任务列表

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

        # 智能运维-事件列表-所属任务/基线过滤列表

        # @param request: Request instance for DescribeBelongTo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeBelongToRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeBelongToResponse`
        def DescribeBelongTo(request)
          body = send_request('DescribeBelongTo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBelongToResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群命名空间列表

        # @param request: Request instance for DescribeClusterNamespaceList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeClusterNamespaceListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeClusterNamespaceListResponse`
        def DescribeClusterNamespaceList(request)
          body = send_request('DescribeClusterNamespaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterNamespaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询数据来源列表

        # @param request: Request instance for DescribeDataBases.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDataBasesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDataBasesResponse`
        def DescribeDataBases(request)
          body = send_request('DescribeDataBases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataBasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询规则组数据对象列表

        # @param request: Request instance for DescribeDataObjects.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDataObjectsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDataObjectsResponse`
        def DescribeDataObjects(request)
          body = send_request('DescribeDataObjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataObjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 数据源列表

        # @param request: Request instance for DescribeDataSourceWithoutInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDataSourceWithoutInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDataSourceWithoutInfoResponse`
        def DescribeDataSourceWithoutInfo(request)
          body = send_request('DescribeDataSourceWithoutInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataSourceWithoutInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取字段类型列表

        # @param request: Request instance for DescribeDataTypes.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDataTypesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDataTypesResponse`
        def DescribeDataTypes(request)
          body = send_request('DescribeDataTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # 根据任务id获取下游依赖任务列表

        # @param request: Request instance for DescribeDependOpsTaskList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDependOpsTaskListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDependOpsTaskListResponse`
        def DescribeDependOpsTaskList(request)
          body = send_request('DescribeDependOpsTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDependOpsTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 根据层级查找上/下游任务节点

        # @param request: Request instance for DescribeDependTasksNew.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDependTasksNewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDependTasksNewResponse`
        def DescribeDependTasksNew(request)
          body = send_request('DescribeDependTasksNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDependTasksNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询基线诊断信息

        # @param request: Request instance for DescribeDiagnosticInfoByBaselineId.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDiagnosticInfoByBaselineIdRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDiagnosticInfoByBaselineIdResponse`
        def DescribeDiagnosticInfoByBaselineId(request)
          body = send_request('DescribeDiagnosticInfoByBaselineId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDiagnosticInfoByBaselineIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询试运行实例执行内容

        # @param request: Request instance for DescribeDrInstanceScriptContent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDrInstanceScriptContentRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDrInstanceScriptContentResponse`
        def DescribeDrInstanceScriptContent(request)
          body = send_request('DescribeDrInstanceScriptContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDrInstanceScriptContentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询试运行实例子实例列表

        # @param request: Request instance for DescribeDrSonInstance.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeDrSonInstanceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeDrSonInstanceResponse`
        def DescribeDrSonInstance(request)
          body = send_request('DescribeDrSonInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDrSonInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 智能运维事件详情1

        # @param request: Request instance for DescribeEventDetail.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeEventDetailRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeEventDetailResponse`
        def DescribeEventDetail(request)
          body = send_request('DescribeEventDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 事件是否告警过滤条件

        # @param request: Request instance for DescribeEventIsAlarmTypes.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeEventIsAlarmTypesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeEventIsAlarmTypesResponse`
        def DescribeEventIsAlarmTypes(request)
          body = send_request('DescribeEventIsAlarmTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventIsAlarmTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询事件类型列表

        # @param request: Request instance for DescribeEventTypes.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeEventTypesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeEventTypesResponse`
        def DescribeEventTypes(request)
          body = send_request('DescribeEventTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智能运维事件查询列表

        # @param request: Request instance for DescribeEvents.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeEventsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeEventsResponse`
        def DescribeEvents(request)
          body = send_request('DescribeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取关联父实例

        # @param request: Request instance for DescribeFathers.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeFathersRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeFathersResponse`
        def DescribeFathers(request)
          body = send_request('DescribeFathers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFathersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 拉取文件夹目录

        # @param request: Request instance for DescribeFolderList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeFolderListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeFolderListResponse`
        def DescribeFolderList(request)
          body = send_request('DescribeFolderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFolderListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 拉取文件夹下的工作流

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

        # 获取采集器列表

        # @param request: Request instance for DescribeInLongAgentList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInLongAgentListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInLongAgentListResponse`
        def DescribeInLongAgentList(request)
          body = send_request('DescribeInLongAgentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInLongAgentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询采集器关联的任务列表

        # @param request: Request instance for DescribeInLongAgentTaskList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInLongAgentTaskListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInLongAgentTaskListResponse`
        def DescribeInLongAgentTaskList(request)
          body = send_request('DescribeInLongAgentTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInLongAgentTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取采集器所在集群的VPC列表

        # @param request: Request instance for DescribeInLongAgentVpcList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInLongAgentVpcListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInLongAgentVpcListResponse`
        def DescribeInLongAgentVpcList(request)
          body = send_request('DescribeInLongAgentVpcList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInLongAgentVpcListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取TKE集群列表

        # @param request: Request instance for DescribeInLongTkeClusterList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInLongTkeClusterListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInLongTkeClusterListResponse`
        def DescribeInLongTkeClusterList(request)
          body = send_request('DescribeInLongTkeClusterList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInLongTkeClusterListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 实例状态周期增长趋势

        # @param request: Request instance for DescribeInstanceByCycleReport.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceByCycleReportRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceByCycleReportResponse`
        def DescribeInstanceByCycleReport(request)
          body = send_request('DescribeInstanceByCycleReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceByCycleReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 下载日志文件，返回日志URL

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 获取实例日志列表

        # @param request: Request instance for DescribeInstanceLogs.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstanceLogsResponse`
        def DescribeInstanceLogs(request)
          body = send_request('DescribeInstanceLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据质量，查询调度任务的实例列表

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取实例列表，join task表一些信息

        # @param request: Request instance for DescribeInstancesInfoWithTaskInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeInstancesInfoWithTaskInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeInstancesInfoWithTaskInfoResponse`
        def DescribeInstancesInfoWithTaskInfo(request)
          body = send_request('DescribeInstancesInfoWithTaskInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesInfoWithTaskInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 数据集成大屏采集器状态分布统计

        # @param request: Request instance for DescribeIntegrationStatisticsAgentStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsAgentStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeIntegrationStatisticsAgentStatusResponse`
        def DescribeIntegrationStatisticsAgentStatus(request)
          body = send_request('DescribeIntegrationStatisticsAgentStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIntegrationStatisticsAgentStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 分页查询质量监控组

        # @param request: Request instance for DescribeMonitorsByPage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeMonitorsByPageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeMonitorsByPageResponse`
        def DescribeMonitorsByPage(request)
          body = send_request('DescribeMonitorsByPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMonitorsByPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 任务运维搜索 查询生产态任务数据源列表

        # @param request: Request instance for DescribeOperateOpsTaskDatasource.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOperateOpsTaskDatasourceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOperateOpsTaskDatasourceResponse`
        def DescribeOperateOpsTaskDatasource(request)
          body = send_request('DescribeOperateOpsTaskDatasource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOperateOpsTaskDatasourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务运维-查询生产态任务数据源类型列表

        # @param request: Request instance for DescribeOperateOpsTaskDatasourceType.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOperateOpsTaskDatasourceTypeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOperateOpsTaskDatasourceTypeResponse`
        def DescribeOperateOpsTaskDatasourceType(request)
          body = send_request('DescribeOperateOpsTaskDatasourceType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOperateOpsTaskDatasourceTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 任务运维列表组合条件查询

        # @param request: Request instance for DescribeOperateTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeOperateTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeOperateTasksResponse`
        def DescribeOperateTasks(request)
          body = send_request('DescribeOperateTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOperateTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 数据质量获取生产调度任务列表

        # @param request: Request instance for DescribeProdTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeProdTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeProdTasksResponse`
        def DescribeProdTasks(request)
          body = send_request('DescribeProdTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProdTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询任务实例的关联实例列表

        # @param request: Request instance for DescribeRelatedInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRelatedInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRelatedInstancesResponse`
        def DescribeRelatedInstances(request)
          body = send_request('DescribeRelatedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRelatedInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询质量规则数据源

        # @param request: Request instance for DescribeRuleDataSources.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleDataSourcesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleDataSourcesResponse`
        def DescribeRuleDataSources(request)
          body = send_request('DescribeRuleDataSources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleDataSourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询规则执行导出结果

        # @param request: Request instance for DescribeRuleExecExportResult.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecExportResultRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecExportResultResponse`
        def DescribeRuleExecExportResult(request)
          body = send_request('DescribeRuleExecExportResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleExecExportResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则执行历史， 最近30条

        # @param request: Request instance for DescribeRuleExecHistory.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecHistoryRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecHistoryResponse`
        def DescribeRuleExecHistory(request)
          body = send_request('DescribeRuleExecHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleExecHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 分页查询规则执行结果列表

        # @param request: Request instance for DescribeRuleExecResultsByPage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecResultsByPageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleExecResultsByPageResponse`
        def DescribeRuleExecResultsByPage(request)
          body = send_request('DescribeRuleExecResultsByPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleExecResultsByPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 规则组执行结果分页查询接口不带鉴权

        # @param request: Request instance for DescribeRuleGroupExecResultsByPageWithoutAuth.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupExecResultsByPageWithoutAuthRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleGroupExecResultsByPageWithoutAuthResponse`
        def DescribeRuleGroupExecResultsByPageWithoutAuth(request)
          body = send_request('DescribeRuleGroupExecResultsByPageWithoutAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleGroupExecResultsByPageWithoutAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 过滤条件【必要字段】{ruleId}

        # @param request: Request instance for DescribeRuleHistoryByPage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleHistoryByPageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleHistoryByPageResponse`
        def DescribeRuleHistoryByPage(request)
          body = send_request('DescribeRuleHistoryByPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleHistoryByPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取表列表

        # @param request: Request instance for DescribeRuleTablesByPage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeRuleTablesByPageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeRuleTablesByPageResponse`
        def DescribeRuleTablesByPage(request)
          body = send_request('DescribeRuleTablesByPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleTablesByPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 在基线系统内查询单个调度任务实例

        # @param request: Request instance for DescribeScheduleInstance.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeScheduleInstanceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeScheduleInstanceResponse`
        def DescribeScheduleInstance(request)
          body = send_request('DescribeScheduleInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScheduleInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取关联子实例

        # @param request: Request instance for DescribeSonInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeSonInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeSonInstancesResponse`
        def DescribeSonInstances(request)
          body = send_request('DescribeSonInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSonInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据标准规则详情

        # @param request: Request instance for DescribeStandardRuleDetailInfoList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeStandardRuleDetailInfoListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeStandardRuleDetailInfoListResponse`
        def DescribeStandardRuleDetailInfoList(request)
          body = send_request('DescribeStandardRuleDetailInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStandardRuleDetailInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 查询任务具体详情

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskDetailResponse`
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

        # 离线任务实例详情

        # @param request: Request instance for DescribeTaskInstance.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskInstanceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskInstanceResponse`
        def DescribeTaskInstance(request)
          body = send_request('DescribeTaskInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 离线任务实例统计明细

        # @param request: Request instance for DescribeTaskInstanceReportDetail.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskInstanceReportDetailRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskInstanceReportDetailResponse`
        def DescribeTaskInstanceReportDetail(request)
          body = send_request('DescribeTaskInstanceReportDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskInstanceReportDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务实例列表

        # @param request: Request instance for DescribeTaskInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskInstancesResponse`
        def DescribeTaskInstances(request)
          body = send_request('DescribeTaskInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 按起止日期统计离线任务的所有实例的运行指标总和

        # @param request: Request instance for DescribeTaskReport.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskReportRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskReportResponse`
        def DescribeTaskReport(request)
          body = send_request('DescribeTaskReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 离线任务周期统计明细

        # @param request: Request instance for DescribeTaskReportDetailList.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTaskReportDetailListRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTaskReportDetailListResponse`
        def DescribeTaskReportDetailList(request)
          body = send_request('DescribeTaskReportDetailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskReportDetailListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 根据工作流分页查询任务

        # @param request: Request instance for DescribeTasksByPage.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTasksByPageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTasksByPageResponse`
        def DescribeTasksByPage(request)
          body = send_request('DescribeTasksByPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksByPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询规则模板操作记录

        # @param request: Request instance for DescribeTemplateHistory.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeTemplateHistoryRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeTemplateHistoryResponse`
        def DescribeTemplateHistory(request)
          body = send_request('DescribeTemplateHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplateHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询运维画布信息，只需要获取边和节点

        # @param request: Request instance for DescribeWorkflowOpsCanvasInfo.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowOpsCanvasInfoRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DescribeWorkflowOpsCanvasInfoResponse`
        def DescribeWorkflowOpsCanvasInfo(request)
          body = send_request('DescribeWorkflowOpsCanvasInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkflowOpsCanvasInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 实例诊断信息

        # @param request: Request instance for DiagnosePlus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::DiagnosePlusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::DiagnosePlusResponse`
        def DiagnosePlus(request)
          body = send_request('DiagnosePlus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DiagnosePlusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 编辑基线

        # @param request: Request instance for EditBaseline.
        # @type request: :class:`Tencentcloud::wedata::V20210820::EditBaselineRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::EditBaselineResponse`
        def EditBaseline(request)
          body = send_request('EditBaseline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditBaselineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查找全部的文件夹

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 实例批量置成功

        # @param request: Request instance for ForceSucInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ForceSucInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ForceSucInstancesResponse`
        def ForceSucInstances(request)
          body = send_request('ForceSucInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForceSucInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例强制成功

        # @param request: Request instance for ForceSucScheduleInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ForceSucScheduleInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ForceSucScheduleInstancesResponse`
        def ForceSucScheduleInstances(request)
          body = send_request('ForceSucScheduleInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForceSucScheduleInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务运维-批量冻结任务

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 批量冻结任务

        # @param request: Request instance for FreezeTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::FreezeTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::FreezeTasksResponse`
        def FreezeTasks(request)
          body = send_request('FreezeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FreezeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 基于多个工作流进行批量冻结任务操作

        # @param request: Request instance for FreezeTasksByMultiWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20210820::FreezeTasksByMultiWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::FreezeTasksByMultiWorkflowResponse`
        def FreezeTasksByMultiWorkflow(request)
          body = send_request('FreezeTasksByMultiWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FreezeTasksByMultiWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 实例批量终止操作

        # @param request: Request instance for KillInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::KillInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::KillInstancesResponse`
        def KillInstances(request)
          body = send_request('KillInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 批量kill实例

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

        # 任务批量补录，调度状态任务才可以补录；

        # @param request: Request instance for MakeUpOpsTasks.
        # @type request: :class:`Tencentcloud::wedata::V20210820::MakeUpOpsTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::MakeUpOpsTasksResponse`
        def MakeUpOpsTasks(request)
          body = send_request('MakeUpOpsTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MakeUpOpsTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 工作流补数据

        # @param request: Request instance for MakeUpTasksByWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20210820::MakeUpTasksByWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::MakeUpTasksByWorkflowResponse`
        def MakeUpTasksByWorkflow(request)
          body = send_request('MakeUpTasksByWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MakeUpTasksByWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 任务批量补录，调度状态任务才可以补录；



        # @param request: Request instance for MakeUpTasksNew.
        # @type request: :class:`Tencentcloud::wedata::V20210820::MakeUpTasksNewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::MakeUpTasksNewResponse`
        def MakeUpTasksNew(request)
          body = send_request('MakeUpTasksNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MakeUpTasksNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 工作流下所有任务的补录

        # @param request: Request instance for MakeUpWorkflowNew.
        # @type request: :class:`Tencentcloud::wedata::V20210820::MakeUpWorkflowNewRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::MakeUpWorkflowNewResponse`
        def MakeUpWorkflowNew(request)
          body = send_request('MakeUpWorkflowNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MakeUpWorkflowNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 编辑基线告警状态

        # @param request: Request instance for ModifyBaselineAlarmStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyBaselineAlarmStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyBaselineAlarmStatusResponse`
        def ModifyBaselineAlarmStatus(request)
          body = send_request('ModifyBaselineAlarmStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselineAlarmStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑基线实例中任务告警状态

        # @param request: Request instance for ModifyBaselineTaskAlarmStatus.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyBaselineTaskAlarmStatusRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyBaselineTaskAlarmStatusResponse`
        def ModifyBaselineTaskAlarmStatus(request)
          body = send_request('ModifyBaselineTaskAlarmStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselineTaskAlarmStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 文件夹更新

        # @param request: Request instance for ModifyFolder.
        # @type request: :class:`Tencentcloud::wedata::V20210820::ModifyFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::ModifyFolderResponse`
        def ModifyFolder(request)
          body = send_request('ModifyFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 更新工作流

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 更新工作流调度

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 实例批量重跑

        # @param request: Request instance for RerunInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RerunInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RerunInstancesResponse`
        def RerunInstances(request)
          body = send_request('RerunInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RerunInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按补录计划批量重跑/选择补录计划→补录任务→补录实例，点击重跑

        # @param request: Request instance for RerunOpsMakePlanInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RerunOpsMakePlanInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RerunOpsMakePlanInstancesResponse`
        def RerunOpsMakePlanInstances(request)
          body = send_request('RerunOpsMakePlanInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RerunOpsMakePlanInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for RerunScheduleInstances.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RerunScheduleInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RerunScheduleInstancesResponse`
        def RerunScheduleInstances(request)
          body = send_request('RerunScheduleInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RerunScheduleInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启采集器

        # @param request: Request instance for RestartInLongAgent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RestartInLongAgentRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RestartInLongAgentResponse`
        def RestartInLongAgent(request)
          body = send_request('RestartInLongAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartInLongAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 实例强制成功

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 运行任务

        # @param request: Request instance for RunTask.
        # @type request: :class:`Tencentcloud::wedata::V20210820::RunTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::RunTaskResponse`
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
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

        # 提交基线

        # @param request: Request instance for StopBaseline.
        # @type request: :class:`Tencentcloud::wedata::V20210820::StopBaselineRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::StopBaselineResponse`
        def StopBaseline(request)
          body = send_request('StopBaseline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopBaselineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 提交基线

        # @param request: Request instance for SubmitBaseline.
        # @type request: :class:`Tencentcloud::wedata::V20210820::SubmitBaselineRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::SubmitBaselineResponse`
        def SubmitBaseline(request)
          body = send_request('SubmitBaseline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitBaselineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 提交任务

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 提交工作流

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

        # <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
        # 触发事件

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

        # 更新采集器

        # @param request: Request instance for UpdateInLongAgent.
        # @type request: :class:`Tencentcloud::wedata::V20210820::UpdateInLongAgentRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20210820::UpdateInLongAgentResponse`
        def UpdateInLongAgent(request)
          body = send_request('UpdateInLongAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateInLongAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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


      end
    end
  end
end