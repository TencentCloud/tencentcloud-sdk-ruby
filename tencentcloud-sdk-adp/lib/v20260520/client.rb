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
  module Adp
    module V20260520
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2026-05-20'
            api_endpoint = 'adp.tencentcloudapi.com'
            sdk_version = 'ADP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建Agent

        # @param request: Request instance for CopyAgentFromApp.
        # @type request: :class:`Tencentcloud::adp::V20260520::CopyAgentFromAppRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CopyAgentFromAppResponse`
        def CopyAgentFromApp(request)
          body = send_request('CopyAgentFromApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyAgentFromAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 复制应用

        # @param request: Request instance for CopyApp.
        # @type request: :class:`Tencentcloud::adp::V20260520::CopyAppRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CopyAppResponse`
        def CopyApp(request)
          body = send_request('CopyApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Agent

        # @param request: Request instance for CreateAgent.
        # @type request: :class:`Tencentcloud::adp::V20260520::CreateAgentRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CreateAgentResponse`
        def CreateAgent(request)
          body = send_request('CreateAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建应用

        # @param request: Request instance for CreateApp.
        # @type request: :class:`Tencentcloud::adp::V20260520::CreateAppRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CreateAppResponse`
        def CreateApp(request)
          body = send_request('CreateApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建会话

        # @param request: Request instance for CreateConversation.
        # @type request: :class:`Tencentcloud::adp::V20260520::CreateConversationRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CreateConversationResponse`
        def CreateConversation(request)
          body = send_request('CreateConversation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConversationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增发布任务

        # @param request: Request instance for CreateRelease.
        # @type request: :class:`Tencentcloud::adp::V20260520::CreateReleaseRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CreateReleaseResponse`
        def CreateRelease(request)
          body = send_request('CreateRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReleaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建空间

        # @param request: Request instance for CreateSpace.
        # @type request: :class:`Tencentcloud::adp::V20260520::CreateSpaceRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CreateSpaceResponse`
        def CreateSpace(request)
          body = send_request('CreateSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSpaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建参数变量

        # @param request: Request instance for CreateVariable.
        # @type request: :class:`Tencentcloud::adp::V20260520::CreateVariableRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CreateVariableResponse`
        def CreateVariable(request)
          body = send_request('CreateVariable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVariableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 WebSocket Token

        # @param request: Request instance for CreateWebSocketToken.
        # @type request: :class:`Tencentcloud::adp::V20260520::CreateWebSocketTokenRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CreateWebSocketTokenResponse`
        def CreateWebSocketToken(request)
          body = send_request('CreateWebSocketToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWebSocketTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建工作空间凭证

        # @param request: Request instance for CreateWorkspaceCredential.
        # @type request: :class:`Tencentcloud::adp::V20260520::CreateWorkspaceCredentialRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::CreateWorkspaceCredentialResponse`
        def CreateWorkspaceCredential(request)
          body = send_request('CreateWorkspaceCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkspaceCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除应用

        # @param request: Request instance for DeleteApp.
        # @type request: :class:`Tencentcloud::adp::V20260520::DeleteAppRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DeleteAppResponse`
        def DeleteApp(request)
          body = send_request('DeleteApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteConversation.
        # @type request: :class:`Tencentcloud::adp::V20260520::DeleteConversationRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DeleteConversationResponse`
        def DeleteConversation(request)
          body = send_request('DeleteConversation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConversationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除空间

        # @param request: Request instance for DeleteSpace.
        # @type request: :class:`Tencentcloud::adp::V20260520::DeleteSpaceRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DeleteSpaceResponse`
        def DeleteSpace(request)
          body = send_request('DeleteSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSpaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除参数变量

        # @param request: Request instance for DeleteVariable.
        # @type request: :class:`Tencentcloud::adp::V20260520::DeleteVariableRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DeleteVariableResponse`
        def DeleteVariable(request)
          body = send_request('DeleteVariable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVariableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Agent 详情

        # @param request: Request instance for DescribeAgentDetail.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeAgentDetailRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeAgentDetailResponse`
        def DescribeAgentDetail(request)
          body = send_request('DescribeAgentDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用下 Agent 的发布预览列表

        # @param request: Request instance for DescribeAgentReleasePreviewList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeAgentReleasePreviewListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeAgentReleasePreviewListResponse`
        def DescribeAgentReleasePreviewList(request)
          body = send_request('DescribeAgentReleasePreviewList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentReleasePreviewListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用信息

        # @param request: Request instance for DescribeApp.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeAppRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeAppResponse`
        def DescribeApp(request)
          body = send_request('DescribeApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用摘要列表

        # @param request: Request instance for DescribeAppSummaryList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeAppSummaryListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeAppSummaryListResponse`
        def DescribeAppSummaryList(request)
          body = send_request('DescribeAppSummaryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppSummaryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看会话信息

        # @param request: Request instance for DescribeConversation.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeConversationRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeConversationResponse`
        def DescribeConversation(request)
          body = send_request('DescribeConversation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConversationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取会话列表

        # @param request: Request instance for DescribeConversationList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeConversationListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeConversationListResponse`
        def DescribeConversationList(request)
          body = send_request('DescribeConversationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConversationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取会话历史消息

        # @param request: Request instance for DescribeConversationMessageList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeConversationMessageListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeConversationMessageListResponse`
        def DescribeConversationMessageList(request)
          body = send_request('DescribeConversationMessageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConversationMessageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取最新发布信息(包含发布时间、状态、渠道)

        # @param request: Request instance for DescribeLatestRelease.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeLatestReleaseRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeLatestReleaseResponse`
        def DescribeLatestRelease(request)
          body = send_request('DescribeLatestRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLatestReleaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询模型列表

        # @param request: Request instance for DescribeModelList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeModelListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeModelListResponse`
        def DescribeModelList(request)
          body = send_request('DescribeModelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取插件详情

        # @param request: Request instance for DescribePlugin.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribePluginRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribePluginResponse`
        def DescribePlugin(request)
          body = send_request('DescribePlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取插件列表

        # @param request: Request instance for DescribePluginSummaryList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribePluginSummaryListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribePluginSummaryListResponse`
        def DescribePluginSummaryList(request)
          body = send_request('DescribePluginSummaryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePluginSummaryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布记录列表

        # @param request: Request instance for DescribeReleaseList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeReleaseListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeReleaseListResponse`
        def DescribeReleaseList(request)
          body = send_request('DescribeReleaseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReleaseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询发布任务

        # @param request: Request instance for DescribeReleaseSummary.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeReleaseSummaryRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeReleaseSummaryResponse`
        def DescribeReleaseSummary(request)
          body = send_request('DescribeReleaseSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReleaseSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Skill 分类列表

        # @param request: Request instance for DescribeSkillCategoryList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeSkillCategoryListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeSkillCategoryListResponse`
        def DescribeSkillCategoryList(request)
          body = send_request('DescribeSkillCategoryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSkillCategoryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Skill 列表

        # @param request: Request instance for DescribeSkillSummaryList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeSkillSummaryListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeSkillSummaryListResponse`
        def DescribeSkillSummaryList(request)
          body = send_request('DescribeSkillSummaryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSkillSummaryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取空间列表

        # @param request: Request instance for DescribeSpaceList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeSpaceListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeSpaceListResponse`
        def DescribeSpaceList(request)
          body = send_request('DescribeSpaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取系统变量

        # @param request: Request instance for DescribeSystemVariableList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeSystemVariableListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeSystemVariableListResponse`
        def DescribeSystemVariableList(request)
          body = send_request('DescribeSystemVariableList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSystemVariableListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取参数变量

        # @param request: Request instance for DescribeVariable.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeVariableRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeVariableResponse`
        def DescribeVariable(request)
          body = send_request('DescribeVariable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVariableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取参数变量列表

        # @param request: Request instance for DescribeVariableList.
        # @type request: :class:`Tencentcloud::adp::V20260520::DescribeVariableListRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::DescribeVariableListResponse`
        def DescribeVariableList(request)
          body = send_request('DescribeVariableList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVariableListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Agent配置信息

        # @param request: Request instance for ModifyAgent.
        # @type request: :class:`Tencentcloud::adp::V20260520::ModifyAgentRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::ModifyAgentResponse`
        def ModifyAgent(request)
          body = send_request('ModifyAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改应用

        # @param request: Request instance for ModifyApp.
        # @type request: :class:`Tencentcloud::adp::V20260520::ModifyAppRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::ModifyAppResponse`
        def ModifyApp(request)
          body = send_request('ModifyApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ModifyConversation.
        # @type request: :class:`Tencentcloud::adp::V20260520::ModifyConversationRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::ModifyConversationResponse`
        def ModifyConversation(request)
          body = send_request('ModifyConversation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConversationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑空间

        # @param request: Request instance for ModifySpace.
        # @type request: :class:`Tencentcloud::adp::V20260520::ModifySpaceRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::ModifySpaceResponse`
        def ModifySpace(request)
          body = send_request('ModifySpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySpaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新参数变量

        # @param request: Request instance for ModifyVariable.
        # @type request: :class:`Tencentcloud::adp::V20260520::ModifyVariableRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::ModifyVariableResponse`
        def ModifyVariable(request)
          body = send_request('ModifyVariable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVariableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置会话

        # @param request: Request instance for ResetConversation.
        # @type request: :class:`Tencentcloud::adp::V20260520::ResetConversationRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::ResetConversationResponse`
        def ResetConversation(request)
          body = send_request('ResetConversation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetConversationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重试发布(发布暂停之后再次重新发布)

        # @param request: Request instance for RetryRelease.
        # @type request: :class:`Tencentcloud::adp::V20260520::RetryReleaseRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::RetryReleaseResponse`
        def RetryRelease(request)
          body = send_request('RetryRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryReleaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回滚发布

        # @param request: Request instance for RollbackRelease.
        # @type request: :class:`Tencentcloud::adp::V20260520::RollbackReleaseRequest`
        # @rtype: :class:`Tencentcloud::adp::V20260520::RollbackReleaseResponse`
        def RollbackRelease(request)
          body = send_request('RollbackRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackReleaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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