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
  module Tdmq
    module V20200217
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-02-17'
            api_endpoint = 'tdmq.tencentcloudapi.com'
            sdk_version = 'TDMQ_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 根据提供的 MessageID 确认指定 topic 中的消息

        # @param request: Request instance for AcknowledgeMessage.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::AcknowledgeMessageRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::AcknowledgeMessageResponse`
        def AcknowledgeMessage(request)
          body = send_request('AcknowledgeMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcknowledgeMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 清空cmq消息队列中的消息

        # @param request: Request instance for ClearCmqQueue.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ClearCmqQueueRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ClearCmqQueueResponse`
        def ClearCmqQueue(request)
          body = send_request('ClearCmqQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearCmqQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 清空订阅者消息标签

        # @param request: Request instance for ClearCmqSubscriptionFilterTags.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ClearCmqSubscriptionFilterTagsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ClearCmqSubscriptionFilterTagsResponse`
        def ClearCmqSubscriptionFilterTags(request)
          body = send_request('ClearCmqSubscriptionFilterTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearCmqSubscriptionFilterTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户的集群

        # @param request: Request instance for CreateCluster.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateClusterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateClusterResponse`
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

        # 创建cmq队列接口

        # @param request: Request instance for CreateCmqQueue.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateCmqQueueRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateCmqQueueResponse`
        def CreateCmqQueue(request)
          body = send_request('CreateCmqQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCmqQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建cmq订阅接口

        # @param request: Request instance for CreateCmqSubscribe.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateCmqSubscribeRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateCmqSubscribeResponse`
        def CreateCmqSubscribe(request)
          body = send_request('CreateCmqSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCmqSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建cmq主题

        # @param request: Request instance for CreateCmqTopic.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateCmqTopicRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateCmqTopicResponse`
        def CreateCmqTopic(request)
          body = send_request('CreateCmqTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCmqTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在用户账户下创建消息队列 Tdmq 命名空间

        # @param request: Request instance for CreateEnvironment.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateEnvironmentResponse`
        def CreateEnvironment(request)
          body = send_request('CreateEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEnvironmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建环境角色授权

        # @param request: Request instance for CreateEnvironmentRole.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateEnvironmentRoleRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateEnvironmentRoleResponse`
        def CreateEnvironmentRole(request)
          body = send_request('CreateEnvironmentRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEnvironmentRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建专业集群——预付费，仅通过api调用

        # @param request: Request instance for CreateProCluster.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateProClusterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateProClusterResponse`
        def CreateProCluster(request)
          body = send_request('CreateProCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建RabbitMQ路由关系

        # @param request: Request instance for CreateRabbitMQBinding.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRabbitMQBindingRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRabbitMQBindingResponse`
        def CreateRabbitMQBinding(request)
          body = send_request('CreateRabbitMQBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRabbitMQBindingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建RabbitMQ的用户

        # @param request: Request instance for CreateRabbitMQUser.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRabbitMQUserRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRabbitMQUserResponse`
        def CreateRabbitMQUser(request)
          body = send_request('CreateRabbitMQUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRabbitMQUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 RabbitMQ 托管版实例

        # @param request: Request instance for CreateRabbitMQVipInstance.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRabbitMQVipInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRabbitMQVipInstanceResponse`
        def CreateRabbitMQVipInstance(request)
          body = send_request('CreateRabbitMQVipInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRabbitMQVipInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建RabbitMQ的vhost

        # @param request: Request instance for CreateRabbitMQVirtualHost.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRabbitMQVirtualHostRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRabbitMQVirtualHostResponse`
        def CreateRabbitMQVirtualHost(request)
          body = send_request('CreateRabbitMQVirtualHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRabbitMQVirtualHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 RocketMQ 集群。
        # 当前 API 适用集群：4.x 虚拟集群。创建 4.x 专享或通用集群的接口文档见 [CreateRocketMQVipInstance](https://cloud.tencent.com/document/api/1179/95721)，创建 5.x 集群接口文档见 [CreateInstance](https://cloud.tencent.com/document/api/1493/97868)。

        # @param request: Request instance for CreateRocketMQCluster.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQClusterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQClusterResponse`
        def CreateRocketMQCluster(request)
          body = send_request('CreateRocketMQCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRocketMQClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建角色授权。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的创建角色接口文档见 [CreateRole](https://cloud.tencent.com/document/api/1493/98864)。

        # @param request: Request instance for CreateRocketMQEnvironmentRole.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQEnvironmentRoleRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQEnvironmentRoleResponse`
        def CreateRocketMQEnvironmentRole(request)
          body = send_request('CreateRocketMQEnvironmentRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRocketMQEnvironmentRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 RocketMQ 消费组。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。创建 5.x 集群消费组的接口文档见 [CreateConsumerGroup](https://cloud.tencent.com/document/api/1493/97943)。

        # @param request: Request instance for CreateRocketMQGroup.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQGroupRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQGroupResponse`
        def CreateRocketMQGroup(request)
          body = send_request('CreateRocketMQGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRocketMQGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 RocketMQ 命名空间。
        # 当前 API 适用集群：4.x 虚拟集群和 4.x 专享集群，其他集群类型均不支持该功能。

        # @param request: Request instance for CreateRocketMQNamespace.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQNamespaceResponse`
        def CreateRocketMQNamespace(request)
          body = send_request('CreateRocketMQNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRocketMQNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建角色。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的创建角色接口文档见 [CreateRole](https://cloud.tencent.com/document/api/1493/98864)。

        # @param request: Request instance for CreateRocketMQRole.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQRoleRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQRoleResponse`
        def CreateRocketMQRole(request)
          body = send_request('CreateRocketMQRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRocketMQRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量创建 RocketMQ 主题。
        # 当前云 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的创建 Topic 接口文档见 [CreateTopic](https://cloud.tencent.com/document/api/1493/97947)。

        # @param request: Request instance for CreateRocketMQTopic.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQTopicRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQTopicResponse`
        def CreateRocketMQTopic(request)
          body = send_request('CreateRocketMQTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRocketMQTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 RocketMQ 主题。
        # 当前云 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的创建 Topic 接口文档见 [CreateTopic](https://cloud.tencent.com/document/api/1493/97947)。

        # @param request: Request instance for CreateRocketMQTopicV2.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQTopicV2Request`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQTopicV2Response`
        def CreateRocketMQTopicV2(request)
          body = send_request('CreateRocketMQTopicV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRocketMQTopicV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 RocketMQ 4.x 集群。
        # 当前 API 适用集群：4.x 专享集群 和 4.x 通用集群。创建 5.x 集群的接口文档见 [CreateInstance](https://cloud.tencent.com/document/api/1493/97868)。

        # @param request: Request instance for CreateRocketMQVipInstance.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQVipInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRocketMQVipInstanceResponse`
        def CreateRocketMQVipInstance(request)
          body = send_request('CreateRocketMQVipInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRocketMQVipInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建角色

        # @param request: Request instance for CreateRole.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateRoleRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateRoleResponse`
        def CreateRole(request)
          body = send_request('CreateRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个主题的订阅关系

        # @param request: Request instance for CreateSubscription.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateSubscriptionRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateSubscriptionResponse`
        def CreateSubscription(request)
          body = send_request('CreateSubscription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubscriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增指定分区、类型的消息主题

        # @param request: Request instance for CreateTopic.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::CreateTopicRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::CreateTopicResponse`
        def CreateTopic(request)
          body = send_request('CreateTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除集群

        # @param request: Request instance for DeleteCluster.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteClusterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteClusterResponse`
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

        # 删除cmq队列

        # @param request: Request instance for DeleteCmqQueue.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteCmqQueueRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteCmqQueueResponse`
        def DeleteCmqQueue(request)
          body = send_request('DeleteCmqQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCmqQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除cmq订阅

        # @param request: Request instance for DeleteCmqSubscribe.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteCmqSubscribeRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteCmqSubscribeResponse`
        def DeleteCmqSubscribe(request)
          body = send_request('DeleteCmqSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCmqSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除cmq主题

        # @param request: Request instance for DeleteCmqTopic.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteCmqTopicRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteCmqTopicResponse`
        def DeleteCmqTopic(request)
          body = send_request('DeleteCmqTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCmqTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除环境角色授权。

        # @param request: Request instance for DeleteEnvironmentRoles.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteEnvironmentRolesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteEnvironmentRolesResponse`
        def DeleteEnvironmentRoles(request)
          body = send_request('DeleteEnvironmentRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEnvironmentRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除租户下的命名空间

        # @param request: Request instance for DeleteEnvironments.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteEnvironmentsResponse`
        def DeleteEnvironments(request)
          body = send_request('DeleteEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEnvironmentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除专业集群——预付费，仅通过API 调用

        # @param request: Request instance for DeleteProCluster.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteProClusterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteProClusterResponse`
        def DeleteProCluster(request)
          body = send_request('DeleteProCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑RabbitMQ路由关系

        # @param request: Request instance for DeleteRabbitMQBinding.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQBindingRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQBindingResponse`
        def DeleteRabbitMQBinding(request)
          body = send_request('DeleteRabbitMQBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQBindingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除RabbitMQ的权限

        # @param request: Request instance for DeleteRabbitMQPermission.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQPermissionRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQPermissionResponse`
        def DeleteRabbitMQPermission(request)
          body = send_request('DeleteRabbitMQPermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQPermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除RabbitMQ的用户

        # @param request: Request instance for DeleteRabbitMQUser.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQUserRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQUserResponse`
        def DeleteRabbitMQUser(request)
          body = send_request('DeleteRabbitMQUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 RabbitMQ 托管版实例

        # @param request: Request instance for DeleteRabbitMQVipInstance.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQVipInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQVipInstanceResponse`
        def DeleteRabbitMQVipInstance(request)
          body = send_request('DeleteRabbitMQVipInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQVipInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除RabbitMQ的vhost

        # @param request: Request instance for DeleteRabbitMQVirtualHost.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQVirtualHostRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRabbitMQVirtualHostResponse`
        def DeleteRabbitMQVirtualHost(request)
          body = send_request('DeleteRabbitMQVirtualHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQVirtualHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 RocketMQ 集群。
        # 当前 API 适用集群：4.x 虚拟集群。删除 4.x 专享或通用集群的接口文档见 [DeleteRocketMQVipInstance](https://cloud.tencent.com/document/api/1179/95802)，删除 5.x 集群的接口文档见 [DeleteInstance](https://cloud.tencent.com/document/product/1493/97867)。

        # @param request: Request instance for DeleteRocketMQCluster.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQClusterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQClusterResponse`
        def DeleteRocketMQCluster(request)
          body = send_request('DeleteRocketMQCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRocketMQClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除角色授权。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的删除角色接口文档见 [DeleteRole](https://cloud.tencent.com/document/api/1493/98863)。

        # @param request: Request instance for DeleteRocketMQEnvironmentRoles.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQEnvironmentRolesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQEnvironmentRolesResponse`
        def DeleteRocketMQEnvironmentRoles(request)
          body = send_request('DeleteRocketMQEnvironmentRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRocketMQEnvironmentRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 RocketMQ 消费组。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。删除 5.x 集群消费组的接口文档见 [DeleteConsumerGroup](https://cloud.tencent.com/document/api/1493/97942)。

        # @param request: Request instance for DeleteRocketMQGroup.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQGroupRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQGroupResponse`
        def DeleteRocketMQGroup(request)
          body = send_request('DeleteRocketMQGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRocketMQGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 RocketMQ 命名空间。
        # 当前 API 适用集群：4.x 虚拟集群和 4.x 专享集群，其他集群类型均不支持该功能。

        # @param request: Request instance for DeleteRocketMQNamespace.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQNamespaceResponse`
        def DeleteRocketMQNamespace(request)
          body = send_request('DeleteRocketMQNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRocketMQNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除角色。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的删除角色接口文档见 [DeleteRole](https://cloud.tencent.com/document/api/1493/98863)。

        # @param request: Request instance for DeleteRocketMQRoles.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQRolesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQRolesResponse`
        def DeleteRocketMQRoles(request)
          body = send_request('DeleteRocketMQRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRocketMQRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 RocketMQ 主题。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。删除 5.x 集群主题的接口文档见 [DeleteTopic](https://cloud.tencent.com/document/api/1493/97946)。

        # @param request: Request instance for DeleteRocketMQTopic.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQTopicRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQTopicResponse`
        def DeleteRocketMQTopic(request)
          body = send_request('DeleteRocketMQTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRocketMQTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 RocketMQ 专享或通用集群。
        # 当前 API 适用集群：4.x 专享集群 和 4.x 通用集群。删除 5.x 集群的接口文档见 [DeleteInstance](https://cloud.tencent.com/document/api/1493/97867)。

        # @param request: Request instance for DeleteRocketMQVipInstance.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQVipInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRocketMQVipInstanceResponse`
        def DeleteRocketMQVipInstance(request)
          body = send_request('DeleteRocketMQVipInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRocketMQVipInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除角色，支持批量。

        # @param request: Request instance for DeleteRoles.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteRolesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteRolesResponse`
        def DeleteRoles(request)
          body = send_request('DeleteRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除订阅关系

        # @param request: Request instance for DeleteSubscriptions.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteSubscriptionsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteSubscriptionsResponse`
        def DeleteSubscriptions(request)
          body = send_request('DeleteSubscriptions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSubscriptionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除topics

        # @param request: Request instance for DeleteTopics.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DeleteTopicsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DeleteTopicsResponse`
        def DeleteTopics(request)
          body = send_request('DeleteTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 历史原因，该接口位于tdmq-manager，目前rabbitmq产品没有使用该接口，当前使用的是DescribeRabbitMQVipInstances。不过从调用链上看，线网还有请求流程，所以走预下线流程。

        # 获取amqp集群列表

        # @param request: Request instance for DescribeAMQPClusters.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeAMQPClustersRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeAMQPClustersResponse`
        def DescribeAMQPClusters(request)
          body = send_request('DescribeAMQPClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAMQPClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取某个租户的虚拟集群列表

        # @param request: Request instance for DescribeAllTenants.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeAllTenantsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeAllTenantsResponse`
        def DescribeAllTenants(request)
          body = send_request('DescribeAllTenants', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllTenantsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户绑定的专享集群列表

        # @param request: Request instance for DescribeBindClusters.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeBindClustersRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeBindClustersResponse`
        def DescribeBindClusters(request)
          body = send_request('DescribeBindClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取租户VPC绑定关系

        # @param request: Request instance for DescribeBindVpcs.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeBindVpcsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeBindVpcsResponse`
        def DescribeBindVpcs(request)
          body = send_request('DescribeBindVpcs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindVpcsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群的详细信息

        # @param request: Request instance for DescribeClusterDetail.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeClusterDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeClusterDetailResponse`
        def DescribeClusterDetail(request)
          body = send_request('DescribeClusterDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群列表

        # @param request: Request instance for DescribeClusters.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeClustersRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeClustersResponse`
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

        # 查询cmq队列详情

        # @param request: Request instance for DescribeCmqQueueDetail.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqQueueDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqQueueDetailResponse`
        def DescribeCmqQueueDetail(request)
          body = send_request('DescribeCmqQueueDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCmqQueueDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询cmq全量队列

        # @param request: Request instance for DescribeCmqQueues.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqQueuesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqQueuesResponse`
        def DescribeCmqQueues(request)
          body = send_request('DescribeCmqQueues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCmqQueuesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询cmq订阅详情

        # @param request: Request instance for DescribeCmqSubscriptionDetail.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqSubscriptionDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqSubscriptionDetailResponse`
        def DescribeCmqSubscriptionDetail(request)
          body = send_request('DescribeCmqSubscriptionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCmqSubscriptionDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询cmq主题详情

        # @param request: Request instance for DescribeCmqTopicDetail.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqTopicDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqTopicDetailResponse`
        def DescribeCmqTopicDetail(request)
          body = send_request('DescribeCmqTopicDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCmqTopicDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 枚举cmq全量主题

        # @param request: Request instance for DescribeCmqTopics.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqTopicsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeCmqTopicsResponse`
        def DescribeCmqTopics(request)
          body = send_request('DescribeCmqTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCmqTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定命名空间的属性

        # @param request: Request instance for DescribeEnvironmentAttributes.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeEnvironmentAttributesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeEnvironmentAttributesResponse`
        def DescribeEnvironmentAttributes(request)
          body = send_request('DescribeEnvironmentAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvironmentAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取命名空间角色列表

        # @param request: Request instance for DescribeEnvironmentRoles.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeEnvironmentRolesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeEnvironmentRolesResponse`
        def DescribeEnvironmentRoles(request)
          body = send_request('DescribeEnvironmentRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvironmentRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取租户下命名空间列表

        # @param request: Request instance for DescribeEnvironments.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeEnvironmentsResponse`
        def DescribeEnvironments(request)
          body = send_request('DescribeEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvironmentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消息轨迹

        # @param request: Request instance for DescribeMqMsgTrace.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeMqMsgTraceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeMqMsgTraceResponse`
        def DescribeMqMsgTrace(request)
          body = send_request('DescribeMqMsgTrace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMqMsgTraceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 消息详情

        # @param request: Request instance for DescribeMsg.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeMsgRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeMsgResponse`
        def DescribeMsg(request)
          body = send_request('DescribeMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单条消息的消息轨迹

        # @param request: Request instance for DescribeMsgTrace.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeMsgTraceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeMsgTraceResponse`
        def DescribeMsgTrace(request)
          body = send_request('DescribeMsgTrace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMsgTraceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运营端获取命名空间bundle列表

        # @param request: Request instance for DescribeNamespaceBundlesOpt.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeNamespaceBundlesOptRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeNamespaceBundlesOptResponse`
        def DescribeNamespaceBundlesOpt(request)
          body = send_request('DescribeNamespaceBundlesOpt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNamespaceBundlesOptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运营端获节点健康状态

        # @param request: Request instance for DescribeNodeHealthOpt.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeNodeHealthOptRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeNodeHealthOptResponse`
        def DescribeNodeHealthOpt(request)
          body = send_request('DescribeNodeHealthOpt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodeHealthOptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取消息生产概览信息

        # @param request: Request instance for DescribePublisherSummary.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribePublisherSummaryRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribePublisherSummaryResponse`
        def DescribePublisherSummary(request)
          body = send_request('DescribePublisherSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublisherSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取生产者信息列表

        # @param request: Request instance for DescribePublishers.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribePublishersRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribePublishersResponse`
        def DescribePublishers(request)
          body = send_request('DescribePublishers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublishersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Pulsar专业版集群实例信息

        # @param request: Request instance for DescribePulsarProInstanceDetail.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribePulsarProInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribePulsarProInstanceDetailResponse`
        def DescribePulsarProInstanceDetail(request)
          body = send_request('DescribePulsarProInstanceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePulsarProInstanceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户已购的Pulsar专业版实例列表

        # @param request: Request instance for DescribePulsarProInstances.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribePulsarProInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribePulsarProInstancesResponse`
        def DescribePulsarProInstances(request)
          body = send_request('DescribePulsarProInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePulsarProInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ路由关系列表

        # @param request: Request instance for DescribeRabbitMQBindings.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQBindingsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQBindingsResponse`
        def DescribeRabbitMQBindings(request)
          body = send_request('DescribeRabbitMQBindings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQBindingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ exchange 列表

        # @param request: Request instance for DescribeRabbitMQExchanges.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQExchangesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQExchangesResponse`
        def DescribeRabbitMQExchanges(request)
          body = send_request('DescribeRabbitMQExchanges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQExchangesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RabbitMQ 托管版节点列表

        # @param request: Request instance for DescribeRabbitMQNodeList.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQNodeListRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQNodeListResponse`
        def DescribeRabbitMQNodeList(request)
          body = send_request('DescribeRabbitMQNodeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQNodeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ权限列表

        # @param request: Request instance for DescribeRabbitMQPermission.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQPermissionRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQPermissionResponse`
        def DescribeRabbitMQPermission(request)
          body = send_request('DescribeRabbitMQPermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQPermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ队列详情

        # @param request: Request instance for DescribeRabbitMQQueueDetail.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQQueueDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQQueueDetailResponse`
        def DescribeRabbitMQQueueDetail(request)
          body = send_request('DescribeRabbitMQQueueDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQQueueDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ队列列表

        # @param request: Request instance for DescribeRabbitMQQueues.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQQueuesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQQueuesResponse`
        def DescribeRabbitMQQueues(request)
          body = send_request('DescribeRabbitMQQueues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQQueuesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ用户列表

        # @param request: Request instance for DescribeRabbitMQUser.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQUserRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQUserResponse`
        def DescribeRabbitMQUser(request)
          body = send_request('DescribeRabbitMQUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个 RabbitMQ 托管版实例信息

        # @param request: Request instance for DescribeRabbitMQVipInstance.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQVipInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQVipInstanceResponse`
        def DescribeRabbitMQVipInstance(request)
          body = send_request('DescribeRabbitMQVipInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQVipInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户已购的 RabbitMQ 托管版实例列表

        # @param request: Request instance for DescribeRabbitMQVipInstances.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQVipInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQVipInstancesResponse`
        def DescribeRabbitMQVipInstances(request)
          body = send_request('DescribeRabbitMQVipInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQVipInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ vhost列表

        # @param request: Request instance for DescribeRabbitMQVirtualHost.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQVirtualHostRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRabbitMQVirtualHostResponse`
        def DescribeRabbitMQVirtualHost(request)
          body = send_request('DescribeRabbitMQVirtualHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQVirtualHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 虚拟集群信息。
        # 当前 API 适用集群：4.x 虚拟集群。查询 4.x 专享或通用集群信息的接口文档见 [DescribeRocketMQVipInstanceDetail](https://cloud.tencent.com/document/api/1179/86725)，查询 5.x 集群信息的接口文档见 [DescribeInstance](https://cloud.tencent.com/document/api/1493/97866)。

        # @param request: Request instance for DescribeRocketMQCluster.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQClusterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQClusterResponse`
        def DescribeRocketMQCluster(request)
          body = send_request('DescribeRocketMQCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 虚拟集群列表。
        # 当前 API 适用集群：4.x 虚拟集群。查询 5.x 集群列表接口文档见 [DescribeInstanceList](https://cloud.tencent.com/document/api/1493/96028)，或者使用 [DescribeFusionInstanceList](https://cloud.tencent.com/document/api/1493/106745) 接口适用所有集群类型。

        # @param request: Request instance for DescribeRocketMQClusters.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQClustersRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQClustersResponse`
        def DescribeRocketMQClusters(request)
          body = send_request('DescribeRocketMQClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 消费详情列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。查询 5.x 集群消费详情的接口文档见 [DescribeConsumerGroup](https://cloud.tencent.com/document/api/1493/97941)。

        # @param request: Request instance for DescribeRocketMQConsumeStats.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQConsumeStatsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQConsumeStatsResponse`
        def DescribeRocketMQConsumeStats(request)
          body = send_request('DescribeRocketMQConsumeStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQConsumeStatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 消费者客户端详情。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的查询消费者客户端详情接口文档见 [DescribeConsumerClient](https://cloud.tencent.com/document/api/1493/115240)。

        # @param request: Request instance for DescribeRocketMQConsumerConnectionDetail.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQConsumerConnectionDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQConsumerConnectionDetailResponse`
        def DescribeRocketMQConsumerConnectionDetail(request)
          body = send_request('DescribeRocketMQConsumerConnectionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQConsumerConnectionDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 消费组下的客户端连接列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群查询消费组下的客户端连接列表接口文档见 [DescribeConsumerClientList](https://cloud.tencent.com/document/api/1493/120140)。

        # @param request: Request instance for DescribeRocketMQConsumerConnections.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQConsumerConnectionsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQConsumerConnectionsResponse`
        def DescribeRocketMQConsumerConnections(request)
          body = send_request('DescribeRocketMQConsumerConnections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQConsumerConnectionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询角色授权列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的查询角色列表接口文档见 [DescribeRoleList](https://cloud.tencent.com/document/api/1493/98862)。

        # @param request: Request instance for DescribeRocketMQEnvironmentRoles.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQEnvironmentRolesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQEnvironmentRolesResponse`
        def DescribeRocketMQEnvironmentRoles(request)
          body = send_request('DescribeRocketMQEnvironmentRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQEnvironmentRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询通用集群售卖规格。
        # 当前 API 适用集群：4.x 通用集群。查询 5.x 集群的售卖规格接口文档见 [DescribeProductSKUs](https://cloud.tencent.com/document/api/1493/107676)。

        # @param request: Request instance for DescribeRocketMQGeneralSKUs.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQGeneralSKUsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQGeneralSKUsResponse`
        def DescribeRocketMQGeneralSKUs(request)
          body = send_request('DescribeRocketMQGeneralSKUs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQGeneralSKUsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 消费组列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。查询 5.x 集群的消费组列表接口文档见 [DescribeConsumerGroupList](https://cloud.tencent.com/document/api/1493/101535)。

        # @param request: Request instance for DescribeRocketMQGroups.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQGroupsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQGroupsResponse`
        def DescribeRocketMQGroups(request)
          body = send_request('DescribeRocketMQGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Topic迁移状态列表，源集群和目标集群客户端数量信息需要配合DescribeRocketMQSmoothMigrationTaskTopicInsNum接口查询

        # @param request: Request instance for DescribeRocketMQMigratingTopicList.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQMigratingTopicListRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQMigratingTopicListResponse`
        def DescribeRocketMQMigratingTopicList(request)
          body = send_request('DescribeRocketMQMigratingTopicList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQMigratingTopicListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 消息详情。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的查询消息详情接口文档见 [DescribeMessage](https://cloud.tencent.com/document/api/1493/114594)。

        # @param request: Request instance for DescribeRocketMQMsg.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQMsgRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQMsgResponse`
        def DescribeRocketMQMsg(request)
          body = send_request('DescribeRocketMQMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消息轨迹。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群查询消息轨迹的接口文档见 [DescribeMessageTrace](https://cloud.tencent.com/document/api/1493/114302)。

        # @param request: Request instance for DescribeRocketMQMsgTrace.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQMsgTraceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQMsgTraceResponse`
        def DescribeRocketMQMsgTrace(request)
          body = send_request('DescribeRocketMQMsgTrace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQMsgTraceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 RocketMQ 命名空间列表。
        # 当前 API 适用集群：4.x 虚拟集群和 4.x 专享集群，其他集群类型均不支持该功能。

        # @param request: Request instance for DescribeRocketMQNamespaces.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQNamespacesResponse`
        def DescribeRocketMQNamespaces(request)
          body = send_request('DescribeRocketMQNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 指定主题下的生产者客户端列表。
        # 当前 API 适用集群：4.x 专享集群 和 4.x 通用集群。查询 5.x 集群主题下的生产者客户端列表接口文档见 [DescribeProducerList](https://cloud.tencent.com/document/api/1493/122548)。

        # @param request: Request instance for DescribeRocketMQProducers.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQProducersRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQProducersResponse`
        def DescribeRocketMQProducers(request)
          body = send_request('DescribeRocketMQProducers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQProducersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询公网指标监控数据，目前仅支持客户端到 LB 的入带宽和出宽带指标。
        # 当前 API 适用集群：4.x 专享集群 和 4.x 通用集群。5.x 集群暂不支持该功能。

        # @param request: Request instance for DescribeRocketMQPublicAccessMonitorData.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQPublicAccessMonitorDataRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQPublicAccessMonitorDataResponse`
        def DescribeRocketMQPublicAccessMonitorData(request)
          body = send_request('DescribeRocketMQPublicAccessMonitorData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQPublicAccessMonitorDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 集群的公网接入点信息。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。查询 5.x 集群的公网接入点信息接口文档见 [DescribeInstance](https://cloud.tencent.com/document/api/1493/97866)。

        # @param request: Request instance for DescribeRocketMQPublicAccessPoint.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQPublicAccessPointRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQPublicAccessPointResponse`
        def DescribeRocketMQPublicAccessPoint(request)
          body = send_request('DescribeRocketMQPublicAccessPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQPublicAccessPointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询角色列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的查询角色列表接口文档见 [DescribeRoleList](https://cloud.tencent.com/document/api/1493/98862)。

        # @param request: Request instance for DescribeRocketMQRoles.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQRolesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQRolesResponse`
        def DescribeRocketMQRoles(request)
          body = send_request('DescribeRocketMQRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取RocketMQ平滑迁移任务详情

        # @param request: Request instance for DescribeRocketMQSmoothMigrationTask.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQSmoothMigrationTaskRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQSmoothMigrationTaskResponse`
        def DescribeRocketMQSmoothMigrationTask(request)
          body = send_request('DescribeRocketMQSmoothMigrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQSmoothMigrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 消费组订阅关系列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群查询消费组订阅的主题列表接口文档见 [DescribeTopicListByGroup](https://cloud.tencent.com/document/api/1493/115314)。

        # @param request: Request instance for DescribeRocketMQSubscriptions.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQSubscriptionsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQSubscriptionsResponse`
        def DescribeRocketMQSubscriptions(request)
          body = send_request('DescribeRocketMQSubscriptions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQSubscriptionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取RocketMQ指标排序列表，比如集群实例下占用存储空间最多的主题排序。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群暂不支持该功能。

        # @param request: Request instance for DescribeRocketMQTopUsages.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopUsagesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopUsagesResponse`
        def DescribeRocketMQTopUsages(request)
          body = send_request('DescribeRocketMQTopUsages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQTopUsagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取RocketMQ主题详情

        # @param request: Request instance for DescribeRocketMQTopic.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicResponse`
        def DescribeRocketMQTopic(request)
          body = send_request('DescribeRocketMQTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 消息列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的查询消息列表接口文档见 [DescribeMessageList](https://cloud.tencent.com/document/api/1493/114593)。

        # @param request: Request instance for DescribeRocketMQTopicMsgs.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicMsgsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicMsgsResponse`
        def DescribeRocketMQTopicMsgs(request)
          body = send_request('DescribeRocketMQTopicMsgs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQTopicMsgsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 主题生产详情列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群暂不支持该功能。

        # @param request: Request instance for DescribeRocketMQTopicStats.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicStatsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicStatsResponse`
        def DescribeRocketMQTopicStats(request)
          body = send_request('DescribeRocketMQTopicStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQTopicStatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 主题列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。查询 5.x 集群的主题列表接口文档见 [DescribeTopicList](https://cloud.tencent.com/document/api/1493/96030)。

        # @param request: Request instance for DescribeRocketMQTopics.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicsResponse`
        def DescribeRocketMQTopics(request)
          body = send_request('DescribeRocketMQTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 消费组订阅的主题列表。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群查询消费组订阅的主题列表接口文档见 [DescribeTopicListByGroup](https://cloud.tencent.com/document/api/1493/115314)。

        # @param request: Request instance for DescribeRocketMQTopicsByGroup.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicsByGroupRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQTopicsByGroupResponse`
        def DescribeRocketMQTopicsByGroup(request)
          body = send_request('DescribeRocketMQTopicsByGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQTopicsByGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 集群信息。
        # 当前 API 适用集群：4.x 专享集群 和 4.x 通用集群。查询 5.x 集群信息的接口文档见 [DescribeInstance](https://cloud.tencent.com/document/api/1493/97866)。

        # @param request: Request instance for DescribeRocketMQVipInstanceDetail.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQVipInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQVipInstanceDetailResponse`
        def DescribeRocketMQVipInstanceDetail(request)
          body = send_request('DescribeRocketMQVipInstanceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQVipInstanceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 4.x 集群列表。
        # 当前 API 适用集群：4.x 专享集群 和 4.x 通用集群。查询 5.x 集群列表接口文档见 [DescribeInstanceList](https://cloud.tencent.com/document/api/1493/96028)，或者使用 [DescribeFusionInstanceList](https://cloud.tencent.com/document/api/1493/106745) 接口适用所有集群类型。

        # @param request: Request instance for DescribeRocketMQVipInstances.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQVipInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRocketMQVipInstancesResponse`
        def DescribeRocketMQVipInstances(request)
          body = send_request('DescribeRocketMQVipInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRocketMQVipInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取角色列表

        # @param request: Request instance for DescribeRoles.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeRolesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeRolesResponse`
        def DescribeRoles(request)
          body = send_request('DescribeRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定环境和主题下的订阅者列表

        # @param request: Request instance for DescribeSubscriptions.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeSubscriptionsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeSubscriptionsResponse`
        def DescribeSubscriptions(request)
          body = send_request('DescribeSubscriptions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubscriptionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 消息查询

        # @param request: Request instance for DescribeTopicMsgs.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeTopicMsgsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeTopicMsgsResponse`
        def DescribeTopicMsgs(request)
          body = send_request('DescribeTopicMsgs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicMsgsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取环境下主题列表

        # @param request: Request instance for DescribeTopics.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeTopicsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeTopicsResponse`
        def DescribeTopics(request)
          body = send_request('DescribeTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 执行域名异地访问切换，域名的访问指向将切换至备份集群。

        # @param request: Request instance for ExecuteDisasterRecovery.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ExecuteDisasterRecoveryRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ExecuteDisasterRecoveryResponse`
        def ExecuteDisasterRecovery(request)
          body = send_request('ExecuteDisasterRecovery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExecuteDisasterRecoveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出RocketMQ消息详情

        # @param request: Request instance for ExportRocketMQMessageDetail.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ExportRocketMQMessageDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ExportRocketMQMessageDetailResponse`
        def ExportRocketMQMessageDetail(request)
          body = send_request('ExportRocketMQMessageDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportRocketMQMessageDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取环境下主题列表

        # @param request: Request instance for GetTopicList.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::GetTopicListRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::GetTopicListResponse`
        def GetTopicList(request)
          body = send_request('GetTopicList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTopicListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 输入迁移任务id和要导入的Group，导入后台

        # @param request: Request instance for ImportRocketMQConsumerGroups.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ImportRocketMQConsumerGroupsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ImportRocketMQConsumerGroupsResponse`
        def ImportRocketMQConsumerGroups(request)
          body = send_request('ImportRocketMQConsumerGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportRocketMQConsumerGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导入topic列表

        # @param request: Request instance for ImportRocketMQTopics.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ImportRocketMQTopicsRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ImportRocketMQTopicsResponse`
        def ImportRocketMQTopics(request)
          body = send_request('ImportRocketMQTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportRocketMQTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新集群信息

        # @param request: Request instance for ModifyCluster.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyClusterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyClusterResponse`
        def ModifyCluster(request)
          body = send_request('ModifyCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改cmq队列属性

        # @param request: Request instance for ModifyCmqQueueAttribute.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyCmqQueueAttributeRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyCmqQueueAttributeResponse`
        def ModifyCmqQueueAttribute(request)
          body = send_request('ModifyCmqQueueAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCmqQueueAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改cmq订阅属性

        # @param request: Request instance for ModifyCmqSubscriptionAttribute.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyCmqSubscriptionAttributeRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyCmqSubscriptionAttributeResponse`
        def ModifyCmqSubscriptionAttribute(request)
          body = send_request('ModifyCmqSubscriptionAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCmqSubscriptionAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改cmq主题属性

        # @param request: Request instance for ModifyCmqTopicAttribute.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyCmqTopicAttributeRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyCmqTopicAttributeResponse`
        def ModifyCmqTopicAttribute(request)
          body = send_request('ModifyCmqTopicAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCmqTopicAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改指定命名空间的属性值

        # @param request: Request instance for ModifyEnvironmentAttributes.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyEnvironmentAttributesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyEnvironmentAttributesResponse`
        def ModifyEnvironmentAttributes(request)
          body = send_request('ModifyEnvironmentAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEnvironmentAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改环境角色授权。

        # @param request: Request instance for ModifyEnvironmentRole.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyEnvironmentRoleRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyEnvironmentRoleResponse`
        def ModifyEnvironmentRole(request)
          body = send_request('ModifyEnvironmentRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEnvironmentRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改pulsar专业版公网安全策略

        # @param request: Request instance for ModifyPublicNetworkSecurityPolicy.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyPublicNetworkSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyPublicNetworkSecurityPolicyResponse`
        def ModifyPublicNetworkSecurityPolicy(request)
          body = send_request('ModifyPublicNetworkSecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPublicNetworkSecurityPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改RabbitMQ的权限

        # @param request: Request instance for ModifyRabbitMQPermission.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRabbitMQPermissionRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRabbitMQPermissionResponse`
        def ModifyRabbitMQPermission(request)
          body = send_request('ModifyRabbitMQPermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQPermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改RabbitMQ的用户

        # @param request: Request instance for ModifyRabbitMQUser.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRabbitMQUserRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRabbitMQUserResponse`
        def ModifyRabbitMQUser(request)
          body = send_request('ModifyRabbitMQUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改RabbitMQ专享版实例

        # @param request: Request instance for ModifyRabbitMQVipInstance.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRabbitMQVipInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRabbitMQVipInstanceResponse`
        def ModifyRabbitMQVipInstance(request)
          body = send_request('ModifyRabbitMQVipInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQVipInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改RabbitMQ的vhost

        # @param request: Request instance for ModifyRabbitMQVirtualHost.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRabbitMQVirtualHostRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRabbitMQVirtualHostResponse`
        def ModifyRabbitMQVirtualHost(request)
          body = send_request('ModifyRabbitMQVirtualHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQVirtualHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 RocketMQ 集群属性。
        # 当前 API 适用集群：4.x 虚拟集群。修改 4.x 专享或通用集群属性接口文档见 [ModifyRocketMQInstance](https://cloud.tencent.com/document/api/1179/108862)，修改 5.x 集群属性的接口文档见 [ModifyInstance](https://cloud.tencent.com/document/api/1493/97865)。

        # @param request: Request instance for ModifyRocketMQCluster.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQClusterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQClusterResponse`
        def ModifyRocketMQCluster(request)
          body = send_request('ModifyRocketMQCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRocketMQClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改角色授权。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的修改角色接口文档见 [ModifyRole](https://cloud.tencent.com/document/api/1493/98861)。

        # @param request: Request instance for ModifyRocketMQEnvironmentRole.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQEnvironmentRoleRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQEnvironmentRoleResponse`
        def ModifyRocketMQEnvironmentRole(request)
          body = send_request('ModifyRocketMQEnvironmentRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRocketMQEnvironmentRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 RocketMQ 消费组属性。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。修改 5.x 集群消费组属性的接口文档见 [ModifyConsumerGroup](https://cloud.tencent.com/document/api/1493/97940)。

        # @param request: Request instance for ModifyRocketMQGroup.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQGroupRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQGroupResponse`
        def ModifyRocketMQGroup(request)
          body = send_request('ModifyRocketMQGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRocketMQGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 RocketMQ 专享或通用集群属性。
        # 当前 API 适用集群：4.x 专享集群 和 4.x 通用集群。修改 5.x 集群属性的接口文档见 [ModifyInstance](https://cloud.tencent.com/document/api/1493/97865)。

        # @param request: Request instance for ModifyRocketMQInstance.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQInstanceResponse`
        def ModifyRocketMQInstance(request)
          body = send_request('ModifyRocketMQInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRocketMQInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 RocketMQ 专享集群配置，可以支持实例规格、节点数和存储的升配和实例规格的降配。本 API 发起订单并成功支付后进入实例配置变更的流程，可通过 [DescribeRocketMQVipInstances](https://cloud.tencent.com/document/api/1179/80903) 查询实例是否已变更完成。
        # 当前 API 适用集群：4.x 专享集群 和 4.x 通用集群。修改 5.x 集群规格的接口文档见 [ModifyInstance](https://cloud.tencent.com/document/api/1493/97865)。

        # @param request: Request instance for ModifyRocketMQInstanceSpec.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQInstanceSpecRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQInstanceSpecResponse`
        def ModifyRocketMQInstanceSpec(request)
          body = send_request('ModifyRocketMQInstanceSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRocketMQInstanceSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新 RocketMQ 命名空间。
        # 当前 API 适用集群：4.x 虚拟集群和 4.x 专享集群，其他集群类型均不支持该功能。

        # @param request: Request instance for ModifyRocketMQNamespace.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQNamespaceResponse`
        def ModifyRocketMQNamespace(request)
          body = send_request('ModifyRocketMQNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRocketMQNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改角色。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的修改角色接口文档见 [ModifyRole](https://cloud.tencent.com/document/api/1493/98861)。

        # @param request: Request instance for ModifyRocketMQRole.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQRoleRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQRoleResponse`
        def ModifyRocketMQRole(request)
          body = send_request('ModifyRocketMQRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRocketMQRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 RocketMQ 主题属性。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。修改 5.x 集群主题属性的接口文档见 [ModifyTopic](https://cloud.tencent.com/document/api/1493/97944)。

        # @param request: Request instance for ModifyRocketMQTopic.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQTopicRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRocketMQTopicResponse`
        def ModifyRocketMQTopic(request)
          body = send_request('ModifyRocketMQTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRocketMQTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 角色修改

        # @param request: Request instance for ModifyRole.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyRoleRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyRoleResponse`
        def ModifyRole(request)
          body = send_request('ModifyRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改主题备注和分区数

        # @param request: Request instance for ModifyTopic.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ModifyTopicRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ModifyTopicResponse`
        def ModifyTopic(request)
          body = send_request('ModifyTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送cmq主题消息

        # @param request: Request instance for PublishCmqMsg.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::PublishCmqMsgRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::PublishCmqMsgResponse`
        def PublishCmqMsg(request)
          body = send_request('PublishCmqMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishCmqMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 当前 ReceiveMessage 接口只支持 Partitioned 类型的 Topic。该接口用于接收发送到指定 Partitioned Topic 中的消息，当 Partitioned Topic 中没有消息但还去尝试调用该接口时，会抛出 ReceiveTimeout 的异常。

        # 如何使用 BatchReceivePolicy：

        # BatchReceive 接口提供了如下三个参数：

        # ● MaxNumMessages: 即每次使用 BatchReceive 的时候，最多一次Receive接口返回多少条消息。
        # ● MaxNumBytes：即每次使用 BatchReceive 的时候，最多一次Receive接口返回多大内容的消息，单位是：bytes。
        # ● Timeout：即每次使用 BatchReceive 的时候，最多一次 Receive 接口的超时时间是多久，单位是：MS。

        # 默认如果上述三个参数都不指定，即关闭 BatchReceive 的特性。如果三个参数中的任意一个参数指定的数值大于 0，即开启 BatchReceive。BatchReceive 的结束条件为到达上述三个参数中任意一个指定的阈值。

        # 注意：MaxNumMessages 和 MaxNumBytes 每一次接收的最大消息同时受限于 ReceiveQueueSize 的大小，如果 ReceiveQueueSize 的大小设置为 5，MaxNumMessages 设置为10，那么一次 BatchReceive 接收的最多的消息是 5条，而不是10条。



        # BatchReceivePolicy 的接口会一次性返回多条消息：

        # 1. 多条消息的内容之间使用特殊字符 '###' 来进行分割，业务侧接收到消息之后，可以利用不同语言提供的 Split 工具分割不同的消息。
        # 2. 多条消息的 MessageID 之间使用特殊字符 '###' 来进行分割，业务侧接收到消息之后，可以利用不同语言提供的 Split 工具分割不同的消息。（用于在调用 AcknowledgeMessage 接口中填入所需要的 MessageID 字段信息）

        # @param request: Request instance for ReceiveMessage.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ReceiveMessageRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ReceiveMessageResponse`
        def ReceiveMessage(request)
          body = send_request('ReceiveMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReceiveMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据时间戳进行消息回溯，精确到毫秒

        # @param request: Request instance for ResetMsgSubOffsetByTimestamp.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ResetMsgSubOffsetByTimestampRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ResetMsgSubOffsetByTimestampResponse`
        def ResetMsgSubOffsetByTimestamp(request)
          body = send_request('ResetMsgSubOffsetByTimestamp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetMsgSubOffsetByTimestampResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置消费位点。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的重置消费位点接口文档见 [ResetConsumerGroupOffset](https://cloud.tencent.com/document/api/1493/116942)。

        # @param request: Request instance for ResetRocketMQConsumerOffSet.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::ResetRocketMQConsumerOffSetRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::ResetRocketMQConsumerOffSetResponse`
        def ResetRocketMQConsumerOffSet(request)
          body = send_request('ResetRocketMQConsumerOffSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetRocketMQConsumerOffSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重发 RocketMQ 死信消息。
        # 当前 API 适用集群：4.x 虚拟集群，4.x 专享集群 和 4.x 通用集群。5.x 集群的重发死信消息接口文档见 [ResendDeadLetterMessage](https://cloud.tencent.com/document/api/1493/114592)。

        # @param request: Request instance for RetryRocketMQDlqMessage.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::RetryRocketMQDlqMessageRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::RetryRocketMQDlqMessageResponse`
        def RetryRocketMQDlqMessage(request)
          body = send_request('RetryRocketMQDlqMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryRocketMQDlqMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回溯cmq队列

        # @param request: Request instance for RewindCmqQueue.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::RewindCmqQueueRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::RewindCmqQueueResponse`
        def RewindCmqQueue(request)
          body = send_request('RewindCmqQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RewindCmqQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量发送消息

        # 注意：TDMQ 批量发送消息的接口是在 TDMQ-HTTP 的服务侧将消息打包为一个 Batch，然后将该 Batch 在服务内部当作一次 TCP 请求发送出去。所以在使用过程中，用户还是按照单条消息发送的逻辑，每一条消息是一个独立的 HTTP 的请求，在 TDMQ-HTTP 的服务内部，会将多个 HTTP 的请求聚合为一个 Batch 发送到服务端。即，批量发送消息在使用上与发送单条消息是一致的，batch 的聚合是在 TDMQ-HTTP 的服务内部完成的。

        # @param request: Request instance for SendBatchMessages.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::SendBatchMessagesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::SendBatchMessagesResponse`
        def SendBatchMessages(request)
          body = send_request('SendBatchMessages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendBatchMessagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送cmq消息

        # @param request: Request instance for SendCmqMsg.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::SendCmqMsgRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::SendCmqMsgResponse`
        def SendCmqMsg(request)
          body = send_request('SendCmqMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendCmqMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送单条消息
        # 不支持持久topic

        # @param request: Request instance for SendMessages.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::SendMessagesRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::SendMessagesResponse`
        def SendMessages(request)
          body = send_request('SendMessages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendMessagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口仅用于测试发生消息，不能作为现网正式生产使用

        # @param request: Request instance for SendMsg.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::SendMsgRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::SendMsgResponse`
        def SendMsg(request)
          body = send_request('SendMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送 RocketMQ 消息，该接口仅用于控制台发送少量测试消息，不保证SLA，且云 API 存在限流，在真实业务场景下，请使用 RocketMQ SDK 发送消息。

        # @param request: Request instance for SendRocketMQMessage.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::SendRocketMQMessageRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::SendRocketMQMessageResponse`
        def SendRocketMQMessage(request)
          body = send_request('SendRocketMQMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendRocketMQMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或关闭公网访问、设置安全访问策略。
        # 当前 API 适用集群：4.x 专享集群 和 4.x 通用集群。设置 5.x 集群的公网接入点接口文档见 [ModifyInstanceEndpoint](https://cloud.tencent.com/document/api/1493/115981)。

        # @param request: Request instance for SetRocketMQPublicAccessPoint.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::SetRocketMQPublicAccessPointRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::SetRocketMQPublicAccessPointResponse`
        def SetRocketMQPublicAccessPoint(request)
          body = send_request('SetRocketMQPublicAccessPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetRocketMQPublicAccessPointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑cmq死信队列

        # @param request: Request instance for UnbindCmqDeadLetter.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::UnbindCmqDeadLetterRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::UnbindCmqDeadLetterResponse`
        def UnbindCmqDeadLetter(request)
          body = send_request('UnbindCmqDeadLetter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindCmqDeadLetterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Rocketmq消费验证

        # @param request: Request instance for VerifyRocketMQConsume.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::VerifyRocketMQConsumeRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::VerifyRocketMQConsumeResponse`
        def VerifyRocketMQConsume(request)
          body = send_request('VerifyRocketMQConsume', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyRocketMQConsumeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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