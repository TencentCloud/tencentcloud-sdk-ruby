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
  module Trocket
    module V20230308
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-03-08'
            api_endpoint = 'trocket.tencentcloudapi.com'
            sdk_version = 'TROCKET_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 修改迁移中的Topic状态进入下一步

        # @param request: Request instance for ChangeMigratingTopicToNextStage.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ChangeMigratingTopicToNextStageRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ChangeMigratingTopicToNextStageResponse`
        def ChangeMigratingTopicToNextStage(request)
          body = send_request('ChangeMigratingTopicToNextStage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeMigratingTopicToNextStageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建消费组

        # @param request: Request instance for CreateConsumerGroup.
        # @type request: :class:`Tencentcloud::trocket::V20230308::CreateConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::CreateConsumerGroupResponse`
        def CreateConsumerGroup(request)
          body = send_request('CreateConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 RocketMQ 5.x 集群

        # @param request: Request instance for CreateInstance.
        # @type request: :class:`Tencentcloud::trocket::V20230308::CreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::CreateInstanceResponse`
        def CreateInstance(request)
          body = send_request('CreateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为MQTT实例创建公网接入点

        # @param request: Request instance for CreateMQTTInsPublicEndpoint.
        # @type request: :class:`Tencentcloud::trocket::V20230308::CreateMQTTInsPublicEndpointRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::CreateMQTTInsPublicEndpointResponse`
        def CreateMQTTInsPublicEndpoint(request)
          body = send_request('CreateMQTTInsPublicEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMQTTInsPublicEndpointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 购买新的MQTT实例

        # @param request: Request instance for CreateMQTTInstance.
        # @type request: :class:`Tencentcloud::trocket::V20230308::CreateMQTTInstanceRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::CreateMQTTInstanceResponse`
        def CreateMQTTInstance(request)
          body = send_request('CreateMQTTInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMQTTInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建主题

        # @param request: Request instance for CreateMQTTTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::CreateMQTTTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::CreateMQTTTopicResponse`
        def CreateMQTTTopic(request)
          body = send_request('CreateMQTTTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMQTTTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加mqtt角色

        # @param request: Request instance for CreateMQTTUser.
        # @type request: :class:`Tencentcloud::trocket::V20230308::CreateMQTTUserRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::CreateMQTTUserResponse`
        def CreateMQTTUser(request)
          body = send_request('CreateMQTTUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMQTTUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加角色

        # @param request: Request instance for CreateRole.
        # @type request: :class:`Tencentcloud::trocket::V20230308::CreateRoleRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::CreateRoleResponse`
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

        # 创建主题

        # @param request: Request instance for CreateTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::CreateTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::CreateTopicResponse`
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

        # 删除消费组

        # @param request: Request instance for DeleteConsumerGroup.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DeleteConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DeleteConsumerGroupResponse`
        def DeleteConsumerGroup(request)
          body = send_request('DeleteConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 RocketMQ 5.x 集群。

        # @param request: Request instance for DeleteInstance.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DeleteInstanceRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DeleteInstanceResponse`
        def DeleteInstance(request)
          body = send_request('DeleteInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除MQTT实例的公网接入点

        # @param request: Request instance for DeleteMQTTInsPublicEndpoint.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DeleteMQTTInsPublicEndpointRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DeleteMQTTInsPublicEndpointResponse`
        def DeleteMQTTInsPublicEndpoint(request)
          body = send_request('DeleteMQTTInsPublicEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMQTTInsPublicEndpointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除MQTT实例

        # @param request: Request instance for DeleteMQTTInstance.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DeleteMQTTInstanceRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DeleteMQTTInstanceResponse`
        def DeleteMQTTInstance(request)
          body = send_request('DeleteMQTTInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMQTTInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除MQTT主题

        # @param request: Request instance for DeleteMQTTTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DeleteMQTTTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DeleteMQTTTopicResponse`
        def DeleteMQTTTopic(request)
          body = send_request('DeleteMQTTTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMQTTTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除MQTT访问用户

        # @param request: Request instance for DeleteMQTTUser.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DeleteMQTTUserRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DeleteMQTTUserResponse`
        def DeleteMQTTUser(request)
          body = send_request('DeleteMQTTUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMQTTUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除角色

        # @param request: Request instance for DeleteRole.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DeleteRoleRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DeleteRoleResponse`
        def DeleteRole(request)
          body = send_request('DeleteRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除平滑迁移任务，只有被取消的任务才可删除

        # @param request: Request instance for DeleteSmoothMigrationTask.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DeleteSmoothMigrationTaskRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DeleteSmoothMigrationTaskResponse`
        def DeleteSmoothMigrationTask(request)
          body = send_request('DeleteSmoothMigrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSmoothMigrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除主题

        # @param request: Request instance for DeleteTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DeleteTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DeleteTopicResponse`
        def DeleteTopic(request)
          body = send_request('DeleteTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消费者客户端详情

        # @param request: Request instance for DescribeConsumerClient.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeConsumerClientRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeConsumerClientResponse`
        def DescribeConsumerClient(request)
          body = send_request('DescribeConsumerClient', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumerClientResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消费组详情

        # @param request: Request instance for DescribeConsumerGroup.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeConsumerGroupResponse`
        def DescribeConsumerGroup(request)
          body = send_request('DescribeConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取消费组列表，Filter参数使用说明如下：

        # 1. ConsumerGroupName，名称模糊查询
        # 2. ConsumeMessageOrderly，投递顺序性。"true":顺序投递；"false":并发投递

        # @param request: Request instance for DescribeConsumerGroupList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeConsumerGroupListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeConsumerGroupListResponse`
        def DescribeConsumerGroupList(request)
          body = send_request('DescribeConsumerGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumerGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定消费组堆积数。

        # @param request: Request instance for DescribeConsumerLag.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeConsumerLagRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeConsumerLagResponse`
        def DescribeConsumerLag(request)
          body = send_request('DescribeConsumerLag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumerLagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群列表，支持 4.x 和 5.x 集群，其中 Filters 参数使用说明如下：
        # 1. InstanceName, 名称模糊查询
        # 2. InstanceId，集群ID查询
        # 3. InstanceType, 集群类型查询，支持多选
        # 4. Version，集群版本查询

        # @param request: Request instance for DescribeFusionInstanceList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeFusionInstanceListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeFusionInstanceListResponse`
        def DescribeFusionInstanceList(request)
          body = send_request('DescribeFusionInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFusionInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 RocketMQ 5.x 集群信息。

        # @param request: Request instance for DescribeInstance.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeInstanceRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeInstanceResponse`
        def DescribeInstance(request)
          body = send_request('DescribeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群列表，仅支持 5.x 集群。Filters参数使用说明如下：
        # 1. InstanceName, 名称模糊查询
        # 2. InstanceId，集群ID查询
        # 3. InstanceType, 集群类型查询，支持多选
        # 3. InstanceStatus，集群状态查询，支持多选

        # 当使用TagFilters查询时，Filters参数失效。

        # @param request: Request instance for DescribeInstanceList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeInstanceListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeInstanceListResponse`
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

        # 查询 MQTT 客户端详情

        # @param request: Request instance for DescribeMQTTClient.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTClientRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTClientResponse`
        def DescribeMQTTClient(request)
          body = send_request('DescribeMQTTClient', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTClientResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询MQTT实例公网接入点

        # @param request: Request instance for DescribeMQTTInsPublicEndpoints.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInsPublicEndpointsRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInsPublicEndpointsResponse`
        def DescribeMQTTInsPublicEndpoints(request)
          body = send_request('DescribeMQTTInsPublicEndpoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTInsPublicEndpointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询MQTT实例公网接入点

        # @param request: Request instance for DescribeMQTTInsVPCEndpoints.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInsVPCEndpointsRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInsVPCEndpointsResponse`
        def DescribeMQTTInsVPCEndpoints(request)
          body = send_request('DescribeMQTTInsVPCEndpoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTInsVPCEndpointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例信息

        # @param request: Request instance for DescribeMQTTInstance.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInstanceRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInstanceResponse`
        def DescribeMQTTInstance(request)
          body = send_request('DescribeMQTTInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询MQTT集群证书列表

        # @param request: Request instance for DescribeMQTTInstanceCert.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInstanceCertRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInstanceCertResponse`
        def DescribeMQTTInstanceCert(request)
          body = send_request('DescribeMQTTInstanceCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTInstanceCertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例列表，Filters参数使用说明如下：
        # 1. InstanceName, 名称模糊查询
        # 2. InstanceId，实例ID查询
        # 3. InstanceType, 实例类型查询，支持多选
        # 3. InstanceStatus，实例状态查询，支持多选

        # 当使用TagFilters查询时，Filters参数失效。

        # @param request: Request instance for DescribeMQTTInstanceList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInstanceListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTInstanceListResponse`
        def DescribeMQTTInstanceList(request)
          body = send_request('DescribeMQTTInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询MQTT消息详情

        # @param request: Request instance for DescribeMQTTMessage.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTMessageRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTMessageResponse`
        def DescribeMQTTMessage(request)
          body = send_request('DescribeMQTTMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消息列表，如查询死信，请设置ConsumerGroup参数

        # @param request: Request instance for DescribeMQTTMessageList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTMessageListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTMessageListResponse`
        def DescribeMQTTMessageList(request)
          body = send_request('DescribeMQTTMessageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTMessageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取产品售卖规格

        # @param request: Request instance for DescribeMQTTProductSKUList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTProductSKUListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTProductSKUListResponse`
        def DescribeMQTTProductSKUList(request)
          body = send_request('DescribeMQTTProductSKUList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTProductSKUListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询mqtt主题详情

        # @param request: Request instance for DescribeMQTTTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTTopicResponse`
        def DescribeMQTTTopic(request)
          body = send_request('DescribeMQTTTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主题列表，Filter参数使用说明如下：

        # 1. TopicName，主题名称模糊搜索
        # 2. TopicType，主题类型查询，支持多选，可选值：Normal,Order,Transaction,DelayScheduled

        # @param request: Request instance for DescribeMQTTTopicList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTTopicListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTTopicListResponse`
        def DescribeMQTTTopicList(request)
          body = send_request('DescribeMQTTTopicList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTTopicListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户列表，Filter参数使用说明如下：

        # 1. Username，用户名称模糊搜索

        # @param request: Request instance for DescribeMQTTUserList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTUserListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMQTTUserListResponse`
        def DescribeMQTTUserList(request)
          body = send_request('DescribeMQTTUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMQTTUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消息详情

        # @param request: Request instance for DescribeMessage.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMessageRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMessageResponse`
        def DescribeMessage(request)
          body = send_request('DescribeMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消息列表。如果查询死信消息，请设置ConsumerGroup参数。

        # @param request: Request instance for DescribeMessageList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMessageListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMessageListResponse`
        def DescribeMessageList(request)
          body = send_request('DescribeMessageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMessageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据消息 ID 查询消息轨迹。

        # @param request: Request instance for DescribeMessageTrace.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMessageTraceRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMessageTraceResponse`
        def DescribeMessageTrace(request)
          body = send_request('DescribeMessageTrace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMessageTraceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看迁移消费组的实时信息

        # @param request: Request instance for DescribeMigratingGroupStats.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMigratingGroupStatsRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMigratingGroupStatsResponse`
        def DescribeMigratingGroupStats(request)
          body = send_request('DescribeMigratingGroupStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigratingGroupStatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Topic迁移状态列表

        # 查询过滤器，支持TopicName、MigrationStatus、Namespace查询

        # @param request: Request instance for DescribeMigratingTopicList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMigratingTopicListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMigratingTopicListResponse`
        def DescribeMigratingTopicList(request)
          body = send_request('DescribeMigratingTopicList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigratingTopicListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询迁移主题的实时数据

        # @param request: Request instance for DescribeMigratingTopicStats.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMigratingTopicStatsRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMigratingTopicStatsResponse`
        def DescribeMigratingTopicStats(request)
          body = send_request('DescribeMigratingTopicStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigratingTopicStatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据迁移任务列表，Filter参数使用说明如下：

        # TaskId，根据任务ID精确查找
        # InstanceId，根据实例ID精确查找
        # Type，根据任务类型精确查找

        # @param request: Request instance for DescribeMigrationTaskList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeMigrationTaskListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeMigrationTaskListResponse`
        def DescribeMigrationTaskList(request)
          body = send_request('DescribeMigrationTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrationTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询产品售卖规格，针对 RocketMQ 5.x 集群。

        # @param request: Request instance for DescribeProductSKUs.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeProductSKUsRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeProductSKUsResponse`
        def DescribeProductSKUs(request)
          body = send_request('DescribeProductSKUs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductSKUsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询角色列表，Filter参数使用说明如下：

        # 1. RoleName，角色名称模糊搜索
        # 2. AccessKey，AccessKey模糊搜索

        # @param request: Request instance for DescribeRoleList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeRoleListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeRoleListResponse`
        def DescribeRoleList(request)
          body = send_request('DescribeRoleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 平滑迁移过程获取源集群group列表接口

        # 查询过滤器，支持字段
        # GroupName，消费组名称模糊搜索
        # Imported，是否已导入
        # ImportStatus，导入状态
        # Namespace，命名空间

        # @param request: Request instance for DescribeSourceClusterGroupList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeSourceClusterGroupListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeSourceClusterGroupListResponse`
        def DescribeSourceClusterGroupList(request)
          body = send_request('DescribeSourceClusterGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSourceClusterGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主题详情，Offset和Limit参数是指订阅该主题的消费组查询分页参数，Filter参数使用说明如下：

        # ConsumerGroup，消费组名称过滤

        # @param request: Request instance for DescribeTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeTopicResponse`
        def DescribeTopic(request)
          body = send_request('DescribeTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主题列表，Filter参数使用说明如下：

        # 1. TopicName，主题名称模糊搜索
        # 2. TopicType，主题类型查询，支持多选，可选值：Normal,Order,Transaction,DelayScheduled

        # @param request: Request instance for DescribeTopicList.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeTopicListRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeTopicListResponse`
        def DescribeTopicList(request)
          body = send_request('DescribeTopicList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据消费组获取主题列表，Filter参数使用说明如下：

        # TopicName，主题名称过滤

        # @param request: Request instance for DescribeTopicListByGroup.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeTopicListByGroupRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeTopicListByGroupResponse`
        def DescribeTopicListByGroup(request)
          body = send_request('DescribeTopicListByGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicListByGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查迁移中的主题是否处于正常状态，只有处于正常状态的主题，才可以进入下一个迁移阶段

        # @param request: Request instance for DoHealthCheckOnMigratingTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DoHealthCheckOnMigratingTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DoHealthCheckOnMigratingTopicResponse`
        def DoHealthCheckOnMigratingTopic(request)
          body = send_request('DoHealthCheckOnMigratingTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DoHealthCheckOnMigratingTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导入消费者组列表

        # @param request: Request instance for ImportSourceClusterConsumerGroups.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ImportSourceClusterConsumerGroupsRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ImportSourceClusterConsumerGroupsResponse`
        def ImportSourceClusterConsumerGroups(request)
          body = send_request('ImportSourceClusterConsumerGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportSourceClusterConsumerGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ImportSourceClusterTopics.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ImportSourceClusterTopicsRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ImportSourceClusterTopicsResponse`
        def ImportSourceClusterTopics(request)
          body = send_request('ImportSourceClusterTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportSourceClusterTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改消费组属性

        # @param request: Request instance for ModifyConsumerGroup.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyConsumerGroupResponse`
        def ModifyConsumerGroup(request)
          body = send_request('ModifyConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 RocketMQ 5.x 集群属性。

        # @param request: Request instance for ModifyInstance.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyInstanceRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyInstanceResponse`
        def ModifyInstance(request)
          body = send_request('ModifyInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 RocketMQ 5.x 集群接入点。

        # @param request: Request instance for ModifyInstanceEndpoint.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyInstanceEndpointRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyInstanceEndpointResponse`
        def ModifyInstanceEndpoint(request)
          body = send_request('ModifyInstanceEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceEndpointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新MQTT实例公网接入点

        # @param request: Request instance for ModifyMQTTInsPublicEndpoint.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTInsPublicEndpointRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTInsPublicEndpointResponse`
        def ModifyMQTTInsPublicEndpoint(request)
          body = send_request('ModifyMQTTInsPublicEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMQTTInsPublicEndpointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例属性

        # @param request: Request instance for ModifyMQTTInstance.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTInstanceRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTInstanceResponse`
        def ModifyMQTTInstance(request)
          body = send_request('ModifyMQTTInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMQTTInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新MQTT集群绑定证书
        # 参数传空，则为删除证书

        # @param request: Request instance for ModifyMQTTInstanceCertBinding.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTInstanceCertBindingRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTInstanceCertBindingResponse`
        def ModifyMQTTInstanceCertBinding(request)
          body = send_request('ModifyMQTTInstanceCertBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMQTTInstanceCertBindingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改主题属性

        # @param request: Request instance for ModifyMQTTTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTTopicResponse`
        def ModifyMQTTTopic(request)
          body = send_request('ModifyMQTTTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMQTTTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改MQTT角色

        # @param request: Request instance for ModifyMQTTUser.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTUserRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyMQTTUserResponse`
        def ModifyMQTTUser(request)
          body = send_request('ModifyMQTTUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMQTTUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改角色

        # @param request: Request instance for ModifyRole.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyRoleRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyRoleResponse`
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

        # 修改主题属性

        # @param request: Request instance for ModifyTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ModifyTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ModifyTopicResponse`
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

        # 从迁移列表中移除主题，仅当主题处于初始状态时有效

        # @param request: Request instance for RemoveMigratingTopic.
        # @type request: :class:`Tencentcloud::trocket::V20230308::RemoveMigratingTopicRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::RemoveMigratingTopicResponse`
        def RemoveMigratingTopic(request)
          body = send_request('RemoveMigratingTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveMigratingTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新发送死信消息

        # @param request: Request instance for ResendDeadLetterMessage.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ResendDeadLetterMessageRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ResendDeadLetterMessageResponse`
        def ResendDeadLetterMessage(request)
          body = send_request('ResendDeadLetterMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResendDeadLetterMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置消费位点

        # @param request: Request instance for ResetConsumerGroupOffset.
        # @type request: :class:`Tencentcloud::trocket::V20230308::ResetConsumerGroupOffsetRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::ResetConsumerGroupOffsetResponse`
        def ResetConsumerGroupOffset(request)
          body = send_request('ResetConsumerGroupOffset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetConsumerGroupOffsetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回滚正在迁移的主题至前一个阶段

        # @param request: Request instance for RollbackMigratingTopicStage.
        # @type request: :class:`Tencentcloud::trocket::V20230308::RollbackMigratingTopicStageRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::RollbackMigratingTopicStageResponse`
        def RollbackMigratingTopicStage(request)
          body = send_request('RollbackMigratingTopicStage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackMigratingTopicStageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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