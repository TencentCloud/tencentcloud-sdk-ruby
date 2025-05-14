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
  module Thpc
    module V20230321
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-03-21'
            api_endpoint = 'thpc.tencentcloudapi.com'
            sdk_version = 'THPC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（AddClusterStorageOption）用于添加集群存储选项信息。

        # @param request: Request instance for AddClusterStorageOption.
        # @type request: :class:`Tencentcloud::thpc::V20230321::AddClusterStorageOptionRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::AddClusterStorageOptionResponse`
        def AddClusterStorageOption(request)
          body = send_request('AddClusterStorageOption', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddClusterStorageOptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(AddNodes)用于添加一个或者多个计算节点或者登录节点到指定集群。

        # @param request: Request instance for AddNodes.
        # @type request: :class:`Tencentcloud::thpc::V20230321::AddNodesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::AddNodesResponse`
        def AddNodes(request)
          body = send_request('AddNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(AddQueue)用于添加队列到指定集群。
        # * 本接口为目前只支持SchedulerType为SLURM的集群。
        # * 单个集群中队列数量上限为10个。

        # @param request: Request instance for AddQueue.
        # @type request: :class:`Tencentcloud::thpc::V20230321::AddQueueRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::AddQueueResponse`
        def AddQueue(request)
          body = send_request('AddQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (AttachNodes) 用于绑定一个或者多个计算节点指定资源到指定集群中。

        # @param request: Request instance for AttachNodes.
        # @type request: :class:`Tencentcloud::thpc::V20230321::AttachNodesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::AttachNodesResponse`
        def AttachNodes(request)
          body = send_request('AttachNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateCluster) 用于创建并启动集群。

        # * 本接口为异步接口， 当创建集群请求下发成功后会返回一个集群`ID`和一个`RequestId`，此时创建集群操作并未立即完成。在此期间集群的状态将会处于“PENDING”或者“INITING”，集群创建结果可以通过调用 [DescribeClusters](https://cloud.tencent.com/document/product/1527/72100)  接口查询，如果集群状态(ClusterStatus)变为“RUNNING(运行中)”，则代表集群创建成功，“ INIT_FAILED”代表集群创建失败。

        # @param request: Request instance for CreateCluster.
        # @type request: :class:`Tencentcloud::thpc::V20230321::CreateClusterRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::CreateClusterResponse`
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

        # 本接口 (CreateWorkspaces) 用于创建工作空间。

        # @param request: Request instance for CreateWorkspaces.
        # @type request: :class:`Tencentcloud::thpc::V20230321::CreateWorkspacesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::CreateWorkspacesResponse`
        def CreateWorkspaces(request)
          body = send_request('CreateWorkspaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkspacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteCluster）用于删除一个指定的集群。

        # @param request: Request instance for DeleteCluster.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DeleteClusterRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DeleteClusterResponse`
        def DeleteCluster(request)
          body = send_request('DeleteCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteClusterStorageOption) 用于删除集群存储选项信息。

        # @param request: Request instance for DeleteClusterStorageOption.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DeleteClusterStorageOptionRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DeleteClusterStorageOptionResponse`
        def DeleteClusterStorageOption(request)
          body = send_request('DeleteClusterStorageOption', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterStorageOptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteNodes)用于删除指定集群中一个或者多个计算节点或者登录节点。

        # @param request: Request instance for DeleteNodes.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DeleteNodesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DeleteNodesResponse`
        def DeleteNodes(request)
          body = send_request('DeleteNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteQueue)用于从指定集群删除队列。
        # * 本接口为目前只支持SchedulerType为SLURM的集群。

        # * 删除队列时，需要保证队列内不存在节点。

        # @param request: Request instance for DeleteQueue.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DeleteQueueRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DeleteQueueResponse`
        def DeleteQueue(request)
          body = send_request('DeleteQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAutoScalingConfiguration)用于查询集群弹性伸缩配置信息。本接口仅适用于弹性伸缩类型为THPC_AS的集群。

        # @param request: Request instance for DescribeAutoScalingConfiguration.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DescribeAutoScalingConfigurationRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DescribeAutoScalingConfigurationResponse`
        def DescribeAutoScalingConfiguration(request)
          body = send_request('DescribeAutoScalingConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoScalingConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeClusterActivities）用于查询集群活动历史记录列表。

        # @param request: Request instance for DescribeClusterActivities.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DescribeClusterActivitiesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DescribeClusterActivitiesResponse`
        def DescribeClusterActivities(request)
          body = send_request('DescribeClusterActivities', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterActivitiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeClusterStorageOption) 用于查询集群存储选项信息。

        # @param request: Request instance for DescribeClusterStorageOption.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DescribeClusterStorageOptionRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DescribeClusterStorageOptionResponse`
        def DescribeClusterStorageOption(request)
          body = send_request('DescribeClusterStorageOption', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterStorageOptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeClusters）用于查询集群列表。

        # @param request: Request instance for DescribeClusters.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DescribeClustersRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DescribeClustersResponse`
        def DescribeClusters(request)
          body = send_request('DescribeClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeInitNodeScripts) 用于查询节点初始化脚本列表。

        # @param request: Request instance for DescribeInitNodeScripts.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DescribeInitNodeScriptsRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DescribeInitNodeScriptsResponse`
        def DescribeInitNodeScripts(request)
          body = send_request('DescribeInitNodeScripts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInitNodeScriptsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeNodes) 用于查询指定集群节点概览信息列表。

        # @param request: Request instance for DescribeNodes.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DescribeNodesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DescribeNodesResponse`
        def DescribeNodes(request)
          body = send_request('DescribeNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeQueues)用于查询指定集群队列概览信息列表。

        # @param request: Request instance for DescribeQueues.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DescribeQueuesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DescribeQueuesResponse`
        def DescribeQueues(request)
          body = send_request('DescribeQueues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQueuesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeWorkspaces）用于查询工作空间列表。

        # @param request: Request instance for DescribeWorkspaces.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DescribeWorkspacesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DescribeWorkspacesResponse`
        def DescribeWorkspaces(request)
          body = send_request('DescribeWorkspaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DetachNodes) 用于将一个或者多个计算节点从集群中移除，但是不销毁指定计算资源。

        # @param request: Request instance for DetachNodes.
        # @type request: :class:`Tencentcloud::thpc::V20230321::DetachNodesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::DetachNodesResponse`
        def DetachNodes(request)
          body = send_request('DetachNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyInitNodeScripts) 用于修改节点初始化脚本。

        # @param request: Request instance for ModifyInitNodeScripts.
        # @type request: :class:`Tencentcloud::thpc::V20230321::ModifyInitNodeScriptsRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::ModifyInitNodeScriptsResponse`
        def ModifyInitNodeScripts(request)
          body = send_request('ModifyInitNodeScripts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInitNodeScriptsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyWorkspacesAttribute) 用于修改工作空间的属性（目前只支持修改工作空间的名称）。

        # @param request: Request instance for ModifyWorkspacesAttribute.
        # @type request: :class:`Tencentcloud::thpc::V20230321::ModifyWorkspacesAttributeRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::ModifyWorkspacesAttributeResponse`
        def ModifyWorkspacesAttribute(request)
          body = send_request('ModifyWorkspacesAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkspacesAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyWorkspacesAttribute) 用于修改工作空间的属性（目前只支持修改工作空间的名称）。

        # @param request: Request instance for ModifyWorkspacesRenewFlag.
        # @type request: :class:`Tencentcloud::thpc::V20230321::ModifyWorkspacesRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::ModifyWorkspacesRenewFlagResponse`
        def ModifyWorkspacesRenewFlag(request)
          body = send_request('ModifyWorkspacesRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkspacesRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(SetAutoScalingConfiguration)用于为集群设置集群弹性伸缩配置信息。

        # @param request: Request instance for SetAutoScalingConfiguration.
        # @type request: :class:`Tencentcloud::thpc::V20230321::SetAutoScalingConfigurationRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::SetAutoScalingConfigurationResponse`
        def SetAutoScalingConfiguration(request)
          body = send_request('SetAutoScalingConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetAutoScalingConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (TerminateWorkspaces) 用于主动退还工作空间。

        # @param request: Request instance for TerminateWorkspaces.
        # @type request: :class:`Tencentcloud::thpc::V20230321::TerminateWorkspacesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20230321::TerminateWorkspacesResponse`
        def TerminateWorkspaces(request)
          body = send_request('TerminateWorkspaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateWorkspacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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