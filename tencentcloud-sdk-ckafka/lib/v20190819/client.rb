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
  module Ckafka
    module V20190819
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-08-19'
            api_endpoint = 'ckafka.tencentcloudapi.com'
            sdk_version = 'CKAFKA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 给实例授权token

        # @param request: Request instance for AuthorizeToken.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::AuthorizeTokenRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::AuthorizeTokenResponse`
        def AuthorizeToken(request)
          body = send_request('AuthorizeToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AuthorizeTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量添加ACL策略

        # @param request: Request instance for BatchCreateAcl.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::BatchCreateAclRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::BatchCreateAclResponse`
        def BatchCreateAcl(request)
          body = send_request('BatchCreateAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchCreateAclResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改消费组offset

        # @param request: Request instance for BatchModifyGroupOffsets.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::BatchModifyGroupOffsetsRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::BatchModifyGroupOffsetsResponse`
        def BatchModifyGroupOffsets(request)
          body = send_request('BatchModifyGroupOffsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyGroupOffsetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量设置主题属性

        # @param request: Request instance for BatchModifyTopicAttributes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::BatchModifyTopicAttributesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::BatchModifyTopicAttributesResponse`
        def BatchModifyTopicAttributes(request)
          body = send_request('BatchModifyTopicAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyTopicAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消授权token

        # @param request: Request instance for CancelAuthorizationToken.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CancelAuthorizationTokenRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CancelAuthorizationTokenResponse`
        def CancelAuthorizationToken(request)
          body = send_request('CancelAuthorizationToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelAuthorizationTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询cdc-ckafka任务状态

        # @param request: Request instance for CheckCdcCluster.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CheckCdcClusterRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CheckCdcClusterResponse`
        def CheckCdcCluster(request)
          body = send_request('CheckCdcCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckCdcClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加 ACL 策略

        # @param request: Request instance for CreateAcl.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateAclRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateAclResponse`
        def CreateAcl(request)
          body = send_request('CreateAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAclResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加 ACL 规则

        # @param request: Request instance for CreateAclRule.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateAclRuleRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateAclRuleResponse`
        def CreateAclRule(request)
          body = send_request('CreateAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于cdc的专用ckafka集群

        # @param request: Request instance for CreateCdcCluster.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateCdcClusterRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateCdcClusterResponse`
        def CreateCdcCluster(request)
          body = send_request('CreateCdcCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCdcClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建连接器连接

        # @param request: Request instance for CreateConnectResource.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateConnectResourceRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateConnectResourceResponse`
        def CreateConnectResource(request)
          body = send_request('CreateConnectResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConnectResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建消费者组

        # @param request: Request instance for CreateConsumer.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateConsumerRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateConsumerResponse`
        def CreateConsumer(request)
          body = send_request('CreateConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建连接器任务

        # @param request: Request instance for CreateDatahubTask.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateDatahubTaskRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateDatahubTaskResponse`
        def CreateDatahubTask(request)
          body = send_request('CreateDatahubTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatahubTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建DIP主题

        # @param request: Request instance for CreateDatahubTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateDatahubTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateDatahubTopicResponse`
        def CreateDatahubTopic(request)
          body = send_request('CreateDatahubTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatahubTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建实例(预付费包年包月),  仅支持创建专业版实例

        # @param request: Request instance for CreateInstancePre.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateInstancePreRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateInstancePreResponse`
        def CreateInstancePre(request)
          body = send_request('CreateInstancePre', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstancePreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于增加主题中的分区

        # @param request: Request instance for CreatePartition.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreatePartitionRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreatePartitionResponse`
        def CreatePartition(request)
          body = send_request('CreatePartition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePartitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 当前接口用来替代 CreateInstancePost 接口。创建按量计费实例。通常用于 SDK 或云 API 控制台调用接口，创建后付费 CKafka 实例。调用接口与在 CKafka 控制台购买按量付费实例效果相同。

        # @param request: Request instance for CreatePostPaidInstance.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreatePostPaidInstanceRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreatePostPaidInstanceResponse`
        def CreatePostPaidInstance(request)
          body = send_request('CreatePostPaidInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePostPaidInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加普罗米修斯监控

        # @param request: Request instance for CreatePrometheus.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreatePrometheusRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreatePrometheusResponse`
        def CreatePrometheus(request)
          body = send_request('CreatePrometheus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加实例路由

        # @param request: Request instance for CreateRoute.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateRouteRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateRouteResponse`
        def CreateRoute(request)
          body = send_request('CreateRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建最高权限的token

        # @param request: Request instance for CreateToken.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateTokenRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateTokenResponse`
        def CreateToken(request)
          body = send_request('CreateToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建ckafka主题

        # @param request: Request instance for CreateTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateTopicResponse`
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

        # 创建主题ip白名单

        # @param request: Request instance for CreateTopicIpWhiteList.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateTopicIpWhiteListRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateTopicIpWhiteListResponse`
        def CreateTopicIpWhiteList(request)
          body = send_request('CreateTopicIpWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTopicIpWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加用户

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::CreateUserResponse`
        def CreateUser(request)
          body = send_request('CreateUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除ACL

        # @param request: Request instance for DeleteAcl.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteAclRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteAclResponse`
        def DeleteAcl(request)
          body = send_request('DeleteAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAclResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除ACL规则

        # @param request: Request instance for DeleteAclRule.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteAclRuleRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteAclRuleResponse`
        def DeleteAclRule(request)
          body = send_request('DeleteAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除连接器连接

        # @param request: Request instance for DeleteConnectResource.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteConnectResourceRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteConnectResourceResponse`
        def DeleteConnectResource(request)
          body = send_request('DeleteConnectResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConnectResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除连接器任务

        # @param request: Request instance for DeleteDatahubTask.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteDatahubTaskRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteDatahubTaskResponse`
        def DeleteDatahubTask(request)
          body = send_request('DeleteDatahubTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDatahubTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DIP主题

        # @param request: Request instance for DeleteDatahubTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteDatahubTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteDatahubTopicResponse`
        def DeleteDatahubTopic(request)
          body = send_request('DeleteDatahubTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDatahubTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteGroup.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteGroupRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteGroupResponse`
        def DeleteGroup(request)
          body = send_request('DeleteGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除消费分组订阅的topic(消费分组必须是Empty 状态)

        # @param request: Request instance for DeleteGroupSubscribeTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteGroupSubscribeTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteGroupSubscribeTopicResponse`
        def DeleteGroupSubscribeTopic(request)
          body = send_request('DeleteGroupSubscribeTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGroupSubscribeTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除后付费实例，通过调用API删除不会对连接器和任务进行关联预检查，直接进行实例销毁。

        # @param request: Request instance for DeleteInstancePost.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteInstancePostRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteInstancePostResponse`
        def DeleteInstancePost(request)
          body = send_request('DeleteInstancePost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstancePostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除预付费实例，该接口会对实例执行隔离并删除的动作，执行成功后实例会被直接删除销毁。通过调用API删除不会对连接器和任务进行关联预检查，直接进行实例销毁。

        # @param request: Request instance for DeleteInstancePre.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteInstancePreRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteInstancePreResponse`
        def DeleteInstancePre(request)
          body = send_request('DeleteInstancePre', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstancePreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除路由

        # @param request: Request instance for DeleteRoute.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteRouteRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteRouteResponse`
        def DeleteRoute(request)
          body = send_request('DeleteRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改删除路由延迟触发时间

        # @param request: Request instance for DeleteRouteTriggerTime.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteRouteTriggerTimeRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteRouteTriggerTimeResponse`
        def DeleteRouteTriggerTime(request)
          body = send_request('DeleteRouteTriggerTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRouteTriggerTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除ckafka主题

        # @param request: Request instance for DeleteTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteTopicResponse`
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

        # 删除主题IP白名单

        # @param request: Request instance for DeleteTopicIpWhiteList.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteTopicIpWhiteListRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteTopicIpWhiteListResponse`
        def DeleteTopicIpWhiteList(request)
          body = send_request('DeleteTopicIpWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicIpWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户

        # @param request: Request instance for DeleteUser.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DeleteUserRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DeleteUserResponse`
        def DeleteUser(request)
          body = send_request('DeleteUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 枚举ACL

        # @param request: Request instance for DescribeACL.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeACLRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeACLResponse`
        def DescribeACL(request)
          body = send_request('DescribeACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeACLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例公网IP白名单列表接口

        # @param request: Request instance for DescribeAccessPolicy.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeAccessPolicyRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeAccessPolicyResponse`
        def DescribeAccessPolicy(request)
          body = send_request('DescribeAccessPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询ACL规则列表

        # @param request: Request instance for DescribeAclRule.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeAclRuleRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeAclRuleResponse`
        def DescribeAclRule(request)
          body = send_request('DescribeAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例版本信息

        # @param request: Request instance for DescribeCkafkaVersion.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeCkafkaVersionRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeCkafkaVersionResponse`
        def DescribeCkafkaVersion(request)
          body = send_request('DescribeCkafkaVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCkafkaVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查看ckafka的可用区列表

        # @param request: Request instance for DescribeCkafkaZone.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeCkafkaZoneRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeCkafkaZoneResponse`
        def DescribeCkafkaZone(request)
          body = send_request('DescribeCkafkaZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCkafkaZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询连接器连接详情

        # @param request: Request instance for DescribeConnectResource.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeConnectResourceRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeConnectResourceResponse`
        def DescribeConnectResource(request)
          body = send_request('DescribeConnectResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConnectResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询连接器连接列表

        # @param request: Request instance for DescribeConnectResources.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeConnectResourcesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeConnectResourcesResponse`
        def DescribeConnectResources(request)
          body = send_request('DescribeConnectResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConnectResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消费分组信息

        # @param request: Request instance for DescribeConsumerGroup.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeConsumerGroupResponse`
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

        # 本接口用于获取实例对应后端CVM信息，包括cvmId和ip等。用于专业版，标准版返回数据为空

        # @param request: Request instance for DescribeCvmInfo.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeCvmInfoRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeCvmInfoResponse`
        def DescribeCvmInfo(request)
          body = send_request('DescribeCvmInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCvmInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Datahub消费分组offset

        # @param request: Request instance for DescribeDatahubGroupOffsets.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubGroupOffsetsRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubGroupOffsetsResponse`
        def DescribeDatahubGroupOffsets(request)
          body = send_request('DescribeDatahubGroupOffsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatahubGroupOffsetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询连接器任务详情

        # @param request: Request instance for DescribeDatahubTask.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubTaskRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubTaskResponse`
        def DescribeDatahubTask(request)
          body = send_request('DescribeDatahubTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatahubTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询连接器任务列表

        # @param request: Request instance for DescribeDatahubTasks.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubTasksRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubTasksResponse`
        def DescribeDatahubTasks(request)
          body = send_request('DescribeDatahubTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatahubTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DIP主题属性

        # @param request: Request instance for DescribeDatahubTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubTopicResponse`
        def DescribeDatahubTopic(request)
          body = send_request('DescribeDatahubTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatahubTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询DIP主题列表

        # @param request: Request instance for DescribeDatahubTopics.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubTopicsRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeDatahubTopicsResponse`
        def DescribeDatahubTopics(request)
          body = send_request('DescribeDatahubTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatahubTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 枚举消费分组(精简版)

        # @param request: Request instance for DescribeGroup.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupResponse`
        def DescribeGroup(request)
          body = send_request('DescribeGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取消费分组信息

        # @param request: Request instance for DescribeGroupInfo.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupInfoResponse`
        def DescribeGroupInfo(request)
          body = send_request('DescribeGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取消费分组offset

        # @param request: Request instance for DescribeGroupOffsets.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupOffsetsRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeGroupOffsetsResponse`
        def DescribeGroupOffsets(request)
          body = send_request('DescribeGroupOffsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupOffsetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例属性

        # @param request: Request instance for DescribeInstanceAttributes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeInstanceAttributesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeInstanceAttributesResponse`
        def DescribeInstanceAttributes(request)
          body = send_request('DescribeInstanceAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstances）用于在用户账户下获取消息队列 CKafka 实例列表

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeInstancesResponse`
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

        # 用户账户下获取实例列表详情

        # @param request: Request instance for DescribeInstancesDetail.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeInstancesDetailRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeInstancesDetailResponse`
        def DescribeInstancesDetail(request)
          body = send_request('DescribeInstancesDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例变配类型

        # @param request: Request instance for DescribeModifyType.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeModifyTypeRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeModifyTypeResponse`
        def DescribeModifyType(request)
          body = send_request('DescribeModifyType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModifyTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例Prometheus信息

        # @param request: Request instance for DescribePrometheus.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribePrometheusRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribePrometheusResponse`
        def DescribePrometheus(request)
          body = send_request('DescribePrometheus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 枚举地域信息

        # @param request: Request instance for DescribeRegion.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeRegionRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeRegionResponse`
        def DescribeRegion(request)
          body = send_request('DescribeRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看路由信息

        # @param request: Request instance for DescribeRoute.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeRouteRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeRouteResponse`
        def DescribeRoute(request)
          body = send_request('DescribeRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取安全组路由信息列表

        # @param request: Request instance for DescribeSecurityGroupRoutes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeSecurityGroupRoutesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeSecurityGroupRoutesResponse`
        def DescribeSecurityGroupRoutes(request)
          body = send_request('DescribeSecurityGroupRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupRoutesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务状态

        # @param request: Request instance for DescribeTaskStatus.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTaskStatusResponse`
        def DescribeTaskStatus(request)
          body = send_request('DescribeTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口请求域名：https://ckafka.tencentcloudapi.com
        # 本接口（DescribeTopic）用于在用户获取消息队列 CKafka 实例的主题列表

        # @param request: Request instance for DescribeTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicResponse`
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

        # 获取主题属性

        # @param request: Request instance for DescribeTopicAttributes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicAttributesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicAttributesResponse`
        def DescribeTopicAttributes(request)
          body = send_request('DescribeTopicAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主题列表详情（仅控制台调用）

        # @param request: Request instance for DescribeTopicDetail.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicDetailRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicDetailResponse`
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

        # 获取Topic流量排行，消费者流量排行

        # @param request: Request instance for DescribeTopicFlowRanking.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicFlowRankingRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicFlowRankingResponse`
        def DescribeTopicFlowRanking(request)
          body = send_request('DescribeTopicFlowRanking', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicFlowRankingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询topic 生产端连接信息

        # @param request: Request instance for DescribeTopicProduceConnection.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicProduceConnectionRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicProduceConnectionResponse`
        def DescribeTopicProduceConnection(request)
          body = send_request('DescribeTopicProduceConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicProduceConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询订阅某主题消息分组信息

        # @param request: Request instance for DescribeTopicSubscribeGroup.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicSubscribeGroupRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicSubscribeGroupResponse`
        def DescribeTopicSubscribeGroup(request)
          body = send_request('DescribeTopicSubscribeGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicSubscribeGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Topic 副本详情信息

        # @param request: Request instance for DescribeTopicSyncReplica.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicSyncReplicaRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTopicSyncReplicaResponse`
        def DescribeTopicSyncReplica(request)
          body = send_request('DescribeTopicSyncReplica', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicSyncReplicaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTypeInstances）用于在用户账户下获取指定类型消息队列 CKafka 实例列表

        # @param request: Request instance for DescribeTypeInstances.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeTypeInstancesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeTypeInstancesResponse`
        def DescribeTypeInstances(request)
          body = send_request('DescribeTypeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTypeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户信息

        # @param request: Request instance for DescribeUser.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::DescribeUserRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::DescribeUserResponse`
        def DescribeUser(request)
          body = send_request('DescribeUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据指定offset位置的消息

        # @param request: Request instance for FetchDatahubMessageByOffset.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::FetchDatahubMessageByOffsetRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::FetchDatahubMessageByOffsetResponse`
        def FetchDatahubMessageByOffset(request)
          body = send_request('FetchDatahubMessageByOffset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FetchDatahubMessageByOffsetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询最新消息列表

        # @param request: Request instance for FetchLatestDatahubMessageList.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::FetchLatestDatahubMessageListRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::FetchLatestDatahubMessageListResponse`
        def FetchLatestDatahubMessageList(request)
          body = send_request('FetchLatestDatahubMessageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FetchLatestDatahubMessageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据指定offset位置的消息

        # @param request: Request instance for FetchMessageByOffset.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::FetchMessageByOffsetRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::FetchMessageByOffsetResponse`
        def FetchMessageByOffset(request)
          body = send_request('FetchMessageByOffset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FetchMessageByOffsetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据位点查询消息列表

        # @param request: Request instance for FetchMessageListByOffset.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::FetchMessageListByOffsetRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::FetchMessageListByOffsetResponse`
        def FetchMessageListByOffset(request)
          body = send_request('FetchMessageListByOffset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FetchMessageListByOffsetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据时间戳查询消息列表

        # @param request: Request instance for FetchMessageListByTimestamp.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::FetchMessageListByTimestampRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::FetchMessageListByTimestampResponse`
        def FetchMessageListByTimestamp(request)
          body = send_request('FetchMessageListByTimestamp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FetchMessageListByTimestampResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Ckafka实例购买/续费询价

        # @param request: Request instance for InquireCkafkaPrice.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::InquireCkafkaPriceRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::InquireCkafkaPriceResponse`
        def InquireCkafkaPrice(request)
          body = send_request('InquireCkafkaPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquireCkafkaPriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按量实例缩容

        # @param request: Request instance for InstanceScalingDown.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::InstanceScalingDownRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::InstanceScalingDownResponse`
        def InstanceScalingDown(request)
          body = send_request('InstanceScalingDown', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstanceScalingDownResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例公网IP白名单列表接口

        # @param request: Request instance for ModifyAccessPolicy.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyAccessPolicyRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyAccessPolicyResponse`
        def ModifyAccessPolicy(request)
          body = send_request('ModifyAccessPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccessPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改ACL策略，目前只支持预设规则的是否应用到新增topic这一项的修改

        # @param request: Request instance for ModifyAclRule.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyAclRuleRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyAclRuleResponse`
        def ModifyAclRule(request)
          body = send_request('ModifyAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑连接器连接

        # @param request: Request instance for ModifyConnectResource.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyConnectResourceRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyConnectResourceResponse`
        def ModifyConnectResource(request)
          body = send_request('ModifyConnectResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConnectResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改连接器任务

        # @param request: Request instance for ModifyDatahubTask.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyDatahubTaskRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyDatahubTaskResponse`
        def ModifyDatahubTask(request)
          body = send_request('ModifyDatahubTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDatahubTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DIP主题属性

        # @param request: Request instance for ModifyDatahubTopic.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyDatahubTopicRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyDatahubTopicResponse`
        def ModifyDatahubTopic(request)
          body = send_request('ModifyDatahubTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDatahubTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置Groups 消费分组offset

        # @param request: Request instance for ModifyGroupOffsets.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyGroupOffsetsRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyGroupOffsetsResponse`
        def ModifyGroupOffsets(request)
          body = send_request('ModifyGroupOffsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGroupOffsetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置实例属性

        # @param request: Request instance for ModifyInstanceAttributes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyInstanceAttributesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyInstanceAttributesResponse`
        def ModifyInstanceAttributes(request)
          body = send_request('ModifyInstanceAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 预付费实例变配接口，调整磁盘，带宽,  分区

        # @param request: Request instance for ModifyInstancePre.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyInstancePreRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyInstancePreResponse`
        def ModifyInstancePre(request)
          body = send_request('ModifyInstancePre', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancePreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改密码

        # @param request: Request instance for ModifyPassword.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyPasswordRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyPasswordResponse`
        def ModifyPassword(request)
          body = send_request('ModifyPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置自动化运维属性

        # @param request: Request instance for ModifyRoutineMaintenanceTask.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyRoutineMaintenanceTaskRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyRoutineMaintenanceTaskResponse`
        def ModifyRoutineMaintenanceTask(request)
          body = send_request('ModifyRoutineMaintenanceTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRoutineMaintenanceTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改主题属性。

        # @param request: Request instance for ModifyTopicAttributes.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ModifyTopicAttributesRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ModifyTopicAttributesResponse`
        def ModifyTopicAttributes(request)
          body = send_request('ModifyTopicAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTopicAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停连接器任务

        # @param request: Request instance for PauseDatahubTask.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::PauseDatahubTaskRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::PauseDatahubTaskResponse`
        def PauseDatahubTask(request)
          body = send_request('PauseDatahubTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseDatahubTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 续费Ckafka实例, 目前只支持国内站包年包月实例续费

        # @param request: Request instance for RenewCkafkaInstance.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::RenewCkafkaInstanceRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::RenewCkafkaInstanceResponse`
        def RenewCkafkaInstance(request)
          body = send_request('RenewCkafkaInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewCkafkaInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 连接器任务异常时，重启连接器任务

        # @param request: Request instance for RestartDatahubTask.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::RestartDatahubTaskRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::RestartDatahubTaskResponse`
        def RestartDatahubTask(request)
          body = send_request('RestartDatahubTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartDatahubTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复连接器任务

        # @param request: Request instance for ResumeDatahubTask.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::ResumeDatahubTaskRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::ResumeDatahubTaskResponse`
        def ResumeDatahubTask(request)
          body = send_request('ResumeDatahubTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeDatahubTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过HTTP接入层发送消息

        # @param request: Request instance for SendMessage.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::SendMessageRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::SendMessageResponse`
        def SendMessage(request)
          body = send_request('SendMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # broker版本升级

        # @param request: Request instance for UpgradeBrokerVersion.
        # @type request: :class:`Tencentcloud::ckafka::V20190819::UpgradeBrokerVersionRequest`
        # @rtype: :class:`Tencentcloud::ckafka::V20190819::UpgradeBrokerVersionResponse`
        def UpgradeBrokerVersion(request)
          body = send_request('UpgradeBrokerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeBrokerVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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