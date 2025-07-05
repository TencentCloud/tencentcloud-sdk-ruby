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
  module Cam
    module V20190116
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-01-16'
            api_endpoint = 'cam.tencentcloudapi.com'
            sdk_version = 'CAM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建子用户

        # @param request: Request instance for AddUser.
        # @type request: :class:`Tencentcloud::cam::V20190116::AddUserRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::AddUserResponse`
        def AddUser(request)
          body = send_request('AddUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户加入到用户组

        # @param request: Request instance for AddUserToGroup.
        # @type request: :class:`Tencentcloud::cam::V20190116::AddUserToGroupRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::AddUserToGroupResponse`
        def AddUserToGroup(request)
          body = send_request('AddUserToGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddUserToGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（AttachGroupPolicy）可用于绑定策略到用户组。

        # @param request: Request instance for AttachGroupPolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::AttachGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::AttachGroupPolicyResponse`
        def AttachGroupPolicy(request)
          body = send_request('AttachGroupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachGroupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（AttachRolePolicy）用于绑定策略到角色。

        # @param request: Request instance for AttachRolePolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::AttachRolePolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::AttachRolePolicyResponse`
        def AttachRolePolicy(request)
          body = send_request('AttachRolePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachRolePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（AttachUserPolicy）可用于绑定到用户的策略。

        # @param request: Request instance for AttachUserPolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::AttachUserPolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::AttachUserPolicyResponse`
        def AttachUserPolicy(request)
          body = send_request('AttachUserPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachUserPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据流认证Token

        # @param request: Request instance for BuildDataFlowAuthToken.
        # @type request: :class:`Tencentcloud::cam::V20190116::BuildDataFlowAuthTokenRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::BuildDataFlowAuthTokenResponse`
        def BuildDataFlowAuthToken(request)
          body = send_request('BuildDataFlowAuthToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BuildDataFlowAuthTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 验证自定义多因子Token

        # @param request: Request instance for ConsumeCustomMFAToken.
        # @type request: :class:`Tencentcloud::cam::V20190116::ConsumeCustomMFATokenRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ConsumeCustomMFATokenResponse`
        def ConsumeCustomMFAToken(request)
          body = send_request('ConsumeCustomMFAToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConsumeCustomMFATokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为CAM用户创建访问密钥

        # @param request: Request instance for CreateAccessKey.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreateAccessKeyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreateAccessKeyResponse`
        def CreateAccessKey(request)
          body = send_request('CreateAccessKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccessKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户组

        # @param request: Request instance for CreateGroup.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreateGroupRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreateGroupResponse`
        def CreateGroup(request)
          body = send_request('CreateGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建消息接收人接口：仅允许已完成实名认证的用户访问消息接收人接口，并对每个用户限制每天最多请求10次。

        # @param request: Request instance for CreateMessageReceiver.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreateMessageReceiverRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreateMessageReceiverResponse`
        def CreateMessageReceiver(request)
          body = send_request('CreateMessageReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMessageReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建角色OIDC配置

        # @param request: Request instance for CreateOIDCConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreateOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreateOIDCConfigResponse`
        def CreateOIDCConfig(request)
          body = send_request('CreateOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreatePolicy）可用于创建策略。

        # @param request: Request instance for CreatePolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreatePolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreatePolicyResponse`
        def CreatePolicy(request)
          body = send_request('CreatePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreatePolicyVersion）用于新增策略版本，用户创建了一个策略版本之后可以方便的通过变更策略版本的方式来变更策略。

        # @param request: Request instance for CreatePolicyVersion.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreatePolicyVersionRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreatePolicyVersionResponse`
        def CreatePolicyVersion(request)
          body = send_request('CreatePolicyVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePolicyVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateRole）用于创建角色。

        # @param request: Request instance for CreateRole.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreateRoleRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreateRoleResponse`
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

        # 创建SAML身份提供商

        # @param request: Request instance for CreateSAMLProvider.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreateSAMLProviderRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreateSAMLProviderResponse`
        def CreateSAMLProvider(request)
          body = send_request('CreateSAMLProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSAMLProviderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建服务相关角色

        # @param request: Request instance for CreateServiceLinkedRole.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreateServiceLinkedRoleRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreateServiceLinkedRoleResponse`
        def CreateServiceLinkedRole(request)
          body = send_request('CreateServiceLinkedRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServiceLinkedRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户OIDC配置。只能创建一个用户OIDC身份提供商，并且创建用户OIDC配置之后会自动关闭用户SAML SSO身份提供商。

        # @param request: Request instance for CreateUserOIDCConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreateUserOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreateUserOIDCConfigResponse`
        def CreateUserOIDCConfig(request)
          body = send_request('CreateUserOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户SAML配置

        # @param request: Request instance for CreateUserSAMLConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::CreateUserSAMLConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::CreateUserSAMLConfigResponse`
        def CreateUserSAMLConfig(request)
          body = send_request('CreateUserSAMLConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserSAMLConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为CAM用户删除访问密钥。
        # 此接口属于高风险操作，删除密钥后不可恢复，腾讯云将永久拒绝此密钥的所有请求，请谨慎使用。

        # @param request: Request instance for DeleteAccessKey.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteAccessKeyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteAccessKeyResponse`
        def DeleteAccessKey(request)
          body = send_request('DeleteAccessKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccessKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户组

        # @param request: Request instance for DeleteGroup.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteGroupRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteGroupResponse`
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

        # 删除消息接收人

        # @param request: Request instance for DeleteMessageReceiver.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteMessageReceiverRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteMessageReceiverResponse`
        def DeleteMessageReceiver(request)
          body = send_request('DeleteMessageReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMessageReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除OIDC身份提供商

        # @param request: Request instance for DeleteOIDCConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteOIDCConfigResponse`
        def DeleteOIDCConfig(request)
          body = send_request('DeleteOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeletePolicy）可用于删除策略。

        # @param request: Request instance for DeletePolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeletePolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeletePolicyResponse`
        def DeletePolicy(request)
          body = send_request('DeletePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeletePolicyVersion）可用于删除一个策略的策略版本。

        # @param request: Request instance for DeletePolicyVersion.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeletePolicyVersionRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeletePolicyVersionResponse`
        def DeletePolicyVersion(request)
          body = send_request('DeletePolicyVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePolicyVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteRole）用于删除指定角色。

        # @param request: Request instance for DeleteRole.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteRoleRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteRoleResponse`
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

        # 删除角色权限边界

        # @param request: Request instance for DeleteRolePermissionsBoundary.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteRolePermissionsBoundaryRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteRolePermissionsBoundaryResponse`
        def DeleteRolePermissionsBoundary(request)
          body = send_request('DeleteRolePermissionsBoundary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRolePermissionsBoundaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除SAML身份提供商

        # @param request: Request instance for DeleteSAMLProvider.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteSAMLProviderRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteSAMLProviderResponse`
        def DeleteSAMLProvider(request)
          body = send_request('DeleteSAMLProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSAMLProviderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除服务相关角色

        # @param request: Request instance for DeleteServiceLinkedRole.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteServiceLinkedRoleRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteServiceLinkedRoleResponse`
        def DeleteServiceLinkedRole(request)
          body = send_request('DeleteServiceLinkedRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServiceLinkedRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除子用户

        # @param request: Request instance for DeleteUser.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteUserRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteUserResponse`
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

        # 删除用户权限边界

        # @param request: Request instance for DeleteUserPermissionsBoundary.
        # @type request: :class:`Tencentcloud::cam::V20190116::DeleteUserPermissionsBoundaryRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DeleteUserPermissionsBoundaryResponse`
        def DeleteUserPermissionsBoundary(request)
          body = send_request('DeleteUserPermissionsBoundary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserPermissionsBoundaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询角色OIDC配置

        # @param request: Request instance for DescribeOIDCConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::DescribeOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DescribeOIDCConfigResponse`
        def DescribeOIDCConfig(request)
          body = send_request('DescribeOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRoleList）用于获取账号下的角色列表。

        # @param request: Request instance for DescribeRoleList.
        # @type request: :class:`Tencentcloud::cam::V20190116::DescribeRoleListRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DescribeRoleListResponse`
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

        # 查询用户安全设置

        # @param request: Request instance for DescribeSafeAuthFlag.
        # @type request: :class:`Tencentcloud::cam::V20190116::DescribeSafeAuthFlagRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DescribeSafeAuthFlagResponse`
        def DescribeSafeAuthFlag(request)
          body = send_request('DescribeSafeAuthFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSafeAuthFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取子账号安全设置

        # @param request: Request instance for DescribeSafeAuthFlagColl.
        # @type request: :class:`Tencentcloud::cam::V20190116::DescribeSafeAuthFlagCollRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DescribeSafeAuthFlagCollResponse`
        def DescribeSafeAuthFlagColl(request)
          body = send_request('DescribeSafeAuthFlagColl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSafeAuthFlagCollResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全设置(国际站)

        # @param request: Request instance for DescribeSafeAuthFlagIntl.
        # @type request: :class:`Tencentcloud::cam::V20190116::DescribeSafeAuthFlagIntlRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DescribeSafeAuthFlagIntlResponse`
        def DescribeSafeAuthFlagIntl(request)
          body = send_request('DescribeSafeAuthFlagIntl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSafeAuthFlagIntlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过子用户UIN列表查询子用户

        # @param request: Request instance for DescribeSubAccounts.
        # @type request: :class:`Tencentcloud::cam::V20190116::DescribeSubAccountsRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DescribeSubAccountsResponse`
        def DescribeSubAccounts(request)
          body = send_request('DescribeSubAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户OIDC配置

        # @param request: Request instance for DescribeUserOIDCConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::DescribeUserOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DescribeUserOIDCConfigResponse`
        def DescribeUserOIDCConfig(request)
          body = send_request('DescribeUserOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户SAML配置

        # @param request: Request instance for DescribeUserSAMLConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::DescribeUserSAMLConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DescribeUserSAMLConfigResponse`
        def DescribeUserSAMLConfig(request)
          body = send_request('DescribeUserSAMLConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserSAMLConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DetachGroupPolicy）可用于解除绑定到用户组的策略。

        # @param request: Request instance for DetachGroupPolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::DetachGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DetachGroupPolicyResponse`
        def DetachGroupPolicy(request)
          body = send_request('DetachGroupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachGroupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DetachRolePolicy）用于解除绑定角色的策略。

        # @param request: Request instance for DetachRolePolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::DetachRolePolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DetachRolePolicyResponse`
        def DetachRolePolicy(request)
          body = send_request('DetachRolePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachRolePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DetachUserPolicy）可用于解除绑定到用户的策略。

        # @param request: Request instance for DetachUserPolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::DetachUserPolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DetachUserPolicyResponse`
        def DetachUserPolicy(request)
          body = send_request('DetachUserPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachUserPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 禁用用户SSO

        # @param request: Request instance for DisableUserSSO.
        # @type request: :class:`Tencentcloud::cam::V20190116::DisableUserSSORequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::DisableUserSSOResponse`
        def DisableUserSSO(request)
          body = send_request('DisableUserSSO', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableUserSSOResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询账户摘要

        # @param request: Request instance for GetAccountSummary.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetAccountSummaryRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetAccountSummaryResponse`
        def GetAccountSummary(request)
          body = send_request('GetAccountSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAccountSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取自定义多因子Token关联信息

        # @param request: Request instance for GetCustomMFATokenInfo.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetCustomMFATokenInfoRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetCustomMFATokenInfoResponse`
        def GetCustomMFATokenInfo(request)
          body = send_request('GetCustomMFATokenInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCustomMFATokenInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户组详情

        # @param request: Request instance for GetGroup.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetGroupRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetGroupResponse`
        def GetGroup(request)
          body = send_request('GetGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（GetPolicy）可用于查询查看策略详情。

        # @param request: Request instance for GetPolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetPolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetPolicyResponse`
        def GetPolicy(request)
          body = send_request('GetPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（GetPolicyVersion）用于查询策略版本详情

        # @param request: Request instance for GetPolicyVersion.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetPolicyVersionRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetPolicyVersionResponse`
        def GetPolicyVersion(request)
          body = send_request('GetPolicyVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPolicyVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（GetRole）用于获取指定角色的详细信息。

        # @param request: Request instance for GetRole.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetRoleRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetRoleResponse`
        def GetRole(request)
          body = send_request('GetRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取角色权限边界

        # @param request: Request instance for GetRolePermissionBoundary.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetRolePermissionBoundaryRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetRolePermissionBoundaryResponse`
        def GetRolePermissionBoundary(request)
          body = send_request('GetRolePermissionBoundary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRolePermissionBoundaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询SAML身份提供商详情

        # @param request: Request instance for GetSAMLProvider.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetSAMLProviderRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetSAMLProviderResponse`
        def GetSAMLProvider(request)
          body = send_request('GetSAMLProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSAMLProviderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取密钥最近使用情况

        # @param request: Request instance for GetSecurityLastUsed.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetSecurityLastUsedRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetSecurityLastUsedResponse`
        def GetSecurityLastUsed(request)
          body = send_request('GetSecurityLastUsed', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSecurityLastUsedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据删除TaskId获取服务相关角色删除状态

        # @param request: Request instance for GetServiceLinkedRoleDeletionStatus.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetServiceLinkedRoleDeletionStatusRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetServiceLinkedRoleDeletionStatusResponse`
        def GetServiceLinkedRoleDeletionStatus(request)
          body = send_request('GetServiceLinkedRoleDeletionStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetServiceLinkedRoleDeletionStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询子用户

        # @param request: Request instance for GetUser.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetUserRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetUserResponse`
        def GetUser(request)
          body = send_request('GetUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户AppId

        # @param request: Request instance for GetUserAppId.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetUserAppIdRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetUserAppIdResponse`
        def GetUserAppId(request)
          body = send_request('GetUserAppId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUserAppIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户权限边界

        # @param request: Request instance for GetUserPermissionBoundary.
        # @type request: :class:`Tencentcloud::cam::V20190116::GetUserPermissionBoundaryRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::GetUserPermissionBoundaryResponse`
        def GetUserPermissionBoundary(request)
          body = send_request('GetUserPermissionBoundary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUserPermissionBoundaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出指定CAM用户的访问密钥

        # @param request: Request instance for ListAccessKeys.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListAccessKeysRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListAccessKeysResponse`
        def ListAccessKeys(request)
          body = send_request('ListAccessKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAccessKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListAttachedGroupPolicies）可用于查询用户组关联的策略列表。

        # @param request: Request instance for ListAttachedGroupPolicies.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListAttachedGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListAttachedGroupPoliciesResponse`
        def ListAttachedGroupPolicies(request)
          body = send_request('ListAttachedGroupPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAttachedGroupPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListAttachedRolePolicies）用于获取角色绑定的策略列表。

        # @param request: Request instance for ListAttachedRolePolicies.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListAttachedRolePoliciesRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListAttachedRolePoliciesResponse`
        def ListAttachedRolePolicies(request)
          body = send_request('ListAttachedRolePolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAttachedRolePoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出用户关联的策略（包括随组关联）

        # @param request: Request instance for ListAttachedUserAllPolicies.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListAttachedUserAllPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListAttachedUserAllPoliciesResponse`
        def ListAttachedUserAllPolicies(request)
          body = send_request('ListAttachedUserAllPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAttachedUserAllPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListAttachedUserPolicies）可用于查询子账号关联的策略列表。

        # @param request: Request instance for ListAttachedUserPolicies.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListAttachedUserPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListAttachedUserPoliciesResponse`
        def ListAttachedUserPolicies(request)
          body = send_request('ListAttachedUserPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAttachedUserPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取协作者列表

        # @param request: Request instance for ListCollaborators.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListCollaboratorsRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListCollaboratorsResponse`
        def ListCollaborators(request)
          body = send_request('ListCollaborators', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListCollaboratorsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListEntitiesForPolicy）可用于查询策略关联的实体列表。

        # @param request: Request instance for ListEntitiesForPolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListEntitiesForPolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListEntitiesForPolicyResponse`
        def ListEntitiesForPolicy(request)
          body = send_request('ListEntitiesForPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListEntitiesForPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户组列表

        # @param request: Request instance for ListGroups.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListGroupsRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListGroupsResponse`
        def ListGroups(request)
          body = send_request('ListGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出用户关联的用户组

        # @param request: Request instance for ListGroupsForUser.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListGroupsForUserRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListGroupsForUserResponse`
        def ListGroupsForUser(request)
          body = send_request('ListGroupsForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListGroupsForUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListPolicies）可用于查询策略列表。

        # @param request: Request instance for ListPolicies.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListPoliciesResponse`
        def ListPolicies(request)
          body = send_request('ListPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有已授权服务

        # @param request: Request instance for ListPoliciesGrantingServiceAccess.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListPoliciesGrantingServiceAccessRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListPoliciesGrantingServiceAccessResponse`
        def ListPoliciesGrantingServiceAccess(request)
          body = send_request('ListPoliciesGrantingServiceAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListPoliciesGrantingServiceAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（ListPolicyVersions）用于获取策略版本列表

        # @param request: Request instance for ListPolicyVersions.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListPolicyVersionsRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListPolicyVersionsResponse`
        def ListPolicyVersions(request)
          body = send_request('ListPolicyVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListPolicyVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取消息接收人列表

        # @param request: Request instance for ListReceiver.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListReceiverRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListReceiverResponse`
        def ListReceiver(request)
          body = send_request('ListReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询SAML身份提供商列表

        # @param request: Request instance for ListSAMLProviders.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListSAMLProvidersRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListSAMLProvidersResponse`
        def ListSAMLProviders(request)
          body = send_request('ListSAMLProviders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSAMLProvidersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取子用户

        # @param request: Request instance for ListUsers.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListUsersRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListUsersResponse`
        def ListUsers(request)
          body = send_request('ListUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户组关联的用户列表

        # @param request: Request instance for ListUsersForGroup.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListUsersForGroupRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListUsersForGroupResponse`
        def ListUsersForGroup(request)
          body = send_request('ListUsersForGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUsersForGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取企业微信子用户列表

        # @param request: Request instance for ListWeChatWorkSubAccounts.
        # @type request: :class:`Tencentcloud::cam::V20190116::ListWeChatWorkSubAccountsRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::ListWeChatWorkSubAccountsResponse`
        def ListWeChatWorkSubAccounts(request)
          body = send_request('ListWeChatWorkSubAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListWeChatWorkSubAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置角色权限边界

        # @param request: Request instance for PutRolePermissionsBoundary.
        # @type request: :class:`Tencentcloud::cam::V20190116::PutRolePermissionsBoundaryRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::PutRolePermissionsBoundaryResponse`
        def PutRolePermissionsBoundary(request)
          body = send_request('PutRolePermissionsBoundary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutRolePermissionsBoundaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置用户权限边界

        # @param request: Request instance for PutUserPermissionsBoundary.
        # @type request: :class:`Tencentcloud::cam::V20190116::PutUserPermissionsBoundaryRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::PutUserPermissionsBoundaryResponse`
        def PutUserPermissionsBoundary(request)
          body = send_request('PutUserPermissionsBoundary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutUserPermissionsBoundaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从用户组删除用户

        # @param request: Request instance for RemoveUserFromGroup.
        # @type request: :class:`Tencentcloud::cam::V20190116::RemoveUserFromGroupRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::RemoveUserFromGroupResponse`
        def RemoveUserFromGroup(request)
          body = send_request('RemoveUserFromGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveUserFromGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SetDefaultPolicyVersion）可用于设置生效的策略版本。

        # @param request: Request instance for SetDefaultPolicyVersion.
        # @type request: :class:`Tencentcloud::cam::V20190116::SetDefaultPolicyVersionRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::SetDefaultPolicyVersionResponse`
        def SetDefaultPolicyVersion(request)
          body = send_request('SetDefaultPolicyVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetDefaultPolicyVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置子用户的登录保护和敏感操作校验方式

        # @param request: Request instance for SetMfaFlag.
        # @type request: :class:`Tencentcloud::cam::V20190116::SetMfaFlagRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::SetMfaFlagResponse`
        def SetMfaFlag(request)
          body = send_request('SetMfaFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetMfaFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 角色绑定标签

        # @param request: Request instance for TagRole.
        # @type request: :class:`Tencentcloud::cam::V20190116::TagRoleRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::TagRoleResponse`
        def TagRole(request)
          body = send_request('TagRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TagRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 角色解绑标签。

        # @param request: Request instance for UntagRole.
        # @type request: :class:`Tencentcloud::cam::V20190116::UntagRoleRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UntagRoleResponse`
        def UntagRole(request)
          body = send_request('UntagRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UntagRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为CAM用户更新访问密钥

        # @param request: Request instance for UpdateAccessKey.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateAccessKeyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateAccessKeyResponse`
        def UpdateAccessKey(request)
          body = send_request('UpdateAccessKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAccessKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpdateAssumeRolePolicy）用于修改角色信任策略的策略文档。

        # @param request: Request instance for UpdateAssumeRolePolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateAssumeRolePolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateAssumeRolePolicyResponse`
        def UpdateAssumeRolePolicy(request)
          body = send_request('UpdateAssumeRolePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAssumeRolePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新用户组

        # @param request: Request instance for UpdateGroup.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateGroupRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateGroupResponse`
        def UpdateGroup(request)
          body = send_request('UpdateGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改角色OIDC配置

        # @param request: Request instance for UpdateOIDCConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateOIDCConfigResponse`
        def UpdateOIDCConfig(request)
          body = send_request('UpdateOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpdatePolicy ）可用于更新策略。
        # 如果已存在策略版本，本接口会直接更新策略的默认版本，不会创建新版本，如果不存在任何策略版本，则直接创建一个默认版本。

        # @param request: Request instance for UpdatePolicy.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdatePolicyRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdatePolicyResponse`
        def UpdatePolicy(request)
          body = send_request('UpdatePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdatePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpdateRoleConsoleLogin）用于修改角色是否可登录。

        # @param request: Request instance for UpdateRoleConsoleLogin.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateRoleConsoleLoginRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateRoleConsoleLoginResponse`
        def UpdateRoleConsoleLogin(request)
          body = send_request('UpdateRoleConsoleLogin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRoleConsoleLoginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpdateRoleDescription）用于修改角色的描述信息。

        # @param request: Request instance for UpdateRoleDescription.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateRoleDescriptionRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateRoleDescriptionResponse`
        def UpdateRoleDescription(request)
          body = send_request('UpdateRoleDescription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRoleDescriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改角色会话时长

        # @param request: Request instance for UpdateRoleSessionDuration.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateRoleSessionDurationRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateRoleSessionDurationResponse`
        def UpdateRoleSessionDuration(request)
          body = send_request('UpdateRoleSessionDuration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRoleSessionDurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新SAML身份提供商信息

        # @param request: Request instance for UpdateSAMLProvider.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateSAMLProviderRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateSAMLProviderResponse`
        def UpdateSAMLProvider(request)
          body = send_request('UpdateSAMLProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSAMLProviderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新子用户

        # @param request: Request instance for UpdateUser.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateUserRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateUserResponse`
        def UpdateUser(request)
          body = send_request('UpdateUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户OIDC配置

        # @param request: Request instance for UpdateUserOIDCConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateUserOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateUserOIDCConfigResponse`
        def UpdateUserOIDCConfig(request)
          body = send_request('UpdateUserOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUserOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户SAML配置

        # @param request: Request instance for UpdateUserSAMLConfig.
        # @type request: :class:`Tencentcloud::cam::V20190116::UpdateUserSAMLConfigRequest`
        # @rtype: :class:`Tencentcloud::cam::V20190116::UpdateUserSAMLConfigResponse`
        def UpdateUserSAMLConfig(request)
          body = send_request('UpdateUserSAMLConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUserSAMLConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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