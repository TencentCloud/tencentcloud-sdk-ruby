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

        # 产品规划

        # 接口支持图片和PDF转可编辑word格式文件，将文件中的图片、文本、表格等元素识别，并根据位置进行还原。

        # @param request: Request instance for ConvertDocument.
        # @type request: :class:`Tencentcloud::lke::V20231130::ConvertDocumentRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ConvertDocumentResponse`
        def ConvertDocument(request)
          body = send_request('ConvertDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConvertDocumentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建属性

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

        # 创建企业

        # @param request: Request instance for CreateCorp.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateCorpRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateCorpResponse`
        def CreateCorp(request)
          body = send_request('CreateCorp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCorpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口为异步接口的发起请求接口，用于发起文档解析任务。
        # 文档解析支持将图片或PDF文件转换成Markdown格式文件，可解析包括表格、公式、图片、标题、段落、页眉、页脚等内容元素，并将内容智能转换成阅读顺序。

        # 体验期间单账号限制qps仅为1，若有正式接入需要请与产研团队沟通开放。

        # @param request: Request instance for CreateReconstructDocumentFlow.
        # @type request: :class:`Tencentcloud::lke::V20231130::CreateReconstructDocumentFlowRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::CreateReconstructDocumentFlowResponse`
        def CreateReconstructDocumentFlow(request)
          body = send_request('CreateReconstructDocumentFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReconstructDocumentFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 企业详情

        # @param request: Request instance for DescribeCorp.
        # @type request: :class:`Tencentcloud::lke::V20231130::DescribeCorpRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::DescribeCorpResponse`
        def DescribeCorp(request)
          body = send_request('DescribeCorp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCorpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（GetEmbedding）调用文本表示模型，将文本转化为用数值表示的向量形式，可用于文本检索、信息推荐、知识挖掘等场景。
        # 本接口（GetEmbedding）有单账号调用上限控制，如您有提高并发限制的需求请 [联系我们](https://cloud.tencent.com/act/event/Online_service) 。

        # @param request: Request instance for GetEmbedding.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetEmbeddingRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetEmbeddingResponse`
        def GetEmbedding(request)
          body = send_request('GetEmbedding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetEmbeddingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取聊天历史请求

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

        # 本接口为异步接口的查询结果接口，用于获取文档解析处理结果。

        # @param request: Request instance for GetReconstructDocumentResult.
        # @type request: :class:`Tencentcloud::lke::V20231130::GetReconstructDocumentResultRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::GetReconstructDocumentResultResponse`
        def GetReconstructDocumentResult(request)
          body = send_request('GetReconstructDocumentResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetReconstructDocumentResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 应用类型列表

        # @param request: Request instance for ListAppCategory.
        # @type request: :class:`Tencentcloud::lke::V20231130::ListAppCategoryRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ListAppCategoryResponse`
        def ListAppCategory(request)
          body = send_request('ListAppCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAppCategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取账户信息

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

        # 接口即将下线，请切换使用新接口：[文档解析](https://cloud.tencent.com/document/product/1759/107504)

        # @param request: Request instance for ParseDoc.
        # @type request: :class:`Tencentcloud::lke::V20231130::ParseDocRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ParseDocResponse`
        def ParseDoc(request)
          body = send_request('ParseDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ParseDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文档解析结果。该接口需开通文档解析原子能力后调用。文档解析原子能力内测中，如有需要请联系架构师或[联系客服](https://cloud.tencent.com/act/event/Online_service) 。

        # @param request: Request instance for QueryParseDocResult.
        # @type request: :class:`Tencentcloud::lke::V20231130::QueryParseDocResultRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::QueryParseDocResultResponse`
        def QueryParseDocResult(request)
          body = send_request('QueryParseDocResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryParseDocResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 多轮改写（QueryRewrite）主要用于多轮对话中，进行指代消解和省略补全。使用本接口，无需输入prompt描述，根据对话历史即可生成更精确的用户查询。在应用场景上，本接口可应用于智能问答、对话式搜索等多种场景。
        # 本接口（QueryRewrite）有单账号调用上限控制，如您有提高并发限制的需求请 [联系我们](https://cloud.tencent.com/act/event/Online_service) 。

        # @param request: Request instance for QueryRewrite.
        # @type request: :class:`Tencentcloud::lke::V20231130::QueryRewriteRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::QueryRewriteResponse`
        def QueryRewrite(request)
          body = send_request('QueryRewrite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryRewriteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 支持将图片或PDF文件转换成Markdown格式文件，可解析包括表格、公式、图片、标题、段落、页眉、页脚等内容元素，并将内容智能转换成阅读顺序。

        # 体验期间单账号限制qps仅为1，若有正式接入需要请与产研团队沟通开放。

        # @param request: Request instance for ReconstructDocument.
        # @type request: :class:`Tencentcloud::lke::V20231130::ReconstructDocumentRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ReconstructDocumentResponse`
        def ReconstructDocument(request)
          body = send_request('ReconstructDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReconstructDocumentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ResetSession.
        # @type request: :class:`Tencentcloud::lke::V20231130::ResetSessionRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::ResetSessionResponse`
        def ResetSession(request)
          body = send_request('ResetSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 基于知识引擎精调模型技术的rerank模型，支持对多路召回的结果进行重排序，根据query与切片内容的相关性，按分数由高到低对切片进行排序，并输出对应的打分结果。

        # @param request: Request instance for RunReRank.
        # @type request: :class:`Tencentcloud::lke::V20231130::RunReRankRequest`
        # @rtype: :class:`Tencentcloud::lke::V20231130::RunReRankResponse`
        def RunReRank(request)
          body = send_request('RunReRank', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunReRankResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 保存文档

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