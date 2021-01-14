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
  module Tdmq
    module V20200217
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-02-17'
        @@endpoint = 'tdmq.tencentcloudapi.com'
        @@sdk_version = 'TDMQ_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 用于在用户账户下创建消息队列 Tdmq环境（命名空间）

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

        # 批量删除租户下的环境

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

        # 获取指定环境的属性

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

        # 获取环境角色列表

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

        # 获取租户下环境列表

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

        # 获取生产者列表，仅显示在线的生产者

        # @param request: Request instance for DescribeProducers.
        # @type request: :class:`Tencentcloud::tdmq::V20200217::DescribeProducersRequest`
        # @rtype: :class:`Tencentcloud::tdmq::V20200217::DescribeProducersResponse`
        def DescribeProducers(request)
          body = send_request('DescribeProducers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProducersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改指定环境的属性值

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


      end
    end
  end
end