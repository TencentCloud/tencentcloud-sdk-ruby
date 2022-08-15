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


      end
    end
  end
end