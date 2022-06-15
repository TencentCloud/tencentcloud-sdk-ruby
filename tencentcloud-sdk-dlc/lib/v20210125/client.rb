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
  module Dlc
    module V20210125
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-01-25'
            api_endpoint = 'dlc.tencentcloudapi.com'
            sdk_version = 'DLC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加用户到工作组

        # @param request: Request instance for AddUsersToWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AddUsersToWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AddUsersToWorkGroupResponse`
        def AddUsersToWorkGroup(request)
          body = send_request('AddUsersToWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddUsersToWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定鉴权策略到用户

        # @param request: Request instance for AttachUserPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AttachUserPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AttachUserPolicyResponse`
        def AttachUserPolicy(request)
          body = send_request('AttachUserPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachUserPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定鉴权策略到工作组

        # @param request: Request instance for AttachWorkGroupPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AttachWorkGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AttachWorkGroupPolicyResponse`
        def AttachWorkGroupPolicy(request)
          body = send_request('AttachWorkGroupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachWorkGroupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定工作组到用户

        # @param request: Request instance for BindWorkGroupsToUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::BindWorkGroupsToUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::BindWorkGroupsToUserResponse`
        def BindWorkGroupsToUser(request)
          body = send_request('BindWorkGroupsToUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindWorkGroupsToUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CancelTask），用于取消任务执行

        # @param request: Request instance for CancelTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CancelTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CancelTaskResponse`
        def CancelTask(request)
          body = send_request('CancelTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDatabase）用于生成建库SQL语句。

        # @param request: Request instance for CreateDatabase.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateDatabaseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateDatabaseResponse`
        def CreateDatabase(request)
          body = send_request('CreateDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateExportTask）用于创建导出任务

        # @param request: Request instance for CreateExportTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateExportTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateExportTaskResponse`
        def CreateExportTask(request)
          body = send_request('CreateExportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateImportTask）用于创建导入任务

        # @param request: Request instance for CreateImportTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateImportTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateImportTaskResponse`
        def CreateImportTask(request)
          body = send_request('CreateImportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateScript）用于创建sql脚本。

        # @param request: Request instance for CreateScript.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateScriptRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateScriptResponse`
        def CreateScript(request)
          body = send_request('CreateScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建spark应用

        # @param request: Request instance for CreateSparkApp.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppResponse`
        def CreateSparkApp(request)
          body = send_request('CreateSparkApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSparkAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建spark任务

        # @param request: Request instance for CreateSparkAppTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppTaskResponse`
        def CreateSparkAppTask(request)
          body = send_request('CreateSparkAppTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSparkAppTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateStoreLocation）新增或覆盖计算结果存储位置。

        # @param request: Request instance for CreateStoreLocation.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateStoreLocationRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateStoreLocationResponse`
        def CreateStoreLocation(request)
          body = send_request('CreateStoreLocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStoreLocationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateTable）用于生成建表SQL。

        # @param request: Request instance for CreateTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTableResponse`
        def CreateTable(request)
          body = send_request('CreateTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateTask）用于创建sql查询任务。（推荐使用CreateTasks接口）

        # @param request: Request instance for CreateTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTaskResponse`
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

        # 本接口（CreateTasks），用于批量创建任务

        # @param request: Request instance for CreateTasks.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTasksRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTasksResponse`
        def CreateTasks(request)
          body = send_request('CreateTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按顺序创建任务（已经废弃，后期不再维护，请使用接口CreateTasks）

        # @param request: Request instance for CreateTasksInOrder.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTasksInOrderRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTasksInOrderResponse`
        def CreateTasksInOrder(request)
          body = send_request('CreateTasksInOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTasksInOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateUserResponse`
        def CreateUser(request)
          body = send_request('CreateUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建工作组

        # @param request: Request instance for CreateWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateWorkGroupResponse`
        def CreateWorkGroup(request)
          body = send_request('CreateWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DeleteScript）用于删除sql脚本。

        # @param request: Request instance for DeleteScript.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteScriptRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteScriptResponse`
        def DeleteScript(request)
          body = send_request('DeleteScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除spark应用

        # @param request: Request instance for DeleteSparkApp.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteSparkAppRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteSparkAppResponse`
        def DeleteSparkApp(request)
          body = send_request('DeleteSparkApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSparkAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户

        # @param request: Request instance for DeleteUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteUserResponse`
        def DeleteUser(request)
          body = send_request('DeleteUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从工作组中删除用户

        # @param request: Request instance for DeleteUsersFromWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteUsersFromWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteUsersFromWorkGroupResponse`
        def DeleteUsersFromWorkGroup(request)
          body = send_request('DeleteUsersFromWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUsersFromWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除工作组

        # @param request: Request instance for DeleteWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteWorkGroupResponse`
        def DeleteWorkGroup(request)
          body = send_request('DeleteWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDatabases）用于查询数据库列表。

        # @param request: Request instance for DescribeDatabases.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDatabasesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDatabasesResponse`
        def DescribeDatabases(request)
          body = send_request('DescribeDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeScripts）用于获取所有SQL查询。

        # @param request: Request instance for DescribeScripts.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeScriptsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeScriptsResponse`
        def DescribeScripts(request)
          body = send_request('DescribeScripts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScriptsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询具体的spark应用

        # @param request: Request instance for DescribeSparkAppJob.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppJobRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppJobResponse`
        def DescribeSparkAppJob(request)
          body = send_request('DescribeSparkAppJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkAppJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取spark应用列表

        # @param request: Request instance for DescribeSparkAppJobs.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppJobsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppJobsResponse`
        def DescribeSparkAppJobs(request)
          body = send_request('DescribeSparkAppJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkAppJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询spark应用的运行任务实例列表

        # @param request: Request instance for DescribeSparkAppTasks.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppTasksRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppTasksResponse`
        def DescribeSparkAppTasks(request)
          body = send_request('DescribeSparkAppTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkAppTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询计算结果存储位置。

        # @param request: Request instance for DescribeStoreLocation.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeStoreLocationRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeStoreLocationResponse`
        def DescribeStoreLocation(request)
          body = send_request('DescribeStoreLocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStoreLocationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTable），用于查询单个表的详细信息。

        # @param request: Request instance for DescribeTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTableResponse`
        def DescribeTable(request)
          body = send_request('DescribeTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTables）用于查询数据表列表。

        # @param request: Request instance for DescribeTables.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTablesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTablesResponse`
        def DescribeTables(request)
          body = send_request('DescribeTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务结果

        # @param request: Request instance for DescribeTaskResult.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTaskResultResponse`
        def DescribeTaskResult(request)
          body = send_request('DescribeTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribleTasks）用于查询任务列表

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTasksResponse`
        def DescribeTasks(request)
          body = send_request('DescribeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户列表信息

        # @param request: Request instance for DescribeUsers.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUsersRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUsersResponse`
        def DescribeUsers(request)
          body = send_request('DescribeUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeViews）用于查询数据视图列表。

        # @param request: Request instance for DescribeViews.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeViewsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeViewsResponse`
        def DescribeViews(request)
          body = send_request('DescribeViews', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeViewsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取工作组列表

        # @param request: Request instance for DescribeWorkGroups.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeWorkGroupsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeWorkGroupsResponse`
        def DescribeWorkGroups(request)
          body = send_request('DescribeWorkGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑用户鉴权策略

        # @param request: Request instance for DetachUserPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DetachUserPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DetachUserPolicyResponse`
        def DetachUserPolicy(request)
          body = send_request('DetachUserPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachUserPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑工作组鉴权策略

        # @param request: Request instance for DetachWorkGroupPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DetachWorkGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DetachWorkGroupPolicyResponse`
        def DetachWorkGroupPolicy(request)
          body = send_request('DetachWorkGroupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachWorkGroupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListTaskJobLogDetail）用于获取spark-jar日志列表

        # @param request: Request instance for ListTaskJobLogDetail.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListTaskJobLogDetailRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListTaskJobLogDetailResponse`
        def ListTaskJobLogDetail(request)
          body = send_request('ListTaskJobLogDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTaskJobLogDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新spark应用

        # @param request: Request instance for ModifySparkApp.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifySparkAppRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifySparkAppResponse`
        def ModifySparkApp(request)
          body = send_request('ModifySparkApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySparkAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户信息

        # @param request: Request instance for ModifyUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyUserResponse`
        def ModifyUser(request)
          body = send_request('ModifyUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改工作组信息

        # @param request: Request instance for ModifyWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyWorkGroupResponse`
        def ModifyWorkGroup(request)
          body = send_request('ModifyWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑用户上的用户组

        # @param request: Request instance for UnbindWorkGroupsFromUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UnbindWorkGroupsFromUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UnbindWorkGroupsFromUserResponse`
        def UnbindWorkGroupsFromUser(request)
          body = send_request('UnbindWorkGroupsFromUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindWorkGroupsFromUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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