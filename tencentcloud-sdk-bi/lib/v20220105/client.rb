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


      end
    end
  end
end