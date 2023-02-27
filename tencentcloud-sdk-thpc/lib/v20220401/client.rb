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
    module V20220401
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-04-01'
            api_endpoint = 'thpc.tencentcloudapi.com'
            sdk_version = 'THPC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（AddClusterStorageOption）用于添加集群存储选项信息。

        # @param request: Request instance for AddClusterStorageOption.
        # @type request: :class:`Tencentcloud::thpc::V20220401::AddClusterStorageOptionRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::AddClusterStorageOptionResponse`
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
        # @type request: :class:`Tencentcloud::thpc::V20220401::AddNodesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::AddNodesResponse`
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

        # @param request: Request instance for AddQueue.
        # @type request: :class:`Tencentcloud::thpc::V20220401::AddQueueRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::AddQueueResponse`
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

        # 本接口(BindAutoScalingGroup)用于为集群队列绑定弹性伸缩组

        # @param request: Request instance for BindAutoScalingGroup.
        # @type request: :class:`Tencentcloud::thpc::V20220401::BindAutoScalingGroupRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::BindAutoScalingGroupResponse`
        def BindAutoScalingGroup(request)
          body = send_request('BindAutoScalingGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindAutoScalingGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for CreateCluster.
        # @type request: :class:`Tencentcloud::thpc::V20220401::CreateClusterRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::CreateClusterResponse`
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

        # 本接口（DeleteCluster）用于删除一个指定的集群。

        # @param request: Request instance for DeleteCluster.
        # @type request: :class:`Tencentcloud::thpc::V20220401::DeleteClusterRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DeleteClusterResponse`
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
        # @type request: :class:`Tencentcloud::thpc::V20220401::DeleteClusterStorageOptionRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DeleteClusterStorageOptionResponse`
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
        # @type request: :class:`Tencentcloud::thpc::V20220401::DeleteNodesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DeleteNodesResponse`
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

        # * 删除队列时，需要保证队列内不存在节点。

        # @param request: Request instance for DeleteQueue.
        # @type request: :class:`Tencentcloud::thpc::V20220401::DeleteQueueRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DeleteQueueResponse`
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
        # @type request: :class:`Tencentcloud::thpc::V20220401::DescribeAutoScalingConfigurationRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DescribeAutoScalingConfigurationResponse`
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
        # @type request: :class:`Tencentcloud::thpc::V20220401::DescribeClusterActivitiesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DescribeClusterActivitiesResponse`
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
        # @type request: :class:`Tencentcloud::thpc::V20220401::DescribeClusterStorageOptionRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DescribeClusterStorageOptionResponse`
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
        # @type request: :class:`Tencentcloud::thpc::V20220401::DescribeClustersRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DescribeClustersResponse`
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

        # 本接口 (DescribeNodes) 用于查询指定集群节点概览信息列表。

        # @param request: Request instance for DescribeNodes.
        # @type request: :class:`Tencentcloud::thpc::V20220401::DescribeNodesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DescribeNodesResponse`
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
        # @type request: :class:`Tencentcloud::thpc::V20220401::DescribeQueuesRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::DescribeQueuesResponse`
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

        # 本接口(SetAutoScalingConfiguration)用于为集群设置集群弹性伸缩配置信息。

        # @param request: Request instance for SetAutoScalingConfiguration.
        # @type request: :class:`Tencentcloud::thpc::V20220401::SetAutoScalingConfigurationRequest`
        # @rtype: :class:`Tencentcloud::thpc::V20220401::SetAutoScalingConfigurationResponse`
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


      end
    end
  end
end