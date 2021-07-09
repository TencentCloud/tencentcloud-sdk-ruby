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
  module Eiam
    module V20210420
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-04-20'
            api_endpoint = 'eiam.tencentcloudapi.com'
            sdk_version = 'EIAM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 加入用户到用户组

        # @param request: Request instance for AddUserToUserGroup.
        # @type request: :class:`Tencentcloud::eiam::V20210420::AddUserToUserGroupRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::AddUserToUserGroupResponse`
        def AddUserToUserGroup(request)
          body = send_request('AddUserToUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddUserToUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建一个机构节点

        # @param request: Request instance for CreateOrgNode.
        # @type request: :class:`Tencentcloud::eiam::V20210420::CreateOrgNodeRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::CreateOrgNodeResponse`
        def CreateOrgNode(request)
          body = send_request('CreateOrgNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrgNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建一个用户

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::eiam::V20210420::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::CreateUserResponse`
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
        # @type request: :class:`Tencentcloud::eiam::V20210420::CreateUserGroupRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::CreateUserGroupResponse`
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

        # 删除一个机构节点

        # @param request: Request instance for DeleteOrgNode.
        # @type request: :class:`Tencentcloud::eiam::V20210420::DeleteOrgNodeRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::DeleteOrgNodeResponse`
        def DeleteOrgNode(request)
          body = send_request('DeleteOrgNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrgNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过用户名或用户 id 删除用户。

        # @param request: Request instance for DeleteUser.
        # @type request: :class:`Tencentcloud::eiam::V20210420::DeleteUserRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::DeleteUserResponse`
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

        # 删除一个用户组

        # @param request: Request instance for DeleteUserGroup.
        # @type request: :class:`Tencentcloud::eiam::V20210420::DeleteUserGroupRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::DeleteUserGroupResponse`
        def DeleteUserGroup(request)
          body = send_request('DeleteUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取一个应用的信息。

        # @param request: Request instance for DescribeApplication.
        # @type request: :class:`Tencentcloud::eiam::V20210420::DescribeApplicationRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::DescribeApplicationResponse`
        def DescribeApplication(request)
          body = send_request('DescribeApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据机构节点ID读取机构节点信息

        # @param request: Request instance for DescribeOrgNode.
        # @type request: :class:`Tencentcloud::eiam::V20210420::DescribeOrgNodeRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::DescribeOrgNodeResponse`
        def DescribeOrgNode(request)
          body = send_request('DescribeOrgNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrgNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户组信息

        # @param request: Request instance for DescribeUserGroup.
        # @type request: :class:`Tencentcloud::eiam::V20210420::DescribeUserGroupRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::DescribeUserGroupResponse`
        def DescribeUserGroup(request)
          body = send_request('DescribeUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过用户名或用户 id 搜索用户

        # @param request: Request instance for DescribeUserInfo.
        # @type request: :class:`Tencentcloud::eiam::V20210420::DescribeUserInfoRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::DescribeUserInfoResponse`
        def DescribeUserInfo(request)
          body = send_request('DescribeUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过机构节点ID获得被授权访问的应用列表。

        # @param request: Request instance for ListAuthorizedApplicationsToOrgNode.
        # @type request: :class:`Tencentcloud::eiam::V20210420::ListAuthorizedApplicationsToOrgNodeRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::ListAuthorizedApplicationsToOrgNodeResponse`
        def ListAuthorizedApplicationsToOrgNode(request)
          body = send_request('ListAuthorizedApplicationsToOrgNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAuthorizedApplicationsToOrgNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过用户ID获得被授权访问的应用列表。

        # @param request: Request instance for ListAuthorizedApplicationsToUser.
        # @type request: :class:`Tencentcloud::eiam::V20210420::ListAuthorizedApplicationsToUserRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::ListAuthorizedApplicationsToUserResponse`
        def ListAuthorizedApplicationsToUser(request)
          body = send_request('ListAuthorizedApplicationsToUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAuthorizedApplicationsToUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过用户组ID获得被授权访问的应用列表。

        # @param request: Request instance for ListAuthorizedApplicationsToUserGroup.
        # @type request: :class:`Tencentcloud::eiam::V20210420::ListAuthorizedApplicationsToUserGroupRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::ListAuthorizedApplicationsToUserGroupResponse`
        def ListAuthorizedApplicationsToUserGroup(request)
          body = send_request('ListAuthorizedApplicationsToUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAuthorizedApplicationsToUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户所在的用户组列表

        # @param request: Request instance for ListUserGroupsOfUser.
        # @type request: :class:`Tencentcloud::eiam::V20210420::ListUserGroupsOfUserRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::ListUserGroupsOfUserResponse`
        def ListUserGroupsOfUser(request)
          body = send_request('ListUserGroupsOfUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUserGroupsOfUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据机构节点ID读取节点下用户

        # @param request: Request instance for ListUsersInOrgNode.
        # @type request: :class:`Tencentcloud::eiam::V20210420::ListUsersInOrgNodeRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::ListUsersInOrgNodeResponse`
        def ListUsersInOrgNode(request)
          body = send_request('ListUsersInOrgNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUsersInOrgNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户组中的用户列表

        # @param request: Request instance for ListUsersInUserGroup.
        # @type request: :class:`Tencentcloud::eiam::V20210420::ListUsersInUserGroupRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::ListUsersInUserGroupResponse`
        def ListUsersInUserGroup(request)
          body = send_request('ListUsersInUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUsersInUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过用户名或用户 id 冻结用户

        # @param request: Request instance for ModifyUserInfo.
        # @type request: :class:`Tencentcloud::eiam::V20210420::ModifyUserInfoRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::ModifyUserInfoResponse`
        def ModifyUserInfo(request)
          body = send_request('ModifyUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for RemoveUserFromUserGroup.
        # @type request: :class:`Tencentcloud::eiam::V20210420::RemoveUserFromUserGroupRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::RemoveUserFromUserGroupResponse`
        def RemoveUserFromUserGroup(request)
          body = send_request('RemoveUserFromUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveUserFromUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建一个机构节点，

        # @param request: Request instance for UpdateOrgNode.
        # @type request: :class:`Tencentcloud::eiam::V20210420::UpdateOrgNodeRequest`
        # @rtype: :class:`Tencentcloud::eiam::V20210420::UpdateOrgNodeResponse`
        def UpdateOrgNode(request)
          body = send_request('UpdateOrgNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOrgNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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