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
  module Dataagent
    module V20250513
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-05-13'
            api_endpoint = 'dataagent.tencentcloudapi.com'
            sdk_version = 'DATAAGENT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 文档切片新增

        # @param request: Request instance for AddChunk.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::AddChunkRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::AddChunkResponse`
        def AddChunk(request)
          body = send_request('AddChunk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddChunkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提供DataAgent 产品服务API

        # @param request: Request instance for ChatAI.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::ChatAIRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::ChatAIResponse`
        def ChatAI(request)
          body = send_request('ChatAI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChatAIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成DataAgent 会话ID

        # @param request: Request instance for CreateDataAgentSession.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::CreateDataAgentSessionRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::CreateDataAgentSessionResponse`
        def CreateDataAgentSession(request)
          body = send_request('CreateDataAgentSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataAgentSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档切片删除

        # @param request: Request instance for DeleteChunk.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::DeleteChunkRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::DeleteChunkResponse`
        def DeleteChunk(request)
          body = send_request('DeleteChunk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteChunkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteDataAgentSession.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::DeleteDataAgentSessionRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::DeleteDataAgentSessionResponse`
        def DeleteDataAgentSession(request)
          body = send_request('DeleteDataAgentSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDataAgentSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取知识库列表

        # @param request: Request instance for GetKnowledgeBaseList.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::GetKnowledgeBaseListRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::GetKnowledgeBaseListResponse`
        def GetKnowledgeBaseList(request)
          body = send_request('GetKnowledgeBaseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetKnowledgeBaseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户会话记录详情列表

        # @param request: Request instance for GetSessionDetails.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::GetSessionDetailsRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::GetSessionDetailsResponse`
        def GetSessionDetails(request)
          body = send_request('GetSessionDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSessionDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑修改分片

        # @param request: Request instance for ModifyChunk.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::ModifyChunkRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::ModifyChunkResponse`
        def ModifyChunk(request)
          body = send_request('ModifyChunk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyChunkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 操作知识库

        # @param request: Request instance for ModifyKnowledgeBase.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::ModifyKnowledgeBaseRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::ModifyKnowledgeBaseResponse`
        def ModifyKnowledgeBase(request)
          body = send_request('ModifyKnowledgeBase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyKnowledgeBaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分配查询

        # @param request: Request instance for QueryChunkList.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::QueryChunkListRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::QueryChunkListResponse`
        def QueryChunkList(request)
          body = send_request('QueryChunkList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryChunkListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 中断DataAgent的回答输出

        # @param request: Request instance for StopChatAI.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::StopChatAIRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::StopChatAIResponse`
        def StopChatAI(request)
          body = send_request('StopChatAI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopChatAIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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