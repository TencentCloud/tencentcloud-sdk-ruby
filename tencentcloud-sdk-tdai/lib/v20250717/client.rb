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
  module Tdai
    module V20250717
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-07-17'
            api_endpoint = 'tdai.tencentcloudapi.com'
            sdk_version = 'TDAI_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（ContinueAgentWork）用于重启智能体实例的值守任务，通常在用户需要重启时使用。

        # @param request: Request instance for ContinueAgentWork.
        # @type request: :class:`Tencentcloud::tdai::V20250717::ContinueAgentWorkRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::ContinueAgentWorkResponse`
        def ContinueAgentWork(request)
          body = send_request('ContinueAgentWork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ContinueAgentWorkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateAgentInstance）用于创建一个智能体实例，通常在用户购买一个智能体实例时使用。

        # @param request: Request instance for CreateAgentInstance.
        # @type request: :class:`Tencentcloud::tdai::V20250717::CreateAgentInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::CreateAgentInstanceResponse`
        def CreateAgentInstance(request)
          body = send_request('CreateAgentInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建一次会话的SSE接口

        # @param request: Request instance for CreateChatCompletion.
        # @type request: :class:`Tencentcloud::tdai::V20250717::CreateChatCompletionRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::CreateChatCompletionResponse`
        def CreateChatCompletion(request)
          body = send_request('CreateChatCompletion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateChatCompletionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询智能体值守任务详情

        # @param request: Request instance for DescribeAgentDutyTaskDetail.
        # @type request: :class:`Tencentcloud::tdai::V20250717::DescribeAgentDutyTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::DescribeAgentDutyTaskDetailResponse`
        def DescribeAgentDutyTaskDetail(request)
          body = send_request('DescribeAgentDutyTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentDutyTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询智能体值守任务列表

        # @param request: Request instance for DescribeAgentDutyTasks.
        # @type request: :class:`Tencentcloud::tdai::V20250717::DescribeAgentDutyTasksRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::DescribeAgentDutyTasksResponse`
        def DescribeAgentDutyTasks(request)
          body = send_request('DescribeAgentDutyTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentDutyTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAgentInstance）用于查询智能体实例详情，通常在用户查询所购买的所有智能体实例详情时使用。

        # @param request: Request instance for DescribeAgentInstance.
        # @type request: :class:`Tencentcloud::tdai::V20250717::DescribeAgentInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::DescribeAgentInstanceResponse`
        def DescribeAgentInstance(request)
          body = send_request('DescribeAgentInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAgentInstances）用于查询智能体实例列表，通常在用户查询所购买的所有智能体列表。

        # @param request: Request instance for DescribeAgentInstances.
        # @type request: :class:`Tencentcloud::tdai::V20250717::DescribeAgentInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::DescribeAgentInstancesResponse`
        def DescribeAgentInstances(request)
          body = send_request('DescribeAgentInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAgents）用于查询智能体列表，通常在用户查询所购买的所有智能体列表。

        # @param request: Request instance for DescribeAgents.
        # @type request: :class:`Tencentcloud::tdai::V20250717::DescribeAgentsRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::DescribeAgentsResponse`
        def DescribeAgents(request)
          body = send_request('DescribeAgents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeChatDetail）用于查询对话详情，通常在用户查询会话的历史记录时使用。

        # @param request: Request instance for DescribeChatDetail.
        # @type request: :class:`Tencentcloud::tdai::V20250717::DescribeChatDetailRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::DescribeChatDetailResponse`
        def DescribeChatDetail(request)
          body = send_request('DescribeChatDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChatDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeChats）用于查询对话列表，通常在用户查询会话列表时使用。

        # @param request: Request instance for DescribeChats.
        # @type request: :class:`Tencentcloud::tdai::V20250717::DescribeChatsRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::DescribeChatsResponse`
        def DescribeChats(request)
          body = send_request('DescribeChats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智能体报告地址生成并下载

        # @param request: Request instance for DescribeReportUrl.
        # @type request: :class:`Tencentcloud::tdai::V20250717::DescribeReportUrlRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::DescribeReportUrlResponse`
        def DescribeReportUrl(request)
          body = send_request('DescribeReportUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReportUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（IsolateAgentInstance）用于隔离智能体实例，通常在用户需要隔离智能体实例时使用。

        # @param request: Request instance for IsolateAgentInstance.
        # @type request: :class:`Tencentcloud::tdai::V20250717::IsolateAgentInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::IsolateAgentInstanceResponse`
        def IsolateAgentInstance(request)
          body = send_request('IsolateAgentInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateAgentInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyAgentInstanceParameters）用于修改智能体实例的参数列表，通常在用户需要配置智能体实例时使用。

        # @param request: Request instance for ModifyAgentInstanceParameters.
        # @type request: :class:`Tencentcloud::tdai::V20250717::ModifyAgentInstanceParametersRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::ModifyAgentInstanceParametersResponse`
        def ModifyAgentInstanceParameters(request)
          body = send_request('ModifyAgentInstanceParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentInstanceParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyChatTitle）用于修改会话标题，通常在用户修改会话标题时使用。

        # @param request: Request instance for ModifyChatTitle.
        # @type request: :class:`Tencentcloud::tdai::V20250717::ModifyChatTitleRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::ModifyChatTitleResponse`
        def ModifyChatTitle(request)
          body = send_request('ModifyChatTitle', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyChatTitleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（PauseAgentWork）用于暂停智能体实例的值守任务，通常在用户需要暂停时使用。

        # @param request: Request instance for PauseAgentWork.
        # @type request: :class:`Tencentcloud::tdai::V20250717::PauseAgentWorkRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::PauseAgentWorkResponse`
        def PauseAgentWork(request)
          body = send_request('PauseAgentWork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseAgentWorkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RecoverAgentInstance）用于解隔离智能体实例，通常在用户需要解隔离智能体实例时使用。

        # @param request: Request instance for RecoverAgentInstance.
        # @type request: :class:`Tencentcloud::tdai::V20250717::RecoverAgentInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::RecoverAgentInstanceResponse`
        def RecoverAgentInstance(request)
          body = send_request('RecoverAgentInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverAgentInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RemoveChat）用于删除会话，通常在用户删除会话时使用。

        # @param request: Request instance for RemoveChat.
        # @type request: :class:`Tencentcloud::tdai::V20250717::RemoveChatRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::RemoveChatResponse`
        def RemoveChat(request)
          body = send_request('RemoveChat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveChatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（TerminateAgentInstance）用于下线智能体实例，通常在用户需要下线智能体实例时使用。

        # @param request: Request instance for TerminateAgentInstance.
        # @type request: :class:`Tencentcloud::tdai::V20250717::TerminateAgentInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdai::V20250717::TerminateAgentInstanceResponse`
        def TerminateAgentInstance(request)
          body = send_request('TerminateAgentInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateAgentInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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