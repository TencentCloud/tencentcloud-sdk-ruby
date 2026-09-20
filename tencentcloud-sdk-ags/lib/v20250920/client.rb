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
  module Ags
    module V20250920
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-09-20'
            api_endpoint = 'ags.tencentcloudapi.com'
            sdk_version = 'AGS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取 Deployment 访问 Token

        # @param request: Request instance for AcquireDeploymentToken.
        # @type request: :class:`Tencentcloud::ags::V20250920::AcquireDeploymentTokenRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::AcquireDeploymentTokenResponse`
        def AcquireDeploymentToken(request)
          body = send_request('AcquireDeploymentToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcquireDeploymentTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取访问沙箱工具时所需要使用的访问Token，创建沙箱实例后需调用此接口获取沙箱实例访问Token。
        # 此Token可用于调用代码沙箱实例执行代码，或浏览器沙箱实例进行浏览器操作等。

        # @param request: Request instance for AcquireSandboxInstanceToken.
        # @type request: :class:`Tencentcloud::ags::V20250920::AcquireSandboxInstanceTokenRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::AcquireSandboxInstanceTokenResponse`
        def AcquireSandboxInstanceToken(request)
          body = send_request('AcquireSandboxInstanceToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcquireSandboxInstanceTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 追加事件。

        # 向指定会话追加一条事件。

        # @param request: Request instance for AppendEvent.
        # @type request: :class:`Tencentcloud::ags::V20250920::AppendEventRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::AppendEventResponse`
        def AppendEvent(request)
          body = send_request('AppendEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AppendEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过 Version 审批：PENDING_APPROVAL → APPROVED。Comment 必填。

        # @param request: Request instance for ApproveRegistryRecord.
        # @type request: :class:`Tencentcloud::ags::V20250920::ApproveRegistryRecordRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::ApproveRegistryRecordResponse`
        def ApproveRegistryRecord(request)
          body = send_request('ApproveRegistryRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApproveRegistryRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # PREPARING/PENDING_APPROVAL → CANCELED。Comment 必填。

        # @param request: Request instance for CancelRegistryRecord.
        # @type request: :class:`Tencentcloud::ags::V20250920::CancelRegistryRecordRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CancelRegistryRecordResponse`
        def CancelRegistryRecord(request)
          body = send_request('CancelRegistryRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelRegistryRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建新的API密钥，用于调用Agent Sandbox接口。相较于腾讯云Secret ID Secret Key支持调用所有接口使用，仅有部分接口支持使用API密钥调用。

        # @param request: Request instance for CreateAPIKey.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreateAPIKeyRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreateAPIKeyResponse`
        def CreateAPIKey(request)
          body = send_request('CreateAPIKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAPIKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 Deployment

        # @param request: Request instance for CreateDeployment.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreateDeploymentRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreateDeploymentResponse`
        def CreateDeployment(request)
          body = send_request('CreateDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像预热任务

        # @param request: Request instance for CreatePreCacheImageTask.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreatePreCacheImageTaskRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreatePreCacheImageTaskResponse`
        def CreatePreCacheImageTask(request)
          body = send_request('CreatePreCacheImageTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePreCacheImageTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 Agent Registry（注册中心）。

        # @param request: Request instance for CreateRegistry.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreateRegistryRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreateRegistryResponse`
        def CreateRegistry(request)
          body = send_request('CreateRegistry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRegistryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 统一创建 Registry Record（含 revision 1）。请求通过 DescriptorType 与严格内容输入 Union 选择底层类型：MCPSource / AgentSource / SkillSource / CustomDescriptors 四选一，必须与 DescriptorType 对应。不接受 RecordId 或 ChangeLog；同名 Record 返回冲突，不隐式追加 Version。追加 Version 请使用 UpdateRegistryRecord。

        # @param request: Request instance for CreateRegistryRecord.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreateRegistryRecordRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreateRegistryRecordResponse`
        def CreateRegistryRecord(request)
          body = send_request('CreateRegistryRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRegistryRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建沙箱工具

        # @param request: Request instance for CreateSandboxTool.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreateSandboxToolRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreateSandboxToolResponse`
        def CreateSandboxTool(request)
          body = send_request('CreateSandboxTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSandboxToolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建会话。

        # 为指定 Agent 和用户创建会话，创建成功后返回会话信息。

        # @param request: Request instance for CreateSession.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreateSessionRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreateSessionResponse`
        def CreateSession(request)
          body = send_request('CreateSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建会话空间。
        # 为当前应用在指定地域创建会话空间，创建成功后返回会话空间信息。会话空间用于隔离不同业务场景下的用户、会话、事件及状态数据。

        # @param request: Request instance for CreateSessionSpace.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreateSessionSpaceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreateSessionSpaceResponse`
        def CreateSessionSpace(request)
          body = send_request('CreateSessionSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSessionSpaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除API密钥。注意区别于腾讯云Secret ID Secret Key，本接口删除的是Agent Sandbox专用API key。

        # @param request: Request instance for DeleteAPIKey.
        # @type request: :class:`Tencentcloud::ags::V20250920::DeleteAPIKeyRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DeleteAPIKeyResponse`
        def DeleteAPIKey(request)
          body = send_request('DeleteAPIKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAPIKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 Deployment

        # @param request: Request instance for DeleteDeployment.
        # @type request: :class:`Tencentcloud::ags::V20250920::DeleteDeploymentRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DeleteDeploymentResponse`
        def DeleteDeployment(request)
          body = send_request('DeleteDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 Registry。

        # @param request: Request instance for DeleteRegistry.
        # @type request: :class:`Tencentcloud::ags::V20250920::DeleteRegistryRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DeleteRegistryResponse`
        def DeleteRegistry(request)
          body = send_request('DeleteRegistry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRegistryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 Registry Record 或指定 Version。省略 VersionId 时对整个 Record 进行软删除；传入 VersionId 时只删除指定 Version（Stable 指向的 Version 不允许删除；仅剩一个 Approved Version 时不允许删除）。取代原 DeleteRegistryRecordVersion。

        # @param request: Request instance for DeleteRegistryRecord.
        # @type request: :class:`Tencentcloud::ags::V20250920::DeleteRegistryRecordRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DeleteRegistryRecordResponse`
        def DeleteRegistryRecord(request)
          body = send_request('DeleteRegistryRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRegistryRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除沙箱工具

        # @param request: Request instance for DeleteSandboxTool.
        # @type request: :class:`Tencentcloud::ags::V20250920::DeleteSandboxToolRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DeleteSandboxToolResponse`
        def DeleteSandboxTool(request)
          body = send_request('DeleteSandboxTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSandboxToolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除会话

        # @param request: Request instance for DeleteSession.
        # @type request: :class:`Tencentcloud::ags::V20250920::DeleteSessionRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DeleteSessionResponse`
        def DeleteSession(request)
          body = send_request('DeleteSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除会话空间。
        # 删除指定的会话空间。仅允许删除不包含会话、事件或用户状态数据的非默认会话空间；系统默认会话空间不能删除。删除成功后不再返回会话空间信息。

        # @param request: Request instance for DeleteSessionSpace.
        # @type request: :class:`Tencentcloud::ags::V20250920::DeleteSessionSpaceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DeleteSessionSpaceResponse`
        def DeleteSessionSpace(request)
          body = send_request('DeleteSessionSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSessionSpaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取API密钥列表，包含API密钥简略信息，包含名称、创建时间等。

        # @param request: Request instance for DescribeAPIKeyList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeAPIKeyListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeAPIKeyListResponse`
        def DescribeAPIKeyList(request)
          body = send_request('DescribeAPIKeyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAPIKeyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Deployment 信息

        # @param request: Request instance for DescribeDeployment.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeDeploymentRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeDeploymentResponse`
        def DescribeDeployment(request)
          body = send_request('DescribeDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Deployment 列表

        # @param request: Request instance for DescribeDeploymentList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeDeploymentListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeDeploymentListResponse`
        def DescribeDeploymentList(request)
          body = send_request('DescribeDeploymentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeploymentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询事件列表。

        # 查询指定会话的事件流，支持按作者和起始时间筛选。

        # @param request: Request instance for DescribeEvents.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeEventsRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeEventsResponse`
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

        # 查询镜像预热任务信息

        # @param request: Request instance for DescribePreCacheImageTask.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribePreCacheImageTaskRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribePreCacheImageTaskResponse`
        def DescribePreCacheImageTask(request)
          body = send_request('DescribePreCacheImageTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePreCacheImageTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前调用账号的资源配额和当前总用量，以及账号下各配额组的资源配额和当前用量

        # @param request: Request instance for DescribeQuotaOverview.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeQuotaOverviewRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeQuotaOverviewResponse`
        def DescribeQuotaOverview(request)
          body = send_request('DescribeQuotaOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQuotaOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按 RegistryId 查询 Registry 详情。

        # @param request: Request instance for DescribeRegistry.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeRegistryRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeRegistryResponse`
        def DescribeRegistry(request)
          body = send_request('DescribeRegistry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegistryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询指定Registry / Record / Version的审计日志。

        # @param request: Request instance for DescribeRegistryAuditLogList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeRegistryAuditLogListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeRegistryAuditLogListResponse`
        def DescribeRegistryAuditLogList(request)
          body = send_request('DescribeRegistryAuditLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegistryAuditLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询当前租户可见的 Registry 列表。

        # @param request: Request instance for DescribeRegistryList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeRegistryListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeRegistryListResponse`
        def DescribeRegistryList(request)
          body = send_request('DescribeRegistryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegistryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Record 详情和其中一个 Version。请求可通过互斥的 VersionId 或 Label 选择 Version；均省略时默认 Label=stable。取代原 DescribeRegistryRecordVersion。

        # @param request: Request instance for DescribeRegistryRecord.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeRegistryRecordRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeRegistryRecordResponse`
        def DescribeRegistryRecord(request)
          body = send_request('DescribeRegistryRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegistryRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询 Registry 下的 Record 列表。list 类接口不接入 CAM 转发鉴权；业务侧按 CAM 二次过滤。

        # @param request: Request instance for DescribeRegistryRecordList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeRegistryRecordListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeRegistryRecordListResponse`
        def DescribeRegistryRecordList(request)
          body = send_request('DescribeRegistryRecordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegistryRecordListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询 Record 的 Version 列表。list 类接口不接入 CAM 转发鉴权。

        # @param request: Request instance for DescribeRegistryRecordVersionList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeRegistryRecordVersionListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeRegistryRecordVersionListResponse`
        def DescribeRegistryRecordVersionList(request)
          body = send_request('DescribeRegistryRecordVersionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegistryRecordVersionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询沙箱实例列表

        # @param request: Request instance for DescribeSandboxInstanceList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeSandboxInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeSandboxInstanceListResponse`
        def DescribeSandboxInstanceList(request)
          body = send_request('DescribeSandboxInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询沙箱工具列表

        # @param request: Request instance for DescribeSandboxToolList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeSandboxToolListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeSandboxToolListResponse`
        def DescribeSandboxToolList(request)
          body = send_request('DescribeSandboxToolList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxToolListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询会话。

        # 查询指定会话的信息。

        # @param request: Request instance for DescribeSession.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeSessionRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeSessionResponse`
        def DescribeSession(request)
          body = send_request('DescribeSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询会话空间详情。
        # 查询指定会话空间的详细信息，查询成功后返回会话空间的名称、描述、状态、所属地域及创建时间等信息。

        # @param request: Request instance for DescribeSessionSpace.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeSessionSpaceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeSessionSpaceResponse`
        def DescribeSessionSpace(request)
          body = send_request('DescribeSessionSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionSpaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询当前应用和地域下的会话空间。

        # @param request: Request instance for DescribeSessionSpaces.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeSessionSpacesRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeSessionSpacesResponse`
        def DescribeSessionSpaces(request)
          body = send_request('DescribeSessionSpaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionSpacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询会话列表

        # @param request: Request instance for DescribeSessions.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeSessionsRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeSessionsResponse`
        def DescribeSessions(request)
          body = send_request('DescribeSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 Skill 包下载 URL。VersionId 与 Label 互斥；均省略时使用 Stable。响应包含 ResolvedVersionId，便于调用方回填。

        # @param request: Request instance for GetSkillPackageDownloadURL.
        # @type request: :class:`Tencentcloud::ags::V20250920::GetSkillPackageDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::GetSkillPackageDownloadURLResponse`
        def GetSkillPackageDownloadURL(request)
          body = send_request('GetSkillPackageDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSkillPackageDownloadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为 FAILED / EXPIRED 的 TAR Skill Version 生成新的上传尝试；VersionId 与 Revision 保持不变。

        # @param request: Request instance for GetSkillPackageUploadURL.
        # @type request: :class:`Tencentcloud::ags::V20250920::GetSkillPackageUploadURLRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::GetSkillPackageUploadURLResponse`
        def GetSkillPackageUploadURL(request)
          body = send_request('GetSkillPackageUploadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSkillPackageUploadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 Deployment

        # @param request: Request instance for ModifyDeployment.
        # @type request: :class:`Tencentcloud::ags::V20250920::ModifyDeploymentRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::ModifyDeploymentResponse`
        def ModifyDeployment(request)
          body = send_request('ModifyDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改会话信息

        # @param request: Request instance for ModifySession.
        # @type request: :class:`Tencentcloud::ags::V20250920::ModifySessionRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::ModifySessionResponse`
        def ModifySession(request)
          body = send_request('ModifySession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改会话空间。
        # 修改指定会话空间的名称和描述，修改成功后返回更新后的会话空间信息。默认会话空间允许修改名称和描述。

        # @param request: Request instance for ModifySessionSpace.
        # @type request: :class:`Tencentcloud::ags::V20250920::ModifySessionSpaceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::ModifySessionSpaceResponse`
        def ModifySessionSpace(request)
          body = send_request('ModifySessionSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySessionSpaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停沙箱实例

        # @param request: Request instance for PauseSandboxInstance.
        # @type request: :class:`Tencentcloud::ags::V20250920::PauseSandboxInstanceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::PauseSandboxInstanceResponse`
        def PauseSandboxInstance(request)
          body = send_request('PauseSandboxInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseSandboxInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对 Record 的指定 Version 或 Label 目标发起一次预览调用。VersionId 与 Label 互斥；均省略时使用 Stable。不创建 Version、不修改 Label。

        # @param request: Request instance for PreviewRegistryRecord.
        # @type request: :class:`Tencentcloud::ags::V20250920::PreviewRegistryRecordRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::PreviewRegistryRecordResponse`
        def PreviewRegistryRecord(request)
          body = send_request('PreviewRegistryRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PreviewRegistryRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 驳回 Version 审批：PENDING_APPROVAL → REJECTED。Comment 必填。

        # @param request: Request instance for RejectRegistryRecord.
        # @type request: :class:`Tencentcloud::ags::V20250920::RejectRegistryRecordRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::RejectRegistryRecordResponse`
        def RejectRegistryRecord(request)
          body = send_request('RejectRegistryRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RejectRegistryRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复沙箱实例

        # @param request: Request instance for ResumeSandboxInstance.
        # @type request: :class:`Tencentcloud::ags::V20250920::ResumeSandboxInstanceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::ResumeSandboxInstanceResponse`
        def ResumeSandboxInstance(request)
          body = send_request('ResumeSandboxInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeSandboxInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动沙箱实例

        # @param request: Request instance for StartSandboxInstance.
        # @type request: :class:`Tencentcloud::ags::V20250920::StartSandboxInstanceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::StartSandboxInstanceResponse`
        def StartSandboxInstance(request)
          body = send_request('StartSandboxInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartSandboxInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止沙箱实例

        # @param request: Request instance for StopSandboxInstance.
        # @type request: :class:`Tencentcloud::ags::V20250920::StopSandboxInstanceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::StopSandboxInstanceResponse`
        def StopSandboxInstance(request)
          body = send_request('StopSandboxInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopSandboxInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 触发一次从远端拉取描述符 / 元数据的同步。可通过互斥的 VersionId 或 Label 指定来源 Version，均省略时默认使用 Stable。有变化时创建新 Version 并移动 Latest；来源必须 SourceType=URL_IMPORT，否则返回 UnsupportedOperation.SourceType。

        # @param request: Request instance for SyncRegistryRecord.
        # @type request: :class:`Tencentcloud::ags::V20250920::SyncRegistryRecordRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::SyncRegistryRecordResponse`
        def SyncRegistryRecord(request)
          body = send_request('SyncRegistryRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncRegistryRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新 Registry 的可变元数据。

        # @param request: Request instance for UpdateRegistry.
        # @type request: :class:`Tencentcloud::ags::V20250920::UpdateRegistryRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::UpdateRegistryResponse`
        def UpdateRegistry(request)
          body = send_request('UpdateRegistry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRegistryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新 Registry Record。两种互斥模式：①Record 更新模式：不提交任何 Source / CustomDescriptors，可通过 Description、LabelMutations 修改元数据与 Label（至少提交一项）；②Version 创建模式：提交且仅提交一种与现有 DescriptorType 匹配的内容输入，可选 VersionName / ChangeLog，禁止 Description / LabelMutations，服务端在 Record 下创建下一个 Revision。取代原 ChangeRegistryRecordStableVersion / RollbackRegistryRecordVersion / Create*RegistryRecordVersion。

        # @param request: Request instance for UpdateRegistryRecord.
        # @type request: :class:`Tencentcloud::ags::V20250920::UpdateRegistryRecordRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::UpdateRegistryRecordResponse`
        def UpdateRegistryRecord(request)
          body = send_request('UpdateRegistryRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRegistryRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新沙箱实例

        # @param request: Request instance for UpdateSandboxInstance.
        # @type request: :class:`Tencentcloud::ags::V20250920::UpdateSandboxInstanceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::UpdateSandboxInstanceResponse`
        def UpdateSandboxInstance(request)
          body = send_request('UpdateSandboxInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSandboxInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新沙箱工具

        # @param request: Request instance for UpdateSandboxTool.
        # @type request: :class:`Tencentcloud::ags::V20250920::UpdateSandboxToolRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::UpdateSandboxToolResponse`
        def UpdateSandboxTool(request)
          body = send_request('UpdateSandboxTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSandboxToolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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