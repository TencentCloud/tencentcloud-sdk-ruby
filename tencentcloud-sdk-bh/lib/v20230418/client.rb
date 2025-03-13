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
  module Bh
    module V20230418
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-04-18'
            api_endpoint = 'bh.tencentcloudapi.com'
            sdk_version = 'BH_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 外部客户访问资产

        # @param request: Request instance for AccessDevices.
        # @type request: :class:`Tencentcloud::bh::V20230418::AccessDevicesRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::AccessDevicesResponse`
        def AccessDevices(request)
          body = send_request('AccessDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AccessDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加资产组成员

        # @param request: Request instance for AddDeviceGroupMembers.
        # @type request: :class:`Tencentcloud::bh::V20230418::AddDeviceGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::AddDeviceGroupMembersResponse`
        def AddDeviceGroupMembers(request)
          body = send_request('AddDeviceGroupMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDeviceGroupMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加用户组成员

        # @param request: Request instance for AddUserGroupMembers.
        # @type request: :class:`Tencentcloud::bh::V20230418::AddUserGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::AddUserGroupMembersResponse`
        def AddUserGroupMembers(request)
          body = send_request('AddUserGroupMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddUserGroupMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定主机账号密码

        # @param request: Request instance for BindDeviceAccountPassword.
        # @type request: :class:`Tencentcloud::bh::V20230418::BindDeviceAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::BindDeviceAccountPasswordResponse`
        def BindDeviceAccountPassword(request)
          body = send_request('BindDeviceAccountPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindDeviceAccountPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定主机账号私钥

        # @param request: Request instance for BindDeviceAccountPrivateKey.
        # @type request: :class:`Tencentcloud::bh::V20230418::BindDeviceAccountPrivateKeyRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::BindDeviceAccountPrivateKeyResponse`
        def BindDeviceAccountPrivateKey(request)
          body = send_request('BindDeviceAccountPrivateKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindDeviceAccountPrivateKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改资产绑定的堡垒机服务

        # @param request: Request instance for BindDeviceResource.
        # @type request: :class:`Tencentcloud::bh::V20230418::BindDeviceResourceRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::BindDeviceResourceResponse`
        def BindDeviceResource(request)
          body = send_request('BindDeviceResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindDeviceResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建访问权限

        # @param request: Request instance for CreateAcl.
        # @type request: :class:`Tencentcloud::bh::V20230418::CreateAclRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::CreateAclResponse`
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

        # 创建手工资产同步任务

        # @param request: Request instance for CreateAssetSyncJob.
        # @type request: :class:`Tencentcloud::bh::V20230418::CreateAssetSyncJobRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::CreateAssetSyncJobResponse`
        def CreateAssetSyncJob(request)
          body = send_request('CreateAssetSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetSyncJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建修改密码任务

        # @param request: Request instance for CreateChangePwdTask.
        # @type request: :class:`Tencentcloud::bh::V20230418::CreateChangePwdTaskRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::CreateChangePwdTaskResponse`
        def CreateChangePwdTask(request)
          body = send_request('CreateChangePwdTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateChangePwdTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建高危命令模板

        # @param request: Request instance for CreateCmdTemplate.
        # @type request: :class:`Tencentcloud::bh::V20230418::CreateCmdTemplateRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::CreateCmdTemplateResponse`
        def CreateCmdTemplate(request)
          body = send_request('CreateCmdTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCmdTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建主机账号

        # @param request: Request instance for CreateDeviceAccount.
        # @type request: :class:`Tencentcloud::bh::V20230418::CreateDeviceAccountRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::CreateDeviceAccountResponse`
        def CreateDeviceAccount(request)
          body = send_request('CreateDeviceAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeviceAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建资产组

        # @param request: Request instance for CreateDeviceGroup.
        # @type request: :class:`Tencentcloud::bh::V20230418::CreateDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::CreateDeviceGroupResponse`
        def CreateDeviceGroup(request)
          body = send_request('CreateDeviceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeviceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建堡垒机实例

        # @param request: Request instance for CreateResource.
        # @type request: :class:`Tencentcloud::bh::V20230418::CreateResourceRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::CreateResourceResponse`
        def CreateResource(request)
          body = send_request('CreateResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建用户

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::bh::V20230418::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::CreateUserResponse`
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

        # 新建用户组

        # @param request: Request instance for CreateUserGroup.
        # @type request: :class:`Tencentcloud::bh::V20230418::CreateUserGroupRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::CreateUserGroupResponse`
        def CreateUserGroup(request)
          body = send_request('CreateUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除访问权限

        # @param request: Request instance for DeleteAcls.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteAclsRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteAclsResponse`
        def DeleteAcls(request)
          body = send_request('DeleteAcls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAclsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除改密任务

        # @param request: Request instance for DeleteChangePwdTask.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteChangePwdTaskRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteChangePwdTaskResponse`
        def DeleteChangePwdTask(request)
          body = send_request('DeleteChangePwdTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteChangePwdTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除高危命令模板

        # @param request: Request instance for DeleteCmdTemplates.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteCmdTemplatesRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteCmdTemplatesResponse`
        def DeleteCmdTemplates(request)
          body = send_request('DeleteCmdTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCmdTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除主机账号

        # @param request: Request instance for DeleteDeviceAccounts.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteDeviceAccountsRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteDeviceAccountsResponse`
        def DeleteDeviceAccounts(request)
          body = send_request('DeleteDeviceAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除资产组成员

        # @param request: Request instance for DeleteDeviceGroupMembers.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteDeviceGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteDeviceGroupMembersResponse`
        def DeleteDeviceGroupMembers(request)
          body = send_request('DeleteDeviceGroupMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceGroupMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除资产组

        # @param request: Request instance for DeleteDeviceGroups.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteDeviceGroupsRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteDeviceGroupsResponse`
        def DeleteDeviceGroups(request)
          body = send_request('DeleteDeviceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除主机

        # @param request: Request instance for DeleteDevices.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteDevicesRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteDevicesResponse`
        def DeleteDevices(request)
          body = send_request('DeleteDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户组成员

        # @param request: Request instance for DeleteUserGroupMembers.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteUserGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteUserGroupMembersResponse`
        def DeleteUserGroupMembers(request)
          body = send_request('DeleteUserGroupMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserGroupMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteUserGroups.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteUserGroupsRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteUserGroupsResponse`
        def DeleteUserGroups(request)
          body = send_request('DeleteUserGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteUsers.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeleteUsersRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeleteUsersResponse`
        def DeleteUsers(request)
          body = send_request('DeleteUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通服务，初始化资源，只针对新购资源

        # @param request: Request instance for DeployResource.
        # @type request: :class:`Tencentcloud::bh::V20230418::DeployResourceRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DeployResourceResponse`
        def DeployResource(request)
          body = send_request('DeployResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询访问权限列表

        # @param request: Request instance for DescribeAcls.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeAclsRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeAclsResponse`
        def DescribeAcls(request)
          body = send_request('DescribeAcls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAclsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产同步状态

        # @param request: Request instance for DescribeAssetSyncStatus.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeAssetSyncStatusRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeAssetSyncStatusResponse`
        def DescribeAssetSyncStatus(request)
          body = send_request('DescribeAssetSyncStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetSyncStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询改密任务列表

        # @param request: Request instance for DescribeChangePwdTask.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeChangePwdTaskRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeChangePwdTaskResponse`
        def DescribeChangePwdTask(request)
          body = send_request('DescribeChangePwdTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChangePwdTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询改密任务详情

        # @param request: Request instance for DescribeChangePwdTaskDetail.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeChangePwdTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeChangePwdTaskDetailResponse`
        def DescribeChangePwdTaskDetail(request)
          body = send_request('DescribeChangePwdTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChangePwdTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询命令模板列表

        # @param request: Request instance for DescribeCmdTemplates.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeCmdTemplatesRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeCmdTemplatesResponse`
        def DescribeCmdTemplates(request)
          body = send_request('DescribeCmdTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCmdTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主机账号列表

        # @param request: Request instance for DescribeDeviceAccounts.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeDeviceAccountsRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeDeviceAccountsResponse`
        def DescribeDeviceAccounts(request)
          body = send_request('DescribeDeviceAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产组成员列表

        # @param request: Request instance for DescribeDeviceGroupMembers.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeDeviceGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeDeviceGroupMembersResponse`
        def DescribeDeviceGroupMembers(request)
          body = send_request('DescribeDeviceGroupMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceGroupMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产组列表

        # @param request: Request instance for DescribeDeviceGroups.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeDeviceGroupsRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeDeviceGroupsResponse`
        def DescribeDeviceGroups(request)
          body = send_request('DescribeDeviceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产列表

        # @param request: Request instance for DescribeDevices.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeDevicesRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeDevicesResponse`
        def DescribeDevices(request)
          body = send_request('DescribeDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网络域

        # @param request: Request instance for DescribeDomains.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeDomainsRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeDomainsResponse`
        def DescribeDomains(request)
          body = send_request('DescribeDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询登录日志

        # @param request: Request instance for DescribeLoginEvent.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeLoginEventRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeLoginEventResponse`
        def DescribeLoginEvent(request)
          body = send_request('DescribeLoginEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询操作日志

        # @param request: Request instance for DescribeOperationEvent.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeOperationEventRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeOperationEventResponse`
        def DescribeOperationEvent(request)
          body = send_request('DescribeOperationEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOperationEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户购买的堡垒机服务信息，包括资源ID、授权点数、VPC、过期时间等。

        # @param request: Request instance for DescribeResources.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeResourcesRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeResourcesResponse`
        def DescribeResources(request)
          body = send_request('DescribeResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户组成员列表

        # @param request: Request instance for DescribeUserGroupMembers.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeUserGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeUserGroupMembersResponse`
        def DescribeUserGroupMembers(request)
          body = send_request('DescribeUserGroupMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserGroupMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeUserGroups.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeUserGroupsRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeUserGroupsResponse`
        def DescribeUserGroups(request)
          body = send_request('DescribeUserGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeUsers.
        # @type request: :class:`Tencentcloud::bh::V20230418::DescribeUsersRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::DescribeUsersResponse`
        def DescribeUsers(request)
          body = send_request('DescribeUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导入外部资产信息

        # @param request: Request instance for ImportExternalDevice.
        # @type request: :class:`Tencentcloud::bh::V20230418::ImportExternalDeviceRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ImportExternalDeviceResponse`
        def ImportExternalDevice(request)
          body = send_request('ImportExternalDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportExternalDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改访问权限

        # @param request: Request instance for ModifyAcl.
        # @type request: :class:`Tencentcloud::bh::V20230418::ModifyAclRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ModifyAclResponse`
        def ModifyAcl(request)
          body = send_request('ModifyAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAclResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新修改密码任务

        # @param request: Request instance for ModifyChangePwdTask.
        # @type request: :class:`Tencentcloud::bh::V20230418::ModifyChangePwdTaskRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ModifyChangePwdTaskResponse`
        def ModifyChangePwdTask(request)
          body = send_request('ModifyChangePwdTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyChangePwdTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改高危命令模板

        # @param request: Request instance for ModifyCmdTemplate.
        # @type request: :class:`Tencentcloud::bh::V20230418::ModifyCmdTemplateRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ModifyCmdTemplateResponse`
        def ModifyCmdTemplate(request)
          body = send_request('ModifyCmdTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCmdTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改资产信息

        # @param request: Request instance for ModifyDevice.
        # @type request: :class:`Tencentcloud::bh::V20230418::ModifyDeviceRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ModifyDeviceResponse`
        def ModifyDevice(request)
          body = send_request('ModifyDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改资产组

        # @param request: Request instance for ModifyDeviceGroup.
        # @type request: :class:`Tencentcloud::bh::V20230418::ModifyDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ModifyDeviceGroupResponse`
        def ModifyDeviceGroup(request)
          body = send_request('ModifyDeviceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置OAuth认证参数

        # @param request: Request instance for ModifyOAuthSetting.
        # @type request: :class:`Tencentcloud::bh::V20230418::ModifyOAuthSettingRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ModifyOAuthSettingResponse`
        def ModifyOAuthSetting(request)
          body = send_request('ModifyOAuthSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOAuthSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资源变配

        # @param request: Request instance for ModifyResource.
        # @type request: :class:`Tencentcloud::bh::V20230418::ModifyResourceRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ModifyResourceResponse`
        def ModifyResource(request)
          body = send_request('ModifyResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ModifyUser.
        # @type request: :class:`Tencentcloud::bh::V20230418::ModifyUserRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ModifyUserResponse`
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

        # 修改用户组

        # @param request: Request instance for ModifyUserGroup.
        # @type request: :class:`Tencentcloud::bh::V20230418::ModifyUserGroupRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ModifyUserGroupResponse`
        def ModifyUserGroup(request)
          body = send_request('ModifyUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 清除设备账号绑定密码

        # @param request: Request instance for ResetDeviceAccountPassword.
        # @type request: :class:`Tencentcloud::bh::V20230418::ResetDeviceAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ResetDeviceAccountPasswordResponse`
        def ResetDeviceAccountPassword(request)
          body = send_request('ResetDeviceAccountPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetDeviceAccountPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 清除设备账号绑定的密钥

        # @param request: Request instance for ResetDeviceAccountPrivateKey.
        # @type request: :class:`Tencentcloud::bh::V20230418::ResetDeviceAccountPrivateKeyRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ResetDeviceAccountPrivateKeyResponse`
        def ResetDeviceAccountPrivateKey(request)
          body = send_request('ResetDeviceAccountPrivateKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetDeviceAccountPrivateKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置用户

        # @param request: Request instance for ResetUser.
        # @type request: :class:`Tencentcloud::bh::V20230418::ResetUserRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::ResetUserResponse`
        def ResetUser(request)
          body = send_request('ResetUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 执行改密任务

        # @param request: Request instance for RunChangePwdTask.
        # @type request: :class:`Tencentcloud::bh::V20230418::RunChangePwdTaskRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::RunChangePwdTaskResponse`
        def RunChangePwdTask(request)
          body = send_request('RunChangePwdTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunChangePwdTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 搜索审计日志

        # @param request: Request instance for SearchAuditLog.
        # @type request: :class:`Tencentcloud::bh::V20230418::SearchAuditLogRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::SearchAuditLogResponse`
        def SearchAuditLog(request)
          body = send_request('SearchAuditLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchAuditLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 命令执行检索

        # @param request: Request instance for SearchCommand.
        # @type request: :class:`Tencentcloud::bh::V20230418::SearchCommandRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::SearchCommandResponse`
        def SearchCommand(request)
          body = send_request('SearchCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据会话Id搜索Command

        # @param request: Request instance for SearchCommandBySid.
        # @type request: :class:`Tencentcloud::bh::V20230418::SearchCommandBySidRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::SearchCommandBySidResponse`
        def SearchCommandBySid(request)
          body = send_request('SearchCommandBySid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchCommandBySidResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文件传输检索

        # @param request: Request instance for SearchFile.
        # @type request: :class:`Tencentcloud::bh::V20230418::SearchFileRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::SearchFileResponse`
        def SearchFile(request)
          body = send_request('SearchFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 搜索文件传输会话下文件操作列表

        # @param request: Request instance for SearchFileBySid.
        # @type request: :class:`Tencentcloud::bh::V20230418::SearchFileBySidRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::SearchFileBySidResponse`
        def SearchFileBySid(request)
          body = send_request('SearchFileBySid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchFileBySidResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 搜索会话

        # @param request: Request instance for SearchSession.
        # @type request: :class:`Tencentcloud::bh::V20230418::SearchSessionRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::SearchSessionResponse`
        def SearchSession(request)
          body = send_request('SearchSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 命令检索

        # @param request: Request instance for SearchSessionCommand.
        # @type request: :class:`Tencentcloud::bh::V20230418::SearchSessionCommandRequest`
        # @rtype: :class:`Tencentcloud::bh::V20230418::SearchSessionCommandResponse`
        def SearchSessionCommand(request)
          body = send_request('SearchSessionCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchSessionCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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