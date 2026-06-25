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
  module Cngw
    module V20230418
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-04-18'
            api_endpoint = 'cngw.tencentcloudapi.com'
            sdk_version = 'CNGW_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 为资源（模型 API / MCP Server）添加消费者组授权。

        # @param request: Request instance for AddCloudNativeAPIGatewayConsumerGroupAuth.
        # @type request: :class:`Tencentcloud::cngw::V20230418::AddCloudNativeAPIGatewayConsumerGroupAuthRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::AddCloudNativeAPIGatewayConsumerGroupAuthResponse`
        def AddCloudNativeAPIGatewayConsumerGroupAuth(request)
          body = send_request('AddCloudNativeAPIGatewayConsumerGroupAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCloudNativeAPIGatewayConsumerGroupAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建AI网关消费者。

        # @param request: Request instance for CreateCloudNativeAPIGatewayConsumer.
        # @type request: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayConsumerRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayConsumerResponse`
        def CreateCloudNativeAPIGatewayConsumer(request)
          body = send_request('CreateCloudNativeAPIGatewayConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建AI 网关消费者组

        # @param request: Request instance for CreateCloudNativeAPIGatewayConsumerGroup.
        # @type request: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayConsumerGroupResponse`
        def CreateCloudNativeAPIGatewayConsumerGroup(request)
          body = send_request('CreateCloudNativeAPIGatewayConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 LLM 模型 API。

        # @param request: Request instance for CreateCloudNativeAPIGatewayLLMModelAPI.
        # @type request: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayLLMModelAPIRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayLLMModelAPIResponse`
        def CreateCloudNativeAPIGatewayLLMModelAPI(request)
          body = send_request('CreateCloudNativeAPIGatewayLLMModelAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayLLMModelAPIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 LLM 模型服务。同一网关下 Name 唯一。

        # @param request: Request instance for CreateCloudNativeAPIGatewayLLMModelService.
        # @type request: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayLLMModelServiceRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayLLMModelServiceResponse`
        def CreateCloudNativeAPIGatewayLLMModelService(request)
          body = send_request('CreateCloudNativeAPIGatewayLLMModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayLLMModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建AI网关MCP Server

        # @param request: Request instance for CreateCloudNativeAPIGatewayMCPServer.
        # @type request: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayMCPServerRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayMCPServerResponse`
        def CreateCloudNativeAPIGatewayMCPServer(request)
          body = send_request('CreateCloudNativeAPIGatewayMCPServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayMCPServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建AI网关MCP Tool

        # @param request: Request instance for CreateCloudNativeAPIGatewayMCPTool.
        # @type request: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayMCPToolRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewayMCPToolResponse`
        def CreateCloudNativeAPIGatewayMCPTool(request)
          body = send_request('CreateCloudNativeAPIGatewayMCPTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayMCPToolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建消费者密钥。

        # @param request: Request instance for CreateCloudNativeAPIGatewaySecretKey.
        # @type request: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::CreateCloudNativeAPIGatewaySecretKeyResponse`
        def CreateCloudNativeAPIGatewaySecretKey(request)
          body = send_request('CreateCloudNativeAPIGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除AI 网关消费者（被绑定到消费者组/密钥时需先解绑）。

        # @param request: Request instance for DeleteCloudNativeAPIGatewayConsumer.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayConsumerRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayConsumerResponse`
        def DeleteCloudNativeAPIGatewayConsumer(request)
          body = send_request('DeleteCloudNativeAPIGatewayConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除AI网关消费者组

        # @param request: Request instance for DeleteCloudNativeAPIGatewayConsumerGroup.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayConsumerGroupResponse`
        def DeleteCloudNativeAPIGatewayConsumerGroup(request)
          body = send_request('DeleteCloudNativeAPIGatewayConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 LLM 模型 API。

        # @param request: Request instance for DeleteCloudNativeAPIGatewayLLMModelAPI.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayLLMModelAPIRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayLLMModelAPIResponse`
        def DeleteCloudNativeAPIGatewayLLMModelAPI(request)
          body = send_request('DeleteCloudNativeAPIGatewayLLMModelAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayLLMModelAPIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 LLM 模型服务（被模型 API 绑定时需先解绑）。

        # @param request: Request instance for DeleteCloudNativeAPIGatewayLLMModelService.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayLLMModelServiceRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayLLMModelServiceResponse`
        def DeleteCloudNativeAPIGatewayLLMModelService(request)
          body = send_request('DeleteCloudNativeAPIGatewayLLMModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayLLMModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除AI网关MCP服务

        # @param request: Request instance for DeleteCloudNativeAPIGatewayMCPServer.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayMCPServerRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayMCPServerResponse`
        def DeleteCloudNativeAPIGatewayMCPServer(request)
          body = send_request('DeleteCloudNativeAPIGatewayMCPServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayMCPServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除AI网关MCP Tool

        # @param request: Request instance for DeleteCloudNativeAPIGatewayMCPTool.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayMCPToolRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewayMCPToolResponse`
        def DeleteCloudNativeAPIGatewayMCPTool(request)
          body = send_request('DeleteCloudNativeAPIGatewayMCPTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayMCPToolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除消费者密钥（被绑定时需先解绑）。

        # @param request: Request instance for DeleteCloudNativeAPIGatewaySecretKey.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DeleteCloudNativeAPIGatewaySecretKeyResponse`
        def DeleteCloudNativeAPIGatewaySecretKey(request)
          body = send_request('DeleteCloudNativeAPIGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生消费者详情

        # @param request: Request instance for DescribeCloudNativeAPIGatewayConsumer.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayConsumerRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayConsumerResponse`
        def DescribeCloudNativeAPIGatewayConsumer(request)
          body = send_request('DescribeCloudNativeAPIGatewayConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消费者组详情。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayConsumerGroup.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayConsumerGroupResponse`
        def DescribeCloudNativeAPIGatewayConsumerGroup(request)
          body = send_request('DescribeCloudNativeAPIGatewayConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个 LLM 模型 API 详情。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMModelAPI.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMModelAPIRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMModelAPIResponse`
        def DescribeCloudNativeAPIGatewayLLMModelAPI(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMModelAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMModelAPIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 LLM 模型 API 列表。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMModelAPIs.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMModelAPIsRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMModelAPIsResponse`
        def DescribeCloudNativeAPIGatewayLLMModelAPIs(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMModelAPIs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMModelAPIsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个 LLM 模型服务详情。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMModelService.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMModelServiceRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMModelServiceResponse`
        def DescribeCloudNativeAPIGatewayLLMModelService(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 LLM 模型服务列表。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMModelServices.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMModelServicesRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMModelServicesResponse`
        def DescribeCloudNativeAPIGatewayLLMModelServices(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMModelServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMModelServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 AI 网关Token 消耗统计

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMTokenUsageList.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMTokenUsageListRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMTokenUsageListResponse`
        def DescribeCloudNativeAPIGatewayLLMTokenUsageList(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMTokenUsageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMTokenUsageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 AI 网关Token 消耗统计汇总

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMTokenUsageStatistics.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMTokenUsageStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayLLMTokenUsageStatisticsResponse`
        def DescribeCloudNativeAPIGatewayLLMTokenUsageStatistics(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMTokenUsageStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMTokenUsageStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI 网关MCP服务信息

        # @param request: Request instance for DescribeCloudNativeAPIGatewayMCPServer.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPServerRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPServerResponse`
        def DescribeCloudNativeAPIGatewayMCPServer(request)
          body = send_request('DescribeCloudNativeAPIGatewayMCPServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayMCPServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看 MCP Server ACL

        # @param request: Request instance for DescribeCloudNativeAPIGatewayMCPServerACL.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPServerACLRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPServerACLResponse`
        def DescribeCloudNativeAPIGatewayMCPServerACL(request)
          body = send_request('DescribeCloudNativeAPIGatewayMCPServerACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayMCPServerACLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 MCP Server 的认证配置

        # @param request: Request instance for DescribeCloudNativeAPIGatewayMCPServerAuth.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPServerAuthRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPServerAuthResponse`
        def DescribeCloudNativeAPIGatewayMCPServerAuth(request)
          body = send_request('DescribeCloudNativeAPIGatewayMCPServerAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayMCPServerAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # AI网关查询MCP服务列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayMCPServerList.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPServerListRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPServerListResponse`
        def DescribeCloudNativeAPIGatewayMCPServerList(request)
          body = send_request('DescribeCloudNativeAPIGatewayMCPServerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayMCPServerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看AI网关MCP Tool

        # @param request: Request instance for DescribeCloudNativeAPIGatewayMCPTool.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPToolRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPToolResponse`
        def DescribeCloudNativeAPIGatewayMCPTool(request)
          body = send_request('DescribeCloudNativeAPIGatewayMCPTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayMCPToolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关 MCP Server 下所有 Tool 的 ACL 状态一览（含 Server ACLType 回显）。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayMCPToolACLList.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPToolACLListRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPToolACLListResponse`
        def DescribeCloudNativeAPIGatewayMCPToolACLList(request)
          body = send_request('DescribeCloudNativeAPIGatewayMCPToolACLList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayMCPToolACLListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 AI 网关MCP Tool 列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayMCPToolList.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPToolListRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewayMCPToolListResponse`
        def DescribeCloudNativeAPIGatewayMCPToolList(request)
          body = send_request('DescribeCloudNativeAPIGatewayMCPToolList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayMCPToolListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询密钥详情（SecretValue 字段会被掩码）。

        # @param request: Request instance for DescribeCloudNativeAPIGatewaySecretKey.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewaySecretKeyResponse`
        def DescribeCloudNativeAPIGatewaySecretKey(request)
          body = send_request('DescribeCloudNativeAPIGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询密钥明文值（KMS 类型密钥不可获取）。

        # @param request: Request instance for DescribeCloudNativeAPIGatewaySecretKeyValue.
        # @type request: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewaySecretKeyValueRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::DescribeCloudNativeAPIGatewaySecretKeyValueResponse`
        def DescribeCloudNativeAPIGatewaySecretKeyValue(request)
          body = send_request('DescribeCloudNativeAPIGatewaySecretKeyValue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewaySecretKeyValueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改AI网关消费者

        # @param request: Request instance for ModifyCloudNativeAPIGatewayConsumer.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayConsumerRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayConsumerResponse`
        def ModifyCloudNativeAPIGatewayConsumer(request)
          body = send_request('ModifyCloudNativeAPIGatewayConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改消费者组。

        # @param request: Request instance for ModifyCloudNativeAPIGatewayConsumerGroup.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayConsumerGroupResponse`
        def ModifyCloudNativeAPIGatewayConsumerGroup(request)
          body = send_request('ModifyCloudNativeAPIGatewayConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 LLM 模型 API。

        # @param request: Request instance for ModifyCloudNativeAPIGatewayLLMModelAPI.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayLLMModelAPIRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayLLMModelAPIResponse`
        def ModifyCloudNativeAPIGatewayLLMModelAPI(request)
          body = send_request('ModifyCloudNativeAPIGatewayLLMModelAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayLLMModelAPIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 LLM 模型服务。

        # @param request: Request instance for ModifyCloudNativeAPIGatewayLLMModelService.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayLLMModelServiceRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayLLMModelServiceResponse`
        def ModifyCloudNativeAPIGatewayLLMModelService(request)
          body = send_request('ModifyCloudNativeAPIGatewayLLMModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayLLMModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改MCP服务配置

        # @param request: Request instance for ModifyCloudNativeAPIGatewayMCPServer.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPServerRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPServerResponse`
        def ModifyCloudNativeAPIGatewayMCPServer(request)
          body = send_request('ModifyCloudNativeAPIGatewayMCPServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayMCPServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 MCP Server ACL

        # @param request: Request instance for ModifyCloudNativeAPIGatewayMCPServerACL.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPServerACLRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPServerACLResponse`
        def ModifyCloudNativeAPIGatewayMCPServerACL(request)
          body = send_request('ModifyCloudNativeAPIGatewayMCPServerACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayMCPServerACLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 MCP Server 的认证配置

        # @param request: Request instance for ModifyCloudNativeAPIGatewayMCPServerAuth.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPServerAuthRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPServerAuthResponse`
        def ModifyCloudNativeAPIGatewayMCPServerAuth(request)
          body = send_request('ModifyCloudNativeAPIGatewayMCPServerAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayMCPServerAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建AI 网关MCP Server

        # @param request: Request instance for ModifyCloudNativeAPIGatewayMCPServerStatus.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPServerStatusRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPServerStatusResponse`
        def ModifyCloudNativeAPIGatewayMCPServerStatus(request)
          body = send_request('ModifyCloudNativeAPIGatewayMCPServerStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayMCPServerStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改AI网关MCP Tool

        # @param request: Request instance for ModifyCloudNativeAPIGatewayMCPTool.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPToolRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPToolResponse`
        def ModifyCloudNativeAPIGatewayMCPTool(request)
          body = send_request('ModifyCloudNativeAPIGatewayMCPTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayMCPToolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 MCP Server Tool ACL

        # @param request: Request instance for ModifyCloudNativeAPIGatewayMCPToolACL.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPToolACLRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPToolACLResponse`
        def ModifyCloudNativeAPIGatewayMCPToolACL(request)
          body = send_request('ModifyCloudNativeAPIGatewayMCPToolACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayMCPToolACLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # AI网关修改MCP Tool上下线状态

        # @param request: Request instance for ModifyCloudNativeAPIGatewayMCPToolStatus.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPToolStatusRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewayMCPToolStatusResponse`
        def ModifyCloudNativeAPIGatewayMCPToolStatus(request)
          body = send_request('ModifyCloudNativeAPIGatewayMCPToolStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayMCPToolStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改AI网关密钥

        # @param request: Request instance for ModifyCloudNativeAPIGatewaySecretKey.
        # @type request: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::ModifyCloudNativeAPIGatewaySecretKeyResponse`
        def ModifyCloudNativeAPIGatewaySecretKey(request)
          body = send_request('ModifyCloudNativeAPIGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从资源（模型 API / MCP Server）移除消费者组授权。

        # @param request: Request instance for RemoveCloudNativeAPIGatewayConsumerGroupAuth.
        # @type request: :class:`Tencentcloud::cngw::V20230418::RemoveCloudNativeAPIGatewayConsumerGroupAuthRequest`
        # @rtype: :class:`Tencentcloud::cngw::V20230418::RemoveCloudNativeAPIGatewayConsumerGroupAuthResponse`
        def RemoveCloudNativeAPIGatewayConsumerGroupAuth(request)
          body = send_request('RemoveCloudNativeAPIGatewayConsumerGroupAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveCloudNativeAPIGatewayConsumerGroupAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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