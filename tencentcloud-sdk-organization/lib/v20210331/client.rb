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
  module Organization
    module V20210331
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-03-31'
            api_endpoint = 'organization.tencentcloudapi.com'
            sdk_version = 'ORGANIZATION_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 接受加入共享单元邀请。

        # @param request: Request instance for AcceptJoinShareUnitInvitation.
        # @type request: :class:`Tencentcloud::organization::V20210331::AcceptJoinShareUnitInvitationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AcceptJoinShareUnitInvitationResponse`
        def AcceptJoinShareUnitInvitation(request)
          body = send_request('AcceptJoinShareUnitInvitation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcceptJoinShareUnitInvitationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加SAML签名证书

        # @param request: Request instance for AddExternalSAMLIdPCertificate.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddExternalSAMLIdPCertificateRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddExternalSAMLIdPCertificateResponse`
        def AddExternalSAMLIdPCertificate(request)
          body = send_request('AddExternalSAMLIdPCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddExternalSAMLIdPCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加组织成员邮箱

        # @param request: Request instance for AddOrganizationMemberEmail.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddOrganizationMemberEmailRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddOrganizationMemberEmailResponse`
        def AddOrganizationMemberEmail(request)
          body = send_request('AddOrganizationMemberEmail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddOrganizationMemberEmailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加企业组织节点

        # @param request: Request instance for AddOrganizationNode.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddOrganizationNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddOrganizationNodeResponse`
        def AddOrganizationNode(request)
          body = send_request('AddOrganizationNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddOrganizationNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为权限配置添加策略

        # @param request: Request instance for AddPermissionPolicyToRoleConfiguration.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddPermissionPolicyToRoleConfigurationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddPermissionPolicyToRoleConfigurationResponse`
        def AddPermissionPolicyToRoleConfiguration(request)
          body = send_request('AddPermissionPolicyToRoleConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddPermissionPolicyToRoleConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建共享单元。

        # @param request: Request instance for AddShareUnit.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddShareUnitRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddShareUnitResponse`
        def AddShareUnit(request)
          body = send_request('AddShareUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddShareUnitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加共享单元成员

        # @param request: Request instance for AddShareUnitMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddShareUnitMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddShareUnitMembersResponse`
        def AddShareUnitMembers(request)
          body = send_request('AddShareUnitMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddShareUnitMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加共享单元资源

        # @param request: Request instance for AddShareUnitResources.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddShareUnitResourcesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddShareUnitResourcesResponse`
        def AddShareUnitResources(request)
          body = send_request('AddShareUnitResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddShareUnitResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为用户组添加用户

        # @param request: Request instance for AddUserToGroup.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddUserToGroupRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddUserToGroupResponse`
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

        # 绑定策略

        # @param request: Request instance for AttachPolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::AttachPolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AttachPolicyResponse`
        def AttachPolicy(request)
          body = send_request('AttachPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定组织成员和组织管理员子账号的授权关系

        # @param request: Request instance for BindOrganizationMemberAuthAccount.
        # @type request: :class:`Tencentcloud::organization::V20210331::BindOrganizationMemberAuthAccountRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::BindOrganizationMemberAuthAccountResponse`
        def BindOrganizationMemberAuthAccount(request)
          body = send_request('BindOrganizationMemberAuthAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindOrganizationMemberAuthAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消组织成员和组织管理员子账号的授权关系

        # @param request: Request instance for CancelOrganizationMemberAuthAccount.
        # @type request: :class:`Tencentcloud::organization::V20210331::CancelOrganizationMemberAuthAccountRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CancelOrganizationMemberAuthAccountResponse`
        def CancelOrganizationMemberAuthAccount(request)
          body = send_request('CancelOrganizationMemberAuthAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelOrganizationMemberAuthAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 成员账号删除检查

        # @param request: Request instance for CheckAccountDelete.
        # @type request: :class:`Tencentcloud::organization::V20210331::CheckAccountDeleteRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CheckAccountDeleteResponse`
        def CheckAccountDelete(request)
          body = send_request('CheckAccountDelete', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckAccountDeleteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 清空SAML身份提供商配置信息

        # @param request: Request instance for ClearExternalSAMLIdentityProvider.
        # @type request: :class:`Tencentcloud::organization::V20210331::ClearExternalSAMLIdentityProviderRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ClearExternalSAMLIdentityProviderResponse`
        def ClearExternalSAMLIdentityProvider(request)
          body = send_request('ClearExternalSAMLIdentityProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearExternalSAMLIdentityProviderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateGroupRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateGroupResponse`
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

        # 添加集团服务委派管理员

        # @param request: Request instance for CreateOrgServiceAssign.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrgServiceAssignRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrgServiceAssignResponse`
        def CreateOrgServiceAssign(request)
          body = send_request('CreateOrgServiceAssign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrgServiceAssignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建企业组织

        # @param request: Request instance for CreateOrganization.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationResponse`
        def CreateOrganization(request)
          body = send_request('CreateOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加组织身份

        # @param request: Request instance for CreateOrganizationIdentity.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationIdentityRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationIdentityResponse`
        def CreateOrganizationIdentity(request)
          body = send_request('CreateOrganizationIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建组织成员

        # @param request: Request instance for CreateOrganizationMember.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberResponse`
        def CreateOrganizationMember(request)
          body = send_request('CreateOrganizationMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加组织成员访问授权

        # @param request: Request instance for CreateOrganizationMemberAuthIdentity.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberAuthIdentityRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberAuthIdentityResponse`
        def CreateOrganizationMemberAuthIdentity(request)
          body = send_request('CreateOrganizationMemberAuthIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationMemberAuthIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建组织成员访问授权策略

        # @param request: Request instance for CreateOrganizationMemberPolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberPolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberPolicyResponse`
        def CreateOrganizationMemberPolicy(request)
          body = send_request('CreateOrganizationMemberPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationMemberPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建组织成员访问策略

        # @param request: Request instance for CreateOrganizationMembersPolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMembersPolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMembersPolicyResponse`
        def CreateOrganizationMembersPolicy(request)
          body = send_request('CreateOrganizationMembersPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationMembersPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个特殊类型的策略，您可以关联到企业组织Root节点、企业部门节点或者企业的成员账号。

        # @param request: Request instance for CreatePolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreatePolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreatePolicyResponse`
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

        # 在成员账号上授权

        # @param request: Request instance for CreateRoleAssignment.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateRoleAssignmentRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateRoleAssignmentResponse`
        def CreateRoleAssignment(request)
          body = send_request('CreateRoleAssignment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoleAssignmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建权限配置

        # @param request: Request instance for CreateRoleConfiguration.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateRoleConfigurationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateRoleConfigurationResponse`
        def CreateRoleConfiguration(request)
          body = send_request('CreateRoleConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoleConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateUserResponse`
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

        # 创建子用户同步任务

        # @param request: Request instance for CreateUserSyncProvisioning.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateUserSyncProvisioningRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateUserSyncProvisioningResponse`
        def CreateUserSyncProvisioning(request)
          body = send_request('CreateUserSyncProvisioning', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserSyncProvisioningResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除成员账号

        # @param request: Request instance for DeleteAccount.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteAccountRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteAccountResponse`
        def DeleteAccount(request)
          body = send_request('DeleteAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteGroupRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteGroupResponse`
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

        # 删除集团服务委派管理员

        # @param request: Request instance for DeleteOrgServiceAssign.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrgServiceAssignRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrgServiceAssignResponse`
        def DeleteOrgServiceAssign(request)
          body = send_request('DeleteOrgServiceAssign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrgServiceAssignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除企业组织

        # @param request: Request instance for DeleteOrganization.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationResponse`
        def DeleteOrganization(request)
          body = send_request('DeleteOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除组织身份

        # @param request: Request instance for DeleteOrganizationIdentity.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationIdentityRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationIdentityResponse`
        def DeleteOrganizationIdentity(request)
          body = send_request('DeleteOrganizationIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除组织成员访问授权

        # @param request: Request instance for DeleteOrganizationMemberAuthIdentity.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMemberAuthIdentityRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMemberAuthIdentityResponse`
        def DeleteOrganizationMemberAuthIdentity(request)
          body = send_request('DeleteOrganizationMemberAuthIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationMemberAuthIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从组织中移除成员账号，不会删除账号。

        # @param request: Request instance for DeleteOrganizationMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMembersResponse`
        def DeleteOrganizationMembers(request)
          body = send_request('DeleteOrganizationMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除组织成员访问策略

        # @param request: Request instance for DeleteOrganizationMembersPolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMembersPolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMembersPolicyResponse`
        def DeleteOrganizationMembersPolicy(request)
          body = send_request('DeleteOrganizationMembersPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationMembersPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除企业组织节点

        # @param request: Request instance for DeleteOrganizationNodes.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationNodesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationNodesResponse`
        def DeleteOrganizationNodes(request)
          body = send_request('DeleteOrganizationNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除策略

        # @param request: Request instance for DeletePolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeletePolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeletePolicyResponse`
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

        # 移除成员账号上的授权

        # @param request: Request instance for DeleteRoleAssignment.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteRoleAssignmentRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteRoleAssignmentResponse`
        def DeleteRoleAssignment(request)
          body = send_request('DeleteRoleAssignment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoleAssignmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除权限配置信息

        # @param request: Request instance for DeleteRoleConfiguration.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteRoleConfigurationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteRoleConfigurationResponse`
        def DeleteRoleConfiguration(request)
          body = send_request('DeleteRoleConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoleConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除共享单元。

        # @param request: Request instance for DeleteShareUnit.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteShareUnitRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteShareUnitResponse`
        def DeleteShareUnit(request)
          body = send_request('DeleteShareUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteShareUnitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除共享单元成员

        # @param request: Request instance for DeleteShareUnitMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteShareUnitMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteShareUnitMembersResponse`
        def DeleteShareUnitMembers(request)
          body = send_request('DeleteShareUnitMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteShareUnitMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除共享单元资源

        # @param request: Request instance for DeleteShareUnitResources.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteShareUnitResourcesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteShareUnitResourcesResponse`
        def DeleteShareUnitResources(request)
          body = send_request('DeleteShareUnitResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteShareUnitResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteUserRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteUserResponse`
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

        # 删除子用户同步任务

        # @param request: Request instance for DeleteUserSyncProvisioning.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteUserSyncProvisioningRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteUserSyncProvisioningResponse`
        def DeleteUserSyncProvisioning(request)
          body = send_request('DeleteUserSyncProvisioning', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserSyncProvisioningResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询目标关联的有效策略

        # @param request: Request instance for DescribeEffectivePolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeEffectivePolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeEffectivePolicyResponse`
        def DescribeEffectivePolicy(request)
          body = send_request('DescribeEffectivePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEffectivePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集团账号身份中心服务信息

        # @param request: Request instance for DescribeIdentityCenter.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeIdentityCenterRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeIdentityCenterResponse`
        def DescribeIdentityCenter(request)
          body = send_request('DescribeIdentityCenter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIdentityCenterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取企业组织信息

        # @param request: Request instance for DescribeOrganization.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationResponse`
        def DescribeOrganization(request)
          body = send_request('DescribeOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取已设置管理员的互信主体关系列表

        # @param request: Request instance for DescribeOrganizationAuthNode.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationAuthNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationAuthNodeResponse`
        def DescribeOrganizationAuthNode(request)
          body = send_request('DescribeOrganizationAuthNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationAuthNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 以成员维度获取组织财务信息

        # @param request: Request instance for DescribeOrganizationFinancialByMember.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByMemberRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByMemberResponse`
        def DescribeOrganizationFinancialByMember(request)
          body = send_request('DescribeOrganizationFinancialByMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationFinancialByMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 以月维度获取组织财务信息趋势

        # @param request: Request instance for DescribeOrganizationFinancialByMonth.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByMonthRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByMonthResponse`
        def DescribeOrganizationFinancialByMonth(request)
          body = send_request('DescribeOrganizationFinancialByMonth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationFinancialByMonthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 以产品维度获取组织财务信息

        # @param request: Request instance for DescribeOrganizationFinancialByProduct.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByProductRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByProductResponse`
        def DescribeOrganizationFinancialByProduct(request)
          body = send_request('DescribeOrganizationFinancialByProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationFinancialByProductResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取组织成员被绑定授权关系的子账号列表

        # @param request: Request instance for DescribeOrganizationMemberAuthAccounts.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberAuthAccountsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberAuthAccountsResponse`
        def DescribeOrganizationMemberAuthAccounts(request)
          body = send_request('DescribeOrganizationMemberAuthAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMemberAuthAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取组织成员访问授权列表

        # @param request: Request instance for DescribeOrganizationMemberAuthIdentities.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberAuthIdentitiesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberAuthIdentitiesResponse`
        def DescribeOrganizationMemberAuthIdentities(request)
          body = send_request('DescribeOrganizationMemberAuthIdentities', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMemberAuthIdentitiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询成员邮箱绑定详细信息

        # @param request: Request instance for DescribeOrganizationMemberEmailBind.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberEmailBindRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberEmailBindResponse`
        def DescribeOrganizationMemberEmailBind(request)
          body = send_request('DescribeOrganizationMemberEmailBind', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMemberEmailBindResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取组织成员的授权策略列表

        # @param request: Request instance for DescribeOrganizationMemberPolicies.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberPoliciesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberPoliciesResponse`
        def DescribeOrganizationMemberPolicies(request)
          body = send_request('DescribeOrganizationMemberPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMemberPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取企业组织成员列表

        # @param request: Request instance for DescribeOrganizationMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMembersResponse`
        def DescribeOrganizationMembers(request)
          body = send_request('DescribeOrganizationMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取组织节点列表

        # @param request: Request instance for DescribeOrganizationNodes.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationNodesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationNodesResponse`
        def DescribeOrganizationNodes(request)
          body = send_request('DescribeOrganizationNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribePolicy）可用于查询查看策略详情。

        # @param request: Request instance for DescribePolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribePolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribePolicyResponse`
        def DescribePolicy(request)
          body = send_request('DescribePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribePolicyConfig）可用于查询企业组织策略配置

        # @param request: Request instance for DescribePolicyConfig.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribePolicyConfigRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribePolicyConfigResponse`
        def DescribePolicyConfig(request)
          body = send_request('DescribePolicyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取可共享地域列表

        # @param request: Request instance for DescribeShareAreas.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeShareAreasRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeShareAreasResponse`
        def DescribeShareAreas(request)
          body = send_request('DescribeShareAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShareAreasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取共享单元成员列表。

        # @param request: Request instance for DescribeShareUnitMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeShareUnitMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeShareUnitMembersResponse`
        def DescribeShareUnitMembers(request)
          body = send_request('DescribeShareUnitMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShareUnitMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取共享单元资源列表。

        # @param request: Request instance for DescribeShareUnitResources.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeShareUnitResourcesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeShareUnitResourcesResponse`
        def DescribeShareUnitResources(request)
          body = send_request('DescribeShareUnitResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShareUnitResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取共享单元列表。

        # @param request: Request instance for DescribeShareUnits.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeShareUnitsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeShareUnitsResponse`
        def DescribeShareUnits(request)
          body = send_request('DescribeShareUnits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShareUnitsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑策略

        # @param request: Request instance for DetachPolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::DetachPolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DetachPolicyResponse`
        def DetachPolicy(request)
          body = send_request('DetachPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 禁用策略类型

        # @param request: Request instance for DisablePolicyType.
        # @type request: :class:`Tencentcloud::organization::V20210331::DisablePolicyTypeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DisablePolicyTypeResponse`
        def DisablePolicyType(request)
          body = send_request('DisablePolicyType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisablePolicyTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解除权限配置在成员账号上的部署

        # @param request: Request instance for DismantleRoleConfiguration.
        # @type request: :class:`Tencentcloud::organization::V20210331::DismantleRoleConfigurationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DismantleRoleConfigurationResponse`
        def DismantleRoleConfiguration(request)
          body = send_request('DismantleRoleConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DismantleRoleConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用策略类型

        # @param request: Request instance for EnablePolicyType.
        # @type request: :class:`Tencentcloud::organization::V20210331::EnablePolicyTypeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::EnablePolicyTypeResponse`
        def EnablePolicyType(request)
          body = send_request('EnablePolicyType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnablePolicyTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询SAML身份提供商配置信息

        # @param request: Request instance for GetExternalSAMLIdentityProvider.
        # @type request: :class:`Tencentcloud::organization::V20210331::GetExternalSAMLIdentityProviderRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::GetExternalSAMLIdentityProviderResponse`
        def GetExternalSAMLIdentityProvider(request)
          body = send_request('GetExternalSAMLIdentityProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetExternalSAMLIdentityProviderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户组信息

        # @param request: Request instance for GetGroup.
        # @type request: :class:`Tencentcloud::organization::V20210331::GetGroupRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::GetGroupResponse`
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

        # 查询用户同步异步任务的状态

        # @param request: Request instance for GetProvisioningTaskStatus.
        # @type request: :class:`Tencentcloud::organization::V20210331::GetProvisioningTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::GetProvisioningTaskStatusResponse`
        def GetProvisioningTaskStatus(request)
          body = send_request('GetProvisioningTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetProvisioningTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询权限配置信息

        # @param request: Request instance for GetRoleConfiguration.
        # @type request: :class:`Tencentcloud::organization::V20210331::GetRoleConfigurationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::GetRoleConfigurationResponse`
        def GetRoleConfiguration(request)
          body = send_request('GetRoleConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRoleConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询异步任务的状态

        # @param request: Request instance for GetTaskStatus.
        # @type request: :class:`Tencentcloud::organization::V20210331::GetTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::GetTaskStatusResponse`
        def GetTaskStatus(request)
          body = send_request('GetTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for GetUser.
        # @type request: :class:`Tencentcloud::organization::V20210331::GetUserRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::GetUserResponse`
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

        # 查询CAM用户同步

        # @param request: Request instance for GetUserSyncProvisioning.
        # @type request: :class:`Tencentcloud::organization::V20210331::GetUserSyncProvisioningRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::GetUserSyncProvisioningResponse`
        def GetUserSyncProvisioning(request)
          body = send_request('GetUserSyncProvisioning', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUserSyncProvisioningResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询SAML服务提供商配置信息

        # @param request: Request instance for GetZoneSAMLServiceProviderInfo.
        # @type request: :class:`Tencentcloud::organization::V20210331::GetZoneSAMLServiceProviderInfoRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::GetZoneSAMLServiceProviderInfoResponse`
        def GetZoneSAMLServiceProviderInfo(request)
          body = send_request('GetZoneSAMLServiceProviderInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetZoneSAMLServiceProviderInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询空间的统计信息

        # @param request: Request instance for GetZoneStatistics.
        # @type request: :class:`Tencentcloud::organization::V20210331::GetZoneStatisticsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::GetZoneStatisticsResponse`
        def GetZoneStatistics(request)
          body = send_request('GetZoneStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetZoneStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询SAML签名证书列表

        # @param request: Request instance for ListExternalSAMLIdPCertificates.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListExternalSAMLIdPCertificatesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListExternalSAMLIdPCertificatesResponse`
        def ListExternalSAMLIdPCertificates(request)
          body = send_request('ListExternalSAMLIdPCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListExternalSAMLIdPCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户组中的用户列表

        # @param request: Request instance for ListGroupMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListGroupMembersResponse`
        def ListGroupMembers(request)
          body = send_request('ListGroupMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListGroupMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::organization::V20210331::ListGroupsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListGroupsResponse`
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

        # 查询用户加入的用户组

        # @param request: Request instance for ListJoinedGroupsForUser.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListJoinedGroupsForUserRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListJoinedGroupsForUserResponse`
        def ListJoinedGroupsForUser(request)
          body = send_request('ListJoinedGroupsForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListJoinedGroupsForUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取成员标签检测不合规资源列表

        # @param request: Request instance for ListNonCompliantResource.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListNonCompliantResourceRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListNonCompliantResourceResponse`
        def ListNonCompliantResource(request)
          body = send_request('ListNonCompliantResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListNonCompliantResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集团服务委派管理员列表

        # @param request: Request instance for ListOrgServiceAssignMember.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListOrgServiceAssignMemberRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListOrgServiceAssignMemberResponse`
        def ListOrgServiceAssignMember(request)
          body = send_request('ListOrgServiceAssignMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrgServiceAssignMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取组织成员访问身份列表

        # @param request: Request instance for ListOrganizationIdentity.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListOrganizationIdentityRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListOrganizationIdentityResponse`
        def ListOrganizationIdentity(request)
          body = send_request('ListOrganizationIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrganizationIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集团服务设置列表

        # @param request: Request instance for ListOrganizationService.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListOrganizationServiceRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListOrganizationServiceResponse`
        def ListOrganizationService(request)
          body = send_request('ListOrganizationService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrganizationServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取权限配置中的策略列表

        # @param request: Request instance for ListPermissionPoliciesInRoleConfiguration.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListPermissionPoliciesInRoleConfigurationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListPermissionPoliciesInRoleConfigurationResponse`
        def ListPermissionPoliciesInRoleConfiguration(request)
          body = send_request('ListPermissionPoliciesInRoleConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListPermissionPoliciesInRoleConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListPolicies）可用于查询查看策略列表数据

        # @param request: Request instance for ListPolicies.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListPoliciesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListPoliciesResponse`
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

        # 本接口（ListPoliciesForTarget）查询目标关联的策略列表

        # @param request: Request instance for ListPoliciesForTarget.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListPoliciesForTargetRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListPoliciesForTargetResponse`
        def ListPoliciesForTarget(request)
          body = send_request('ListPoliciesForTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListPoliciesForTargetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询授权列表

        # @param request: Request instance for ListRoleAssignments.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListRoleAssignmentsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListRoleAssignmentsResponse`
        def ListRoleAssignments(request)
          body = send_request('ListRoleAssignments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRoleAssignmentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询权限配置部署列表

        # @param request: Request instance for ListRoleConfigurationProvisionings.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListRoleConfigurationProvisioningsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListRoleConfigurationProvisioningsResponse`
        def ListRoleConfigurationProvisionings(request)
          body = send_request('ListRoleConfigurationProvisionings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRoleConfigurationProvisioningsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询权限配置列表

        # @param request: Request instance for ListRoleConfigurations.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListRoleConfigurationsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListRoleConfigurationsResponse`
        def ListRoleConfigurations(request)
          body = send_request('ListRoleConfigurations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRoleConfigurationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListTargetsForPolicy）查询某个指定策略关联的目标列表

        # @param request: Request instance for ListTargetsForPolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListTargetsForPolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListTargetsForPolicyResponse`
        def ListTargetsForPolicy(request)
          body = send_request('ListTargetsForPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTargetsForPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询异步任务列表

        # @param request: Request instance for ListTasks.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListTasksRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListTasksResponse`
        def ListTasks(request)
          body = send_request('ListTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询CAM用户同步列表

        # @param request: Request instance for ListUserSyncProvisionings.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListUserSyncProvisioningsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListUserSyncProvisioningsResponse`
        def ListUserSyncProvisionings(request)
          body = send_request('ListUserSyncProvisionings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUserSyncProvisioningsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户列表

        # @param request: Request instance for ListUsers.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListUsersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListUsersResponse`
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

        # 移动成员到指定企业组织节点

        # @param request: Request instance for MoveOrganizationNodeMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::MoveOrganizationNodeMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::MoveOrganizationNodeMembersResponse`
        def MoveOrganizationNodeMembers(request)
          body = send_request('MoveOrganizationNodeMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MoveOrganizationNodeMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通身份中心服务（CIC）

        # @param request: Request instance for OpenIdentityCenter.
        # @type request: :class:`Tencentcloud::organization::V20210331::OpenIdentityCenterRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::OpenIdentityCenterResponse`
        def OpenIdentityCenter(request)
          body = send_request('OpenIdentityCenter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenIdentityCenterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将权限配置部署到成员账号上

        # @param request: Request instance for ProvisionRoleConfiguration.
        # @type request: :class:`Tencentcloud::organization::V20210331::ProvisionRoleConfigurationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ProvisionRoleConfigurationResponse`
        def ProvisionRoleConfiguration(request)
          body = send_request('ProvisionRoleConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ProvisionRoleConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 退出企业组织

        # @param request: Request instance for QuitOrganization.
        # @type request: :class:`Tencentcloud::organization::V20210331::QuitOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::QuitOrganizationResponse`
        def QuitOrganization(request)
          body = send_request('QuitOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QuitOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拒绝加入共享单元邀请。

        # @param request: Request instance for RejectJoinShareUnitInvitation.
        # @type request: :class:`Tencentcloud::organization::V20210331::RejectJoinShareUnitInvitationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::RejectJoinShareUnitInvitationResponse`
        def RejectJoinShareUnitInvitation(request)
          body = send_request('RejectJoinShareUnitInvitation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RejectJoinShareUnitInvitationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 移除SAML签名证书

        # @param request: Request instance for RemoveExternalSAMLIdPCertificate.
        # @type request: :class:`Tencentcloud::organization::V20210331::RemoveExternalSAMLIdPCertificateRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::RemoveExternalSAMLIdPCertificateResponse`
        def RemoveExternalSAMLIdPCertificate(request)
          body = send_request('RemoveExternalSAMLIdPCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveExternalSAMLIdPCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为权限配置移除策略

        # @param request: Request instance for RemovePermissionPolicyFromRoleConfiguration.
        # @type request: :class:`Tencentcloud::organization::V20210331::RemovePermissionPolicyFromRoleConfigurationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::RemovePermissionPolicyFromRoleConfigurationResponse`
        def RemovePermissionPolicyFromRoleConfiguration(request)
          body = send_request('RemovePermissionPolicyFromRoleConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemovePermissionPolicyFromRoleConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从用户组中移除用户

        # @param request: Request instance for RemoveUserFromGroup.
        # @type request: :class:`Tencentcloud::organization::V20210331::RemoveUserFromGroupRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::RemoveUserFromGroupResponse`
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

        # 配置SAML身份提供商信息

        # @param request: Request instance for SetExternalSAMLIdentityProvider.
        # @type request: :class:`Tencentcloud::organization::V20210331::SetExternalSAMLIdentityProviderRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::SetExternalSAMLIdentityProviderResponse`
        def SetExternalSAMLIdentityProvider(request)
          body = send_request('SetExternalSAMLIdentityProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetExternalSAMLIdentityProviderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户组信息

        # @param request: Request instance for UpdateGroup.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateGroupRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateGroupResponse`
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

        # 更新组织身份

        # @param request: Request instance for UpdateOrganizationIdentity.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationIdentityRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationIdentityResponse`
        def UpdateOrganizationIdentity(request)
          body = send_request('UpdateOrganizationIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOrganizationIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新组织成员信息

        # @param request: Request instance for UpdateOrganizationMember.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationMemberRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationMemberResponse`
        def UpdateOrganizationMember(request)
          body = send_request('UpdateOrganizationMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOrganizationMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改绑定成员邮箱

        # @param request: Request instance for UpdateOrganizationMemberEmailBind.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationMemberEmailBindRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationMemberEmailBindResponse`
        def UpdateOrganizationMemberEmailBind(request)
          body = send_request('UpdateOrganizationMemberEmailBind', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOrganizationMemberEmailBindResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新企业组织节点

        # @param request: Request instance for UpdateOrganizationNode.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationNodeResponse`
        def UpdateOrganizationNode(request)
          body = send_request('UpdateOrganizationNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOrganizationNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑策略

        # @param request: Request instance for UpdatePolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdatePolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdatePolicyResponse`
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

        # 修改权限配置信息

        # @param request: Request instance for UpdateRoleConfiguration.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateRoleConfigurationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateRoleConfigurationResponse`
        def UpdateRoleConfiguration(request)
          body = send_request('UpdateRoleConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRoleConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新共享单元。

        # @param request: Request instance for UpdateShareUnit.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateShareUnitRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateShareUnitResponse`
        def UpdateShareUnit(request)
          body = send_request('UpdateShareUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateShareUnitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户信息

        # @param request: Request instance for UpdateUser.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateUserRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateUserResponse`
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

        # 修改用户状态

        # @param request: Request instance for UpdateUserStatus.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateUserStatusRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateUserStatusResponse`
        def UpdateUserStatus(request)
          body = send_request('UpdateUserStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUserStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建子用户同步任务

        # @param request: Request instance for UpdateUserSyncProvisioning.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateUserSyncProvisioningRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateUserSyncProvisioningResponse`
        def UpdateUserSyncProvisioning(request)
          body = send_request('UpdateUserSyncProvisioning', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUserSyncProvisioningResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新用户空间名

        # @param request: Request instance for UpdateZone.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateZoneRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateZoneResponse`
        def UpdateZone(request)
          body = send_request('UpdateZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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