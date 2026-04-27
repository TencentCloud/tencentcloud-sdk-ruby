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
  module Bi
    module V20220105
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-01-05'
            api_endpoint = 'bi.tencentcloudapi.com'
            sdk_version = 'BI_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 申请延长Token可用时间接口-强鉴权

        # @param request: Request instance for ApplyEmbedInterval.
        # @type request: :class:`Tencentcloud::bi::V20220105::ApplyEmbedIntervalRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ApplyEmbedIntervalResponse`
        def ApplyEmbedInterval(request)
          body = send_request('ApplyEmbedInterval', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyEmbedIntervalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 强鉴权token 清理，只有企业管理员才能调用该接口

        # @param request: Request instance for ClearEmbedToken.
        # @type request: :class:`Tencentcloud::bi::V20220105::ClearEmbedTokenRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ClearEmbedTokenResponse`
        def ClearEmbedToken(request)
          body = send_request('ClearEmbedToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearEmbedTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建ApiKey

        # @param request: Request instance for CreateAuthApiKey.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreateAuthApiKeyRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreateAuthApiKeyResponse`
        def CreateAuthApiKey(request)
          body = send_request('CreateAuthApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAuthApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据源

        # @param request: Request instance for CreateDatasource.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreateDatasourceRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreateDatasourceResponse`
        def CreateDatasource(request)
          body = send_request('CreateDatasource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatasourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云数据库

        # @param request: Request instance for CreateDatasourceCloud.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreateDatasourceCloudRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreateDatasourceCloudResponse`
        def CreateDatasourceCloud(request)
          body = send_request('CreateDatasourceCloud', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatasourceCloudResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建嵌出报表-强鉴权

        # @param request: Request instance for CreateEmbedToken.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreateEmbedTokenRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreateEmbedTokenResponse`
        def CreateEmbedToken(request)
          body = send_request('CreateEmbedToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEmbedTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建行列权限

        # @param request: Request instance for CreatePermissionRanks.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreatePermissionRanksRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreatePermissionRanksResponse`
        def CreatePermissionRanks(request)
          body = send_request('CreatePermissionRanks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePermissionRanksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建项目

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreateProjectResponse`
        def CreateProject(request)
          body = send_request('CreateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateUserGroup

        # @param request: Request instance for CreateUserGroup.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreateUserGroupRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreateUserGroupResponse`
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

        # CreateUserGroupMember

        # @param request: Request instance for CreateUserGroupMember.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreateUserGroupMemberRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreateUserGroupMemberResponse`
        def CreateUserGroupMember(request)
          body = send_request('CreateUserGroupMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserGroupMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户角色

        # @param request: Request instance for CreateUserRole.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreateUserRoleRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreateUserRoleResponse`
        def CreateUserRole(request)
          body = send_request('CreateUserRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 项目内-创建用户角色

        # @param request: Request instance for CreateUserRoleProject.
        # @type request: :class:`Tencentcloud::bi::V20220105::CreateUserRoleProjectRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::CreateUserRoleProjectResponse`
        def CreateUserRoleProject(request)
          body = send_request('CreateUserRoleProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserRoleProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除ApiKey

        # @param request: Request instance for DeleteAuthApiKey.
        # @type request: :class:`Tencentcloud::bi::V20220105::DeleteAuthApiKeyRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DeleteAuthApiKeyResponse`
        def DeleteAuthApiKey(request)
          body = send_request('DeleteAuthApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuthApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除数据源

        # @param request: Request instance for DeleteDatasource.
        # @type request: :class:`Tencentcloud::bi::V20220105::DeleteDatasourceRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DeleteDatasourceResponse`
        def DeleteDatasource(request)
          body = send_request('DeleteDatasource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDatasourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除项目

        # @param request: Request instance for DeleteProject.
        # @type request: :class:`Tencentcloud::bi::V20220105::DeleteProjectRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DeleteProjectResponse`
        def DeleteProject(request)
          body = send_request('DeleteProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeleteUserGroup

        # @param request: Request instance for DeleteUserGroup.
        # @type request: :class:`Tencentcloud::bi::V20220105::DeleteUserGroupRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DeleteUserGroupResponse`
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

        # DeleteUserGroupMember

        # @param request: Request instance for DeleteUserGroupMember.
        # @type request: :class:`Tencentcloud::bi::V20220105::DeleteUserGroupMemberRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DeleteUserGroupMemberResponse`
        def DeleteUserGroupMember(request)
          body = send_request('DeleteUserGroupMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserGroupMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户角色，会删除用户

        # @param request: Request instance for DeleteUserRole.
        # @type request: :class:`Tencentcloud::bi::V20220105::DeleteUserRoleRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DeleteUserRoleResponse`
        def DeleteUserRole(request)
          body = send_request('DeleteUserRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 项目内-删除用户角色

        # @param request: Request instance for DeleteUserRoleProject.
        # @type request: :class:`Tencentcloud::bi::V20220105::DeleteUserRoleProjectRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DeleteUserRoleProjectResponse`
        def DeleteUserRoleProject(request)
          body = send_request('DeleteUserRoleProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserRoleProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ApiKey信息

        # @param request: Request instance for DescribeAuthApiKeyInfo.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeAuthApiKeyInfoRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeAuthApiKeyInfoResponse`
        def DescribeAuthApiKeyInfo(request)
          body = send_request('DescribeAuthApiKeyInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuthApiKeyInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ApiKey列表

        # @param request: Request instance for DescribeAuthApiKeyList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeAuthApiKeyListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeAuthApiKeyListResponse`
        def DescribeAuthApiKeyList(request)
          body = send_request('DescribeAuthApiKeyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuthApiKeyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据源列表

        # @param request: Request instance for DescribeDatasourceList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeDatasourceListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeDatasourceListResponse`
        def DescribeDatasourceList(request)
          body = send_request('DescribeDatasourceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatasourceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询页面组件信息

        # @param request: Request instance for DescribePageWidgetList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribePageWidgetListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribePageWidgetListResponse`
        def DescribePageWidgetList(request)
          body = send_request('DescribePageWidgetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePageWidgetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据角色或标签查询行列权限配置

        # @param request: Request instance for DescribePermissionRanksInfo.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribePermissionRanksInfoRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribePermissionRanksInfoResponse`
        def DescribePermissionRanksInfo(request)
          body = send_request('DescribePermissionRanksInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePermissionRanksInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 行列权限项目内角色列表接口1

        # @param request: Request instance for DescribePermissionRoleInfo.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribePermissionRoleInfoRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribePermissionRoleInfoResponse`
        def DescribePermissionRoleInfo(request)
          body = send_request('DescribePermissionRoleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePermissionRoleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询行列权限初始状态1

        # @param request: Request instance for DescribePermissionStatusInfo.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribePermissionStatusInfoRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribePermissionStatusInfoResponse`
        def DescribePermissionStatusInfo(request)
          body = send_request('DescribePermissionStatusInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePermissionStatusInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 项目详情接口

        # @param request: Request instance for DescribeProjectInfo.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeProjectInfoRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeProjectInfoResponse`
        def DescribeProjectInfo(request)
          body = send_request('DescribeProjectInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 项目信息

        # @param request: Request instance for DescribeProjectList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeProjectListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeProjectListResponse`
        def DescribeProjectList(request)
          body = send_request('DescribeProjectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户组资源权限查询接口

        # @param request: Request instance for DescribeResourceUserGroupPageList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeResourceUserGroupPageListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeResourceUserGroupPageListResponse`
        def DescribeResourceUserGroupPageList(request)
          body = send_request('DescribeResourceUserGroupPageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceUserGroupPageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeUserGroupInfo

        # @param request: Request instance for DescribeUserGroupInfo.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeUserGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeUserGroupInfoResponse`
        def DescribeUserGroupInfo(request)
          body = send_request('DescribeUserGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeUserGroupMemberList

        # @param request: Request instance for DescribeUserGroupMemberList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeUserGroupMemberListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeUserGroupMemberListResponse`
        def DescribeUserGroupMemberList(request)
          body = send_request('DescribeUserGroupMemberList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserGroupMemberListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户组数查询接口

        # @param request: Request instance for DescribeUserGroupTreeList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeUserGroupTreeListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeUserGroupTreeListResponse`
        def DescribeUserGroupTreeList(request)
          body = send_request('DescribeUserGroupTreeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserGroupTreeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 项目内-用户接口

        # @param request: Request instance for DescribeUserProjectList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeUserProjectListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeUserProjectListResponse`
        def DescribeUserProjectList(request)
          body = send_request('DescribeUserProjectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserProjectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户角色列表

        # @param request: Request instance for DescribeUserRoleList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeUserRoleListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeUserRoleListResponse`
        def DescribeUserRoleList(request)
          body = send_request('DescribeUserRoleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserRoleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 项目内-用户角色列表

        # @param request: Request instance for DescribeUserRoleProjectList.
        # @type request: :class:`Tencentcloud::bi::V20220105::DescribeUserRoleProjectListRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::DescribeUserRoleProjectListResponse`
        def DescribeUserRoleProjectList(request)
          body = send_request('DescribeUserRoleProjectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserRoleProjectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 页面截图导出

        # @param request: Request instance for ExportScreenPage.
        # @type request: :class:`Tencentcloud::bi::V20220105::ExportScreenPageRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ExportScreenPageResponse`
        def ExportScreenPage(request)
          body = send_request('ExportScreenPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportScreenPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新ApiKey

        # @param request: Request instance for ModifyAuthApiKey.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyAuthApiKeyRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyAuthApiKeyResponse`
        def ModifyAuthApiKey(request)
          body = send_request('ModifyAuthApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAuthApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新数据源

        # @param request: Request instance for ModifyDatasource.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyDatasourceRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyDatasourceResponse`
        def ModifyDatasource(request)
          body = send_request('ModifyDatasource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDatasourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新云数据库

        # @param request: Request instance for ModifyDatasourceCloud.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyDatasourceCloudRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyDatasourceCloudResponse`
        def ModifyDatasourceCloud(request)
          body = send_request('ModifyDatasourceCloud', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDatasourceCloudResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改项目信息

        # @param request: Request instance for ModifyProject.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyProjectRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyProjectResponse`
        def ModifyProject(request)
          body = send_request('ModifyProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新用户组权限

        # @param request: Request instance for ModifyResourceUserGroup.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyResourceUserGroupRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyResourceUserGroupResponse`
        def ModifyResourceUserGroup(request)
          body = send_request('ModifyResourceUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按资源 - 更新用户组权限

        # @param request: Request instance for ModifyResourceUserGroupResource.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyResourceUserGroupResourceRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyResourceUserGroupResourceResponse`
        def ModifyResourceUserGroupResource(request)
          body = send_request('ModifyResourceUserGroupResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceUserGroupResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户角色信息

        # @param request: Request instance for ModifyUserDetailInfo.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyUserDetailInfoRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyUserDetailInfoResponse`
        def ModifyUserDetailInfo(request)
          body = send_request('ModifyUserDetailInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserDetailInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyUserGroup

        # @param request: Request instance for ModifyUserGroup.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyUserGroupRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyUserGroupResponse`
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

        # 修改用户角色信息

        # @param request: Request instance for ModifyUserRole.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyUserRoleRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyUserRoleResponse`
        def ModifyUserRole(request)
          body = send_request('ModifyUserRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 项目-修改用户角色信息

        # @param request: Request instance for ModifyUserRoleProject.
        # @type request: :class:`Tencentcloud::bi::V20220105::ModifyUserRoleProjectRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::ModifyUserRoleProjectResponse`
        def ModifyUserRoleProject(request)
          body = send_request('ModifyUserRoleProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserRoleProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # QueryUserGroupMember

        # @param request: Request instance for QueryUserGroupMember.
        # @type request: :class:`Tencentcloud::bi::V20220105::QueryUserGroupMemberRequest`
        # @rtype: :class:`Tencentcloud::bi::V20220105::QueryUserGroupMemberResponse`
        def QueryUserGroupMember(request)
          body = send_request('QueryUserGroupMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryUserGroupMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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