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
  module Dasb
    module V20191018
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-10-18'
            api_endpoint = 'dasb.tencentcloudapi.com'
            sdk_version = 'DASB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加资产组成员

        # @param request: Request instance for AddDeviceGroupMembers.
        # @type request: :class:`Tencentcloud::dasb::V20191018::AddDeviceGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::AddDeviceGroupMembersResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::AddUserGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::AddUserGroupMembersResponse`
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

        # 修改资产绑定的堡垒机服务

        # @param request: Request instance for BindDeviceResource.
        # @type request: :class:`Tencentcloud::dasb::V20191018::BindDeviceResourceRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::BindDeviceResourceResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::CreateAclRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::CreateAclResponse`
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

        # 新建资产组

        # @param request: Request instance for CreateDeviceGroup.
        # @type request: :class:`Tencentcloud::dasb::V20191018::CreateDeviceGroupRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::CreateDeviceGroupResponse`
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

        # 新建用户

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::dasb::V20191018::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::CreateUserResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::CreateUserGroupRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::CreateUserGroupResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DeleteAclsRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DeleteAclsResponse`
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

        # 删除资产组成员

        # @param request: Request instance for DeleteDeviceGroupMembers.
        # @type request: :class:`Tencentcloud::dasb::V20191018::DeleteDeviceGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DeleteDeviceGroupMembersResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DeleteDeviceGroupsRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DeleteDeviceGroupsResponse`
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

        # 删除用户组成员

        # @param request: Request instance for DeleteUserGroupMembers.
        # @type request: :class:`Tencentcloud::dasb::V20191018::DeleteUserGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DeleteUserGroupMembersResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DeleteUserGroupsRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DeleteUserGroupsResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DeleteUsersRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DeleteUsersResponse`
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

        # 查询访问权限列表

        # @param request: Request instance for DescribeAcls.
        # @type request: :class:`Tencentcloud::dasb::V20191018::DescribeAclsRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DescribeAclsResponse`
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

        # 获取镜像列表

        # @param request: Request instance for DescribeDasbImageIds.
        # @type request: :class:`Tencentcloud::dasb::V20191018::DescribeDasbImageIdsRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DescribeDasbImageIdsResponse`
        def DescribeDasbImageIds(request)
          body = send_request('DescribeDasbImageIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDasbImageIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DescribeDeviceGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DescribeDeviceGroupMembersResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DescribeDeviceGroupsRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DescribeDeviceGroupsResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DescribeDevicesRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DescribeDevicesResponse`
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

        # 查询用户购买的堡垒机服务信息，包括资源ID、授权点数、VPC、过期时间等。

        # @param request: Request instance for DescribeResources.
        # @type request: :class:`Tencentcloud::dasb::V20191018::DescribeResourcesRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DescribeResourcesResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DescribeUserGroupMembersRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DescribeUserGroupMembersResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DescribeUserGroupsRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DescribeUserGroupsResponse`
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
        # @type request: :class:`Tencentcloud::dasb::V20191018::DescribeUsersRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::DescribeUsersResponse`
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

        # 修改访问权限

        # @param request: Request instance for ModifyAcl.
        # @type request: :class:`Tencentcloud::dasb::V20191018::ModifyAclRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::ModifyAclResponse`
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

        # 修改用户信息

        # @param request: Request instance for ModifyUser.
        # @type request: :class:`Tencentcloud::dasb::V20191018::ModifyUserRequest`
        # @rtype: :class:`Tencentcloud::dasb::V20191018::ModifyUserResponse`
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


      end
    end
  end
end