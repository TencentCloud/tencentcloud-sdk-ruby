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
  module Cme
    module V20191029
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-10-29'
            api_endpoint = 'cme.tencentcloudapi.com'
            sdk_version = 'CME_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 向一个团队中团队成员，并且指定成员的角色。

        # @param request: Request instance for AddTeamMember.
        # @type request: :class:`Tencentcloud::cme::V20191029::AddTeamMemberRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::AddTeamMemberResponse`
        def AddTeamMember(request)
          body = send_request('AddTeamMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddTeamMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 复制一个项目，包括项目素材及轨道数据。目前仅普通剪辑及模板制作项目可复制，其它类型的项目不支持复制。

        # @param request: Request instance for CopyProject.
        # @type request: :class:`Tencentcloud::cme::V20191029::CopyProjectRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::CopyProjectResponse`
        def CopyProject(request)
          body = send_request('CopyProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增分类，用于管理素材。分类层数不能超过20。

        # @param request: Request instance for CreateClass.
        # @type request: :class:`Tencentcloud::cme::V20191029::CreateClassRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::CreateClassResponse`
        def CreateClass(request)
          body = send_request('CreateClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClassResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        #  创建媒体链接或分类路径链接，将源资源信息链接到目标。

        # @param request: Request instance for CreateLink.
        # @type request: :class:`Tencentcloud::cme::V20191029::CreateLinkRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::CreateLinkResponse`
        def CreateLink(request)
          body = send_request('CreateLink', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLinkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云剪的编辑项目，支持创建视频剪辑、直播剪辑、导播台、视频拆条、录制回放以及云转推项目。

        # <b>若需使用云转推功能，请先咨询 [智能客服](https://cloud.tencent.com/act/event/smarty-service?from=doc_1138) 或 [提交工单](https://console.cloud.tencent.com/workorder/category) 。</b>

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::cme::V20191029::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::CreateProjectResponse`
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

        # 创建一个团队。

        # @param request: Request instance for CreateTeam.
        # @type request: :class:`Tencentcloud::cme::V20191029::CreateTeamRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::CreateTeamResponse`
        def CreateTeam(request)
          body = send_request('CreateTeam', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTeamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除分类信息，删除时检验下述限制：
        # <li>分类路径必须存在；</li>
        # <li>分类下没有绑定素材。</li>

        # @param request: Request instance for DeleteClass.
        # @type request: :class:`Tencentcloud::cme::V20191029::DeleteClassRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DeleteClassResponse`
        def DeleteClass(request)
          body = send_request('DeleteClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClassResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户登录态，使用户登出云剪平台。

        # @param request: Request instance for DeleteLoginStatus.
        # @type request: :class:`Tencentcloud::cme::V20191029::DeleteLoginStatusRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DeleteLoginStatusResponse`
        def DeleteLoginStatus(request)
          body = send_request('DeleteLoginStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoginStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据媒体 Id 删除媒体。

        # @param request: Request instance for DeleteMaterial.
        # @type request: :class:`Tencentcloud::cme::V20191029::DeleteMaterialRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DeleteMaterialResponse`
        def DeleteMaterial(request)
          body = send_request('DeleteMaterial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMaterialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云剪编辑项目。

        # @param request: Request instance for DeleteProject.
        # @type request: :class:`Tencentcloud::cme::V20191029::DeleteProjectRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DeleteProjectResponse`
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

        # 删除一个团队。
        # <li>要删除的团队必须没有归属的素材；</li>
        # <li>要删除的团队必须没有归属的分类。</li>

        # @param request: Request instance for DeleteTeam.
        # @type request: :class:`Tencentcloud::cme::V20191029::DeleteTeamRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DeleteTeamResponse`
        def DeleteTeam(request)
          body = send_request('DeleteTeam', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTeamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将团队成员从团队中删除，默认只有 Owner 及管理员才有此权限。

        # @param request: Request instance for DeleteTeamMembers.
        # @type request: :class:`Tencentcloud::cme::V20191029::DeleteTeamMembersRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DeleteTeamMembersResponse`
        def DeleteTeamMembers(request)
          body = send_request('DeleteTeamMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTeamMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户账号信息。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeAccountsResponse`
        def DescribeAccounts(request)
          body = send_request('DescribeAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定归属者下所有的分类信息。

        # @param request: Request instance for DescribeClass.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeClassRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeClassResponse`
        def DescribeClass(request)
          body = send_request('DescribeClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClassResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定的团队成员所加入的团队列表。

        # @param request: Request instance for DescribeJoinTeams.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeJoinTeamsRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeJoinTeamsResponse`
        def DescribeJoinTeams(request)
          body = send_request('DescribeJoinTeams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJoinTeamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定用户的登录态。

        # @param request: Request instance for DescribeLoginStatus.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeLoginStatusRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeLoginStatusResponse`
        def DescribeLoginStatus(request)
          body = send_request('DescribeLoginStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据媒体 Id 批量获取媒体详情。

        # @param request: Request instance for DescribeMaterials.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeMaterialsRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeMaterialsResponse`
        def DescribeMaterials(request)
          body = send_request('DescribeMaterials', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaterialsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <li>支持获取所创建的所有平台列表信息；</li>
        # <li>支持获取指定的平台列表信息。</li>


        # @param request: Request instance for DescribePlatforms.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribePlatformsRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribePlatformsResponse`
        def DescribePlatforms(request)
          body = send_request('DescribePlatforms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePlatformsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 支持根据多种条件过滤出项目列表。

        # @param request: Request instance for DescribeProjects.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeProjectsRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeProjectsResponse`
        def DescribeProjects(request)
          body = send_request('DescribeProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定资源的授权列表。

        # @param request: Request instance for DescribeResourceAuthorization.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeResourceAuthorizationRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeResourceAuthorizationResponse`
        def DescribeResourceAuthorization(request)
          body = send_request('DescribeResourceAuthorization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceAuthorizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取共享空间。当个人或团队A对个人或团队B授权某资源以后，个人或团队B的共享空间就会增加个人或团队A。

        # @param request: Request instance for DescribeSharedSpace.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeSharedSpaceRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeSharedSpaceResponse`
        def DescribeSharedSpace(request)
          body = send_request('DescribeSharedSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSharedSpaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务详情信息，包含下面几个部分：
        # <li>任务基础信息：包括任务状态、错误信息、创建时间等；</li>
        # <li>导出项目输出信息：包括输出的素材 Id 等。</li>

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeTaskDetailResponse`
        def DescribeTaskDetail(request)
          body = send_request('DescribeTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务列表，支持条件筛选，返回对应的任务基础信息列表。

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeTasksResponse`
        def DescribeTasks(request)
          body = send_request('DescribeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定成员 ID 的信息，同时支持拉取所有团队成员信息。

        # @param request: Request instance for DescribeTeamMembers.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeTeamMembersRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeTeamMembersResponse`
        def DescribeTeamMembers(request)
          body = send_request('DescribeTeamMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTeamMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定团队的信息，拉取团队信息列表。

        # @param request: Request instance for DescribeTeams.
        # @type request: :class:`Tencentcloud::cme::V20191029::DescribeTeamsRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::DescribeTeamsResponse`
        def DescribeTeams(request)
          body = send_request('DescribeTeams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTeamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用视频合成协议导出视频，支持导出到CME云媒资和VOD云媒资。

        # @param request: Request instance for ExportVideoByEditorTrackData.
        # @type request: :class:`Tencentcloud::cme::V20191029::ExportVideoByEditorTrackDataRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ExportVideoByEditorTrackDataResponse`
        def ExportVideoByEditorTrackData(request)
          body = send_request('ExportVideoByEditorTrackData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVideoByEditorTrackDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用视频编辑模板直接导出视频。

        # @param request: Request instance for ExportVideoByTemplate.
        # @type request: :class:`Tencentcloud::cme::V20191029::ExportVideoByTemplateRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ExportVideoByTemplateResponse`
        def ExportVideoByTemplate(request)
          body = send_request('ExportVideoByTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVideoByTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用视频智能拆条数据导出视频，将指定的视频拆条片段导出为一个视频。

        # @param request: Request instance for ExportVideoByVideoSegmentationData.
        # @type request: :class:`Tencentcloud::cme::V20191029::ExportVideoByVideoSegmentationDataRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ExportVideoByVideoSegmentationDataResponse`
        def ExportVideoByVideoSegmentationData(request)
          body = send_request('ExportVideoByVideoSegmentationData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVideoByVideoSegmentationDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出视频编辑项目，支持指定输出的模板。

        # @param request: Request instance for ExportVideoEditProject.
        # @type request: :class:`Tencentcloud::cme::V20191029::ExportVideoEditProjectRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ExportVideoEditProjectResponse`
        def ExportVideoEditProject(request)
          body = send_request('ExportVideoEditProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVideoEditProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 平铺分类路径下及其子分类下的所有媒体基础信息。

        # @param request: Request instance for FlattenListMedia.
        # @type request: :class:`Tencentcloud::cme::V20191029::FlattenListMediaRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::FlattenListMediaResponse`
        def FlattenListMedia(request)
          body = send_request('FlattenListMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FlattenListMediaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <li>发起视频智能拆条任务，支持智能生成和平精英集锦、王者荣耀集锦、足球集锦、篮球集锦 、人物集锦、新闻拆条等任务。</li>
        # <li>和平精英集锦和王者荣耀集锦根据击杀场景进行拆条，足球集锦和篮球集锦根据进球场景进行拆条，人物集锦根据人物人脸特征进行拆条，新闻拆条根据导播进行拆条。</li>
        # <li>【本接口内测中，暂不建议使用】</li>

        # @param request: Request instance for GenerateVideoSegmentationSchemeByAi.
        # @type request: :class:`Tencentcloud::cme::V20191029::GenerateVideoSegmentationSchemeByAiRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::GenerateVideoSegmentationSchemeByAiResponse`
        def GenerateVideoSegmentationSchemeByAi(request)
          body = send_request('GenerateVideoSegmentationSchemeByAi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateVideoSegmentationSchemeByAiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资源归属者对目标个人或团队授予目标资源的相应权限。

        # @param request: Request instance for GrantResourceAuthorization.
        # @type request: :class:`Tencentcloud::cme::V20191029::GrantResourceAuthorizationRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::GrantResourceAuthorizationResponse`
        def GrantResourceAuthorization(request)
          body = send_request('GrantResourceAuthorization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GrantResourceAuthorizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对云转推项目进行操作。
        # ### 操作类型<a id="Operation"></a>
        # - `AddInput`（添加输入源），包括：
        # 	- 添加直播拉流输入源，参见 [示例1](#.E7.A4.BA.E4.BE.8B1-.E6.B7.BB.E5.8A.A0.E7.9B.B4.E6.92.AD.E6.8B.89.E6.B5.81.E8.BE.93.E5.85.A5.E6.BA.90)；
        # 	- 添加直播推流输入源，参见 [示例2](#.E7.A4.BA.E4.BE.8B2-.E6.B7.BB.E5.8A.A0.E7.9B.B4.E6.92.AD.E6.8E.A8.E6.B5.81.E8.BE.93.E5.85.A5.E6.BA.90)；
        # 	- 添加点播拉流输入源，参见 [示例3](#.E7.A4.BA.E4.BE.8B3-.E6.B7.BB.E5.8A.A0.E7.82.B9.E6.92.AD.E6.8B.89.E6.B5.81.E8.BE.93.E5.85.A5.E6.BA.90.E4.B8.94.E5.BE.AA.E7.8E.AF.E6.92.AD.E6.94.BE)、[示例4](#.E7.A4.BA.E4.BE.8B4-.E6.B7.BB.E5.8A.A0.E7.82.B9.E6.92.AD.E6.8B.89.E6.B5.81.E8.BE.93.E5.85.A5.E6.BA.90.E4.B8.94.E5.8D.95.E6.AC.A1.E6.92.AD.E6.94.BE)；
        # - `DeleteInput`（删除输入源），参见 [示例5](#.E7.A4.BA.E4.BE.8B5-.E5.88.A0.E9.99.A4.E8.BE.93.E5.85.A5.E6.BA.90)；
        # - `ModifyInput`（修改输入源），参见 [示例6](#.E7.A4.BA.E4.BE.8B6-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.85.A5.E6.BA.90)；
        # - `AddOutput`（ 添加输出源），参见 [示例7](#.E7.A4.BA.E4.BE.8B7-.E6.B7.BB.E5.8A.A0.E8.BE.93.E5.87.BA.E6.BA.90)；
        # - `DeleteOutput`（删除输出源），参见 [示例8](#.E7.A4.BA.E4.BE.8B8-.E5.88.A0.E9.99.A4.E8.BE.93.E5.87.BA.E6.BA.90)；
        # - `ModifyOutput`（修改输出源），参见 [示例9](#.E7.A4.BA.E4.BE.8B9-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.87.BA.E6.BA.90)；
        # - `Start`（开启转推），参见 [示例10](#.E7.A4.BA.E4.BE.8B10-.E5.BC.80.E5.90.AF.E4.BA.91.E8.BD.AC.E6.8E.A8)；
        # - `Stop`（停止转推），参见 [示例11](#.E7.A4.BA.E4.BE.8B11-.E5.81.9C.E6.AD.A2.E4.BA.91.E8.BD.AC.E6.8E.A8)；
        # - `SwitchInput`（切换输入源），参见 [示例12](#.E7.A4.BA.E4.BE.8B12-.E5.88.87.E6.8D.A2.E8.BE.93.E5.85.A5.E6.BA.90)；
        # - `ModifyCurrentStopTime`（修改当前计划结束时间），参见 [示例13](#.E7.A4.BA.E4.BE.8B13-.E4.BF.AE.E6.94.B9.E8.BD.AC.E6.8E.A8.E7.BB.93.E6.9D.9F.E6.97.B6.E9.97.B4)。

        # @param request: Request instance for HandleStreamConnectProject.
        # @type request: :class:`Tencentcloud::cme::V20191029::HandleStreamConnectProjectRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::HandleStreamConnectProjectResponse`
        def HandleStreamConnectProject(request)
          body = send_request('HandleStreamConnectProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = HandleStreamConnectProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将云点播媒资文件导入到云剪媒体资源库。

        # @param request: Request instance for ImportMaterial.
        # @type request: :class:`Tencentcloud::cme::V20191029::ImportMaterialRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ImportMaterialResponse`
        def ImportMaterial(request)
          body = send_request('ImportMaterial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportMaterialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将云点播中的媒资或者用户自有媒资文件添加到媒体库中，跟项目关联，供后续视频编辑使用。目前仅普通编辑项目和智能视频拆条项目有效。

        # @param request: Request instance for ImportMediaToProject.
        # @type request: :class:`Tencentcloud::cme::V20191029::ImportMediaToProjectRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ImportMediaToProjectResponse`
        def ImportMediaToProject(request)
          body = send_request('ImportMediaToProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportMediaToProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        #  浏览当前分类路径下的资源，包括媒体文件和子分类，返回媒资基础信息和分类信息。

        # @param request: Request instance for ListMedia.
        # @type request: :class:`Tencentcloud::cme::V20191029::ListMediaRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ListMediaResponse`
        def ListMedia(request)
          body = send_request('ListMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListMediaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改媒体信息，支持修改媒体名称、分类路径、标签等信息。

        # @param request: Request instance for ModifyMaterial.
        # @type request: :class:`Tencentcloud::cme::V20191029::ModifyMaterialRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ModifyMaterialResponse`
        def ModifyMaterial(request)
          body = send_request('ModifyMaterial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMaterialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云剪编辑项目的信息。

        # @param request: Request instance for ModifyProject.
        # @type request: :class:`Tencentcloud::cme::V20191029::ModifyProjectRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ModifyProjectResponse`
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

        # 修改团队信息，目前支持修改的操作有：
        # <li>修改团队名称。</li>

        # @param request: Request instance for ModifyTeam.
        # @type request: :class:`Tencentcloud::cme::V20191029::ModifyTeamRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ModifyTeamResponse`
        def ModifyTeam(request)
          body = send_request('ModifyTeam', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTeamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改团队成员信息，包括成员备注、角色等。

        # @param request: Request instance for ModifyTeamMember.
        # @type request: :class:`Tencentcloud::cme::V20191029::ModifyTeamMemberRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ModifyTeamMemberResponse`
        def ModifyTeamMember(request)
          body = send_request('ModifyTeamMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTeamMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 移动某一个分类到另外一个分类下，也可用于分类重命名。
        # 如果 SourceClassPath = /素材/视频/NBA，DestinationClassPath = /素材/视频/篮球
        # <li>当 DestinationClassPath 不存在时候，操作结果为重命名 ClassPath；</li>
        # <li>当 DestinationClassPath 存在时候，操作结果为产生新目录 /素材/视频/篮球/NBA</li>

        # @param request: Request instance for MoveClass.
        # @type request: :class:`Tencentcloud::cme::V20191029::MoveClassRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::MoveClassResponse`
        def MoveClass(request)
          body = send_request('MoveClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MoveClassResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 移动资源，支持跨个人或团队移动媒体以及分类。如果填写了Operator，则需要校验用户对媒体和分类资源的访问以及写权限。
        # <li>当原始资源为媒体时，该接口效果为将该媒体移动到目标分类下面；</li>
        # <li>当原始资源为分类时，该接口效果为将原始分类移动到目标分类或者是重命名。</li>
        #  如果 SourceResource.Resource.Id = /素材/视频/NBA，DestinationResource.Resource.Id= /素材/视频/篮球
        # <li>当 DestinationResource.Resource.Id 不存在时候且原始资源与目标资源归属相同，操作结果为重命名原始分类；</li>
        # <li>当 DestinationResource.Resource.Id 存在时候，操作结果为产生新目录 /素材/视频/篮球/NBA</li>

        # @param request: Request instance for MoveResource.
        # @type request: :class:`Tencentcloud::cme::V20191029::MoveResourceRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::MoveResourceResponse`
        def MoveResource(request)
          body = send_request('MoveResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MoveResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口接受制作云回调给客户的事件内容，将其转化为对应的 EventContent 结构，请不要实际调用该接口，只需要将接收到的事件内容直接使用 JSON 解析到 EventContent  即可使用。

        # @param request: Request instance for ParseEvent.
        # @type request: :class:`Tencentcloud::cme::V20191029::ParseEventRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::ParseEventResponse`
        def ParseEvent(request)
          body = send_request('ParseEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ParseEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        #  资源所属实体对目标实体回收目标资源的相应权限，若原本没有相应权限则不产生变更。

        # @param request: Request instance for RevokeResourceAuthorization.
        # @type request: :class:`Tencentcloud::cme::V20191029::RevokeResourceAuthorizationRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::RevokeResourceAuthorizationResponse`
        def RevokeResourceAuthorization(request)
          body = send_request('RevokeResourceAuthorization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevokeResourceAuthorizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据检索条件搜索媒体，返回媒体的基本信息。

        # @param request: Request instance for SearchMaterial.
        # @type request: :class:`Tencentcloud::cme::V20191029::SearchMaterialRequest`
        # @rtype: :class:`Tencentcloud::cme::V20191029::SearchMaterialResponse`
        def SearchMaterial(request)
          body = send_request('SearchMaterial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchMaterialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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