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
  module Tsf
    module V20180326
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-26'
            api_endpoint = 'tsf.tencentcloudapi.com'
            sdk_version = 'TSF_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加云主机节点至TSF集群

        # @param request: Request instance for AddClusterInstances.
        # @type request: :class:`Tencentcloud::tsf::V20180326::AddClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::AddClusterInstancesResponse`
        def AddClusterInstances(request)
          body = send_request('AddClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddClusterInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加云主机节点至TSF集群

        # @param request: Request instance for AddInstances.
        # @type request: :class:`Tencentcloud::tsf::V20180326::AddInstancesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::AddInstancesResponse`
        def AddInstances(request)
          body = send_request('AddInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网关与API分组批量绑定

        # @param request: Request instance for BindApiGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::BindApiGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::BindApiGroupResponse`
        def BindApiGroup(request)
          body = send_request('BindApiGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindApiGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 插件与网关分组/API批量绑定

        # @param request: Request instance for BindPlugin.
        # @type request: :class:`Tencentcloud::tsf::V20180326::BindPluginRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::BindPluginResponse`
        def BindPlugin(request)
          body = send_request('BindPlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindPluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用或禁用API

        # @param request: Request instance for ChangeApiUsableStatus.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ChangeApiUsableStatusRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ChangeApiUsableStatusResponse`
        def ChangeApiUsableStatus(request)
          body = send_request('ChangeApiUsableStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeApiUsableStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对执行失败的任务批次执行续跑

        # @param request: Request instance for ContinueRunFailedTaskBatch.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ContinueRunFailedTaskBatchRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ContinueRunFailedTaskBatchResponse`
        def ContinueRunFailedTaskBatch(request)
          body = send_request('ContinueRunFailedTaskBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ContinueRunFailedTaskBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 一键导入API分组

        # @param request: Request instance for CreateAllGatewayApiAsync.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateAllGatewayApiAsyncRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateAllGatewayApiAsyncResponse`
        def CreateAllGatewayApiAsync(request)
          body = send_request('CreateAllGatewayApiAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAllGatewayApiAsyncResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建API分组

        # @param request: Request instance for CreateApiGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateApiGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateApiGroupResponse`
        def CreateApiGroup(request)
          body = send_request('CreateApiGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApiGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建API限流规则

        # @param request: Request instance for CreateApiRateLimitRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateApiRateLimitRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateApiRateLimitRuleResponse`
        def CreateApiRateLimitRule(request)
          body = send_request('CreateApiRateLimitRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApiRateLimitRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for CreateApplication.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateApplicationRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateApplicationResponse`
        def CreateApplication(request)
          body = send_request('CreateApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群

        # @param request: Request instance for CreateCluster.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateClusterRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateClusterResponse`
        def CreateCluster(request)
          body = send_request('CreateCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建配置项

        # @param request: Request instance for CreateConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateConfigResponse`
        def CreateConfig(request)
          body = send_request('CreateConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建容器部署组

        # @param request: Request instance for CreateContainGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateContainGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateContainGroupResponse`
        def CreateContainGroup(request)
          body = send_request('CreateContainGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateContainGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建文件配置项

        # @param request: Request instance for CreateFileConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateFileConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateFileConfigResponse`
        def CreateFileConfig(request)
          body = send_request('CreateFileConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFileConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量导入API至api分组(也支持新建API到分组)

        # @param request: Request instance for CreateGatewayApi.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateGatewayApiRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateGatewayApiResponse`
        def CreateGatewayApi(request)
          body = send_request('CreateGatewayApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGatewayApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建虚拟机部署组

        # @param request: Request instance for CreateGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateGroupResponse`
        def CreateGroup(request)
          body = send_request('CreateGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建泳道

        # @param request: Request instance for CreateLane.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateLaneRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateLaneResponse`
        def CreateLane(request)
          body = send_request('CreateLane', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLaneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建泳道规则

        # @param request: Request instance for CreateLaneRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateLaneRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateLaneRuleResponse`
        def CreateLaneRule(request)
          body = send_request('CreateLaneRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLaneRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增微服务

        # @param request: Request instance for CreateMicroservice.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateMicroserviceRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateMicroserviceResponse`
        def CreateMicroservice(request)
          body = send_request('CreateMicroservice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMicroserviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建命名空间

        # @param request: Request instance for CreateNamespace.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateNamespaceResponse`
        def CreateNamespace(request)
          body = send_request('CreateNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建路径重写

        # @param request: Request instance for CreatePathRewrites.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreatePathRewritesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreatePathRewritesResponse`
        def CreatePathRewrites(request)
          body = send_request('CreatePathRewrites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePathRewritesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建公共配置项

        # @param request: Request instance for CreatePublicConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreatePublicConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreatePublicConfigResponse`
        def CreatePublicConfig(request)
          body = send_request('CreatePublicConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePublicConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建仓库

        # @param request: Request instance for CreateRepository.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateRepositoryResponse`
        def CreateRepository(request)
          body = send_request('CreateRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建任务

        # @param request: Request instance for CreateTask.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateTaskRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateTaskResponse`
        def CreateTask(request)
          body = send_request('CreateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建工作流

        # @param request: Request instance for CreateTaskFlow.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateTaskFlowRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateTaskFlowResponse`
        def CreateTaskFlow(request)
          body = send_request('CreateTaskFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建单元化规则

        # @param request: Request instance for CreateUnitRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateUnitRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateUnitRuleResponse`
        def CreateUnitRule(request)
          body = send_request('CreateUnitRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUnitRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Api分组

        # @param request: Request instance for DeleteApiGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteApiGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteApiGroupResponse`
        def DeleteApiGroup(request)
          body = send_request('DeleteApiGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApiGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteApplication.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteApplicationRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteApplicationResponse`
        def DeleteApplication(request)
          body = send_request('DeleteApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除配置项

        # @param request: Request instance for DeleteConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteConfigResponse`
        def DeleteConfig(request)
          body = send_request('DeleteConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除容器部署组

        # @param request: Request instance for DeleteContainerGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteContainerGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteContainerGroupResponse`
        def DeleteContainerGroup(request)
          body = send_request('DeleteContainerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteContainerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除容器部署组

        # @param request: Request instance for DeleteGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteGroupResponse`
        def DeleteGroup(request)
          body = send_request('DeleteGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除镜像版本

        # @param request: Request instance for DeleteImageTags.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteImageTagsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteImageTagsResponse`
        def DeleteImageTags(request)
          body = send_request('DeleteImageTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除泳道

        # @param request: Request instance for DeleteLane.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteLaneRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteLaneResponse`
        def DeleteLane(request)
          body = send_request('DeleteLane', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLaneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除泳道规则

        # @param request: Request instance for DeleteLaneRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteLaneRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteLaneRuleResponse`
        def DeleteLaneRule(request)
          body = send_request('DeleteLaneRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLaneRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除微服务

        # @param request: Request instance for DeleteMicroservice.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteMicroserviceRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteMicroserviceResponse`
        def DeleteMicroservice(request)
          body = send_request('DeleteMicroservice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMicroserviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除命名空间

        # @param request: Request instance for DeleteNamespace.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteNamespaceResponse`
        def DeleteNamespace(request)
          body = send_request('DeleteNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除路径重写

        # @param request: Request instance for DeletePathRewrites.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeletePathRewritesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeletePathRewritesResponse`
        def DeletePathRewrites(request)
          body = send_request('DeletePathRewrites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePathRewritesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从软件仓库批量删除程序包。
        # 一次最多支持删除1000个包，数量超过1000，返回UpperDeleteLimit错误。

        # @param request: Request instance for DeletePkgs.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeletePkgsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeletePkgsResponse`
        def DeletePkgs(request)
          body = send_request('DeletePkgs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePkgsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除公共配置项

        # @param request: Request instance for DeletePublicConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeletePublicConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeletePublicConfigResponse`
        def DeletePublicConfig(request)
          body = send_request('DeletePublicConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePublicConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除仓库

        # @param request: Request instance for DeleteRepository.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteRepositoryResponse`
        def DeleteRepository(request)
          body = send_request('DeleteRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Serverless部署组

        # @param request: Request instance for DeleteServerlessGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteServerlessGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteServerlessGroupResponse`
        def DeleteServerlessGroup(request)
          body = send_request('DeleteServerlessGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServerlessGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除任务

        # @param request: Request instance for DeleteTask.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteTaskRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteTaskResponse`
        def DeleteTask(request)
          body = send_request('DeleteTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除单元化命名空间

        # @param request: Request instance for DeleteUnitNamespaces.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteUnitNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteUnitNamespacesResponse`
        def DeleteUnitNamespaces(request)
          body = send_request('DeleteUnitNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUnitNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除单元化规则

        # @param request: Request instance for DeleteUnitRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeleteUnitRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeleteUnitRuleResponse`
        def DeleteUnitRule(request)
          body = send_request('DeleteUnitRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUnitRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 部署容器应用-更新

        # @param request: Request instance for DeployContainerGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeployContainerGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeployContainerGroupResponse`
        def DeployContainerGroup(request)
          body = send_request('DeployContainerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployContainerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 部署虚拟机部署组应用

        # @param request: Request instance for DeployGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeployGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeployGroupResponse`
        def DeployGroup(request)
          body = send_request('DeployGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询API详情

        # @param request: Request instance for DescribeApiDetail.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeApiDetailRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeApiDetailResponse`
        def DescribeApiDetail(request)
          body = send_request('DescribeApiDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询API分组

        # @param request: Request instance for DescribeApiGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeApiGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeApiGroupResponse`
        def DescribeApiGroup(request)
          body = send_request('DescribeApiGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询API 分组信息列表

        # @param request: Request instance for DescribeApiGroups.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeApiGroupsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeApiGroupsResponse`
        def DescribeApiGroups(request)
          body = send_request('DescribeApiGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询API限流规则

        # @param request: Request instance for DescribeApiRateLimitRules.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeApiRateLimitRulesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeApiRateLimitRulesResponse`
        def DescribeApiRateLimitRules(request)
          body = send_request('DescribeApiRateLimitRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiRateLimitRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网关API监控明细数据

        # @param request: Request instance for DescribeApiUseDetail.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeApiUseDetailRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeApiUseDetailResponse`
        def DescribeApiUseDetail(request)
          body = send_request('DescribeApiUseDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiUseDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询API 版本

        # @param request: Request instance for DescribeApiVersions.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeApiVersionsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeApiVersionsResponse`
        def DescribeApiVersions(request)
          body = send_request('DescribeApiVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用详情

        # @param request: Request instance for DescribeApplication.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeApplicationRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeApplicationResponse`
        def DescribeApplication(request)
          body = send_request('DescribeApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用列表其它字段，如实例数量信息等

        # @param request: Request instance for DescribeApplicationAttribute.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeApplicationAttributeRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeApplicationAttributeResponse`
        def DescribeApplicationAttribute(request)
          body = send_request('DescribeApplicationAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用列表

        # @param request: Request instance for DescribeApplications.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeApplicationsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeApplicationsResponse`
        def DescribeApplications(request)
          body = send_request('DescribeApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # TSF基本资源信息概览接口

        # @param request: Request instance for DescribeBasicResourceUsage.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeBasicResourceUsageRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeBasicResourceUsageResponse`
        def DescribeBasicResourceUsage(request)
          body = send_request('DescribeBasicResourceUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBasicResourceUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群实例

        # @param request: Request instance for DescribeClusterInstances.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeClusterInstancesResponse`
        def DescribeClusterInstances(request)
          body = send_request('DescribeClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询配置

        # @param request: Request instance for DescribeConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeConfigResponse`
        def DescribeConfig(request)
          body = send_request('DescribeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询配置发布历史

        # @param request: Request instance for DescribeConfigReleaseLogs.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeConfigReleaseLogsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeConfigReleaseLogsResponse`
        def DescribeConfigReleaseLogs(request)
          body = send_request('DescribeConfigReleaseLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigReleaseLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询配置发布信息

        # @param request: Request instance for DescribeConfigReleases.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeConfigReleasesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeConfigReleasesResponse`
        def DescribeConfigReleases(request)
          body = send_request('DescribeConfigReleases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigReleasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询配置汇总列表

        # @param request: Request instance for DescribeConfigSummary.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeConfigSummaryRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeConfigSummaryResponse`
        def DescribeConfigSummary(request)
          body = send_request('DescribeConfigSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询配置项列表

        # @param request: Request instance for DescribeConfigs.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeConfigsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeConfigsResponse`
        def DescribeConfigs(request)
          body = send_request('DescribeConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取容器事件列表

        # @param request: Request instance for DescribeContainerEvents.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeContainerEventsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeContainerEventsResponse`
        def DescribeContainerEvents(request)
          body = send_request('DescribeContainerEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        #  获取部署组详情

        # @param request: Request instance for DescribeContainerGroupDeployInfo.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeContainerGroupDeployInfoRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeContainerGroupDeployInfoResponse`
        def DescribeContainerGroupDeployInfo(request)
          body = send_request('DescribeContainerGroupDeployInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerGroupDeployInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        #  容器部署组详情（已废弃，请使用  DescribeContainerGroupDeployInfo）

        # @param request: Request instance for DescribeContainerGroupDetail.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeContainerGroupDetailRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeContainerGroupDetailResponse`
        def DescribeContainerGroupDetail(request)
          body = send_request('DescribeContainerGroupDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerGroupDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器部署组列表

        # @param request: Request instance for DescribeContainerGroups.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeContainerGroupsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeContainerGroupsResponse`
        def DescribeContainerGroups(request)
          body = send_request('DescribeContainerGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询一键导入API分组任务的状态

        # @param request: Request instance for DescribeCreateGatewayApiStatus.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeCreateGatewayApiStatusRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeCreateGatewayApiStatusResponse`
        def DescribeCreateGatewayApiStatus(request)
          body = send_request('DescribeCreateGatewayApiStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCreateGatewayApiStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # TSF上传的程序包存放在腾讯云对象存储（COS）中，通过该API可以获取从COS下载程序包需要的信息，包括包所在的桶、存储路径、鉴权信息等，之后使用COS API（或SDK）进行下载。
        # COS相关文档请查阅：https://cloud.tencent.com/document/product/436

        # @param request: Request instance for DescribeDownloadInfo.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeDownloadInfoRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeDownloadInfoResponse`
        def DescribeDownloadInfo(request)
          body = send_request('DescribeDownloadInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDownloadInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询生效的单元化规则

        # @param request: Request instance for DescribeEnabledUnitRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeEnabledUnitRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeEnabledUnitRuleResponse`
        def DescribeEnabledUnitRule(request)
          body = send_request('DescribeEnabledUnitRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnabledUnitRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文件配置项列表

        # @param request: Request instance for DescribeFileConfigs.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeFileConfigsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeFileConfigsResponse`
        def DescribeFileConfigs(request)
          body = send_request('DescribeFileConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询工作流最新一个批次的状态信息

        # @param request: Request instance for DescribeFlowLastBatchState.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeFlowLastBatchStateRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeFlowLastBatchStateResponse`
        def DescribeFlowLastBatchState(request)
          body = send_request('DescribeFlowLastBatchState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowLastBatchStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网关所有分组下Api列表

        # @param request: Request instance for DescribeGatewayAllGroupApis.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGatewayAllGroupApisRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGatewayAllGroupApisResponse`
        def DescribeGatewayAllGroupApis(request)
          body = send_request('DescribeGatewayAllGroupApis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayAllGroupApisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询API分组下的Api列表信息

        # @param request: Request instance for DescribeGatewayApis.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGatewayApisRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGatewayApisResponse`
        def DescribeGatewayApis(request)
          body = send_request('DescribeGatewayApis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayApisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网关监控概览

        # @param request: Request instance for DescribeGatewayMonitorOverview.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGatewayMonitorOverviewRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGatewayMonitorOverviewResponse`
        def DescribeGatewayMonitorOverview(request)
          body = send_request('DescribeGatewayMonitorOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayMonitorOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询虚拟机部署组详情

        # @param request: Request instance for DescribeGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGroupResponse`
        def DescribeGroup(request)
          body = send_request('DescribeGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取部署组其他属性

        # @param request: Request instance for DescribeGroupAttribute.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGroupAttributeResponse`
        def DescribeGroupAttribute(request)
          body = send_request('DescribeGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某个API分组已绑定的网关部署组信息列表

        # @param request: Request instance for DescribeGroupBindedGateways.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGroupBindedGatewaysRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGroupBindedGatewaysResponse`
        def DescribeGroupBindedGateways(request)
          body = send_request('DescribeGroupBindedGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupBindedGatewaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某个网关绑定的API 分组信息列表

        # @param request: Request instance for DescribeGroupGateways.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGroupGatewaysRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGroupGatewaysResponse`
        def DescribeGroupGateways(request)
          body = send_request('DescribeGroupGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupGatewaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询虚拟机部署组云主机列表

        # @param request: Request instance for DescribeGroupInstances.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGroupInstancesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGroupInstancesResponse`
        def DescribeGroupInstances(request)
          body = send_request('DescribeGroupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询部署组相关的发布信息

        # @param request: Request instance for DescribeGroupRelease.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGroupReleaseRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGroupReleaseResponse`
        def DescribeGroupRelease(request)
          body = send_request('DescribeGroupRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupReleaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网关分组监控明细数据

        # @param request: Request instance for DescribeGroupUseDetail.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGroupUseDetailRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGroupUseDetailResponse`
        def DescribeGroupUseDetail(request)
          body = send_request('DescribeGroupUseDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupUseDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取虚拟机部署组列表

        # @param request: Request instance for DescribeGroups.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGroupsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGroupsResponse`
        def DescribeGroups(request)
          body = send_request('DescribeGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某个插件下绑定或未绑定的API分组

        # @param request: Request instance for DescribeGroupsWithPlugin.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeGroupsWithPluginRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeGroupsWithPluginResponse`
        def DescribeGroupsWithPlugin(request)
          body = send_request('DescribeGroupsWithPlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupsWithPluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库列表

        # @param request: Request instance for DescribeImageRepository.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeImageRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeImageRepositoryResponse`
        def DescribeImageRepository(request)
          body = send_request('DescribeImageRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像版本列表

        # @param request: Request instance for DescribeImageTags.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeImageTagsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeImageTagsResponse`
        def DescribeImageTags(request)
          body = send_request('DescribeImageTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询调用监控指标

        # @param request: Request instance for DescribeInovcationIndicators.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeInovcationIndicatorsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeInovcationIndicatorsResponse`
        def DescribeInovcationIndicators(request)
          body = send_request('DescribeInovcationIndicators', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInovcationIndicatorsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 无

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询调用指标数据变化曲线

        # @param request: Request instance for DescribeInvocationMetricDataCurve.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeInvocationMetricDataCurveRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeInvocationMetricDataCurveResponse`
        def DescribeInvocationMetricDataCurve(request)
          body = send_request('DescribeInvocationMetricDataCurve', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInvocationMetricDataCurveResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询维度

        # @param request: Request instance for DescribeInvocationMetricDataDimension.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeInvocationMetricDataDimensionRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeInvocationMetricDataDimensionResponse`
        def DescribeInvocationMetricDataDimension(request)
          body = send_request('DescribeInvocationMetricDataDimension', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInvocationMetricDataDimensionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单值指标维度

        # @param request: Request instance for DescribeInvocationMetricDataPoint.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeInvocationMetricDataPointRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeInvocationMetricDataPointResponse`
        def DescribeInvocationMetricDataPoint(request)
          body = send_request('DescribeInvocationMetricDataPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInvocationMetricDataPointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询调用指标数据散点图

        # @param request: Request instance for DescribeInvocationMetricScatterPlot.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeInvocationMetricScatterPlotRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeInvocationMetricScatterPlotResponse`
        def DescribeInvocationMetricScatterPlot(request)
          body = send_request('DescribeInvocationMetricScatterPlot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInvocationMetricScatterPlotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询java实例jvm监控数据,返回数据可选

        # @param request: Request instance for DescribeJvmMonitor.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeJvmMonitorRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeJvmMonitorResponse`
        def DescribeJvmMonitor(request)
          body = send_request('DescribeJvmMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJvmMonitorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询泳道规则列表

        # @param request: Request instance for DescribeLaneRules.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeLaneRulesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeLaneRulesResponse`
        def DescribeLaneRules(request)
          body = send_request('DescribeLaneRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLaneRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询泳道列表

        # @param request: Request instance for DescribeLanes.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeLanesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeLanesResponse`
        def DescribeLanes(request)
          body = send_request('DescribeLanes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLanesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询微服务详情

        # @param request: Request instance for DescribeMicroservice.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeMicroserviceRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeMicroserviceResponse`
        def DescribeMicroservice(request)
          body = send_request('DescribeMicroservice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMicroserviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取微服务列表

        # @param request: Request instance for DescribeMicroservices.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeMicroservicesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeMicroservicesResponse`
        def DescribeMicroservices(request)
          body = send_request('DescribeMicroservices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMicroservicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务API列表

        # @param request: Request instance for DescribeMsApiList.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeMsApiListRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeMsApiListResponse`
        def DescribeMsApiList(request)
          body = send_request('DescribeMsApiList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMsApiListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 服务调用监控统计概览

        # @param request: Request instance for DescribeOverviewInvocation.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeOverviewInvocationRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeOverviewInvocationResponse`
        def DescribeOverviewInvocation(request)
          body = send_request('DescribeOverviewInvocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewInvocationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询路径重写

        # @param request: Request instance for DescribePathRewrite.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePathRewriteRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePathRewriteResponse`
        def DescribePathRewrite(request)
          body = send_request('DescribePathRewrite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePathRewriteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询路径重写列表

        # @param request: Request instance for DescribePathRewrites.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePathRewritesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePathRewritesResponse`
        def DescribePathRewrites(request)
          body = send_request('DescribePathRewrites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePathRewritesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 无

        # @param request: Request instance for DescribePkgs.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePkgsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePkgsResponse`
        def DescribePkgs(request)
          body = send_request('DescribePkgs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePkgsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询网关分组/API绑定（或未绑定）的插件列表

        # @param request: Request instance for DescribePluginInstances.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePluginInstancesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePluginInstancesResponse`
        def DescribePluginInstances(request)
          body = send_request('DescribePluginInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePluginInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取部署组实例列表

        # @param request: Request instance for DescribePodInstances.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePodInstancesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePodInstancesResponse`
        def DescribePodInstances(request)
          body = send_request('DescribePodInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePodInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据集列表

        # @param request: Request instance for DescribePrograms.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeProgramsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeProgramsResponse`
        def DescribePrograms(request)
          body = send_request('DescribePrograms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProgramsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询公共配置（单条）

        # @param request: Request instance for DescribePublicConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigResponse`
        def DescribePublicConfig(request)
          body = send_request('DescribePublicConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询公共配置发布历史

        # @param request: Request instance for DescribePublicConfigReleaseLogs.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigReleaseLogsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigReleaseLogsResponse`
        def DescribePublicConfigReleaseLogs(request)
          body = send_request('DescribePublicConfigReleaseLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicConfigReleaseLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询公共配置发布信息

        # @param request: Request instance for DescribePublicConfigReleases.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigReleasesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigReleasesResponse`
        def DescribePublicConfigReleases(request)
          body = send_request('DescribePublicConfigReleases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicConfigReleasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询公共配置汇总列表

        # @param request: Request instance for DescribePublicConfigSummary.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigSummaryRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigSummaryResponse`
        def DescribePublicConfigSummary(request)
          body = send_request('DescribePublicConfigSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicConfigSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询公共配置项列表

        # @param request: Request instance for DescribePublicConfigs.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribePublicConfigsResponse`
        def DescribePublicConfigs(request)
          body = send_request('DescribePublicConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询group发布的配置

        # @param request: Request instance for DescribeReleasedConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeReleasedConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeReleasedConfigResponse`
        def DescribeReleasedConfig(request)
          body = send_request('DescribeReleasedConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReleasedConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询仓库列表

        # @param request: Request instance for DescribeRepositories.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeRepositoriesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeRepositoriesResponse`
        def DescribeRepositories(request)
          body = send_request('DescribeRepositories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRepositoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询仓库信息

        # @param request: Request instance for DescribeRepository.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeRepositoryResponse`
        def DescribeRepository(request)
          body = send_request('DescribeRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询简单应用列表

        # @param request: Request instance for DescribeSimpleApplications.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeSimpleApplicationsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeSimpleApplicationsResponse`
        def DescribeSimpleApplications(request)
          body = send_request('DescribeSimpleApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSimpleApplicationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询简单集群列表

        # @param request: Request instance for DescribeSimpleClusters.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeSimpleClustersRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeSimpleClustersResponse`
        def DescribeSimpleClusters(request)
          body = send_request('DescribeSimpleClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSimpleClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询简单部署组列表

        # @param request: Request instance for DescribeSimpleGroups.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeSimpleGroupsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeSimpleGroupsResponse`
        def DescribeSimpleGroups(request)
          body = send_request('DescribeSimpleGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSimpleGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询简单命名空间列表

        # @param request: Request instance for DescribeSimpleNamespaces.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeSimpleNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeSimpleNamespacesResponse`
        def DescribeSimpleNamespaces(request)
          body = send_request('DescribeSimpleNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSimpleNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 服务统计页面：接口和服务维度

        # @param request: Request instance for DescribeStatistics.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeStatisticsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeStatisticsResponse`
        def DescribeStatistics(request)
          body = send_request('DescribeStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务详情

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeTaskDetailResponse`
        def DescribeTaskDetail(request)
          body = send_request('DescribeTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务最近一次执行状态

        # @param request: Request instance for DescribeTaskLastStatus.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeTaskLastStatusRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeTaskLastStatusResponse`
        def DescribeTaskLastStatus(request)
          body = send_request('DescribeTaskLastStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskLastStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 翻页查询任务列表

        # @param request: Request instance for DescribeTaskRecords.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeTaskRecordsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeTaskRecordsResponse`
        def DescribeTaskRecords(request)
          body = send_request('DescribeTaskRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网关API监控明细数据（仅单元化网关），非单元化网关使用DescribeApiUseDetail

        # @param request: Request instance for DescribeUnitApiUseDetail.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeUnitApiUseDetailRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeUnitApiUseDetailResponse`
        def DescribeUnitApiUseDetail(request)
          body = send_request('DescribeUnitApiUseDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnitApiUseDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单元化命名空间列表

        # @param request: Request instance for DescribeUnitNamespaces.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeUnitNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeUnitNamespacesResponse`
        def DescribeUnitNamespaces(request)
          body = send_request('DescribeUnitNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnitNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单元化规则详情

        # @param request: Request instance for DescribeUnitRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeUnitRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeUnitRuleResponse`
        def DescribeUnitRule(request)
          body = send_request('DescribeUnitRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnitRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单元化规则列表

        # @param request: Request instance for DescribeUnitRules.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeUnitRulesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeUnitRulesResponse`
        def DescribeUnitRules(request)
          body = send_request('DescribeUnitRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnitRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # TSF会将软件包上传到腾讯云对象存储（COS）。调用此接口获取上传信息，如目标地域，桶，包Id，存储路径，鉴权信息等，之后请使用COS API（或SDK）进行上传。
        # COS相关文档请查阅：https://cloud.tencent.com/document/product/436

        # @param request: Request instance for DescribeUploadInfo.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeUploadInfoRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeUploadInfoResponse`
        def DescribeUploadInfo(request)
          body = send_request('DescribeUploadInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUploadInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可用于被导入的命名空间列表

        # @param request: Request instance for DescribeUsableUnitNamespaces.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeUsableUnitNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeUsableUnitNamespacesResponse`
        def DescribeUsableUnitNamespaces(request)
          body = send_request('DescribeUsableUnitNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsableUnitNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停用任务

        # @param request: Request instance for DisableTask.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DisableTaskRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DisableTaskResponse`
        def DisableTask(request)
          body = send_request('DisableTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停用工作流

        # @param request: Request instance for DisableTaskFlow.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DisableTaskFlowRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DisableTaskFlowResponse`
        def DisableTaskFlow(request)
          body = send_request('DisableTaskFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableTaskFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 禁用单元化路由

        # @param request: Request instance for DisableUnitRoute.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DisableUnitRouteRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DisableUnitRouteResponse`
        def DisableUnitRoute(request)
          body = send_request('DisableUnitRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableUnitRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 禁用单元化规则

        # @param request: Request instance for DisableUnitRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DisableUnitRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DisableUnitRuleResponse`
        def DisableUnitRule(request)
          body = send_request('DisableUnitRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableUnitRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线Api分组

        # @param request: Request instance for DraftApiGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DraftApiGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DraftApiGroupResponse`
        def DraftApiGroup(request)
          body = send_request('DraftApiGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DraftApiGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用任务

        # @param request: Request instance for EnableTask.
        # @type request: :class:`Tencentcloud::tsf::V20180326::EnableTaskRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::EnableTaskResponse`
        def EnableTask(request)
          body = send_request('EnableTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用工作流

        # @param request: Request instance for EnableTaskFlow.
        # @type request: :class:`Tencentcloud::tsf::V20180326::EnableTaskFlowRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::EnableTaskFlowResponse`
        def EnableTaskFlow(request)
          body = send_request('EnableTaskFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableTaskFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用单元化路由

        # @param request: Request instance for EnableUnitRoute.
        # @type request: :class:`Tencentcloud::tsf::V20180326::EnableUnitRouteRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::EnableUnitRouteResponse`
        def EnableUnitRoute(request)
          body = send_request('EnableUnitRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableUnitRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用单元化规则

        # @param request: Request instance for EnableUnitRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::EnableUnitRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::EnableUnitRuleResponse`
        def EnableUnitRule(request)
          body = send_request('EnableUnitRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableUnitRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 手动执行一次任务。

        # @param request: Request instance for ExecuteTask.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ExecuteTaskRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ExecuteTaskResponse`
        def ExecuteTask(request)
          body = send_request('ExecuteTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExecuteTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 执行一次工作流

        # @param request: Request instance for ExecuteTaskFlow.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ExecuteTaskFlowRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ExecuteTaskFlowResponse`
        def ExecuteTaskFlow(request)
          body = send_request('ExecuteTaskFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExecuteTaskFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 虚拟机部署组添加实例

        # @param request: Request instance for ExpandGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ExpandGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ExpandGroupResponse`
        def ExpandGroup(request)
          body = send_request('ExpandGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExpandGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改容器部署组

        # @param request: Request instance for ModifyContainerGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ModifyContainerGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ModifyContainerGroupResponse`
        def ModifyContainerGroup(request)
          body = send_request('ModifyContainerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyContainerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改容器部署组实例数

        # @param request: Request instance for ModifyContainerReplicas.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ModifyContainerReplicasRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ModifyContainerReplicasResponse`
        def ModifyContainerReplicas(request)
          body = send_request('ModifyContainerReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyContainerReplicasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新泳道信息

        # @param request: Request instance for ModifyLane.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ModifyLaneRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ModifyLaneResponse`
        def ModifyLane(request)
          body = send_request('ModifyLane', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLaneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新泳道规则

        # @param request: Request instance for ModifyLaneRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ModifyLaneRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ModifyLaneRuleResponse`
        def ModifyLaneRule(request)
          body = send_request('ModifyLaneRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLaneRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改微服务详情

        # @param request: Request instance for ModifyMicroservice.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ModifyMicroserviceRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ModifyMicroserviceResponse`
        def ModifyMicroservice(request)
          body = send_request('ModifyMicroservice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMicroserviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改路径重写

        # @param request: Request instance for ModifyPathRewrite.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ModifyPathRewriteRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ModifyPathRewriteResponse`
        def ModifyPathRewrite(request)
          body = send_request('ModifyPathRewrite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPathRewriteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改任务

        # @param request: Request instance for ModifyTask.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ModifyTaskRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ModifyTaskResponse`
        def ModifyTask(request)
          body = send_request('ModifyTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调用该接口和COS的上传接口后，需要调用此接口更新TSF中保存的程序包状态。
        # 调用此接口完成后，才标志上传包流程结束。

        # @param request: Request instance for ModifyUploadInfo.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ModifyUploadInfoRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ModifyUploadInfoResponse`
        def ModifyUploadInfo(request)
          body = send_request('ModifyUploadInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUploadInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定解绑tcr仓库

        # @param request: Request instance for OperateApplicationTcrBinding.
        # @type request: :class:`Tencentcloud::tsf::V20180326::OperateApplicationTcrBindingRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::OperateApplicationTcrBindingResponse`
        def OperateApplicationTcrBinding(request)
          body = send_request('OperateApplicationTcrBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OperateApplicationTcrBindingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新执行任务

        # @param request: Request instance for RedoTask.
        # @type request: :class:`Tencentcloud::tsf::V20180326::RedoTaskRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::RedoTaskResponse`
        def RedoTask(request)
          body = send_request('RedoTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RedoTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新执行任务批次

        # @param request: Request instance for RedoTaskBatch.
        # @type request: :class:`Tencentcloud::tsf::V20180326::RedoTaskBatchRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::RedoTaskBatchResponse`
        def RedoTaskBatch(request)
          body = send_request('RedoTaskBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RedoTaskBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新执行在某个节点上执行任务。

        # @param request: Request instance for RedoTaskExecute.
        # @type request: :class:`Tencentcloud::tsf::V20180326::RedoTaskExecuteRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::RedoTaskExecuteResponse`
        def RedoTaskExecute(request)
          body = send_request('RedoTaskExecute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RedoTaskExecuteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新执行工作流批次

        # @param request: Request instance for RedoTaskFlowBatch.
        # @type request: :class:`Tencentcloud::tsf::V20180326::RedoTaskFlowBatchRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::RedoTaskFlowBatchResponse`
        def RedoTaskFlowBatch(request)
          body = send_request('RedoTaskFlowBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RedoTaskFlowBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布Api分组

        # @param request: Request instance for ReleaseApiGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ReleaseApiGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ReleaseApiGroupResponse`
        def ReleaseApiGroup(request)
          body = send_request('ReleaseApiGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseApiGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布配置

        # @param request: Request instance for ReleaseConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ReleaseConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ReleaseConfigResponse`
        def ReleaseConfig(request)
          body = send_request('ReleaseConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布文件配置

        # @param request: Request instance for ReleaseFileConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ReleaseFileConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ReleaseFileConfigResponse`
        def ReleaseFileConfig(request)
          body = send_request('ReleaseFileConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseFileConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布公共配置

        # @param request: Request instance for ReleasePublicConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ReleasePublicConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ReleasePublicConfigResponse`
        def ReleasePublicConfig(request)
          body = send_request('ReleasePublicConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleasePublicConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从 TSF 集群中批量移除云主机节点

        # @param request: Request instance for RemoveInstances.
        # @type request: :class:`Tencentcloud::tsf::V20180326::RemoveInstancesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::RemoveInstancesResponse`
        def RemoveInstances(request)
          body = send_request('RemoveInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 撤回已发布的配置

        # @param request: Request instance for RevocationConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::RevocationConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::RevocationConfigResponse`
        def RevocationConfig(request)
          body = send_request('RevocationConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevocationConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 撤回已发布的公共配置

        # @param request: Request instance for RevocationPublicConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::RevocationPublicConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::RevocationPublicConfigResponse`
        def RevocationPublicConfig(request)
          body = send_request('RevocationPublicConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevocationPublicConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回滚配置

        # @param request: Request instance for RollbackConfig.
        # @type request: :class:`Tencentcloud::tsf::V20180326::RollbackConfigRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::RollbackConfigResponse`
        def RollbackConfig(request)
          body = send_request('RollbackConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 业务日志搜索

        # @param request: Request instance for SearchBusinessLog.
        # @type request: :class:`Tencentcloud::tsf::V20180326::SearchBusinessLogRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::SearchBusinessLogResponse`
        def SearchBusinessLog(request)
          body = send_request('SearchBusinessLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchBusinessLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 标准输出日志搜索

        # @param request: Request instance for SearchStdoutLog.
        # @type request: :class:`Tencentcloud::tsf::V20180326::SearchStdoutLogRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::SearchStdoutLogResponse`
        def SearchStdoutLog(request)
          body = send_request('SearchStdoutLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchStdoutLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线部署组所有机器实例

        # @param request: Request instance for ShrinkGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ShrinkGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ShrinkGroupResponse`
        def ShrinkGroup(request)
          body = send_request('ShrinkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ShrinkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 虚拟机部署组下线实例

        # @param request: Request instance for ShrinkInstances.
        # @type request: :class:`Tencentcloud::tsf::V20180326::ShrinkInstancesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::ShrinkInstancesResponse`
        def ShrinkInstances(request)
          body = send_request('ShrinkInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ShrinkInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动容器部署组

        # @param request: Request instance for StartContainerGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::StartContainerGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::StartContainerGroupResponse`
        def StartContainerGroup(request)
          body = send_request('StartContainerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartContainerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动分组

        # @param request: Request instance for StartGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::StartGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::StartGroupResponse`
        def StartGroup(request)
          body = send_request('StartGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止容器部署组

        # @param request: Request instance for StopContainerGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::StopContainerGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::StopContainerGroupResponse`
        def StopContainerGroup(request)
          body = send_request('StopContainerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopContainerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止虚拟机部署组

        # @param request: Request instance for StopGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::StopGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::StopGroupResponse`
        def StopGroup(request)
          body = send_request('StopGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止执行中的任务批次， 非运行中的任务不可调用。

        # @param request: Request instance for StopTaskBatch.
        # @type request: :class:`Tencentcloud::tsf::V20180326::StopTaskBatchRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::StopTaskBatchResponse`
        def StopTaskBatch(request)
          body = send_request('StopTaskBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopTaskBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止正在某个节点上执行的任务

        # @param request: Request instance for StopTaskExecute.
        # @type request: :class:`Tencentcloud::tsf::V20180326::StopTaskExecuteRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::StopTaskExecuteResponse`
        def StopTaskExecute(request)
          body = send_request('StopTaskExecute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopTaskExecuteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止一个工作流批次

        # @param request: Request instance for TerminateTaskFlowBatch.
        # @type request: :class:`Tencentcloud::tsf::V20180326::TerminateTaskFlowBatchRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::TerminateTaskFlowBatchResponse`
        def TerminateTaskFlowBatch(request)
          body = send_request('TerminateTaskFlowBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateTaskFlowBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # API分组批量与网关解绑

        # @param request: Request instance for UnbindApiGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::UnbindApiGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::UnbindApiGroupResponse`
        def UnbindApiGroup(request)
          body = send_request('UnbindApiGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindApiGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新Api分组

        # @param request: Request instance for UpdateApiGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::UpdateApiGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::UpdateApiGroupResponse`
        def UpdateApiGroup(request)
          body = send_request('UpdateApiGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateApiGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新API限流规则

        # @param request: Request instance for UpdateApiRateLimitRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::UpdateApiRateLimitRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::UpdateApiRateLimitRuleResponse`
        def UpdateApiRateLimitRule(request)
          body = send_request('UpdateApiRateLimitRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateApiRateLimitRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量更新API限流规则

        # @param request: Request instance for UpdateApiRateLimitRules.
        # @type request: :class:`Tencentcloud::tsf::V20180326::UpdateApiRateLimitRulesRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::UpdateApiRateLimitRulesResponse`
        def UpdateApiRateLimitRules(request)
          body = send_request('UpdateApiRateLimitRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateApiRateLimitRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量更新API超时

        # @param request: Request instance for UpdateApiTimeouts.
        # @type request: :class:`Tencentcloud::tsf::V20180326::UpdateApiTimeoutsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::UpdateApiTimeoutsResponse`
        def UpdateApiTimeouts(request)
          body = send_request('UpdateApiTimeouts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateApiTimeoutsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新API

        # @param request: Request instance for UpdateGatewayApi.
        # @type request: :class:`Tencentcloud::tsf::V20180326::UpdateGatewayApiRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::UpdateGatewayApiResponse`
        def UpdateGatewayApi(request)
          body = send_request('UpdateGatewayApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGatewayApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新健康检查配置

        # @param request: Request instance for UpdateHealthCheckSettings.
        # @type request: :class:`Tencentcloud::tsf::V20180326::UpdateHealthCheckSettingsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::UpdateHealthCheckSettingsResponse`
        def UpdateHealthCheckSettings(request)
          body = send_request('UpdateHealthCheckSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateHealthCheckSettingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新仓库信息

        # @param request: Request instance for UpdateRepository.
        # @type request: :class:`Tencentcloud::tsf::V20180326::UpdateRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::UpdateRepositoryResponse`
        def UpdateRepository(request)
          body = send_request('UpdateRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新单元化规则

        # @param request: Request instance for UpdateUnitRule.
        # @type request: :class:`Tencentcloud::tsf::V20180326::UpdateUnitRuleRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::UpdateUnitRuleResponse`
        def UpdateUnitRule(request)
          body = send_request('UpdateUnitRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUnitRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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