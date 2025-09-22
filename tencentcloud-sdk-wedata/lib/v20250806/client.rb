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
  module Wedata
    module V20250806
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-08-06'
            api_endpoint = 'wedata.tencentcloudapi.com'
            sdk_version = 'WEDATA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 新建代码文件

        # @param request: Request instance for CreateCodeFile.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateCodeFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateCodeFileResponse`
        def CreateCodeFile(request)
          body = send_request('CreateCodeFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCodeFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建代码文件夹

        # @param request: Request instance for CreateCodeFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateCodeFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateCodeFolderResponse`
        def CreateCodeFolder(request)
          body = send_request('CreateCodeFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCodeFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据补录计划

        # @param request: Request instance for CreateDataBackfillPlan.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateDataBackfillPlanRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateDataBackfillPlanResponse`
        def CreateDataBackfillPlan(request)
          body = send_request('CreateDataBackfillPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataBackfillPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置告警规则

        # @param request: Request instance for CreateOpsAlarmRule.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateOpsAlarmRuleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateOpsAlarmRuleResponse`
        def CreateOpsAlarmRule(request)
          body = send_request('CreateOpsAlarmRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpsAlarmRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资源文件

        # @param request: Request instance for CreateResourceFile.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateResourceFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateResourceFileResponse`
        def CreateResourceFile(request)
          body = send_request('CreateResourceFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourceFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资源文件文件夹

        # @param request: Request instance for CreateResourceFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateResourceFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateResourceFolderResponse`
        def CreateResourceFolder(request)
          body = send_request('CreateResourceFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourceFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据探索脚本文件夹

        # @param request: Request instance for CreateSQLFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateSQLFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateSQLFolderResponse`
        def CreateSQLFolder(request)
          body = send_request('CreateSQLFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSQLFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增SQL脚本

        # @param request: Request instance for CreateSQLScript.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateSQLScriptRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateSQLScriptResponse`
        def CreateSQLScript(request)
          body = send_request('CreateSQLScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSQLScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建任务接口

        # @param request: Request instance for CreateTask.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateTaskResponse`
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

        # 创建工作流

        # @param request: Request instance for CreateWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateWorkflowResponse`
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

        # 创建文件夹

        # @param request: Request instance for CreateWorkflowFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::CreateWorkflowFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::CreateWorkflowFolderResponse`
        def CreateWorkflowFolder(request)
          body = send_request('CreateWorkflowFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkflowFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除代码文件

        # @param request: Request instance for DeleteCodeFile.
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteCodeFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteCodeFileResponse`
        def DeleteCodeFile(request)
          body = send_request('DeleteCodeFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCodeFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据探索删除文件夹

        # @param request: Request instance for DeleteCodeFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteCodeFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteCodeFolderResponse`
        def DeleteCodeFolder(request)
          body = send_request('DeleteCodeFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCodeFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除告警规则

        # @param request: Request instance for DeleteOpsAlarmRule.
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteOpsAlarmRuleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteOpsAlarmRuleResponse`
        def DeleteOpsAlarmRule(request)
          body = send_request('DeleteOpsAlarmRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOpsAlarmRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteResourceFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteResourceFileResponse`
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

        # 删除资源文件文件夹

        # @param request: Request instance for DeleteResourceFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteResourceFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteResourceFolderResponse`
        def DeleteResourceFolder(request)
          body = send_request('DeleteResourceFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteResourceFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除SQL文件夹

        # @param request: Request instance for DeleteSQLFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteSQLFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteSQLFolderResponse`
        def DeleteSQLFolder(request)
          body = send_request('DeleteSQLFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSQLFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除探索脚本

        # @param request: Request instance for DeleteSQLScript.
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteSQLScriptRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteSQLScriptResponse`
        def DeleteSQLScript(request)
          body = send_request('DeleteSQLScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSQLScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteTask.
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteTaskResponse`
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

        # 删除工作流

        # @param request: Request instance for DeleteWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteWorkflowResponse`
        def DeleteWorkflow(request)
          body = send_request('DeleteWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除数据开发文件夹

        # @param request: Request instance for DeleteWorkflowFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::DeleteWorkflowFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::DeleteWorkflowFolderResponse`
        def DeleteWorkflowFolder(request)
          body = send_request('DeleteWorkflowFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWorkflowFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警信息详情

        # @param request: Request instance for GetAlarmMessage.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetAlarmMessageRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetAlarmMessageResponse`
        def GetAlarmMessage(request)
          body = send_request('GetAlarmMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAlarmMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看代码文件详情

        # @param request: Request instance for GetCodeFile.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetCodeFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetCodeFileResponse`
        def GetCodeFile(request)
          body = send_request('GetCodeFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCodeFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据告警规则id/名称查询单个告警规则信息

        # @param request: Request instance for GetOpsAlarmRule.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetOpsAlarmRuleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetOpsAlarmRuleResponse`
        def GetOpsAlarmRule(request)
          body = send_request('GetOpsAlarmRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOpsAlarmRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运维中心异步操作详情

        # @param request: Request instance for GetOpsAsyncJob.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetOpsAsyncJobRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetOpsAsyncJobResponse`
        def GetOpsAsyncJob(request)
          body = send_request('GetOpsAsyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOpsAsyncJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务详情

        # @param request: Request instance for GetOpsTask.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetOpsTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetOpsTaskResponse`
        def GetOpsTask(request)
          body = send_request('GetOpsTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOpsTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务代码

        # @param request: Request instance for GetOpsTaskCode.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetOpsTaskCodeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetOpsTaskCodeResponse`
        def GetOpsTaskCode(request)
          body = send_request('GetOpsTaskCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOpsTaskCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据工作流id，获取工作流调度详情。

        # @param request: Request instance for GetOpsWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetOpsWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetOpsWorkflowResponse`
        def GetOpsWorkflow(request)
          body = send_request('GetOpsWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOpsWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资源文件详情

        # @param request: Request instance for GetResourceFile.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetResourceFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetResourceFileResponse`
        def GetResourceFile(request)
          body = send_request('GetResourceFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetResourceFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询脚本详情

        # @param request: Request instance for GetSQLScript.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetSQLScriptRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetSQLScriptResponse`
        def GetSQLScript(request)
          body = send_request('GetSQLScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSQLScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建任务接口

        # @param request: Request instance for GetTask.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetTaskResponse`
        def GetTask(request)
          body = send_request('GetTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务代码

        # @param request: Request instance for GetTaskCode.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetTaskCodeRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetTaskCodeResponse`
        def GetTaskCode(request)
          body = send_request('GetTaskCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调度实例详情

        # @param request: Request instance for GetTaskInstance.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetTaskInstanceRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetTaskInstanceResponse`
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

        # 获取实例列表

        # @param request: Request instance for GetTaskInstanceLog.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetTaskInstanceLogRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetTaskInstanceLogResponse`
        def GetTaskInstanceLog(request)
          body = send_request('GetTaskInstanceLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskInstanceLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取任务版本列表

        # @param request: Request instance for GetTaskVersion.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetTaskVersionRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetTaskVersionResponse`
        def GetTaskVersion(request)
          body = send_request('GetTaskVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取工作流信息

        # @param request: Request instance for GetWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20250806::GetWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::GetWorkflowResponse`
        def GetWorkflow(request)
          body = send_request('GetWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例批量终止操作-异步操作

        # @param request: Request instance for KillTaskInstancesAsync.
        # @type request: :class:`Tencentcloud::wedata::V20250806::KillTaskInstancesAsyncRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::KillTaskInstancesAsyncResponse`
        def KillTaskInstancesAsync(request)
          body = send_request('KillTaskInstancesAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillTaskInstancesAsyncResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取告警信息列表

        # @param request: Request instance for ListAlarmMessages.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListAlarmMessagesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListAlarmMessagesResponse`
        def ListAlarmMessages(request)
          body = send_request('ListAlarmMessages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAlarmMessagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取文件夹内容

        # @param request: Request instance for ListCodeFolderContents.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListCodeFolderContentsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListCodeFolderContentsResponse`
        def ListCodeFolderContents(request)
          body = send_request('ListCodeFolderContents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListCodeFolderContentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单次补录的所有实例详情

        # @param request: Request instance for ListDataBackfillInstances.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListDataBackfillInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListDataBackfillInstancesResponse`
        def ListDataBackfillInstances(request)
          body = send_request('ListDataBackfillInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDataBackfillInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务直接下游详情

        # @param request: Request instance for ListDownstreamOpsTasks.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListDownstreamOpsTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListDownstreamOpsTasksResponse`
        def ListDownstreamOpsTasks(request)
          body = send_request('ListDownstreamOpsTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDownstreamOpsTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例直接上游

        # @param request: Request instance for ListDownstreamTaskInstances.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListDownstreamTaskInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListDownstreamTaskInstancesResponse`
        def ListDownstreamTaskInstances(request)
          body = send_request('ListDownstreamTaskInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDownstreamTaskInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务直接下游详情

        # @param request: Request instance for ListDownstreamTasks.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListDownstreamTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListDownstreamTasksResponse`
        def ListDownstreamTasks(request)
          body = send_request('ListDownstreamTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDownstreamTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警规则列表

        # @param request: Request instance for ListOpsAlarmRules.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListOpsAlarmRulesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListOpsAlarmRulesResponse`
        def ListOpsAlarmRules(request)
          body = send_request('ListOpsAlarmRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOpsAlarmRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据项目id获取任务列表

        # @param request: Request instance for ListOpsTasks.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListOpsTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListOpsTasksResponse`
        def ListOpsTasks(request)
          body = send_request('ListOpsTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOpsTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据项目ID获取项目下工作流

        # @param request: Request instance for ListOpsWorkflows.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListOpsWorkflowsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListOpsWorkflowsResponse`
        def ListOpsWorkflows(request)
          body = send_request('ListOpsWorkflows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOpsWorkflowsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资源文件列表

        # @param request: Request instance for ListResourceFiles.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListResourceFilesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListResourceFilesResponse`
        def ListResourceFiles(request)
          body = send_request('ListResourceFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListResourceFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源文件文件夹列表

        # @param request: Request instance for ListResourceFolders.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListResourceFoldersRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListResourceFoldersResponse`
        def ListResourceFolders(request)
          body = send_request('ListResourceFolders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListResourceFoldersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据探索文件夹树，包括文件夹下的脚本

        # @param request: Request instance for ListSQLFolderContents.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListSQLFolderContentsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListSQLFolderContentsResponse`
        def ListSQLFolderContents(request)
          body = send_request('ListSQLFolderContents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSQLFolderContentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询SQL运行记录

        # @param request: Request instance for ListSQLScriptRuns.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListSQLScriptRunsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListSQLScriptRunsResponse`
        def ListSQLScriptRuns(request)
          body = send_request('ListSQLScriptRuns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSQLScriptRunsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调度实例详情

        # @param request: Request instance for ListTaskInstanceExecutions.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListTaskInstanceExecutionsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListTaskInstanceExecutionsResponse`
        def ListTaskInstanceExecutions(request)
          body = send_request('ListTaskInstanceExecutions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTaskInstanceExecutionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ListTaskInstances.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListTaskInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListTaskInstancesResponse`
        def ListTaskInstances(request)
          body = send_request('ListTaskInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTaskInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务保存版本列表

        # @param request: Request instance for ListTaskVersions.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListTaskVersionsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListTaskVersionsResponse`
        def ListTaskVersions(request)
          body = send_request('ListTaskVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTaskVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务分页信息

        # @param request: Request instance for ListTasks.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListTasksResponse`
        def ListTasks(request)
          body = send_request('ListTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务直接上游

        # @param request: Request instance for ListUpstreamOpsTasks.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListUpstreamOpsTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListUpstreamOpsTasksResponse`
        def ListUpstreamOpsTasks(request)
          body = send_request('ListUpstreamOpsTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUpstreamOpsTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例直接上游

        # @param request: Request instance for ListUpstreamTaskInstances.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListUpstreamTaskInstancesRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListUpstreamTaskInstancesResponse`
        def ListUpstreamTaskInstances(request)
          body = send_request('ListUpstreamTaskInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUpstreamTaskInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务直接上游

        # @param request: Request instance for ListUpstreamTasks.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListUpstreamTasksRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListUpstreamTasksResponse`
        def ListUpstreamTasks(request)
          body = send_request('ListUpstreamTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUpstreamTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文件夹列表

        # @param request: Request instance for ListWorkflowFolders.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListWorkflowFoldersRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListWorkflowFoldersResponse`
        def ListWorkflowFolders(request)
          body = send_request('ListWorkflowFolders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListWorkflowFoldersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询工作流列表

        # @param request: Request instance for ListWorkflows.
        # @type request: :class:`Tencentcloud::wedata::V20250806::ListWorkflowsRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::ListWorkflowsResponse`
        def ListWorkflows(request)
          body = send_request('ListWorkflows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListWorkflowsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 异步批量暂停任务

        # @param request: Request instance for PauseOpsTasksAsync.
        # @type request: :class:`Tencentcloud::wedata::V20250806::PauseOpsTasksAsyncRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::PauseOpsTasksAsyncResponse`
        def PauseOpsTasksAsync(request)
          body = send_request('PauseOpsTasksAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseOpsTasksAsyncResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例批量重跑-异步

        # @param request: Request instance for RerunTaskInstancesAsync.
        # @type request: :class:`Tencentcloud::wedata::V20250806::RerunTaskInstancesAsyncRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::RerunTaskInstancesAsyncResponse`
        def RerunTaskInstancesAsync(request)
          body = send_request('RerunTaskInstancesAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RerunTaskInstancesAsyncResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行SQL脚本

        # @param request: Request instance for RunSQLScript.
        # @type request: :class:`Tencentcloud::wedata::V20250806::RunSQLScriptRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::RunSQLScriptResponse`
        def RunSQLScript(request)
          body = send_request('RunSQLScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunSQLScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例批量置成功-异步

        # @param request: Request instance for SetSuccessTaskInstancesAsync.
        # @type request: :class:`Tencentcloud::wedata::V20250806::SetSuccessTaskInstancesAsyncRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::SetSuccessTaskInstancesAsyncResponse`
        def SetSuccessTaskInstancesAsync(request)
          body = send_request('SetSuccessTaskInstancesAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetSuccessTaskInstancesAsyncResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 异步批量下线任务

        # @param request: Request instance for StopOpsTasksAsync.
        # @type request: :class:`Tencentcloud::wedata::V20250806::StopOpsTasksAsyncRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::StopOpsTasksAsyncResponse`
        def StopOpsTasksAsync(request)
          body = send_request('StopOpsTasksAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopOpsTasksAsyncResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止运行SQL脚本

        # @param request: Request instance for StopSQLScriptRun.
        # @type request: :class:`Tencentcloud::wedata::V20250806::StopSQLScriptRunRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::StopSQLScriptRunResponse`
        def StopSQLScriptRun(request)
          body = send_request('StopSQLScriptRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopSQLScriptRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交任务。

        # @param request: Request instance for SubmitTask.
        # @type request: :class:`Tencentcloud::wedata::V20250806::SubmitTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::SubmitTaskResponse`
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

        # 更新代码文件

        # @param request: Request instance for UpdateCodeFile.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateCodeFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateCodeFileResponse`
        def UpdateCodeFile(request)
          body = send_request('UpdateCodeFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCodeFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重命名代码文件夹

        # @param request: Request instance for UpdateCodeFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateCodeFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateCodeFolderResponse`
        def UpdateCodeFolder(request)
          body = send_request('UpdateCodeFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCodeFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改告警规则

        # @param request: Request instance for UpdateOpsAlarmRule.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateOpsAlarmRuleRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateOpsAlarmRuleResponse`
        def UpdateOpsAlarmRule(request)
          body = send_request('UpdateOpsAlarmRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOpsAlarmRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改任务负责人

        # @param request: Request instance for UpdateOpsTasksOwner.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateOpsTasksOwnerRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateOpsTasksOwnerResponse`
        def UpdateOpsTasksOwner(request)
          body = send_request('UpdateOpsTasksOwner', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOpsTasksOwnerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新资源文件

        # @param request: Request instance for UpdateResourceFile.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateResourceFileRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateResourceFileResponse`
        def UpdateResourceFile(request)
          body = send_request('UpdateResourceFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateResourceFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资源文件文件夹

        # @param request: Request instance for UpdateResourceFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateResourceFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateResourceFolderResponse`
        def UpdateResourceFolder(request)
          body = send_request('UpdateResourceFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateResourceFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重命名SQL文件夹

        # @param request: Request instance for UpdateSQLFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateSQLFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateSQLFolderResponse`
        def UpdateSQLFolder(request)
          body = send_request('UpdateSQLFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSQLFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 保存探索脚本内容

        # @param request: Request instance for UpdateSQLScript.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateSQLScriptRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateSQLScriptResponse`
        def UpdateSQLScript(request)
          body = send_request('UpdateSQLScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSQLScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建任务接口

        # @param request: Request instance for UpdateTask.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateTaskRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateTaskResponse`
        def UpdateTask(request)
          body = send_request('UpdateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新工作流（包括工作流基本信息与工作流参数）

        # @param request: Request instance for UpdateWorkflow.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateWorkflowRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateWorkflowResponse`
        def UpdateWorkflow(request)
          body = send_request('UpdateWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建文件夹

        # @param request: Request instance for UpdateWorkflowFolder.
        # @type request: :class:`Tencentcloud::wedata::V20250806::UpdateWorkflowFolderRequest`
        # @rtype: :class:`Tencentcloud::wedata::V20250806::UpdateWorkflowFolderResponse`
        def UpdateWorkflowFolder(request)
          body = send_request('UpdateWorkflowFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateWorkflowFolderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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