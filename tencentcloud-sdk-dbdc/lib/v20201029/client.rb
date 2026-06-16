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
  module Dbdc
    module V20201029
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-10-29'
            api_endpoint = 'dbdc.tencentcloudapi.com'
            sdk_version = 'DBDC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 该接口（AddNodesToDBCustomCluster）用于为 DB Custom 集群上架节点。

        # @param request: Request instance for AddNodesToDBCustomCluster.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::AddNodesToDBCustomClusterRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::AddNodesToDBCustomClusterResponse`
        def AddNodesToDBCustomCluster(request)
          body = send_request('AddNodesToDBCustomCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddNodesToDBCustomClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查服务相关角色是否已创建

        # @param request: Request instance for CheckRoleAuthorized.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::CheckRoleAuthorizedRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::CheckRoleAuthorizedResponse`
        def CheckRoleAuthorized(request)
          body = send_request('CheckRoleAuthorized', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckRoleAuthorizedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateDBCustomCluster）用于创建 DB Custom 集群。

        # @param request: Request instance for CreateDBCustomCluster.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::CreateDBCustomClusterRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::CreateDBCustomClusterResponse`
        def CreateDBCustomCluster(request)
          body = send_request('CreateDBCustomCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBCustomClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateDBCustomNodes）用于创建 DB Custom 节点(需支付)。

        # @param request: Request instance for CreateDBCustomNodes.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::CreateDBCustomNodesRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::CreateDBCustomNodesResponse`
        def CreateDBCustomNodes(request)
          body = send_request('CreateDBCustomNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBCustomNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口(DescribeDBCustomClusterDetail) 用于查询 DB Custom 集群的详情信息。

        # @param request: Request instance for DescribeDBCustomClusterDetail.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomClusterDetailRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomClusterDetailResponse`
        def DescribeDBCustomClusterDetail(request)
          body = send_request('DescribeDBCustomClusterDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBCustomClusterDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeDBCustomClusterKubeconfig）用于查询 DB Custom 集群 Kubeconfig。

        # @param request: Request instance for DescribeDBCustomClusterKubeconfig.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomClusterKubeconfigRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomClusterKubeconfigResponse`
        def DescribeDBCustomClusterKubeconfig(request)
          body = send_request('DescribeDBCustomClusterKubeconfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBCustomClusterKubeconfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeDBCustomClusterNodes）用于查询 DB Custom 集群中的节点列表。

        # @param request: Request instance for DescribeDBCustomClusterNodes.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomClusterNodesRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomClusterNodesResponse`
        def DescribeDBCustomClusterNodes(request)
          body = send_request('DescribeDBCustomClusterNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBCustomClusterNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeDBCustomClusters）为DB Custom 集群列表查询接口。

        # @param request: Request instance for DescribeDBCustomClusters.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomClustersRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomClustersResponse`
        def DescribeDBCustomClusters(request)
          body = send_request('DescribeDBCustomClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBCustomClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeDBCustomImages）用于查询 DB Custom 可用的操作系统镜像列表。

        # @param request: Request instance for DescribeDBCustomImages.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomImagesRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomImagesResponse`
        def DescribeDBCustomImages(request)
          body = send_request('DescribeDBCustomImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBCustomImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeDBCustomNodes）用于查询 DB Custom 节点列表。

        # @param request: Request instance for DescribeDBCustomNodes.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomNodesRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomNodesResponse`
        def DescribeDBCustomNodes(request)
          body = send_request('DescribeDBCustomNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBCustomNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeDBCustomTaskStatus）用于查询 DB Custom 任务的状态。

        # @param request: Request instance for DescribeDBCustomTaskStatus.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeDBCustomTaskStatusResponse`
        def DescribeDBCustomTaskStatus(request)
          body = send_request('DescribeDBCustomTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBCustomTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询独享集群内的DB实例列表

        # @param request: Request instance for DescribeDBInstances.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeDBInstancesResponse`
        def DescribeDBInstances(request)
          body = send_request('DescribeDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询主机列表

        # @param request: Request instance for DescribeHostList.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeHostListRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeHostListResponse`
        def DescribeHostList(request)
          body = send_request('DescribeHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询独享集群详情

        # @param request: Request instance for DescribeInstanceDetail.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeInstanceDetailResponse`
        def DescribeInstanceDetail(request)
          body = send_request('DescribeInstanceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询独享集群实例列表

        # @param request: Request instance for DescribeInstanceList.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeInstanceListRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeInstanceListResponse`
        def DescribeInstanceList(request)
          body = send_request('DescribeInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据不同地域不同用户，获取集群列表信息

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeInstancesResponse`
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

        # 该接口（DestroyDBCustomCluster）用于销毁 DB Custom 集群。

        # @param request: Request instance for DestroyDBCustomCluster.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DestroyDBCustomClusterRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DestroyDBCustomClusterResponse`
        def DestroyDBCustomCluster(request)
          body = send_request('DestroyDBCustomCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyDBCustomClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DestroyDBCustomNode）用于销毁 DB Custom 节点。

        # @param request: Request instance for DestroyDBCustomNode.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DestroyDBCustomNodeRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DestroyDBCustomNodeResponse`
        def DestroyDBCustomNode(request)
          body = send_request('DestroyDBCustomNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyDBCustomNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口 (IsolateDBCustomNode) 用于隔离 DB Custom 节点。

        # @param request: Request instance for IsolateDBCustomNode.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::IsolateDBCustomNodeRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::IsolateDBCustomNodeResponse`
        def IsolateDBCustomNode(request)
          body = send_request('IsolateDBCustomNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateDBCustomNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（ModifyDBCustomClusterTags）用于修改 DB Custom 集群的标签配置。

        # @param request: Request instance for ModifyDBCustomClusterTags.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::ModifyDBCustomClusterTagsRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::ModifyDBCustomClusterTagsResponse`
        def ModifyDBCustomClusterTags(request)
          body = send_request('ModifyDBCustomClusterTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBCustomClusterTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（ModifyDBCustomNodeTags）用于修改 DB Custom 节点的标签配置。

        # @param request: Request instance for ModifyDBCustomNodeTags.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::ModifyDBCustomNodeTagsRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::ModifyDBCustomNodeTagsResponse`
        def ModifyDBCustomNodeTags(request)
          body = send_request('ModifyDBCustomNodeTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBCustomNodeTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改集群名称

        # @param request: Request instance for ModifyInstanceName.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::ModifyInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::ModifyInstanceNameResponse`
        def ModifyInstanceName(request)
          body = send_request('ModifyInstanceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（RemoveNodesFromDBCustomCluster）用于从 DB Custom 集群移除节点。

        # @param request: Request instance for RemoveNodesFromDBCustomCluster.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::RemoveNodesFromDBCustomClusterRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::RemoveNodesFromDBCustomClusterResponse`
        def RemoveNodesFromDBCustomCluster(request)
          body = send_request('RemoveNodesFromDBCustomCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveNodesFromDBCustomClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（RenewDBCustomNode）用于给 DB Custom 节点续费。

        # @param request: Request instance for RenewDBCustomNode.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::RenewDBCustomNodeRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::RenewDBCustomNodeResponse`
        def RenewDBCustomNode(request)
          body = send_request('RenewDBCustomNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewDBCustomNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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