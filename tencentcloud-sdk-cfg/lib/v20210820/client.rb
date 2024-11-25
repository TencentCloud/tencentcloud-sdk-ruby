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
  module Cfg
    module V20210820
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-08-20'
            api_endpoint = 'cfg.tencentcloudapi.com'
            sdk_version = 'CFG_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 从动作创建演练

        # @param request: Request instance for CreateTaskFromAction.
        # @type request: :class:`Tencentcloud::cfg::V20210820::CreateTaskFromActionRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::CreateTaskFromActionResponse`
        def CreateTaskFromAction(request)
          body = send_request('CreateTaskFromAction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskFromActionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 以多个动作创建演练

        # @param request: Request instance for CreateTaskFromMultiAction.
        # @type request: :class:`Tencentcloud::cfg::V20210820::CreateTaskFromMultiActionRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::CreateTaskFromMultiActionResponse`
        def CreateTaskFromMultiAction(request)
          body = send_request('CreateTaskFromMultiAction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskFromMultiActionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从经验库创建演练

        # @param request: Request instance for CreateTaskFromTemplate.
        # @type request: :class:`Tencentcloud::cfg::V20210820::CreateTaskFromTemplateRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::CreateTaskFromTemplateResponse`
        def CreateTaskFromTemplate(request)
          body = send_request('CreateTaskFromTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskFromTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteTask.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DeleteTaskRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DeleteTaskResponse`
        def DeleteTask(request)
          body = send_request('DeleteTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据动作ID获取动作栏位动态配置参数信息，里面包含动作自有和通用两部分参数。

        # @param request: Request instance for DescribeActionFieldConfigList.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DescribeActionFieldConfigListRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DescribeActionFieldConfigListResponse`
        def DescribeActionFieldConfigList(request)
          body = send_request('DescribeActionFieldConfigList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeActionFieldConfigListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取混沌演练平台的动作库列表

        # @param request: Request instance for DescribeActionLibraryList.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DescribeActionLibraryListRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DescribeActionLibraryListResponse`
        def DescribeActionLibraryList(request)
          body = send_request('DescribeActionLibraryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeActionLibraryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询对象类型列表

        # @param request: Request instance for DescribeObjectTypeList.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DescribeObjectTypeListRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DescribeObjectTypeListResponse`
        def DescribeObjectTypeList(request)
          body = send_request('DescribeObjectTypeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeObjectTypeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务

        # @param request: Request instance for DescribeTask.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DescribeTaskRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DescribeTaskResponse`
        def DescribeTask(request)
          body = send_request('DescribeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取演练过程中的所有日志

        # @param request: Request instance for DescribeTaskExecuteLogs.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DescribeTaskExecuteLogsRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DescribeTaskExecuteLogsResponse`
        def DescribeTaskExecuteLogs(request)
          body = send_request('DescribeTaskExecuteLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskExecuteLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeTaskList.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DescribeTaskListRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DescribeTaskListResponse`
        def DescribeTaskList(request)
          body = send_request('DescribeTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取护栏触发日志

        # @param request: Request instance for DescribeTaskPolicyTriggerLog.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DescribeTaskPolicyTriggerLogRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DescribeTaskPolicyTriggerLogResponse`
        def DescribeTaskPolicyTriggerLog(request)
          body = send_request('DescribeTaskPolicyTriggerLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskPolicyTriggerLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询经验库

        # @param request: Request instance for DescribeTemplate.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DescribeTemplateRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DescribeTemplateResponse`
        def DescribeTemplate(request)
          body = send_request('DescribeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询经验库列表

        # @param request: Request instance for DescribeTemplateList.
        # @type request: :class:`Tencentcloud::cfg::V20210820::DescribeTemplateListRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::DescribeTemplateListResponse`
        def DescribeTemplateList(request)
          body = send_request('DescribeTemplateList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplateListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 执行任务

        # @param request: Request instance for ExecuteTask.
        # @type request: :class:`Tencentcloud::cfg::V20210820::ExecuteTaskRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::ExecuteTaskResponse`
        def ExecuteTask(request)
          body = send_request('ExecuteTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExecuteTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 触发混沌演练任务的动作，对于实例进行演练操作

        # @param request: Request instance for ExecuteTaskInstance.
        # @type request: :class:`Tencentcloud::cfg::V20210820::ExecuteTaskInstanceRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::ExecuteTaskInstanceResponse`
        def ExecuteTaskInstance(request)
          body = send_request('ExecuteTaskInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExecuteTaskInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改任务运行状态

        # @param request: Request instance for ModifyTaskRunStatus.
        # @type request: :class:`Tencentcloud::cfg::V20210820::ModifyTaskRunStatusRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::ModifyTaskRunStatusResponse`
        def ModifyTaskRunStatus(request)
          body = send_request('ModifyTaskRunStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTaskRunStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于触发混沌演练护栏（类型为触发和恢复2种）

        # @param request: Request instance for TriggerPolicy.
        # @type request: :class:`Tencentcloud::cfg::V20210820::TriggerPolicyRequest`
        # @rtype: :class:`Tencentcloud::cfg::V20210820::TriggerPolicyResponse`
        def TriggerPolicy(request)
          body = send_request('TriggerPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TriggerPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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