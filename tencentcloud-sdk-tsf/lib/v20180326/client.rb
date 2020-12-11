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
        @@api_version = '2018-03-26'
        @@endpoint = 'tsf.tencentcloudapi.com'
        @@sdk_version = 'TSF_' + File.read(File.expand_path('../VERSION', __dir__)).strip


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

        # 创建Serverless部署组

        # @param request: Request instance for CreateServerlessGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::CreateServerlessGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::CreateServerlessGroupResponse`
        def CreateServerlessGroup(request)
          body = send_request('CreateServerlessGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServerlessGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 部署容器应用

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

        # 部署Serverless应用

        # @param request: Request instance for DeployServerlessGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DeployServerlessGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DeployServerlessGroupResponse`
        def DeployServerlessGroup(request)
          body = send_request('DeployServerlessGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployServerlessGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        #  容器部署组详情

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

        # 查询Serverless部署组明细

        # @param request: Request instance for DescribeServerlessGroup.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeServerlessGroupRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeServerlessGroupResponse`
        def DescribeServerlessGroup(request)
          body = send_request('DescribeServerlessGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServerlessGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Serverless部署组列表

        # @param request: Request instance for DescribeServerlessGroups.
        # @type request: :class:`Tencentcloud::tsf::V20180326::DescribeServerlessGroupsRequest`
        # @rtype: :class:`Tencentcloud::tsf::V20180326::DescribeServerlessGroupsResponse`
        def DescribeServerlessGroups(request)
          body = send_request('DescribeServerlessGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServerlessGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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


      end
    end
  end
end