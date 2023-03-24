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
  module Eb
    module V20210416
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-04-16'
            api_endpoint = 'eb.tencentcloudapi.com'
            sdk_version = 'EB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 检验规则

        # @param request: Request instance for CheckRule.
        # @type request: :class:`Tencentcloud::eb::V20210416::CheckRuleRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::CheckRuleResponse`
        def CheckRule(request)
          body = send_request('CheckRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在ETL配置页面, 测试规则和数据.

        # @param request: Request instance for CheckTransformation.
        # @type request: :class:`Tencentcloud::eb::V20210416::CheckTransformationRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::CheckTransformationResponse`
        def CheckTransformation(request)
          body = send_request('CheckTransformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckTransformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建事件连接器

        # @param request: Request instance for CreateConnection.
        # @type request: :class:`Tencentcloud::eb::V20210416::CreateConnectionRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::CreateConnectionResponse`
        def CreateConnection(request)
          body = send_request('CreateConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建事件集

        # @param request: Request instance for CreateEventBus.
        # @type request: :class:`Tencentcloud::eb::V20210416::CreateEventBusRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::CreateEventBusResponse`
        def CreateEventBus(request)
          body = send_request('CreateEventBus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEventBusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建事件规则

        # @param request: Request instance for CreateRule.
        # @type request: :class:`Tencentcloud::eb::V20210416::CreateRuleRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::CreateRuleResponse`
        def CreateRule(request)
          body = send_request('CreateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建事件目标

        # @param request: Request instance for CreateTarget.
        # @type request: :class:`Tencentcloud::eb::V20210416::CreateTargetRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::CreateTargetResponse`
        def CreateTarget(request)
          body = send_request('CreateTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTargetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建转换器

        # @param request: Request instance for CreateTransformation.
        # @type request: :class:`Tencentcloud::eb::V20210416::CreateTransformationRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::CreateTransformationResponse`
        def CreateTransformation(request)
          body = send_request('CreateTransformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTransformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除事件连接器

        # @param request: Request instance for DeleteConnection.
        # @type request: :class:`Tencentcloud::eb::V20210416::DeleteConnectionRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::DeleteConnectionResponse`
        def DeleteConnection(request)
          body = send_request('DeleteConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除事件集

        # @param request: Request instance for DeleteEventBus.
        # @type request: :class:`Tencentcloud::eb::V20210416::DeleteEventBusRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::DeleteEventBusResponse`
        def DeleteEventBus(request)
          body = send_request('DeleteEventBus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEventBusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除事件规则

        # @param request: Request instance for DeleteRule.
        # @type request: :class:`Tencentcloud::eb::V20210416::DeleteRuleRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::DeleteRuleResponse`
        def DeleteRule(request)
          body = send_request('DeleteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除事件目标

        # @param request: Request instance for DeleteTarget.
        # @type request: :class:`Tencentcloud::eb::V20210416::DeleteTargetRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::DeleteTargetResponse`
        def DeleteTarget(request)
          body = send_request('DeleteTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTargetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除转换器

        # @param request: Request instance for DeleteTransformation.
        # @type request: :class:`Tencentcloud::eb::V20210416::DeleteTransformationRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::DeleteTransformationResponse`
        def DeleteTransformation(request)
          body = send_request('DeleteTransformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTransformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询日志索引维度值

        # @param request: Request instance for DescribeLogTagValue.
        # @type request: :class:`Tencentcloud::eb::V20210416::DescribeLogTagValueRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::DescribeLogTagValueResponse`
        def DescribeLogTagValue(request)
          body = send_request('DescribeLogTagValue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogTagValueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取事件集详情

        # @param request: Request instance for GetEventBus.
        # @type request: :class:`Tencentcloud::eb::V20210416::GetEventBusRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::GetEventBusResponse`
        def GetEventBus(request)
          body = send_request('GetEventBus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetEventBusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取事件规则详情

        # @param request: Request instance for GetRule.
        # @type request: :class:`Tencentcloud::eb::V20210416::GetRuleRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::GetRuleResponse`
        def GetRule(request)
          body = send_request('GetRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取转换器详情

        # @param request: Request instance for GetTransformation.
        # @type request: :class:`Tencentcloud::eb::V20210416::GetTransformationRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::GetTransformationResponse`
        def GetTransformation(request)
          body = send_request('GetTransformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTransformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取事件连接器列表

        # @param request: Request instance for ListConnections.
        # @type request: :class:`Tencentcloud::eb::V20210416::ListConnectionsRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::ListConnectionsResponse`
        def ListConnections(request)
          body = send_request('ListConnections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListConnectionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取事件集列表

        # @param request: Request instance for ListEventBuses.
        # @type request: :class:`Tencentcloud::eb::V20210416::ListEventBusesRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::ListEventBusesResponse`
        def ListEventBuses(request)
          body = send_request('ListEventBuses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListEventBusesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取事件规则列表

        # @param request: Request instance for ListRules.
        # @type request: :class:`Tencentcloud::eb::V20210416::ListRulesRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::ListRulesResponse`
        def ListRules(request)
          body = send_request('ListRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取事件目标列表

        # @param request: Request instance for ListTargets.
        # @type request: :class:`Tencentcloud::eb::V20210416::ListTargetsRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::ListTargetsResponse`
        def ListTargets(request)
          body = send_request('ListTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # （已废弃）用于Event事件投递

        # @param request: Request instance for PublishEvent.
        # @type request: :class:`Tencentcloud::eb::V20210416::PublishEventRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::PublishEventResponse`
        def PublishEvent(request)
          body = send_request('PublishEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于Event事件投递

        # @param request: Request instance for PutEvents.
        # @type request: :class:`Tencentcloud::eb::V20210416::PutEventsRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::PutEventsResponse`
        def PutEvents(request)
          body = send_request('PutEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 日志检索

        # @param request: Request instance for SearchLog.
        # @type request: :class:`Tencentcloud::eb::V20210416::SearchLogRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::SearchLogResponse`
        def SearchLog(request)
          body = send_request('SearchLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新事件连接器

        # @param request: Request instance for UpdateConnection.
        # @type request: :class:`Tencentcloud::eb::V20210416::UpdateConnectionRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::UpdateConnectionResponse`
        def UpdateConnection(request)
          body = send_request('UpdateConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新事件集

        # @param request: Request instance for UpdateEventBus.
        # @type request: :class:`Tencentcloud::eb::V20210416::UpdateEventBusRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::UpdateEventBusResponse`
        def UpdateEventBus(request)
          body = send_request('UpdateEventBus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEventBusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新事件规则

        # @param request: Request instance for UpdateRule.
        # @type request: :class:`Tencentcloud::eb::V20210416::UpdateRuleRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::UpdateRuleResponse`
        def UpdateRule(request)
          body = send_request('UpdateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新事件目标

        # @param request: Request instance for UpdateTarget.
        # @type request: :class:`Tencentcloud::eb::V20210416::UpdateTargetRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::UpdateTargetResponse`
        def UpdateTarget(request)
          body = send_request('UpdateTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTargetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于更新转换器

        # @param request: Request instance for UpdateTransformation.
        # @type request: :class:`Tencentcloud::eb::V20210416::UpdateTransformationRequest`
        # @rtype: :class:`Tencentcloud::eb::V20210416::UpdateTransformationResponse`
        def UpdateTransformation(request)
          body = send_request('UpdateTransformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTransformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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