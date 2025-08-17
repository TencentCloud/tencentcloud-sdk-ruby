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
  module Lke
    module V20231130
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-11-30'
            api_endpoint = 'lke.tencentcloudapi.com'
            sdk_version = 'LKE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 检查属性下的标签名是否存在

        # @param request: Request instance for CheckAttributeLabelExist.
        # @type request: :class:`Tencentcloud::lke::V20231130::CheckAttributeLabelExistRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CheckAttributeLabelExistResponse`
        def CheckAttributeLabelExist(request)
          body = send_request('CheckAttributeLabelExist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckAttributeLabelExistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查属性标签引用

        # @param request: Request instance for CheckAttributeLabelRefer.
        # @type request: :class:`Tencentcloud::lke::V20231130::CheckAttributeLabelReferRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CheckAttributeLabelReferResponse`
        def CheckAttributeLabelRefer(request)
          body = send_request('CheckAttributeLabelRefer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckAttributeLabelReferResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 你创建一个Agent

        # @param request: Request instance for CreateAgent.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateAgentRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateAgentResponse`
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

        # 创建知识引擎应用。

        # @param request: Request instance for CreateApp.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateAppRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateAppResponse`
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

        # 创建标签

        # @param request: Request instance for CreateAttributeLabel.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateAttributeLabelRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateAttributeLabelResponse`
        def CreateAttributeLabel(request)
          body = send_request('CreateAttributeLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAttributeLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Doc分类

        # @param request: Request instance for CreateDocCate.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateDocCateRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateDocCateResponse`
        def CreateDocCate(request)
          body = send_request('CreateDocCate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDocCateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 录入问答

        # @param request: Request instance for CreateQA.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateQARequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateQAResponse`
        def CreateQA(request)
          body = send_request('CreateQA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateQAResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建QA分类

        # @param request: Request instance for CreateQACate.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateQACateRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateQACateResponse`
        def CreateQACate(request)
          body = send_request('CreateQACate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateQACateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建拒答问题

        # @param request: Request instance for CreateRejectedQuestion.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateRejectedQuestionRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateRejectedQuestionResponse`
        def CreateRejectedQuestion(request)
          body = send_request('CreateRejectedQuestion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRejectedQuestionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建发布

        # @param request: Request instance for CreateRelease.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateReleaseRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateReleaseResponse`
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

        # 创建共享知识库。

        # @param request: Request instance for CreateSharedKnowledge.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateSharedKnowledgeRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateSharedKnowledgeResponse`
        def CreateSharedKnowledge(request)
          body = send_request('CreateSharedKnowledge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSharedKnowledgeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建变量

        # @param request: Request instance for CreateVar.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateVarRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateVarResponse`
        def CreateVar(request)
          body = send_request('CreateVar', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVarResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来创建工作流的异步运行实例，创建成功后工作流会在后台异步运行，接口返回工作流运行实例ID（WorkflowRunId）等信息。后面可通过调用DescribeWorkflowRun接口查工作流运行的详情。
        # 注意：工作流的异步运行是基于应用的，需要先把对应的应用配置成“单工作流模式”，并且打开“异步调用”的开关，才能创建成功。

        # @param request: Request instance for CreateWorkflowRun.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateWorkflowRunRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateWorkflowRunResponse`
        def CreateWorkflowRun(request)
          body = send_request('CreateWorkflowRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkflowRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Agent

        # @param request: Request instance for DeleteAgent.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteAgentRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteAgentResponse`
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

        # 删除应用

        # @param request: Request instance for DeleteApp.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteAppRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteAppResponse`
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

        # 删除属性标签

        # @param request: Request instance for DeleteAttributeLabel.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteAttributeLabelRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteAttributeLabelResponse`
        def DeleteAttributeLabel(request)
          body = send_request('DeleteAttributeLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAttributeLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除文档

        # @param request: Request instance for DeleteDoc.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteDocRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteDocResponse`
        def DeleteDoc(request)
          body = send_request('DeleteDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Doc分类删除

        # @param request: Request instance for DeleteDocCate.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteDocCateRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteDocCateResponse`
        def DeleteDocCate(request)
          body = send_request('DeleteDocCate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDocCateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除问答

        # @param request: Request instance for DeleteQA.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteQARequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteQAResponse`
        def DeleteQA(request)
          body = send_request('DeleteQA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteQAResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分类删除

        # @param request: Request instance for DeleteQACate.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteQACateRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteQACateResponse`
        def DeleteQACate(request)
          body = send_request('DeleteQACate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteQACateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除拒答问题

        # @param request: Request instance for DeleteRejectedQuestion.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteRejectedQuestionRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteRejectedQuestionResponse`
        def DeleteRejectedQuestion(request)
          body = send_request('DeleteRejectedQuestion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRejectedQuestionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除共享知识库。

        # @param request: Request instance for DeleteSharedKnowledge.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteSharedKnowledgeRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteSharedKnowledgeResponse`
        def DeleteSharedKnowledge(request)
          body = send_request('DeleteSharedKnowledge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSharedKnowledgeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除变量

        # @param request: Request instance for DeleteVar.
        # @type request: :class:`Tencentcloud::lke::V20231130::DeleteVarRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DeleteVarResponse`
        def DeleteVar(request)
          body = send_request('DeleteVar', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVarResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取企业下应用详情

        # @param request: Request instance for DescribeApp.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeAppRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeAppResponse`
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

        # 查询指定应用下的Agent列表

        # @param request: Request instance for DescribeAppAgentList.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeAppAgentListRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeAppAgentListResponse`
        def DescribeAppAgentList(request)
          body = send_request('DescribeAppAgentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppAgentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询属性标签详情

        # @param request: Request instance for DescribeAttributeLabel.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeAttributeLabelRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeAttributeLabelResponse`
        def DescribeAttributeLabel(request)
          body = send_request('DescribeAttributeLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttributeLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口调用折线图

        # @param request: Request instance for DescribeCallStatsGraph.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeCallStatsGraphRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeCallStatsGraphResponse`
        def DescribeCallStatsGraph(request)
          body = send_request('DescribeCallStatsGraph', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCallStatsGraphResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 并发调用响应

        # @param request: Request instance for DescribeConcurrencyUsage.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeConcurrencyUsageRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeConcurrencyUsageResponse`
        def DescribeConcurrencyUsage(request)
          body = send_request('DescribeConcurrencyUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConcurrencyUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 并发调用折线图

        # @param request: Request instance for DescribeConcurrencyUsageGraph.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeConcurrencyUsageGraphRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeConcurrencyUsageGraphResponse`
        def DescribeConcurrencyUsageGraph(request)
          body = send_request('DescribeConcurrencyUsageGraph', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConcurrencyUsageGraphResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档详情

        # @param request: Request instance for DescribeDoc.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeDocRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeDocResponse`
        def DescribeDoc(request)
          body = send_request('DescribeDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询知识库用量

        # @param request: Request instance for DescribeKnowledgeUsage.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeKnowledgeUsageRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeKnowledgeUsageResponse`
        def DescribeKnowledgeUsage(request)
          body = send_request('DescribeKnowledgeUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKnowledgeUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询企业知识库容量饼图

        # @param request: Request instance for DescribeKnowledgeUsagePieGraph.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeKnowledgeUsagePieGraphRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeKnowledgeUsagePieGraphResponse`
        def DescribeKnowledgeUsagePieGraph(request)
          body = send_request('DescribeKnowledgeUsagePieGraph', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKnowledgeUsagePieGraphResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过DescribeWorkflowRun接口获取了工作流异步运行的整体内容，其中包含了基本的节点信息，再通用本接口可查看节点的运行详情（包括输入、输出、日志等）。

        # @param request: Request instance for DescribeNodeRun.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeNodeRunRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeNodeRunResponse`
        def DescribeNodeRun(request)
          body = send_request('DescribeNodeRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodeRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 问答详情

        # @param request: Request instance for DescribeQA.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeQARequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeQAResponse`
        def DescribeQA(request)
          body = send_request('DescribeQA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQAResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取来源详情列表

        # @param request: Request instance for DescribeRefer.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeReferRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeReferResponse`
        def DescribeRefer(request)
          body = send_request('DescribeRefer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReferResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布详情

        # @param request: Request instance for DescribeRelease.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeReleaseRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeReleaseResponse`
        def DescribeRelease(request)
          body = send_request('DescribeRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReleaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取发布按钮状态、最后发布时间

        # @param request: Request instance for DescribeReleaseInfo.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeReleaseInfoRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeReleaseInfoResponse`
        def DescribeReleaseInfo(request)
          body = send_request('DescribeReleaseInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReleaseInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过appKey获取应用业务ID

        # @param request: Request instance for DescribeRobotBizIDByAppKey.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeRobotBizIDByAppKeyRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeRobotBizIDByAppKeyResponse`
        def DescribeRobotBizIDByAppKey(request)
          body = send_request('DescribeRobotBizIDByAppKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRobotBizIDByAppKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询搜索服务调用折线图

        # @param request: Request instance for DescribeSearchStatsGraph.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeSearchStatsGraphRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeSearchStatsGraphResponse`
        def DescribeSearchStatsGraph(request)
          body = send_request('DescribeSearchStatsGraph', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSearchStatsGraphResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取片段详情

        # @param request: Request instance for DescribeSegments.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeSegmentsRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeSegmentsResponse`
        def DescribeSegments(request)
          body = send_request('DescribeSegments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSegmentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询共享知识库。

        # @param request: Request instance for DescribeSharedKnowledge.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeSharedKnowledgeRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeSharedKnowledgeResponse`
        def DescribeSharedKnowledge(request)
          body = send_request('DescribeSharedKnowledge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSharedKnowledgeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取文件上传临时密钥

        # @param request: Request instance for DescribeStorageCredential.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeStorageCredentialRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeStorageCredentialResponse`
        def DescribeStorageCredential(request)
          body = send_request('DescribeStorageCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStorageCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口调用token详情

        # @param request: Request instance for DescribeTokenUsage.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeTokenUsageRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeTokenUsageResponse`
        def DescribeTokenUsage(request)
          body = send_request('DescribeTokenUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口调用token折线图

        # @param request: Request instance for DescribeTokenUsageGraph.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeTokenUsageGraphRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeTokenUsageGraphResponse`
        def DescribeTokenUsageGraph(request)
          body = send_request('DescribeTokenUsageGraph', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenUsageGraphResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取不满意回复上下文

        # @param request: Request instance for DescribeUnsatisfiedReplyContext.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeUnsatisfiedReplyContextRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeUnsatisfiedReplyContextResponse`
        def DescribeUnsatisfiedReplyContext(request)
          body = send_request('DescribeUnsatisfiedReplyContext', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnsatisfiedReplyContextResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建了工作流的异步运行实例后，通过本接口可以查询整体的运行详情。

        # @param request: Request instance for DescribeWorkflowRun.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeWorkflowRunRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeWorkflowRunResponse`
        def DescribeWorkflowRun(request)
          body = send_request('DescribeWorkflowRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkflowRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出属性标签

        # @param request: Request instance for ExportAttributeLabel.
        # @type request: :class:`Tencentcloud::lke::V20231130::ExportAttributeLabelRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ExportAttributeLabelResponse`
        def ExportAttributeLabel(request)
          body = send_request('ExportAttributeLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAttributeLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出QA列表

        # @param request: Request instance for ExportQAList.
        # @type request: :class:`Tencentcloud::lke::V20231130::ExportQAListRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ExportQAListResponse`
        def ExportQAList(request)
          body = send_request('ExportQAList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportQAListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出不满意回复

        # @param request: Request instance for ExportUnsatisfiedReply.
        # @type request: :class:`Tencentcloud::lke::V20231130::ExportUnsatisfiedReplyRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ExportUnsatisfiedReplyResponse`
        def ExportUnsatisfiedReply(request)
          body = send_request('ExportUnsatisfiedReply', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportUnsatisfiedReplyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档生成问答

        # @param request: Request instance for GenerateQA.
        # @type request: :class:`Tencentcloud::lke::V20231130::GenerateQARequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GenerateQAResponse`
        def GenerateQA(request)
          body = send_request('GenerateQA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateQAResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回答类型数据统计

        # @param request: Request instance for GetAnswerTypeDataCount.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetAnswerTypeDataCountRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetAnswerTypeDataCountResponse`
        def GetAnswerTypeDataCount(request)
          body = send_request('GetAnswerTypeDataCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAnswerTypeDataCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取模型列表

        # @param request: Request instance for GetAppKnowledgeCount.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetAppKnowledgeCountRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetAppKnowledgeCountResponse`
        def GetAppKnowledgeCount(request)
          body = send_request('GetAppKnowledgeCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAppKnowledgeCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用密钥

        # @param request: Request instance for GetAppSecret.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetAppSecretRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetAppSecretResponse`
        def GetAppSecret(request)
          body = send_request('GetAppSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAppSecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取文档预览信息

        # @param request: Request instance for GetDocPreview.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetDocPreviewRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetDocPreviewResponse`
        def GetDocPreview(request)
          body = send_request('GetDocPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDocPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 点赞点踩数据统计

        # @param request: Request instance for GetLikeDataCount.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetLikeDataCountRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetLikeDataCountResponse`
        def GetLikeDataCount(request)
          body = send_request('GetLikeDataCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLikeDataCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取聊天历史
        # 根据会话session id获取聊天历史（仅保留180天内的历史对话数据）

        # @param request: Request instance for GetMsgRecord.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetMsgRecordRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetMsgRecordResponse`
        def GetMsgRecord(request)
          body = send_request('GetMsgRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetMsgRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务状态

        # @param request: Request instance for GetTaskStatus.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetTaskStatusResponse`
        def GetTaskStatus(request)
          body = send_request('GetTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询自定义变量列表

        # @param request: Request instance for GetVarList.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetVarListRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetVarListResponse`
        def GetVarList(request)
          body = send_request('GetVarList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetVarListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取ws token

        # @param request: Request instance for GetWsToken.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetWsTokenRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetWsTokenResponse`
        def GetWsToken(request)
          body = send_request('GetWsToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetWsTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Doc分组

        # @param request: Request instance for GroupDoc.
        # @type request: :class:`Tencentcloud::lke::V20231130::GroupDocRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GroupDocResponse`
        def GroupDoc(request)
          body = send_request('GroupDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GroupDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # QA分组

        # @param request: Request instance for GroupQA.
        # @type request: :class:`Tencentcloud::lke::V20231130::GroupQARequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GroupQAResponse`
        def GroupQA(request)
          body = send_request('GroupQA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GroupQAResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 忽略不满意回复

        # @param request: Request instance for IgnoreUnsatisfiedReply.
        # @type request: :class:`Tencentcloud::lke::V20231130::IgnoreUnsatisfiedReplyRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::IgnoreUnsatisfiedReplyResponse`
        def IgnoreUnsatisfiedReply(request)
          body = send_request('IgnoreUnsatisfiedReply', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IgnoreUnsatisfiedReplyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 是否意图转人工

        # @param request: Request instance for IsTransferIntent.
        # @type request: :class:`Tencentcloud::lke::V20231130::IsTransferIntentRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::IsTransferIntentResponse`
        def IsTransferIntent(request)
          body = send_request('IsTransferIntent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsTransferIntentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取企业下应用列表

        # @param request: Request instance for ListApp.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListAppRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListAppResponse`
        def ListApp(request)
          body = send_request('ListApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列表查询知识库容量详情

        # @param request: Request instance for ListAppKnowledgeDetail.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListAppKnowledgeDetailRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListAppKnowledgeDetailResponse`
        def ListAppKnowledgeDetail(request)
          body = send_request('ListAppKnowledgeDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAppKnowledgeDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询属性标签列表

        # @param request: Request instance for ListAttributeLabel.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListAttributeLabelRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListAttributeLabelResponse`
        def ListAttributeLabel(request)
          body = send_request('ListAttributeLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAttributeLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档列表

        # @param request: Request instance for ListDoc.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListDocRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListDocResponse`
        def ListDoc(request)
          body = send_request('ListDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Doc分类

        # @param request: Request instance for ListDocCate.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListDocCateRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListDocCateResponse`
        def ListDocCate(request)
          body = send_request('ListDocCate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDocCateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取模型列表

        # @param request: Request instance for ListModel.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListModelRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListModelResponse`
        def ListModel(request)
          body = send_request('ListModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 问答列表

        # @param request: Request instance for ListQA.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListQARequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListQAResponse`
        def ListQA(request)
          body = send_request('ListQA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListQAResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取QA分类

        # @param request: Request instance for ListQACate.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListQACateRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListQACateResponse`
        def ListQACate(request)
          body = send_request('ListQACate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListQACateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看应用引用了哪些共享知识库，可以看到共享知识库的基础信息，包括名称，id等

        # @param request: Request instance for ListReferShareKnowledge.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListReferShareKnowledgeRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListReferShareKnowledgeResponse`
        def ListReferShareKnowledge(request)
          body = send_request('ListReferShareKnowledge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListReferShareKnowledgeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取拒答问题

        # @param request: Request instance for ListRejectedQuestion.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListRejectedQuestionRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListRejectedQuestionResponse`
        def ListRejectedQuestion(request)
          body = send_request('ListRejectedQuestion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRejectedQuestionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布拒答问题预览

        # @param request: Request instance for ListRejectedQuestionPreview.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListRejectedQuestionPreviewRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListRejectedQuestionPreviewResponse`
        def ListRejectedQuestionPreview(request)
          body = send_request('ListRejectedQuestionPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRejectedQuestionPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布列表

        # @param request: Request instance for ListRelease.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListReleaseRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListReleaseResponse`
        def ListRelease(request)
          body = send_request('ListRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListReleaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布配置项预览

        # @param request: Request instance for ListReleaseConfigPreview.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListReleaseConfigPreviewRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListReleaseConfigPreviewResponse`
        def ListReleaseConfigPreview(request)
          body = send_request('ListReleaseConfigPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListReleaseConfigPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布文档预览

        # @param request: Request instance for ListReleaseDocPreview.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListReleaseDocPreviewRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListReleaseDocPreviewResponse`
        def ListReleaseDocPreview(request)
          body = send_request('ListReleaseDocPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListReleaseDocPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档列表

        # @param request: Request instance for ListReleaseQAPreview.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListReleaseQAPreviewRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListReleaseQAPreviewResponse`
        def ListReleaseQAPreview(request)
          body = send_request('ListReleaseQAPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListReleaseQAPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档生成问答时，可通过该接口获得当前支持生成问答的文档列表，当前不支持xlsx、xls、csv格式的文档生成问答，且文档需处于待发布或已发布状态才可生成问答。

        # @param request: Request instance for ListSelectDoc.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListSelectDocRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListSelectDocResponse`
        def ListSelectDoc(request)
          body = send_request('ListSelectDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSelectDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列举共享知识库。

        # @param request: Request instance for ListSharedKnowledge.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListSharedKnowledgeRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListSharedKnowledgeResponse`
        def ListSharedKnowledge(request)
          body = send_request('ListSharedKnowledge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSharedKnowledgeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询不满意回复列表

        # @param request: Request instance for ListUnsatisfiedReply.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListUnsatisfiedReplyRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListUnsatisfiedReplyResponse`
        def ListUnsatisfiedReply(request)
          body = send_request('ListUnsatisfiedReply', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUnsatisfiedReplyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列表查询单次调用明细

        # @param request: Request instance for ListUsageCallDetail.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListUsageCallDetailRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListUsageCallDetailResponse`
        def ListUsageCallDetail(request)
          body = send_request('ListUsageCallDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUsageCallDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口可查询已创建的所有工作流异步运行实例。

        # @param request: Request instance for ListWorkflowRuns.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListWorkflowRunsRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListWorkflowRunsResponse`
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

        # 修改Agent信息

        # @param request: Request instance for ModifyAgent.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyAgentRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyAgentResponse`
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

        # 修改应用请求结构体

        # @param request: Request instance for ModifyApp.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyAppRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyAppResponse`
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

        # 编辑属性标签

        # @param request: Request instance for ModifyAttributeLabel.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyAttributeLabelRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyAttributeLabelResponse`
        def ModifyAttributeLabel(request)
          body = send_request('ModifyAttributeLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAttributeLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改文档

        # @param request: Request instance for ModifyDoc.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyDocRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyDocResponse`
        def ModifyDoc(request)
          body = send_request('ModifyDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改文档适用范围

        # @param request: Request instance for ModifyDocAttrRange.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyDocAttrRangeRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyDocAttrRangeResponse`
        def ModifyDocAttrRange(request)
          body = send_request('ModifyDocAttrRange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDocAttrRangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Doc分类

        # @param request: Request instance for ModifyDocCate.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyDocCateRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyDocCateResponse`
        def ModifyDocCate(request)
          body = send_request('ModifyDocCate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDocCateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新问答

        # @param request: Request instance for ModifyQA.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyQARequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyQAResponse`
        def ModifyQA(request)
          body = send_request('ModifyQA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyQAResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改问答适用范围

        # @param request: Request instance for ModifyQAAttrRange.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyQAAttrRangeRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyQAAttrRangeResponse`
        def ModifyQAAttrRange(request)
          body = send_request('ModifyQAAttrRange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyQAAttrRangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新QA分类

        # @param request: Request instance for ModifyQACate.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyQACateRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyQACateResponse`
        def ModifyQACate(request)
          body = send_request('ModifyQACate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyQACateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改拒答问题

        # @param request: Request instance for ModifyRejectedQuestion.
        # @type request: :class:`Tencentcloud::lke::V20231130::ModifyRejectedQuestionRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ModifyRejectedQuestionResponse`
        def ModifyRejectedQuestion(request)
          body = send_request('ModifyRejectedQuestion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRejectedQuestionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 点赞点踩消息

        # @param request: Request instance for RateMsgRecord.
        # @type request: :class:`Tencentcloud::lke::V20231130::RateMsgRecordRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::RateMsgRecordResponse`
        def RateMsgRecord(request)
          body = send_request('RateMsgRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RateMsgRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 应用引用共享知识库，可以引用一个或多个，每次都是全量覆盖

        # @param request: Request instance for ReferShareKnowledge.
        # @type request: :class:`Tencentcloud::lke::V20231130::ReferShareKnowledgeRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ReferShareKnowledgeResponse`
        def ReferShareKnowledge(request)
          body = send_request('ReferShareKnowledge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReferShareKnowledgeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档重命名

        # @param request: Request instance for RenameDoc.
        # @type request: :class:`Tencentcloud::lke::V20231130::RenameDocRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::RenameDocResponse`
        def RenameDoc(request)
          body = send_request('RenameDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenameDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档解析重试

        # @param request: Request instance for RetryDocAudit.
        # @type request: :class:`Tencentcloud::lke::V20231130::RetryDocAuditRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::RetryDocAuditResponse`
        def RetryDocAudit(request)
          body = send_request('RetryDocAudit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryDocAuditResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文档解析重试

        # @param request: Request instance for RetryDocParse.
        # @type request: :class:`Tencentcloud::lke::V20231130::RetryDocParseRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::RetryDocParseResponse`
        def RetryDocParse(request)
          body = send_request('RetryDocParse', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryDocParseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布暂停后重试

        # @param request: Request instance for RetryRelease.
        # @type request: :class:`Tencentcloud::lke::V20231130::RetryReleaseRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::RetryReleaseResponse`
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

        # 知识库文档问答保存。
        # 将文件存储到应用的知识库内需要三步：
        # 1.获取临时密钥，参考[接口文档](https://cloud.tencent.com/document/product/1759/105050)。获取临时密钥不同参数组合权限不一样，可参考 [智能体开发平台操作 cos 指南](https://cloud.tencent.com/document/product/1759/116238)
        # 2.调用腾讯云提供的 cos 存储接口，将文件存储到智能体开发平台 cos 中：具体可参考[ COS SDK 概览](https://cloud.tencent.com/document/product/436/6474), 注意使用的是临时密钥的方式操作 COS
        # 3.调用本接口，将文件的基础信息存储到智能体开发平台中。
        # 以上步骤可参考[文档](https://cloud.tencent.com/document/product/1759/108903)，文档最后有[代码demo](https://cloud.tencent.com/document/product/1759/108903#demo)，可作为参考。

        # @param request: Request instance for SaveDoc.
        # @type request: :class:`Tencentcloud::lke::V20231130::SaveDocRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::SaveDocResponse`
        def SaveDoc(request)
          body = send_request('SaveDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SaveDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 终止文档解析

        # @param request: Request instance for StopDocParse.
        # @type request: :class:`Tencentcloud::lke::V20231130::StopDocParseRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::StopDocParseResponse`
        def StopDocParse(request)
          body = send_request('StopDocParse', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopDocParseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用来停止正在进行的工作流异步运行实例。

        # @param request: Request instance for StopWorkflowRun.
        # @type request: :class:`Tencentcloud::lke::V20231130::StopWorkflowRunRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::StopWorkflowRunResponse`
        def StopWorkflowRun(request)
          body = send_request('StopWorkflowRun', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopWorkflowRunResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新共享知识库。

        # @param request: Request instance for UpdateSharedKnowledge.
        # @type request: :class:`Tencentcloud::lke::V20231130::UpdateSharedKnowledgeRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::UpdateSharedKnowledgeResponse`
        def UpdateSharedKnowledge(request)
          body = send_request('UpdateSharedKnowledge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSharedKnowledgeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新变量

        # @param request: Request instance for UpdateVar.
        # @type request: :class:`Tencentcloud::lke::V20231130::UpdateVarRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::UpdateVarResponse`
        def UpdateVar(request)
          body = send_request('UpdateVar', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateVarResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上传导入属性标签

        # @param request: Request instance for UploadAttributeLabel.
        # @type request: :class:`Tencentcloud::lke::V20231130::UploadAttributeLabelRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::UploadAttributeLabelResponse`
        def UploadAttributeLabel(request)
          body = send_request('UploadAttributeLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadAttributeLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 校验问答

        # @param request: Request instance for VerifyQA.
        # @type request: :class:`Tencentcloud::lke::V20231130::VerifyQARequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::VerifyQAResponse`
        def VerifyQA(request)
          body = send_request('VerifyQA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyQAResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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