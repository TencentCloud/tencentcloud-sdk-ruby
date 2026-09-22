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
  module Workbuddyenterprise
    module V20260709
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2026-07-09'
            api_endpoint = 'workbuddyenterprise.tencentcloudapi.com'
            sdk_version = 'WORKBUDDYENTERPRISE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 把外部 agent 绑定到某 managed agent

        # @param request: Request instance for BindExternalAgent.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::BindExternalAgentRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::BindExternalAgentResponse`
        def BindExternalAgent(request)
          body = send_request('BindExternalAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindExternalAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个新的 Managed Agent，同时自动生成 default 版本。配置采用 Manifest v2.0。

        # @param request: Request instance for CreateAgent.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::CreateAgentRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::CreateAgentResponse`
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

        # 为指定 Agent 创建新的会话，返回会话 ID 和聊天凭证。

        # @param request: Request instance for CreateAgentSession.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::CreateAgentSessionRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::CreateAgentSessionResponse`
        def CreateAgentSession(request)
          body = send_request('CreateAgentSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 完全新建版本：外部准备完整 Manifest 后直接传入，不引用任何已有版本。

        # @param request: Request instance for CreateAgentVersion.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::CreateAgentVersionRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::CreateAgentVersionResponse`
        def CreateAgentVersion(request)
          body = send_request('CreateAgentVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 基于源版本创建新版本：Manifest / Model / Description 传入即整体覆盖，未传则沿用源版本。

        # @param request: Request instance for CreateAgentVersionFromSource.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::CreateAgentVersionFromSourceRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::CreateAgentVersionFromSourceResponse`
        def CreateAgentVersionFromSource(request)
          body = send_request('CreateAgentVersionFromSource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentVersionFromSourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定的 Agent 及其所有版本。删除后不可恢复。

        # @param request: Request instance for DeleteAgent.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DeleteAgentRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DeleteAgentResponse`
        def DeleteAgent(request)
          body = send_request('DeleteAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个 Agent 的详细信息，包括基础配置和路由配置。

        # @param request: Request instance for DescribeAgent.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentResponse`
        def DescribeAgent(request)
          body = send_request('DescribeAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前企业的 Agent 列表，支持分页、过滤和排序。

        # @param request: Request instance for DescribeAgentList.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentListRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentListResponse`
        def DescribeAgentList(request)
          body = send_request('DescribeAgentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个 Agent 会话详情：返回会话基础信息（会话名称 / Agent / 版本 / 状态 / 来源 / 发起人）与可用的聊天接入点列表（EndpointSet）。数据面鉴权走 DescribeUserAccessToken 的用户级访问令牌。

        # @param request: Request instance for DescribeAgentSession.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentSessionRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentSessionResponse`
        def DescribeAgentSession(request)
          body = send_request('DescribeAgentSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询企业下所有会话（跨 Agent）：支持按 SessionId / Status / AgentId / UserId 过滤，按创建 / 更新时间排序，返回会话摘要列表。

        # @param request: Request instance for DescribeAgentSessionList.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentSessionListRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentSessionListResponse`
        def DescribeAgentSessionList(request)
          body = send_request('DescribeAgentSessionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentSessionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个版本的详细信息，包括 Manifest、Model、状态等。

        # @param request: Request instance for DescribeAgentVersion.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentVersionRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentVersionResponse`
        def DescribeAgentVersion(request)
          body = send_request('DescribeAgentVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定 Agent 下的版本列表，支持分页和版本类型过滤。

        # @param request: Request instance for DescribeAgentVersionList.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentVersionListRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeAgentVersionListResponse`
        def DescribeAgentVersionList(request)
          body = send_request('DescribeAgentVersionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentVersionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前企业的内置模型列表，支持分页与过滤。内置模型由平台预置，企业可按需启用/停用。过滤字段支持：ModelId（模型ID，模糊）、Name（模型名称，模糊）、Vendor（供应商，模糊）、Status（状态，精确：enabled/disabled）。

        # @param request: Request instance for DescribeBuiltinModelList.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeBuiltinModelListRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeBuiltinModelListResponse`
        def DescribeBuiltinModelList(request)
          body = send_request('DescribeBuiltinModelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBuiltinModelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定企业下的连接器列表（PageNumber/PageSize 分页，支持名称模糊与状态、来源过滤）。

        # @param request: Request instance for DescribeConnectorList.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeConnectorListRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeConnectorListResponse`
        def DescribeConnectorList(request)
          body = send_request('DescribeConnectorList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConnectorListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询 Expert 列表，支持关键词、分类、发布状态过滤。

        # @param request: Request instance for DescribeExpertList.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeExpertListRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeExpertListResponse`
        def DescribeExpertList(request)
          body = send_request('DescribeExpertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExpertListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某 managed agent 绑定的单个外部 agent 详情

        # @param request: Request instance for DescribeExternalAgent.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeExternalAgentRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeExternalAgentResponse`
        def DescribeExternalAgent(request)
          body = send_request('DescribeExternalAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExternalAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列某 managed agent 绑定的外部 agent 列表

        # @param request: Request instance for DescribeExternalAgentList.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeExternalAgentListRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeExternalAgentListResponse`
        def DescribeExternalAgentList(request)
          body = send_request('DescribeExternalAgentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExternalAgentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按 Session 分页查询消息事件

        # @param request: Request instance for DescribeMessageEventList.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeMessageEventListRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeMessageEventListResponse`
        def DescribeMessageEventList(request)
          body = send_request('DescribeMessageEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMessageEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询 Skill 列表，支持关键词、分类、发布状态过滤。

        # @param request: Request instance for DescribeSkillList.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeSkillListRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::DescribeSkillListResponse`
        def DescribeSkillList(request)
          body = send_request('DescribeSkillList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSkillListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将指定会话迁移到目标版本。SessionID / RuntimeID 保持不变，通过 AgentOS UpdateSession 在原沙箱上更新 manifest 到新版本；AgentId 必须与原 Session 一致（禁止跨 Agent 迁移）；ChatToken 复用旧值不轮转。

        # @param request: Request instance for MigrateAgentSession.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::MigrateAgentSessionRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::MigrateAgentSessionResponse`
        def MigrateAgentSession(request)
          body = send_request('MigrateAgentSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MigrateAgentSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 Agent 基础信息（名称、描述、头像）。AgentName / Description / AvatarUrl 均为可选，仅传递需要更新的字段。

        # @param request: Request instance for ModifyAgent.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::ModifyAgentRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::ModifyAgentResponse`
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

        # 修改 Agent 的 A2A 配置。A2AEnabled 是 Agent 级唯一开关，与具体版本和流量分发策略无关。

        # @param request: Request instance for ModifyAgentA2AConfig.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::ModifyAgentA2AConfigRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::ModifyAgentA2AConfigResponse`
        def ModifyAgentA2AConfig(request)
          body = send_request('ModifyAgentA2AConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentA2AConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 覆盖式写入 Agent 路由配置（版本权重）。所有 VersionId 必须属于同一 Agent 且未弃用；允许空数组（下线 Agent 对外流量）；非空时权重总和须等于 1。

        # @param request: Request instance for ModifyAgentRouting.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::ModifyAgentRoutingRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::ModifyAgentRoutingResponse`
        def ModifyAgentRouting(request)
          body = send_request('ModifyAgentRouting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentRoutingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 原地更新 default 或 test 版本的 Manifest / Model / Description / SandboxTemplateId / ConnectorSet（prod 版本冻结不可修改），五个可选字段至少提供一个。ConnectorSet 为全量覆盖语义：缺省表示不改动连接器绑定；空数组表示解绑全部连接器。

        # @param request: Request instance for ModifyAgentVersion.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::ModifyAgentVersionRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::ModifyAgentVersionResponse`
        def ModifyAgentVersion(request)
          body = send_request('ModifyAgentVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解除外部 agent 与 managed agent 的绑定

        # @param request: Request instance for UnbindExternalAgent.
        # @type request: :class:`Tencentcloud::workbuddyenterprise::V20260709::UnbindExternalAgentRequest`
        # @rtype: :class:`Tencentcloud::workbuddyenterprise::V20260709::UnbindExternalAgentResponse`
        def UnbindExternalAgent(request)
          body = send_request('UnbindExternalAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindExternalAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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