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
        @@api_version = '2019-10-29'
        @@endpoint = 'cme.tencentcloudapi.com'
        @@sdk_version = 'CME_' + File.read(File.expand_path('../VERSION', __dir__)).strip


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

        # 新增分类，用于管理素材。
        # <li>分类层数不能超过10；</li>
        # <li>子分类数不能超过10。</li>

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

        #  创建素材链接或分类路径链接，将源资源信息链接到目标。

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

        # 创建云剪的编辑项目，支持创建视频剪辑及直播剪辑两大类项目。

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

        # 根据素材 Id 删除素材。

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

        # 根据素材 Id 批量获取素材详情。

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

        # 获取共享空间。当实体A对实体B授权某资源以后，实体B的共享空间就会增加实体A。

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

        # 获取指定团队的信息。

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

        # 使用在线编辑轨道数据直接导出视频。

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

        # 平铺分类路径下及其子分类下的所有素材。

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

        # 资源所属实体对目标实体授予目标资源的相应权限。

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

        # 将云点播媒资文件导入到云剪素材库。

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

        # 将云点播中的媒资添加到素材库中，供后续视频编辑使用。

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

        #  浏览当前分类路径下的资源，包括素材和子分类。

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

        # 修改素材信息，支持修改素材名称、分类路径、标签等信息。

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
        # <li>如果 SourceClassPath = /素材/视频/NBA，DestinationClassPath = /素材/视频/篮球，当 DestinationClassPath 不存在时候，操作结果为重命名 ClassPath，如果 DestinationClassPath 存在时候，操作结果为产生新目录 /素材/视频/篮球/NBA。</li>

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

        # 根据检索条件搜索素材，返回素材的基本信息。

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