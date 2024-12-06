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
  module Mqtt
    module V20240516
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-05-16'
            api_endpoint = 'mqtt.tencentcloudapi.com'
            sdk_version = 'MQTT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 生效设备证书

        # @param request: Request instance for ActivateDeviceCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ActivateDeviceCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ActivateDeviceCertificateResponse`
        def ActivateDeviceCertificate(request)
          body = send_request('ActivateDeviceCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActivateDeviceCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建MQTT实例的性能测试任务

        # @param request: Request instance for CreateAuthorizationPolicy.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::CreateAuthorizationPolicyRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::CreateAuthorizationPolicyResponse`
        def CreateAuthorizationPolicy(request)
          body = send_request('CreateAuthorizationPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAuthorizationPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个jwks的认证

        # @param request: Request instance for CreateJWKSAuthenticator.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::CreateJWKSAuthenticatorRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::CreateJWKSAuthenticatorResponse`
        def CreateJWKSAuthenticator(request)
          body = send_request('CreateJWKSAuthenticator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateJWKSAuthenticatorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个jwks的认证

        # @param request: Request instance for CreateJWTAuthenticator.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::CreateJWTAuthenticatorRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::CreateJWTAuthenticatorResponse`
        def CreateJWTAuthenticator(request)
          body = send_request('CreateJWTAuthenticator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateJWTAuthenticatorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mqtt::V20240516::CreateTopicRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::CreateTopicResponse`
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

        # 根据认证器类型删除一个MQTT认证器

        # @param request: Request instance for DeleteAuthenticator.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeleteAuthenticatorRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeleteAuthenticatorResponse`
        def DeleteAuthenticator(request)
          body = send_request('DeleteAuthenticator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuthenticatorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除策略规则

        # @param request: Request instance for DeleteAuthorizationPolicy.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeleteAuthorizationPolicyRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeleteAuthorizationPolicyResponse`
        def DeleteAuthorizationPolicy(request)
          body = send_request('DeleteAuthorizationPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuthorizationPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteTopic.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeleteTopicRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeleteTopicResponse`
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

        # 查询MQTT认证器

        # @param request: Request instance for DescribeAuthenticator.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeAuthenticatorRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeAuthenticatorResponse`
        def DescribeAuthenticator(request)
          body = send_request('DescribeAuthenticator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuthenticatorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询授权规则

        # @param request: Request instance for DescribeAuthorizationPolicies.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeAuthorizationPoliciesRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeAuthorizationPoliciesResponse`
        def DescribeAuthorizationPolicies(request)
          body = send_request('DescribeAuthorizationPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuthorizationPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询设备证书

        # @param request: Request instance for DescribeDeviceCertificates.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeDeviceCertificatesRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeDeviceCertificatesResponse`
        def DescribeDeviceCertificates(request)
          body = send_request('DescribeDeviceCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeInstanceRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeInstanceResponse`
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
        # 3. InstanceStatus，实例状态查询，支持多选

        # 当使用TagFilters查询时，Filters参数失效。

        # @param request: Request instance for DescribeInstanceList.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeInstanceListRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeInstanceListResponse`
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

        # 查询mqtt主题详情

        # @param request: Request instance for DescribeTopic.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeTopicRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeTopicResponse`
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
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeTopicListRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeTopicListResponse`
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

        # 修改策略规则

        # @param request: Request instance for ModifyAuthorizationPolicy.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ModifyAuthorizationPolicyRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ModifyAuthorizationPolicyResponse`
        def ModifyAuthorizationPolicy(request)
          body = send_request('ModifyAuthorizationPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAuthorizationPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改MQTT JWKS 认证器

        # @param request: Request instance for ModifyJWKSAuthenticator.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ModifyJWKSAuthenticatorRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ModifyJWKSAuthenticatorResponse`
        def ModifyJWKSAuthenticator(request)
          body = send_request('ModifyJWKSAuthenticator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyJWKSAuthenticatorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改MQTT JWKS 认证器

        # @param request: Request instance for ModifyJWTAuthenticator.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ModifyJWTAuthenticatorRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ModifyJWTAuthenticatorResponse`
        def ModifyJWTAuthenticator(request)
          body = send_request('ModifyJWTAuthenticator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyJWTAuthenticatorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ModifyTopicRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ModifyTopicResponse`
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

        # 注册设备证书

        # @param request: Request instance for RegisterDeviceCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::RegisterDeviceCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::RegisterDeviceCertificateResponse`
        def RegisterDeviceCertificate(request)
          body = send_request('RegisterDeviceCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterDeviceCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改策略规则优先级

        # @param request: Request instance for UpdateAuthorizationPolicyPriority.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::UpdateAuthorizationPolicyPriorityRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::UpdateAuthorizationPolicyPriorityResponse`
        def UpdateAuthorizationPolicyPriority(request)
          body = send_request('UpdateAuthorizationPolicyPriority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAuthorizationPolicyPriorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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