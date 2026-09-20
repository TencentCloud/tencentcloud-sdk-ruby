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
  module Databuddy
    module V20260715
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2026-07-15'
            api_endpoint = 'databuddy.tencentcloudapi.com'
            sdk_version = 'DATABUDDY_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加控制台用户

        # @param request: Request instance for AddConsoleUsers.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::AddConsoleUsersRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::AddConsoleUsersResponse`
        def AddConsoleUsers(request)
          body = send_request('AddConsoleUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddConsoleUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在Studio（统一开发 IDE）的工作空间文件树中新建一个文件（Notebook/SQL/Python等），创建成功后返回文件的完整元信息。

        # **前置条件**
        # 1. WorkspaceId 对应工作空间存在，且调用方为该工作空间成员；
        # 2. ParentFolderPath 对应的父文件夹必须存在，且调用方对其有写权限（根目录传 `/`）；
        # 3. FileName 在同一父文件夹下不能重名（含后缀比较）；
        # 4. FileName 后缀必须与 FileType 匹配（`.ipynb`↔`NOTEBOOK_FILE`、`.sql`↔`SQL_FILE`）；
        # 5. 需带文件内容创建时通过 Storage 传入（大文件走 COS 中转，小文件放 Storage.Content）。

        # @param request: Request instance for CreateFile.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::CreateFileRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::CreateFileResponse`
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

        # 创建工作流

        # @param request: Request instance for CreateWorkflow.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::CreateWorkflowRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::CreateWorkflowResponse`
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

        # 将文件移入回收站（软删除），同时清理该文件的版本记录与执行结果快照。

        # **前置条件**
        # 1. FileId 对应文件必须存在且为活跃状态；
        # 2. 调用方对该文件有删除权限；
        # 3. 文件未被工作流任务引用。

        # **错误码（Module 均为 `Studio`）**

        # | 错误码（Code） | InnerCode | 描述 | 处理建议 |
        # | --- | --- | --- | --- |
        # | `MissingParameter.WorkspaceId` | 1030001 | 缺少 WorkspaceId | 请传入 WorkspaceId |
        # | `MissingParameter.FileId` | 1030003 | 缺少 FileId | 请传入 FileId  |
        # | `InvalidParameterValue.FileType` | 1030102 | FileType 取值不支持 | FileType 取 FILE/NOTEBOOK_FILE/SQL_FILE |
        # | `ResourceNotFound.FileNotFound` | 1030203 | 文件不存在或已删除 | 请确认 FileId |
        # | `ResourceInUse.FileReferencedByTask` | 1030204 | 文件被工作流任务引用，不允许删除 | 请先解除任务引用后再删除 |
        # | `UnauthorizedOperation.FileDeleteDenied` | 1030303 | 对该文件无删除权限 | 请联系文件负责人或空间管理员授权 |
        # | `InternalError` | 1030900 | 服务内部异常 | 请携带 RequestId 联系支持 |

        # @param request: Request instance for DeleteFile.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::DeleteFileRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::DeleteFileResponse`
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

        # 删除工作流

        # @param request: Request instance for DeleteWorkflow.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::DeleteWorkflowRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::DeleteWorkflowResponse`
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

        # 获取文件的元信息，可选包含文件内容，支持按版本读取历史快照。

        # **前置条件**
        # 1. FileId 与 FilePath 二选一，至少传一个；同时传时以 FileId 为准；
        # 2. 对应文件必须存在，且调用方对该文件有读权限；
        # 3. 传 VersionId 时该版本必须存在。

        # **错误码（Module 均为 `Studio`）**

        # | 错误码（Code） | InnerCode | 描述 | 处理建议 |
        # | --- | --- | --- | --- |
        # | `MissingParameter.WorkspaceId` | 1030001 | 缺少 WorkspaceId | 请传入 WorkspaceId |
        # | `MissingParameter.FileId` | 1030003 | FileId 与 FilePath 同时为空 | FileId 与 FilePath 二选一，至少传一个 |
        # | `InvalidParameterValue.FileType` | 1030102 | FileType 取值不支持 | FileType 取 FILE/NOTEBOOK_FILE/SQL_FILE |
        # | `ResourceNotFound.FileNotFound` | 1030203 | 文件不存在或已删除 | 请确认 FileId 或 FilePath |
        # | `ResourceNotFound.FileVersionNotFound` | 1030205 | 指定的文件版本不存在 | 请确认 VersionId，或调用 ListFileVersions 获取 |
        # | `UnauthorizedOperation.FileReadDenied` | 1030304 | 对该文件无读权限 | 请联系文件负责人或空间管理员授权 |
        # | `InternalError` | 1030900 | 服务内部异常 | 请携带 RequestId 联系支持 |

        # @param request: Request instance for GetFile.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::GetFileRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::GetFileResponse`
        def GetFile(request)
          body = send_request('GetFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取工作流详细信息

        # @param request: Request instance for GetWorkflow.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::GetWorkflowRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::GetWorkflowResponse`
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

        # 查询工作流运行详情

        # @param request: Request instance for GetWorkflowRun.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::GetWorkflowRunRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::GetWorkflowRunResponse`
        def GetWorkflowRun(request)
          body = send_request('GetWorkflowRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetWorkflowRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务运行详情

        # @param request: Request instance for GetWorkflowTaskRun.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::GetWorkflowTaskRunRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::GetWorkflowTaskRunResponse`
        def GetWorkflowTaskRun(request)
          body = send_request('GetWorkflowTaskRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetWorkflowTaskRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 终止工作流的运行

        # @param request: Request instance for KillWorkflowRun.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::KillWorkflowRunRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::KillWorkflowRunResponse`
        def KillWorkflowRun(request)
          body = send_request('KillWorkflowRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillWorkflowRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询控制台用户列表

        # @param request: Request instance for ListConsoleUsers.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::ListConsoleUsersRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::ListConsoleUsersResponse`
        def ListConsoleUsers(request)
          body = send_request('ListConsoleUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListConsoleUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 工作流运行列表

        # @param request: Request instance for ListWorkflowRuns.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::ListWorkflowRunsRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::ListWorkflowRunsResponse`
        def ListWorkflowRuns(request)
          body = send_request('ListWorkflowRuns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListWorkflowRunsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询工作流任务历史运行列表

        # @param request: Request instance for ListWorkflowTaskRuns.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::ListWorkflowTaskRunsRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::ListWorkflowTaskRunsResponse`
        def ListWorkflowTaskRuns(request)
          body = send_request('ListWorkflowTaskRuns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListWorkflowTaskRunsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::databuddy::V20260715::ListWorkflowsRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::ListWorkflowsResponse`
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

        # <p>批量移除控制台用户（单次最多10个；前置校验任一不满足整体拒绝；执行阶段单个失败不中断后续删除，成败以 SuccessUins/FailItems 为准）</p>

        # @param request: Request instance for RemoveConsoleUsers.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::RemoveConsoleUsersRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::RemoveConsoleUsersResponse`
        def RemoveConsoleUsers(request)
          body = send_request('RemoveConsoleUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveConsoleUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重跑工作流

        # @param request: Request instance for RerunWorkflowRun.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::RerunWorkflowRunRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::RerunWorkflowRunResponse`
        def RerunWorkflowRun(request)
          body = send_request('RerunWorkflowRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RerunWorkflowRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行工作流

        # @param request: Request instance for RunWorkflow.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::RunWorkflowRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::RunWorkflowResponse`
        def RunWorkflow(request)
          body = send_request('RunWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunWorkflowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑工作流Bundle信息
        # 说明：本接口语义等同于规范动词清单中的 Detach，因兼容既有产品形态保留 Unbind 命名

        # @param request: Request instance for UnbindWorkflowBundle.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::UnbindWorkflowBundleRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::UnbindWorkflowBundleResponse`
        def UnbindWorkflowBundle(request)
          body = send_request('UnbindWorkflowBundle', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindWorkflowBundleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改控制台用户角色

        # @param request: Request instance for UpdateConsoleUsers.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::UpdateConsoleUsersRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::UpdateConsoleUsersResponse`
        def UpdateConsoleUsers(request)
          body = send_request('UpdateConsoleUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateConsoleUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新文件内容与运行配置（计算资源、默认 catalog/schema、参数等），返回更新后的文件元信息。

        # **前置条件**
        # 1. FileId 对应文件必须存在且为活跃状态；
        # 2. 调用方对该文件有写权限；
        # 3. 仅更新配置时不传 Storage；仅更新内容时不传 FileConfig；
        # 4. FileConfig.ResourceId 非空时会校验资源类型与文件类型的匹配性。

        # **错误码（Module 均为 `Studio`）**

        # | 错误码（Code） | InnerCode | 描述 | 处理建议 |
        # | --- | --- | --- | --- |
        # | `MissingParameter.WorkspaceId` | 1030001 | 缺少 WorkspaceId | 请传入 WorkspaceId |
        # | `MissingParameter.FileId` | 1030003 | 缺少 FileId | 请传入 FileId |
        # | `InvalidParameterValue.FileType` | 1030102 | FileType 取值不支持 | FileType 取 FILE/NOTEBOOK_FILE/SQL_FILE |
        # | `InvalidParameterValue.ResourceId` | 1030104 | 计算资源类型与文件类型不匹配 | Python/Notebook 选数据计算资源，SQL 选数据分析资源 |
        # | `ResourceNotFound.FileNotFound` | 1030203 | 文件不存在或已删除 | 请确认 FileId，或调用 GetFile 校验文件状态 |
        # | `UnauthorizedOperation.FileWriteDenied` | 1030302 | 对该文件无写权限 | 请联系文件负责人或空间管理员授权 |
        # | `FailedOperation.FileStorageUpdateFailed` | 1030401 | 文件内容写入存储失败 | 请稍后重试，持续失败请携带 RequestId 联系支持 |
        # | `InternalError` | 1030900 | 服务内部异常 | 请携带 RequestId 联系支持 |

        # @param request: Request instance for UpdateFile.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::UpdateFileRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::UpdateFileResponse`
        def UpdateFile(request)
          body = send_request('UpdateFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新工作流

        # @param request: Request instance for UpdateWorkflow.
        # @type request: :class:`Tencentcloud::databuddy::V20260715::UpdateWorkflowRequest`
        # @rtype: :class:`Tencentcloud::databuddy::V20260715::UpdateWorkflowResponse`
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


      end
    end
  end
end