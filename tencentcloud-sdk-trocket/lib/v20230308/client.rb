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

        # 购买新实例

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

        # 删除实例

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

        # 查询实例信息

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

        # 获取实例列表，Filters参数使用说明如下：
        # 1. InstanceName, 名称模糊查询
        # 2. InstanceId，实例ID查询
        # 3. InstanceType, 实例类型查询，支持多选
        # 3. InstanceStatus，实例状态查询，支持多选

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

        # 查询角色列表，Filter参数使用说明如下：

        # 1. RoleName，角色名称模糊搜索

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

        # 运营端查询topicStata

        # @param request: Request instance for DescribeTopicStatsOp.
        # @type request: :class:`Tencentcloud::trocket::V20230308::DescribeTopicStatsOpRequest`
        # @rtype: :class:`Tencentcloud::trocket::V20230308::DescribeTopicStatsOpResponse`
        def DescribeTopicStatsOp(request)
          body = send_request('DescribeTopicStatsOp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicStatsOpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改实例属性

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


      end
    end
  end
end