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


        # 激活Ca证书

        # @param request: Request instance for ActivateCaCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ActivateCaCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ActivateCaCertificateResponse`
        def ActivateCaCertificate(request)
          body = send_request('ActivateCaCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActivateCaCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
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

        # 申请ca注册码

        # @param request: Request instance for ApplyRegistrationCode.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ApplyRegistrationCodeRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ApplyRegistrationCodeResponse`
        def ApplyRegistrationCode(request)
          body = send_request('ApplyRegistrationCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyRegistrationCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建一个HTTP的认证器

        # @param request: Request instance for CreateHttpAuthenticator.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::CreateHttpAuthenticatorRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::CreateHttpAuthenticatorResponse`
        def CreateHttpAuthenticator(request)
          body = send_request('CreateHttpAuthenticator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHttpAuthenticatorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为MQTT实例创建公网接入点，未开启公网的集群可调用。

        # @param request: Request instance for CreateInsPublicEndpoint.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::CreateInsPublicEndpointRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::CreateInsPublicEndpointResponse`
        def CreateInsPublicEndpoint(request)
          body = send_request('CreateInsPublicEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInsPublicEndpointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for CreateInstance.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::CreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::CreateInstanceResponse`
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

        # 添加mqtt角色

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::CreateUserResponse`
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

        # 失效Ca证书

        # @param request: Request instance for DeactivateCaCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeactivateCaCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeactivateCaCertificateResponse`
        def DeactivateCaCertificate(request)
          body = send_request('DeactivateCaCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeactivateCaCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 失效Ca证书

        # @param request: Request instance for DeactivateDeviceCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeactivateDeviceCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeactivateDeviceCertificateResponse`
        def DeactivateDeviceCertificate(request)
          body = send_request('DeactivateDeviceCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeactivateDeviceCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除Ca证书

        # @param request: Request instance for DeleteCaCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeleteCaCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeleteCaCertificateResponse`
        def DeleteCaCertificate(request)
          body = send_request('DeleteCaCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCaCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除设备证书

        # @param request: Request instance for DeleteDeviceCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeleteDeviceCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeleteDeviceCertificateResponse`
        def DeleteDeviceCertificate(request)
          body = send_request('DeleteDeviceCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteInsPublicEndpoint.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeleteInsPublicEndpointRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeleteInsPublicEndpointResponse`
        def DeleteInsPublicEndpoint(request)
          body = send_request('DeleteInsPublicEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInsPublicEndpointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteInstance.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeleteInstanceRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeleteInstanceResponse`
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

        # 删除MQTT访问用户

        # @param request: Request instance for DeleteUser.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DeleteUserRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DeleteUserResponse`
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

        # 查询Ca证书详情接口

        # @param request: Request instance for DescribeCaCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeCaCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeCaCertificateResponse`
        def DescribeCaCertificate(request)
          body = send_request('DescribeCaCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群下的ca证书信息

        # @param request: Request instance for DescribeCaCertificates.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeCaCertificatesRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeCaCertificatesResponse`
        def DescribeCaCertificates(request)
          body = send_request('DescribeCaCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeClientList.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeClientListRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeClientListResponse`
        def DescribeClientList(request)
          body = send_request('DescribeClientList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询设备证书详情接口

        # @param request: Request instance for DescribeDeviceCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeDeviceCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeDeviceCertificateResponse`
        def DescribeDeviceCertificate(request)
          body = send_request('DescribeDeviceCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询MQTT实例公网接入点

        # @param request: Request instance for DescribeInsPublicEndpoints.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeInsPublicEndpointsRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeInsPublicEndpointsResponse`
        def DescribeInsPublicEndpoints(request)
          body = send_request('DescribeInsPublicEndpoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInsPublicEndpointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeInsVPCEndpoints.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeInsVPCEndpointsRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeInsVPCEndpointsResponse`
        def DescribeInsVPCEndpoints(request)
          body = send_request('DescribeInsVPCEndpoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInsVPCEndpointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 根据订阅查询消息

        # @param request: Request instance for DescribeMessageByTopic.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeMessageByTopicRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeMessageByTopicResponse`
        def DescribeMessageByTopic(request)
          body = send_request('DescribeMessageByTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMessageByTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据一级Topic查询消息列表

        # @param request: Request instance for DescribeMessageList.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeMessageListRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeMessageListResponse`
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

        # 获取产品售卖规格

        # @param request: Request instance for DescribeProductSKUList.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeProductSKUListRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeProductSKUListResponse`
        def DescribeProductSKUList(request)
          body = send_request('DescribeProductSKUList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductSKUListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询共享订阅消息堆积量

        # @param request: Request instance for DescribeSharedSubscriptionLag.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeSharedSubscriptionLagRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeSharedSubscriptionLagResponse`
        def DescribeSharedSubscriptionLag(request)
          body = send_request('DescribeSharedSubscriptionLag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSharedSubscriptionLagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询用户列表，Filter参数使用说明如下：

        # 1. Username，用户名称模糊搜索

        # @param request: Request instance for DescribeUserList.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::DescribeUserListRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::DescribeUserListResponse`
        def DescribeUserList(request)
          body = send_request('DescribeUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改策略规则，可参考 [数据面授权策略说明](https://cloud.tencent.com/document/product/1778/109715)

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

        # 修改MQTT HTTP 认证器

        # @param request: Request instance for ModifyHttpAuthenticator.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ModifyHttpAuthenticatorRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ModifyHttpAuthenticatorResponse`
        def ModifyHttpAuthenticator(request)
          body = send_request('ModifyHttpAuthenticator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHttpAuthenticatorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ModifyInsPublicEndpoint.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ModifyInsPublicEndpointRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ModifyInsPublicEndpointResponse`
        def ModifyInsPublicEndpoint(request)
          body = send_request('ModifyInsPublicEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInsPublicEndpointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例属性，只有运行中的集群可以调用该接口进行变更配置。

        # @param request: Request instance for ModifyInstance.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ModifyInstanceRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ModifyInstanceResponse`
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

        # 更新MQTT集群绑定证书
        # 参数传空，则为删除证书

        # @param request: Request instance for ModifyInstanceCertBinding.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ModifyInstanceCertBindingRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ModifyInstanceCertBindingResponse`
        def ModifyInstanceCertBinding(request)
          body = send_request('ModifyInstanceCertBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceCertBindingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改MQTT JWKS 认证器，全量配置修改，需要提交完整的修改后配置。

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

        # 修改MQTT角色

        # @param request: Request instance for ModifyUser.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::ModifyUserRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::ModifyUserResponse`
        def ModifyUser(request)
          body = send_request('ModifyUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布 MQTT 消息到消息主题或客户端

        # @param request: Request instance for PublishMessage.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::PublishMessageRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::PublishMessageResponse`
        def PublishMessage(request)
          body = send_request('PublishMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 注册CA证书（仅一机一证场景支持），可参考 [自定义 X.509 证书实现 “一机一证”](https://cloud.tencent.com/document/product/1778/114817)

        # @param request: Request instance for RegisterCaCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::RegisterCaCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::RegisterCaCertificateResponse`
        def RegisterCaCertificate(request)
          body = send_request('RegisterCaCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterCaCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 注册设备证书（仅一机一证场景生效），可参考 [自定义 X.509 证书实现 “一机一证”](https://cloud.tencent.com/document/product/1778/114817#6cb39d46-efad-4220-8f11-2e7fab207bc8)

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

        # 吊销设备证书

        # @param request: Request instance for RevokedDeviceCertificate.
        # @type request: :class:`Tencentcloud::mqtt::V20240516::RevokedDeviceCertificateRequest`
        # @rtype: :class:`Tencentcloud::mqtt::V20240516::RevokedDeviceCertificateResponse`
        def RevokedDeviceCertificate(request)
          body = send_request('RevokedDeviceCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevokedDeviceCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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