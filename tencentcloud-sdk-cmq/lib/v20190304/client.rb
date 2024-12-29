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
  module Cmq
    module V20190304
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-03-04'
            api_endpoint = 'cmq.tencentcloudapi.com'
            sdk_version = 'CMQ_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 下线老cmq云API 3.0 无调用量接口

        # 清除queue中的所有消息

        # @param request: Request instance for ClearQueue.
        # @type request: :class:`Tencentcloud::cmq::V20190304::ClearQueueRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::ClearQueueResponse`
        def ClearQueue(request)
          body = send_request('ClearQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线老cmq云API 3.0 无调用量接口

        # 清空订阅者消息标签

        # @param request: Request instance for ClearSubscriptionFilterTags.
        # @type request: :class:`Tencentcloud::cmq::V20190304::ClearSubscriptionFilterTagsRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::ClearSubscriptionFilterTagsResponse`
        def ClearSubscriptionFilterTags(request)
          body = send_request('ClearSubscriptionFilterTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearSubscriptionFilterTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建队列接口

        # @param request: Request instance for CreateQueue.
        # @type request: :class:`Tencentcloud::cmq::V20190304::CreateQueueRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::CreateQueueResponse`
        def CreateQueue(request)
          body = send_request('CreateQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线老cmq云API 3.0 无调用量接口

        # 创建订阅接口

        # @param request: Request instance for CreateSubscribe.
        # @type request: :class:`Tencentcloud::cmq::V20190304::CreateSubscribeRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::CreateSubscribeResponse`
        def CreateSubscribe(request)
          body = send_request('CreateSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cmq::V20190304::CreateTopicRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::CreateTopicResponse`
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

        # DeleteQueue

        # @param request: Request instance for DeleteQueue.
        # @type request: :class:`Tencentcloud::cmq::V20190304::DeleteQueueRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::DeleteQueueResponse`
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

        # 下线老cmq云API 3.0 无调用量接口

        # 删除订阅

        # @param request: Request instance for DeleteSubscribe.
        # @type request: :class:`Tencentcloud::cmq::V20190304::DeleteSubscribeRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::DeleteSubscribeResponse`
        def DeleteSubscribe(request)
          body = send_request('DeleteSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线老cmq云API 3.0 无调用量接口

        # 删除主题

        # @param request: Request instance for DeleteTopic.
        # @type request: :class:`Tencentcloud::cmq::V20190304::DeleteTopicRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::DeleteTopicResponse`
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

        # 下线老cmq云API 3.0 无调用量接口

        # 枚举死信队列源队列

        # @param request: Request instance for DescribeDeadLetterSourceQueues.
        # @type request: :class:`Tencentcloud::cmq::V20190304::DescribeDeadLetterSourceQueuesRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::DescribeDeadLetterSourceQueuesResponse`
        def DescribeDeadLetterSourceQueues(request)
          body = send_request('DescribeDeadLetterSourceQueues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeadLetterSourceQueuesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 枚举队列列表

        # @param request: Request instance for DescribeQueueDetail.
        # @type request: :class:`Tencentcloud::cmq::V20190304::DescribeQueueDetailRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::DescribeQueueDetailResponse`
        def DescribeQueueDetail(request)
          body = send_request('DescribeQueueDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQueueDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询订阅详情

        # @param request: Request instance for DescribeSubscriptionDetail.
        # @type request: :class:`Tencentcloud::cmq::V20190304::DescribeSubscriptionDetailRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::DescribeSubscriptionDetailResponse`
        def DescribeSubscriptionDetail(request)
          body = send_request('DescribeSubscriptionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubscriptionDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主题详情

        # @param request: Request instance for DescribeTopicDetail.
        # @type request: :class:`Tencentcloud::cmq::V20190304::DescribeTopicDetailRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::DescribeTopicDetailResponse`
        def DescribeTopicDetail(request)
          body = send_request('DescribeTopicDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改队列属性

        # @param request: Request instance for ModifyQueueAttribute.
        # @type request: :class:`Tencentcloud::cmq::V20190304::ModifyQueueAttributeRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::ModifyQueueAttributeResponse`
        def ModifyQueueAttribute(request)
          body = send_request('ModifyQueueAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyQueueAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线老cmq云API 3.0 无调用量接口

        # 修改订阅属性

        # @param request: Request instance for ModifySubscriptionAttribute.
        # @type request: :class:`Tencentcloud::cmq::V20190304::ModifySubscriptionAttributeRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::ModifySubscriptionAttributeResponse`
        def ModifySubscriptionAttribute(request)
          body = send_request('ModifySubscriptionAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubscriptionAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线老cmq云API 3.0 无调用量接口

        # 修改主题属性

        # @param request: Request instance for ModifyTopicAttribute.
        # @type request: :class:`Tencentcloud::cmq::V20190304::ModifyTopicAttributeRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::ModifyTopicAttributeResponse`
        def ModifyTopicAttribute(request)
          body = send_request('ModifyTopicAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTopicAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线老cmq云API 3.0 无调用量接口

        # 回溯队列

        # @param request: Request instance for RewindQueue.
        # @type request: :class:`Tencentcloud::cmq::V20190304::RewindQueueRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::RewindQueueResponse`
        def RewindQueue(request)
          body = send_request('RewindQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RewindQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线老cmq云API 3.0 无调用量接口

        # 解绑死信队列

        # @param request: Request instance for UnbindDeadLetter.
        # @type request: :class:`Tencentcloud::cmq::V20190304::UnbindDeadLetterRequest`
        # @rtype: :class:`Tencentcloud::cmq::V20190304::UnbindDeadLetterResponse`
        def UnbindDeadLetter(request)
          body = send_request('UnbindDeadLetter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindDeadLetterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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