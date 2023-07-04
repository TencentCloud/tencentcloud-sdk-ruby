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
  module Ciam
    module V20220331
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-03-31'
            api_endpoint = 'ciam.tencentcloudapi.com'
            sdk_version = 'CIAM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 新建接口导入用户任务

        # @param request: Request instance for CreateApiImportUserJob.
        # @type request: :class:`Tencentcloud::ciam::V20220331::CreateApiImportUserJobRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::CreateApiImportUserJobResponse`
        def CreateApiImportUserJob(request)
          body = send_request('CreateApiImportUserJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApiImportUserJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建文件导出用户任务

        # @param request: Request instance for CreateFileExportUserJob.
        # @type request: :class:`Tencentcloud::ciam::V20220331::CreateFileExportUserJobRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::CreateFileExportUserJobResponse`
        def CreateFileExportUserJob(request)
          body = send_request('CreateFileExportUserJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFileExportUserJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::ciam::V20220331::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::CreateUserResponse`
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

        # 创建用户组

        # @param request: Request instance for CreateUserGroup.
        # @type request: :class:`Tencentcloud::ciam::V20220331::CreateUserGroupRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::CreateUserGroupResponse`
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

        # 创建用户目录

        # @param request: Request instance for CreateUserStore.
        # @type request: :class:`Tencentcloud::ciam::V20220331::CreateUserStoreRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::CreateUserStoreResponse`
        def CreateUserStore(request)
          body = send_request('CreateUserStore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserStoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除用户组

        # @param request: Request instance for DeleteUserGroups.
        # @type request: :class:`Tencentcloud::ciam::V20220331::DeleteUserGroupsRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::DeleteUserGroupsResponse`
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

        # 删除用户目录

        # @param request: Request instance for DeleteUserStore.
        # @type request: :class:`Tencentcloud::ciam::V20220331::DeleteUserStoreRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::DeleteUserStoreResponse`
        def DeleteUserStore(request)
          body = send_request('DeleteUserStore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserStoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除用户

        # @param request: Request instance for DeleteUsers.
        # @type request: :class:`Tencentcloud::ciam::V20220331::DeleteUsersRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::DeleteUsersResponse`
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

        # 多条件查询用户信息

        # @param request: Request instance for DescribeUser.
        # @type request: :class:`Tencentcloud::ciam::V20220331::DescribeUserRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::DescribeUserResponse`
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

        # 根据ID查询用户信息

        # @param request: Request instance for DescribeUserById.
        # @type request: :class:`Tencentcloud::ciam::V20220331::DescribeUserByIdRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::DescribeUserByIdResponse`
        def DescribeUserById(request)
          body = send_request('DescribeUserById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 账号融合

        # @param request: Request instance for LinkAccount.
        # @type request: :class:`Tencentcloud::ciam::V20220331::LinkAccountRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::LinkAccountResponse`
        def LinkAccount(request)
          body = send_request('LinkAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LinkAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务详情

        # @param request: Request instance for ListJobs.
        # @type request: :class:`Tencentcloud::ciam::V20220331::ListJobsRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::ListJobsResponse`
        def ListJobs(request)
          body = send_request('ListJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询日志信息

        # @param request: Request instance for ListLogMessageByCondition.
        # @type request: :class:`Tencentcloud::ciam::V20220331::ListLogMessageByConditionRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::ListLogMessageByConditionResponse`
        def ListLogMessageByCondition(request)
          body = send_request('ListLogMessageByCondition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListLogMessageByConditionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ListUser.
        # @type request: :class:`Tencentcloud::ciam::V20220331::ListUserRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::ListUserResponse`
        def ListUser(request)
          body = send_request('ListUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据属性查询用户列表

        # @param request: Request instance for ListUserByProperty.
        # @type request: :class:`Tencentcloud::ciam::V20220331::ListUserByPropertyRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::ListUserByPropertyResponse`
        def ListUserByProperty(request)
          body = send_request('ListUserByProperty', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUserByPropertyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ListUserGroups.
        # @type request: :class:`Tencentcloud::ciam::V20220331::ListUserGroupsRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::ListUserGroupsResponse`
        def ListUserGroups(request)
          body = send_request('ListUserGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUserGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户目录列表

        # @param request: Request instance for ListUserStore.
        # @type request: :class:`Tencentcloud::ciam::V20220331::ListUserStoreRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::ListUserStoreResponse`
        def ListUserStore(request)
          body = send_request('ListUserStore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListUserStoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置用户密码

        # @param request: Request instance for ResetPassword.
        # @type request: :class:`Tencentcloud::ciam::V20220331::ResetPasswordRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::ResetPasswordResponse`
        def ResetPassword(request)
          body = send_request('ResetPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置用户密码

        # @param request: Request instance for SetPassword.
        # @type request: :class:`Tencentcloud::ciam::V20220331::SetPasswordRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::SetPasswordResponse`
        def SetPassword(request)
          body = send_request('SetPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新用户

        # @param request: Request instance for UpdateUser.
        # @type request: :class:`Tencentcloud::ciam::V20220331::UpdateUserRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::UpdateUserResponse`
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

        # 更新用户组

        # @param request: Request instance for UpdateUserGroup.
        # @type request: :class:`Tencentcloud::ciam::V20220331::UpdateUserGroupRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::UpdateUserGroupResponse`
        def UpdateUserGroup(request)
          body = send_request('UpdateUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新用户状态

        # @param request: Request instance for UpdateUserStatus.
        # @type request: :class:`Tencentcloud::ciam::V20220331::UpdateUserStatusRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::UpdateUserStatusResponse`
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

        # 更新用户目录

        # @param request: Request instance for UpdateUserStore.
        # @type request: :class:`Tencentcloud::ciam::V20220331::UpdateUserStoreRequest`
        # @rtype: :class:`Tencentcloud::ciam::V20220331::UpdateUserStoreResponse`
        def UpdateUserStore(request)
          body = send_request('UpdateUserStore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUserStoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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