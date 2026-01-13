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

        # 新增场景

        # @param request: Request instance for AddScene.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::AddSceneRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::AddSceneResponse`
        def AddScene(request)
          body = send_request('AddScene', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddSceneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除场景

        # @param request: Request instance for DeleteScene.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::DeleteSceneRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::DeleteSceneResponse`
        def DeleteScene(request)
          body = send_request('DeleteScene', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSceneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据知识库id查询jobs 列表

        # @param request: Request instance for GetJobsByKnowledgeBaseId.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::GetJobsByKnowledgeBaseIdRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::GetJobsByKnowledgeBaseIdResponse`
        def GetJobsByKnowledgeBaseId(request)
          body = send_request('GetJobsByKnowledgeBaseId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetJobsByKnowledgeBaseIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取知识库文件信息列表

        # @param request: Request instance for GetKnowledgeBaseFileList.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::GetKnowledgeBaseFileListRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::GetKnowledgeBaseFileListResponse`
        def GetKnowledgeBaseFileList(request)
          body = send_request('GetKnowledgeBaseFileList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetKnowledgeBaseFileListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询上传任务

        # @param request: Request instance for GetUploadJobDetails.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::GetUploadJobDetailsRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::GetUploadJobDetailsResponse`
        def GetUploadJobDetails(request)
          body = send_request('GetUploadJobDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUploadJobDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改对象权限

        # @param request: Request instance for ModifyUserAuthority.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::ModifyUserAuthorityRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::ModifyUserAuthorityResponse`
        def ModifyUserAuthority(request)
          body = send_request('ModifyUserAuthority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserAuthorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档切片查询

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

        # 查询场景列表

        # @param request: Request instance for QuerySceneList.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::QuerySceneListRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::QuerySceneListResponse`
        def QuerySceneList(request)
          body = send_request('QuerySceneList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QuerySceneListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询对象权限

        # @param request: Request instance for QueryUserAuthority.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::QueryUserAuthorityRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::QueryUserAuthorityResponse`
        def QueryUserAuthority(request)
          body = send_request('QueryUserAuthority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryUserAuthorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 更新场景

        # @param request: Request instance for UpdateScene.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::UpdateSceneRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::UpdateSceneResponse`
        def UpdateScene(request)
          body = send_request('UpdateScene', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSceneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上传提交文件

        # @param request: Request instance for UploadAndCommitFile.
        # @type request: :class:`Tencentcloud::dataagent::V20250513::UploadAndCommitFileRequest`
        # @rtype: :class:`Tencentcloud::dataagent::V20250513::UploadAndCommitFileResponse`
        def UploadAndCommitFile(request)
          body = send_request('UploadAndCommitFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadAndCommitFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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