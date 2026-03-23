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
  module Apis
    module V20240801
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-08-01'
            api_endpoint = 'apis.tencentcloudapi.com'
            sdk_version = 'APIS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建app

        # @param request: Request instance for CreateAgentApp.
        # @type request: :class:`Tencentcloud::apis::V20240801::CreateAgentAppRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::CreateAgentAppResponse`
        def CreateAgentApp(request)
          body = send_request('CreateAgentApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建app的mcp server关联

        # @param request: Request instance for CreateAgentAppMcpServers.
        # @type request: :class:`Tencentcloud::apis::V20240801::CreateAgentAppMcpServersRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::CreateAgentAppMcpServersResponse`
        def CreateAgentAppMcpServers(request)
          body = send_request('CreateAgentAppMcpServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentAppMcpServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建app的model service关联

        # @param request: Request instance for CreateAgentAppModelServices.
        # @type request: :class:`Tencentcloud::apis::V20240801::CreateAgentAppModelServicesRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::CreateAgentAppModelServicesResponse`
        def CreateAgentAppModelServices(request)
          body = send_request('CreateAgentAppModelServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentAppModelServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Credential

        # @param request: Request instance for CreateAgentCredential.
        # @type request: :class:`Tencentcloud::apis::V20240801::CreateAgentCredentialRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::CreateAgentCredentialResponse`
        def CreateAgentCredential(request)
          body = send_request('CreateAgentCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建mcp server

        # @param request: Request instance for CreateMcpServer.
        # @type request: :class:`Tencentcloud::apis::V20240801::CreateMcpServerRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::CreateMcpServerResponse`
        def CreateMcpServer(request)
          body = send_request('CreateMcpServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMcpServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建模型

        # @param request: Request instance for CreateModel.
        # @type request: :class:`Tencentcloud::apis::V20240801::CreateModelRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::CreateModelResponse`
        def CreateModel(request)
          body = send_request('CreateModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建模型服务

        # @param request: Request instance for CreateModelService.
        # @type request: :class:`Tencentcloud::apis::V20240801::CreateModelServiceRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::CreateModelServiceResponse`
        def CreateModelService(request)
          body = send_request('CreateModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除app

        # @param request: Request instance for DeleteAgentApp.
        # @type request: :class:`Tencentcloud::apis::V20240801::DeleteAgentAppRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DeleteAgentAppResponse`
        def DeleteAgentApp(request)
          body = send_request('DeleteAgentApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAgentAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除app的mcp server

        # @param request: Request instance for DeleteAgentAppMcpServers.
        # @type request: :class:`Tencentcloud::apis::V20240801::DeleteAgentAppMcpServersRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DeleteAgentAppMcpServersResponse`
        def DeleteAgentAppMcpServers(request)
          body = send_request('DeleteAgentAppMcpServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAgentAppMcpServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除app的model service关联

        # @param request: Request instance for DeleteAgentAppModelServices.
        # @type request: :class:`Tencentcloud::apis::V20240801::DeleteAgentAppModelServicesRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DeleteAgentAppModelServicesResponse`
        def DeleteAgentAppModelServices(request)
          body = send_request('DeleteAgentAppModelServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAgentAppModelServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Credential

        # @param request: Request instance for DeleteAgentCredential.
        # @type request: :class:`Tencentcloud::apis::V20240801::DeleteAgentCredentialRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DeleteAgentCredentialResponse`
        def DeleteAgentCredential(request)
          body = send_request('DeleteAgentCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAgentCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除mcp server

        # @param request: Request instance for DeleteMcpServer.
        # @type request: :class:`Tencentcloud::apis::V20240801::DeleteMcpServerRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DeleteMcpServerResponse`
        def DeleteMcpServer(request)
          body = send_request('DeleteMcpServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMcpServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除模型

        # @param request: Request instance for DeleteModel.
        # @type request: :class:`Tencentcloud::apis::V20240801::DeleteModelRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DeleteModelResponse`
        def DeleteModel(request)
          body = send_request('DeleteModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除模型服务

        # @param request: Request instance for DeleteModelService.
        # @type request: :class:`Tencentcloud::apis::V20240801::DeleteModelServiceRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DeleteModelServiceResponse`
        def DeleteModelService(request)
          body = send_request('DeleteModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询app详情

        # @param request: Request instance for DescribeAgentApp.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeAgentAppRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeAgentAppResponse`
        def DescribeAgentApp(request)
          body = send_request('DescribeAgentApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询app mcpServer关联列表

        # @param request: Request instance for DescribeAgentAppMcpServers.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeAgentAppMcpServersRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeAgentAppMcpServersResponse`
        def DescribeAgentAppMcpServers(request)
          body = send_request('DescribeAgentAppMcpServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentAppMcpServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询app modelService关联列表

        # @param request: Request instance for DescribeAgentAppModelServices.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeAgentAppModelServicesRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeAgentAppModelServicesResponse`
        def DescribeAgentAppModelServices(request)
          body = send_request('DescribeAgentAppModelServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentAppModelServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询app列表

        # @param request: Request instance for DescribeAgentApps.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeAgentAppsRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeAgentAppsResponse`
        def DescribeAgentApps(request)
          body = send_request('DescribeAgentApps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentAppsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Credential详情

        # @param request: Request instance for DescribeAgentCredential.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeAgentCredentialRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeAgentCredentialResponse`
        def DescribeAgentCredential(request)
          body = send_request('DescribeAgentCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Credential列表

        # @param request: Request instance for DescribeAgentCredentials.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeAgentCredentialsRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeAgentCredentialsResponse`
        def DescribeAgentCredentials(request)
          body = send_request('DescribeAgentCredentials', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentCredentialsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询mcp server详情

        # @param request: Request instance for DescribeMcpServer.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeMcpServerRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeMcpServerResponse`
        def DescribeMcpServer(request)
          body = send_request('DescribeMcpServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMcpServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询mcp server列表

        # @param request: Request instance for DescribeMcpServers.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeMcpServersRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeMcpServersResponse`
        def DescribeMcpServers(request)
          body = send_request('DescribeMcpServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMcpServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询模型详情

        # @param request: Request instance for DescribeModel.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeModelRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeModelResponse`
        def DescribeModel(request)
          body = send_request('DescribeModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询模型服务详情

        # @param request: Request instance for DescribeModelService.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeModelServiceRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeModelServiceResponse`
        def DescribeModelService(request)
          body = send_request('DescribeModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询模型服务列表

        # @param request: Request instance for DescribeModelServices.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeModelServicesRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeModelServicesResponse`
        def DescribeModelServices(request)
          body = send_request('DescribeModelServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeModels.
        # @type request: :class:`Tencentcloud::apis::V20240801::DescribeModelsRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::DescribeModelsResponse`
        def DescribeModels(request)
          body = send_request('DescribeModels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改app

        # @param request: Request instance for ModifyAgentApp.
        # @type request: :class:`Tencentcloud::apis::V20240801::ModifyAgentAppRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::ModifyAgentAppResponse`
        def ModifyAgentApp(request)
          body = send_request('ModifyAgentApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑app的model service关联

        # @param request: Request instance for ModifyAgentAppModelServices.
        # @type request: :class:`Tencentcloud::apis::V20240801::ModifyAgentAppModelServicesRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::ModifyAgentAppModelServicesResponse`
        def ModifyAgentAppModelServices(request)
          body = send_request('ModifyAgentAppModelServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentAppModelServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Credential

        # @param request: Request instance for ModifyAgentCredential.
        # @type request: :class:`Tencentcloud::apis::V20240801::ModifyAgentCredentialRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::ModifyAgentCredentialResponse`
        def ModifyAgentCredential(request)
          body = send_request('ModifyAgentCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改mcp server

        # @param request: Request instance for ModifyMcpServer.
        # @type request: :class:`Tencentcloud::apis::V20240801::ModifyMcpServerRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::ModifyMcpServerResponse`
        def ModifyMcpServer(request)
          body = send_request('ModifyMcpServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMcpServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改模型

        # @param request: Request instance for ModifyModel.
        # @type request: :class:`Tencentcloud::apis::V20240801::ModifyModelRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::ModifyModelResponse`
        def ModifyModel(request)
          body = send_request('ModifyModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改模型服务

        # @param request: Request instance for ModifyModelService.
        # @type request: :class:`Tencentcloud::apis::V20240801::ModifyModelServiceRequest`
        # @rtype: :class:`Tencentcloud::apis::V20240801::ModifyModelServiceResponse`
        def ModifyModelService(request)
          body = send_request('ModifyModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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