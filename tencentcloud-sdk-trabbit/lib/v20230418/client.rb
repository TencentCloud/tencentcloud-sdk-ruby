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
  module Trabbit
    module V20230418
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-04-18'
            api_endpoint = 'trabbit.tencentcloudapi.com'
            sdk_version = 'TRABBIT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建RabbitMQ路由关系

        # @param request: Request instance for CreateRabbitMQServerlessBinding.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessBindingRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessBindingResponse`
        def CreateRabbitMQServerlessBinding(request)
          body = send_request('CreateRabbitMQServerlessBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRabbitMQServerlessBindingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建RabbitMQ exchange

        # @param request: Request instance for CreateRabbitMQServerlessExchange.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessExchangeRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessExchangeResponse`
        def CreateRabbitMQServerlessExchange(request)
          body = send_request('CreateRabbitMQServerlessExchange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRabbitMQServerlessExchangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建RabbitMQ队列

        # @param request: Request instance for CreateRabbitMQServerlessQueue.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessQueueRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessQueueResponse`
        def CreateRabbitMQServerlessQueue(request)
          body = send_request('CreateRabbitMQServerlessQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRabbitMQServerlessQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for CreateRabbitMQServerlessUser.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessUserRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessUserResponse`
        def CreateRabbitMQServerlessUser(request)
          body = send_request('CreateRabbitMQServerlessUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRabbitMQServerlessUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for CreateRabbitMQServerlessVirtualHost.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessVirtualHostRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::CreateRabbitMQServerlessVirtualHostResponse`
        def CreateRabbitMQServerlessVirtualHost(request)
          body = send_request('CreateRabbitMQServerlessVirtualHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRabbitMQServerlessVirtualHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteRabbitMQServerlessBinding.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessBindingRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessBindingResponse`
        def DeleteRabbitMQServerlessBinding(request)
          body = send_request('DeleteRabbitMQServerlessBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQServerlessBindingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除RabbitMQ exchange

        # @param request: Request instance for DeleteRabbitMQServerlessExchange.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessExchangeRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessExchangeResponse`
        def DeleteRabbitMQServerlessExchange(request)
          body = send_request('DeleteRabbitMQServerlessExchange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQServerlessExchangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteRabbitMQServerlessPermission.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessPermissionRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessPermissionResponse`
        def DeleteRabbitMQServerlessPermission(request)
          body = send_request('DeleteRabbitMQServerlessPermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQServerlessPermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除RabbitMQ队列

        # @param request: Request instance for DeleteRabbitMQServerlessQueue.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessQueueRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessQueueResponse`
        def DeleteRabbitMQServerlessQueue(request)
          body = send_request('DeleteRabbitMQServerlessQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQServerlessQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteRabbitMQServerlessUser.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessUserRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessUserResponse`
        def DeleteRabbitMQServerlessUser(request)
          body = send_request('DeleteRabbitMQServerlessUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQServerlessUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteRabbitMQServerlessVirtualHost.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessVirtualHostRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DeleteRabbitMQServerlessVirtualHostResponse`
        def DeleteRabbitMQServerlessVirtualHost(request)
          body = send_request('DeleteRabbitMQServerlessVirtualHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRabbitMQServerlessVirtualHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取路由关系列表

        # @param request: Request instance for DescribeRabbitMQServerlessBindings.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessBindingsRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessBindingsResponse`
        def DescribeRabbitMQServerlessBindings(request)
          body = send_request('DescribeRabbitMQServerlessBindings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessBindingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ连接列表

        # @param request: Request instance for DescribeRabbitMQServerlessConnection.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessConnectionRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessConnectionResponse`
        def DescribeRabbitMQServerlessConnection(request)
          body = send_request('DescribeRabbitMQServerlessConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ队列消费者列表

        # @param request: Request instance for DescribeRabbitMQServerlessConsumers.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessConsumersRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessConsumersResponse`
        def DescribeRabbitMQServerlessConsumers(request)
          body = send_request('DescribeRabbitMQServerlessConsumers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessConsumersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询RabbitMQ exchange 详情

        # @param request: Request instance for DescribeRabbitMQServerlessExchangeDetail.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessExchangeDetailRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessExchangeDetailResponse`
        def DescribeRabbitMQServerlessExchangeDetail(request)
          body = send_request('DescribeRabbitMQServerlessExchangeDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessExchangeDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeRabbitMQServerlessExchanges.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessExchangesRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessExchangesResponse`
        def DescribeRabbitMQServerlessExchanges(request)
          body = send_request('DescribeRabbitMQServerlessExchanges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessExchangesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个RabbitMQ专享实例信息

        # @param request: Request instance for DescribeRabbitMQServerlessInstance.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessInstanceRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessInstanceResponse`
        def DescribeRabbitMQServerlessInstance(request)
          body = send_request('DescribeRabbitMQServerlessInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeRabbitMQServerlessPermission.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessPermissionRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessPermissionResponse`
        def DescribeRabbitMQServerlessPermission(request)
          body = send_request('DescribeRabbitMQServerlessPermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessPermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeRabbitMQServerlessQueueDetail.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessQueueDetailRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessQueueDetailResponse`
        def DescribeRabbitMQServerlessQueueDetail(request)
          body = send_request('DescribeRabbitMQServerlessQueueDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessQueueDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeRabbitMQServerlessQueues.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessQueuesRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessQueuesResponse`
        def DescribeRabbitMQServerlessQueues(request)
          body = send_request('DescribeRabbitMQServerlessQueues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessQueuesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeRabbitMQServerlessUser.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessUserRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessUserResponse`
        def DescribeRabbitMQServerlessUser(request)
          body = send_request('DescribeRabbitMQServerlessUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeRabbitMQServerlessVirtualHost.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessVirtualHostRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::DescribeRabbitMQServerlessVirtualHostResponse`
        def DescribeRabbitMQServerlessVirtualHost(request)
          body = send_request('DescribeRabbitMQServerlessVirtualHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRabbitMQServerlessVirtualHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例列表

        # @param request: Request instance for ListRabbitMQServerlessInstances.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::ListRabbitMQServerlessInstancesRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::ListRabbitMQServerlessInstancesResponse`
        def ListRabbitMQServerlessInstances(request)
          body = send_request('ListRabbitMQServerlessInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRabbitMQServerlessInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改RabbitMQ exchange

        # @param request: Request instance for ModifyRabbitMQServerlessExchange.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessExchangeRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessExchangeResponse`
        def ModifyRabbitMQServerlessExchange(request)
          body = send_request('ModifyRabbitMQServerlessExchange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQServerlessExchangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改集群信息

        # @param request: Request instance for ModifyRabbitMQServerlessInstance.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessInstanceRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessInstanceResponse`
        def ModifyRabbitMQServerlessInstance(request)
          body = send_request('ModifyRabbitMQServerlessInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQServerlessInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ModifyRabbitMQServerlessPermission.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessPermissionRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessPermissionResponse`
        def ModifyRabbitMQServerlessPermission(request)
          body = send_request('ModifyRabbitMQServerlessPermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQServerlessPermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改RabbitMQ队列

        # @param request: Request instance for ModifyRabbitMQServerlessQueue.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessQueueRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessQueueResponse`
        def ModifyRabbitMQServerlessQueue(request)
          body = send_request('ModifyRabbitMQServerlessQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQServerlessQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ModifyRabbitMQServerlessUser.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessUserRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessUserResponse`
        def ModifyRabbitMQServerlessUser(request)
          body = send_request('ModifyRabbitMQServerlessUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQServerlessUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ModifyRabbitMQServerlessVirtualHost.
        # @type request: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessVirtualHostRequest`
        # @rtype: :class:`Tencentcloud::trabbit::V20230418::ModifyRabbitMQServerlessVirtualHostResponse`
        def ModifyRabbitMQServerlessVirtualHost(request)
          body = send_request('ModifyRabbitMQServerlessVirtualHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRabbitMQServerlessVirtualHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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