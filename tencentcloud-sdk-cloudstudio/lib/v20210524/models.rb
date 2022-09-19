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

module TencentCloud
  module Cloudstudio
    module V20210524
      # 云主机创建工作空间DTO
      class AgentSpaceDTO < TencentCloud::Common::AbstractModel
        # @param Name: 工作空间名称
        # @type Name: String
        # @param ImageId: 镜像id
        # @type ImageId: Integer
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param RemoteUser: 云主机登录名称
        # @type RemoteUser: String
        # @param RemoteHost: 云主机登录地址
        # @type RemoteHost: String
        # @param RemotePort: 云主机登录端口
        # @type RemotePort: String
        # @param WorkspaceType: 工作空间类型
        # @type WorkspaceType: String
        # @param WorkspaceVersion: 工作空间版本
        # @type WorkspaceVersion: Integer
        # @param WorkspaceResourceDTO: 工作空间资源结构
        # @type WorkspaceResourceDTO: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceResourceDTO`
        # @param Description: 描述
        # @type Description: String

        attr_accessor :Name, :ImageId, :ImageName, :RemoteUser, :RemoteHost, :RemotePort, :WorkspaceType, :WorkspaceVersion, :WorkspaceResourceDTO, :Description
        
        def initialize(name=nil, imageid=nil, imagename=nil, remoteuser=nil, remotehost=nil, remoteport=nil, workspacetype=nil, workspaceversion=nil, workspaceresourcedto=nil, description=nil)
          @Name = name
          @ImageId = imageid
          @ImageName = imagename
          @RemoteUser = remoteuser
          @RemoteHost = remotehost
          @RemotePort = remoteport
          @WorkspaceType = workspacetype
          @WorkspaceVersion = workspaceversion
          @WorkspaceResourceDTO = workspaceresourcedto
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @RemoteUser = params['RemoteUser']
          @RemoteHost = params['RemoteHost']
          @RemotePort = params['RemotePort']
          @WorkspaceType = params['WorkspaceType']
          @WorkspaceVersion = params['WorkspaceVersion']
          unless params['WorkspaceResourceDTO'].nil?
            @WorkspaceResourceDTO = WorkspaceResourceDTO.new
            @WorkspaceResourceDTO.deserialize(params['WorkspaceResourceDTO'])
          end
          @Description = params['Description']
        end
      end

      # CreateCustomizeTemplates请求参数结构体
      class CreateCustomizeTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param UserDefinedTemplateParams: 无
        # @type UserDefinedTemplateParams: :class:`Tencentcloud::Cloudstudio.v20210524.models.UserDefinedTemplateParams`

        attr_accessor :CloudStudioSessionTeam, :UserDefinedTemplateParams
        
        def initialize(cloudstudiosessionteam=nil, userdefinedtemplateparams=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @UserDefinedTemplateParams = userdefinedtemplateparams
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          unless params['UserDefinedTemplateParams'].nil?
            @UserDefinedTemplateParams = UserDefinedTemplateParams.new
            @UserDefinedTemplateParams.deserialize(params['UserDefinedTemplateParams'])
          end
        end
      end

      # CreateCustomizeTemplates返回参数结构体
      class CreateCustomizeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceTemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkspaceTemplateInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkspaceByAgent请求参数结构体
      class CreateWorkspaceByAgentRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 无
        # @type CloudStudioSessionTeam: String
        # @param AgentSpaceDTO: 无
        # @type AgentSpaceDTO: :class:`Tencentcloud::Cloudstudio.v20210524.models.AgentSpaceDTO`

        attr_accessor :CloudStudioSessionTeam, :AgentSpaceDTO
        
        def initialize(cloudstudiosessionteam=nil, agentspacedto=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @AgentSpaceDTO = agentspacedto
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          unless params['AgentSpaceDTO'].nil?
            @AgentSpaceDTO = AgentSpaceDTO.new
            @AgentSpaceDTO.deserialize(params['AgentSpaceDTO'])
          end
        end
      end

      # CreateWorkspaceByAgent返回参数结构体
      class CreateWorkspaceByAgentResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceInfoDTO`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkspaceInfoDTO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkspaceByTemplate请求参数结构体
      class CreateWorkspaceByTemplateRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param TemplateId: 模版ID
        # @type TemplateId: Integer

        attr_accessor :CloudStudioSessionTeam, :TemplateId
        
        def initialize(cloudstudiosessionteam=nil, templateid=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @TemplateId = templateid
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @TemplateId = params['TemplateId']
        end
      end

      # CreateWorkspaceByTemplate返回参数结构体
      class CreateWorkspaceByTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建工作空间返回的信息
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkspaceInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkspaceByVersionControl请求参数结构体
      class CreateWorkspaceByVersionControlRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceDTO: 工作空间结构
        # @type WorkspaceDTO: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceDTO`
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String

        attr_accessor :WorkspaceDTO, :CloudStudioSessionTeam
        
        def initialize(workspacedto=nil, cloudstudiosessionteam=nil)
          @WorkspaceDTO = workspacedto
          @CloudStudioSessionTeam = cloudstudiosessionteam
        end

        def deserialize(params)
          unless params['WorkspaceDTO'].nil?
            @WorkspaceDTO = WorkspaceDTO.new
            @WorkspaceDTO.deserialize(params['WorkspaceDTO'])
          end
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
        end
      end

      # CreateWorkspaceByVersionControl返回参数结构体
      class CreateWorkspaceByVersionControlResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceInfoDTO`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkspaceInfoDTO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 模板的预置参数
      class CustomizeTemplatesPresetsInfo < TencentCloud::Common::AbstractModel
        # @param Tags: 模板tag列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Icons: 模板图标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Icons: Array
        # @param Templates: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Templates: :class:`Tencentcloud::Cloudstudio.v20210524.models.UserDefinedTemplateParams`

        attr_accessor :Tags, :Icons, :Templates
        
        def initialize(tags=nil, icons=nil, templates=nil)
          @Tags = tags
          @Icons = icons
          @Templates = templates
        end

        def deserialize(params)
          @Tags = params['Tags']
          @Icons = params['Icons']
          unless params['Templates'].nil?
            @Templates = UserDefinedTemplateParams.new
            @Templates.deserialize(params['Templates'])
          end
        end
      end

      # DeleteCustomizeTemplatesById请求参数结构体
      class DeleteCustomizeTemplatesByIdRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param Id: 模板ID
        # @type Id: Integer

        attr_accessor :CloudStudioSessionTeam, :Id
        
        def initialize(cloudstudiosessionteam=nil, id=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @Id = id
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @Id = params['Id']
        end
      end

      # DeleteCustomizeTemplatesById返回参数结构体
      class DeleteCustomizeTemplatesByIdResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomizeTemplatesById请求参数结构体
      class DescribeCustomizeTemplatesByIdRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param Id: 模板ID
        # @type Id: Integer

        attr_accessor :CloudStudioSessionTeam, :Id
        
        def initialize(cloudstudiosessionteam=nil, id=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @Id = id
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @Id = params['Id']
        end
      end

      # DescribeCustomizeTemplatesById返回参数结构体
      class DescribeCustomizeTemplatesByIdResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceTemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkspaceTemplateInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomizeTemplatesPresets请求参数结构体
      class DescribeCustomizeTemplatesPresetsRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param SpaceKey: 空间标识
        # @type SpaceKey: String

        attr_accessor :CloudStudioSessionTeam, :SpaceKey
        
        def initialize(cloudstudiosessionteam=nil, spacekey=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @SpaceKey = spacekey
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @SpaceKey = params['SpaceKey']
        end
      end

      # DescribeCustomizeTemplatesPresets返回参数结构体
      class DescribeCustomizeTemplatesPresetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.CustomizeTemplatesPresetsInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CustomizeTemplatesPresetsInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomizeTemplates请求参数结构体
      class DescribeCustomizeTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String

        attr_accessor :CloudStudioSessionTeam
        
        def initialize(cloudstudiosessionteam=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
        end
      end

      # DescribeCustomizeTemplates返回参数结构体
      class DescribeCustomizeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              workspacetemplateinfo_tmp = WorkspaceTemplateInfo.new
              workspacetemplateinfo_tmp.deserialize(i)
              @Data << workspacetemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkspaceEnvList请求参数结构体
      class DescribeWorkspaceEnvListRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String

        attr_accessor :CloudStudioSessionTeam
        
        def initialize(cloudstudiosessionteam=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
        end
      end

      # DescribeWorkspaceEnvList返回参数结构体
      class DescribeWorkspaceEnvListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              imageuserdto_tmp = ImageUserDTO.new
              imageuserdto_tmp.deserialize(i)
              @Data << imageuserdto_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkspaceNameExist请求参数结构体
      class DescribeWorkspaceNameExistRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param Name: 工作空间名称
        # @type Name: String
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: String

        attr_accessor :CloudStudioSessionTeam, :Name, :WorkspaceId
        
        def initialize(cloudstudiosessionteam=nil, name=nil, workspaceid=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @Name = name
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @Name = params['Name']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # DescribeWorkspaceNameExist返回参数结构体
      class DescribeWorkspaceNameExistResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkspaceStatusList请求参数结构体
      class DescribeWorkspaceStatusListRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: xxx
        # @type CloudStudioSessionTeam: String

        attr_accessor :CloudStudioSessionTeam
        
        def initialize(cloudstudiosessionteam=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
        end
      end

      # DescribeWorkspaceStatusList返回参数结构体
      class DescribeWorkspaceStatusListResponse < TencentCloud::Common::AbstractModel
        # @param Data: xxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              workspacestatusinfo_tmp = WorkspaceStatusInfo.new
              workspacestatusinfo_tmp.deserialize(i)
              @Data << workspacestatusinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkspaceStatus请求参数结构体
      class DescribeWorkspaceStatusRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param SpaceKey: 空间标识
        # @type SpaceKey: String

        attr_accessor :CloudStudioSessionTeam, :SpaceKey
        
        def initialize(cloudstudiosessionteam=nil, spacekey=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @SpaceKey = spacekey
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @SpaceKey = params['SpaceKey']
        end
      end

      # DescribeWorkspaceStatus返回参数结构体
      class DescribeWorkspaceStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceStatusInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkspaceStatusInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 可用镜像模板列表
      class ImageUserDTO < TencentCloud::Common::AbstractModel
        # @param Id: 镜像模板ID
        # @type Id: String
        # @param Name: 镜像模板名称
        # @type Name: String
        # @param Tag: Tag时间
        # @type Tag: String
        # @param Description: 描述
        # @type Description: String
        # @param DescriptionCN: 中文描述
        # @type DescriptionCN: String
        # @param IconUrl: 图标地址
        # @type IconUrl: String
        # @param Author: 创建人
        # @type Author: String
        # @param Visible: 访问状态
        # @type Visible: String
        # @param WorkspaceVersion: 版本
        # @type WorkspaceVersion: Integer
        # @param Sort: 分类
        # @type Sort: Integer

        attr_accessor :Id, :Name, :Tag, :Description, :DescriptionCN, :IconUrl, :Author, :Visible, :WorkspaceVersion, :Sort
        
        def initialize(id=nil, name=nil, tag=nil, description=nil, descriptioncn=nil, iconurl=nil, author=nil, visible=nil, workspaceversion=nil, sort=nil)
          @Id = id
          @Name = name
          @Tag = tag
          @Description = description
          @DescriptionCN = descriptioncn
          @IconUrl = iconurl
          @Author = author
          @Visible = visible
          @WorkspaceVersion = workspaceversion
          @Sort = sort
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Tag = params['Tag']
          @Description = params['Description']
          @DescriptionCN = params['DescriptionCN']
          @IconUrl = params['IconUrl']
          @Author = params['Author']
          @Visible = params['Visible']
          @WorkspaceVersion = params['WorkspaceVersion']
          @Sort = params['Sort']
        end
      end

      # ModifyCustomizeTemplateVersionControl请求参数结构体
      class ModifyCustomizeTemplateVersionControlRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param TemplateId: 模版ID
        # @type TemplateId: Integer
        # @param Url: 仓库地址
        # @type Url: String
        # @param Ref: 代码仓库分支/标签
        # @type Ref: String
        # @param RefType: 代码仓库 ref 类型
        # @type RefType: String

        attr_accessor :CloudStudioSessionTeam, :TemplateId, :Url, :Ref, :RefType
        
        def initialize(cloudstudiosessionteam=nil, templateid=nil, url=nil, ref=nil, reftype=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @TemplateId = templateid
          @Url = url
          @Ref = ref
          @RefType = reftype
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @TemplateId = params['TemplateId']
          @Url = params['Url']
          @Ref = params['Ref']
          @RefType = params['RefType']
        end
      end

      # ModifyCustomizeTemplateVersionControl返回参数结构体
      class ModifyCustomizeTemplateVersionControlResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceTemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkspaceTemplateInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCustomizeTemplatesFullById请求参数结构体
      class ModifyCustomizeTemplatesFullByIdRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param Id: 模板ID
        # @type Id: Integer
        # @param UserDefinedTemplateParams: 自定义模板参数
        # @type UserDefinedTemplateParams: :class:`Tencentcloud::Cloudstudio.v20210524.models.UserDefinedTemplateParams`

        attr_accessor :CloudStudioSessionTeam, :Id, :UserDefinedTemplateParams
        
        def initialize(cloudstudiosessionteam=nil, id=nil, userdefinedtemplateparams=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @Id = id
          @UserDefinedTemplateParams = userdefinedtemplateparams
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @Id = params['Id']
          unless params['UserDefinedTemplateParams'].nil?
            @UserDefinedTemplateParams = UserDefinedTemplateParams.new
            @UserDefinedTemplateParams.deserialize(params['UserDefinedTemplateParams'])
          end
        end
      end

      # ModifyCustomizeTemplatesFullById返回参数结构体
      class ModifyCustomizeTemplatesFullByIdResponse < TencentCloud::Common::AbstractModel
        # @param Data: 自定义模板返回值
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceTemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkspaceTemplateInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCustomizeTemplatesPartById请求参数结构体
      class ModifyCustomizeTemplatesPartByIdRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param Id: 模板ID
        # @type Id: Integer
        # @param UserDefinedTemplatePatchedParams: 自定义模板Patched参数
        # @type UserDefinedTemplatePatchedParams: :class:`Tencentcloud::Cloudstudio.v20210524.models.UserDefinedTemplatePatchedParams`

        attr_accessor :CloudStudioSessionTeam, :Id, :UserDefinedTemplatePatchedParams
        
        def initialize(cloudstudiosessionteam=nil, id=nil, userdefinedtemplatepatchedparams=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @Id = id
          @UserDefinedTemplatePatchedParams = userdefinedtemplatepatchedparams
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @Id = params['Id']
          unless params['UserDefinedTemplatePatchedParams'].nil?
            @UserDefinedTemplatePatchedParams = UserDefinedTemplatePatchedParams.new
            @UserDefinedTemplatePatchedParams.deserialize(params['UserDefinedTemplatePatchedParams'])
          end
        end
      end

      # ModifyCustomizeTemplatesPartById返回参数结构体
      class ModifyCustomizeTemplatesPartByIdResponse < TencentCloud::Common::AbstractModel
        # @param Data: 自定义模板返回值
        # @type Data: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceTemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WorkspaceTemplateInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyWorkspaceAttributes请求参数结构体
      class ModifyWorkspaceAttributesRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: Integer
        # @param Name: 工作空间名称
        # @type Name: String
        # @param Description: 工作空间描述
        # @type Description: String
        # @param PriceId: xxx
        # @type PriceId: Integer

        attr_accessor :CloudStudioSessionTeam, :WorkspaceId, :Name, :Description, :PriceId
        
        def initialize(cloudstudiosessionteam=nil, workspaceid=nil, name=nil, description=nil, priceid=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @WorkspaceId = workspaceid
          @Name = name
          @Description = description
          @PriceId = priceid
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @WorkspaceId = params['WorkspaceId']
          @Name = params['Name']
          @Description = params['Description']
          @PriceId = params['PriceId']
        end
      end

      # ModifyWorkspaceAttributes返回参数结构体
      class ModifyWorkspaceAttributesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # RecoverWorkspace请求参数结构体
      class RecoverWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 无
        # @type CloudStudioSessionTeam: String
        # @param SpaceKey: 无
        # @type SpaceKey: String

        attr_accessor :CloudStudioSessionTeam, :SpaceKey
        
        def initialize(cloudstudiosessionteam=nil, spacekey=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @SpaceKey = spacekey
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @SpaceKey = params['SpaceKey']
        end
      end

      # RecoverWorkspace返回参数结构体
      class RecoverWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # RemoveWorkspace请求参数结构体
      class RemoveWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param CloudStudioSessionTeam: 无
        # @type CloudStudioSessionTeam: String
        # @param SpaceKey: 无
        # @type SpaceKey: String
        # @param Force: 是否强制，true或者false
        # @type Force: Boolean

        attr_accessor :CloudStudioSessionTeam, :SpaceKey, :Force
        
        def initialize(cloudstudiosessionteam=nil, spacekey=nil, force=nil)
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @SpaceKey = spacekey
          @Force = force
        end

        def deserialize(params)
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @SpaceKey = params['SpaceKey']
          @Force = params['Force']
        end
      end

      # RemoveWorkspace返回参数结构体
      class RemoveWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # RunWorkspace请求参数结构体
      class RunWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceKey: 空间标识
        # @type SpaceKey: String
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String

        attr_accessor :SpaceKey, :CloudStudioSessionTeam
        
        def initialize(spacekey=nil, cloudstudiosessionteam=nil)
          @SpaceKey = spacekey
          @CloudStudioSessionTeam = cloudstudiosessionteam
        end

        def deserialize(params)
          @SpaceKey = params['SpaceKey']
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
        end
      end

      # RunWorkspace返回参数结构体
      class RunWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # StopWorkspace请求参数结构体
      class StopWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceKey: 空间标识
        # @type SpaceKey: String
        # @param CloudStudioSessionTeam: 用户所属组
        # @type CloudStudioSessionTeam: String
        # @param Force: 是否强制终止，true或者false
        # @type Force: String

        attr_accessor :SpaceKey, :CloudStudioSessionTeam, :Force
        
        def initialize(spacekey=nil, cloudstudiosessionteam=nil, force=nil)
          @SpaceKey = spacekey
          @CloudStudioSessionTeam = cloudstudiosessionteam
          @Force = force
        end

        def deserialize(params)
          @SpaceKey = params['SpaceKey']
          @CloudStudioSessionTeam = params['CloudStudioSessionTeam']
          @Force = params['Force']
        end
      end

      # StopWorkspace返回参数结构体
      class StopWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 用户自定义模板参数
      class UserDefinedTemplateParams < TencentCloud::Common::AbstractModel
        # @param Name: 模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Icon: 模板图标地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Icon: String
        # @param Tags: 模板标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Source: 模板来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Description: 模板描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param VersionControlType: 模板仓库类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlType: String
        # @param VersionControlUrl: 模板地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlUrl: String

        attr_accessor :Name, :Icon, :Tags, :Source, :Description, :VersionControlType, :VersionControlUrl
        
        def initialize(name=nil, icon=nil, tags=nil, source=nil, description=nil, versioncontroltype=nil, versioncontrolurl=nil)
          @Name = name
          @Icon = icon
          @Tags = tags
          @Source = source
          @Description = description
          @VersionControlType = versioncontroltype
          @VersionControlUrl = versioncontrolurl
        end

        def deserialize(params)
          @Name = params['Name']
          @Icon = params['Icon']
          @Tags = params['Tags']
          @Source = params['Source']
          @Description = params['Description']
          @VersionControlType = params['VersionControlType']
          @VersionControlUrl = params['VersionControlUrl']
        end
      end

      # 用户自定义模板Patched参数
      class UserDefinedTemplatePatchedParams < TencentCloud::Common::AbstractModel
        # @param Source: 模板来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Name: 模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Icon: 模板图标地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Icon: String
        # @param Description: 模板描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Tags: 模板标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :Source, :Name, :Icon, :Description, :Tags
        
        def initialize(source=nil, name=nil, icon=nil, description=nil, tags=nil)
          @Source = source
          @Name = name
          @Icon = icon
          @Description = description
          @Tags = tags
        end

        def deserialize(params)
          @Source = params['Source']
          @Name = params['Name']
          @Icon = params['Icon']
          @Description = params['Description']
          @Tags = params['Tags']
        end
      end

      # 用户信息
      class UserInfoRsp < TencentCloud::Common::AbstractModel
        # @param Id: 用户ID
        # @type Id: Integer
        # @param AuthenticationUserInfo: 用户验证信息
        # @type AuthenticationUserInfo: :class:`Tencentcloud::Cloudstudio.v20210524.models.UserSubInfo`
        # @param Avatar: 头像地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avatar: String
        # @param Features: 介绍
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Features: String
        # @param PreviewStatus: 状况
        # @type PreviewStatus: Integer

        attr_accessor :Id, :AuthenticationUserInfo, :Avatar, :Features, :PreviewStatus
        
        def initialize(id=nil, authenticationuserinfo=nil, avatar=nil, features=nil, previewstatus=nil)
          @Id = id
          @AuthenticationUserInfo = authenticationuserinfo
          @Avatar = avatar
          @Features = features
          @PreviewStatus = previewstatus
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['AuthenticationUserInfo'].nil?
            @AuthenticationUserInfo = UserSubInfo.new
            @AuthenticationUserInfo.deserialize(params['AuthenticationUserInfo'])
          end
          @Avatar = params['Avatar']
          @Features = params['Features']
          @PreviewStatus = params['PreviewStatus']
        end
      end

      # 用户验证信息
      class UserSubInfo < TencentCloud::Common::AbstractModel
        # @param Team: 团队名称
        # @type Team: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param NickName: 昵称
        # @type NickName: String
        # @param IsAdmin: 是否为管理员
        # @type IsAdmin: Boolean
        # @param IsTrial: xxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsTrial: Boolean

        attr_accessor :Team, :UserName, :NickName, :IsAdmin, :IsTrial
        
        def initialize(team=nil, username=nil, nickname=nil, isadmin=nil, istrial=nil)
          @Team = team
          @UserName = username
          @NickName = nickname
          @IsAdmin = isadmin
          @IsTrial = istrial
        end

        def deserialize(params)
          @Team = params['Team']
          @UserName = params['UserName']
          @NickName = params['NickName']
          @IsAdmin = params['IsAdmin']
          @IsTrial = params['IsTrial']
        end
      end

      # 工作空间结构
      class WorkspaceDTO < TencentCloud::Common::AbstractModel
        # @param Name: 工作空间名称
        # @type Name: String
        # @param VersionControlType: 代码来源类型
        # @type VersionControlType: String
        # @param ImageId: 镜像id
        # @type ImageId: Integer
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param Description: 描述
        # @type Description: String
        # @param WorkspaceVersion: 工作空间版本
        # @type WorkspaceVersion: Integer
        # @param WorkspaceResourceDTO: 工作空间资源结构
        # @type WorkspaceResourceDTO: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceResourceDTO`
        # @param VersionControlUrl: 代码仓库地址
        # @type VersionControlUrl: String
        # @param VersionControlRef: 代码Ref是分支还是标签
        # @type VersionControlRef: String
        # @param VersionControlRefType: 代码Ref地址
        # @type VersionControlRefType: String
        # @param SnapshotUid: 快照Uid
        # @type SnapshotUid: String
        # @param TemplateId: 模板id
        # @type TemplateId: Integer
        # @param PriceId: 价格id
        # @type PriceId: Integer
        # @param InitializeStatus: 初始化状态
        # @type InitializeStatus: Integer
        # @param VersionControlDesc: 描述
        # @type VersionControlDesc: String

        attr_accessor :Name, :VersionControlType, :ImageId, :ImageName, :Description, :WorkspaceVersion, :WorkspaceResourceDTO, :VersionControlUrl, :VersionControlRef, :VersionControlRefType, :SnapshotUid, :TemplateId, :PriceId, :InitializeStatus, :VersionControlDesc
        
        def initialize(name=nil, versioncontroltype=nil, imageid=nil, imagename=nil, description=nil, workspaceversion=nil, workspaceresourcedto=nil, versioncontrolurl=nil, versioncontrolref=nil, versioncontrolreftype=nil, snapshotuid=nil, templateid=nil, priceid=nil, initializestatus=nil, versioncontroldesc=nil)
          @Name = name
          @VersionControlType = versioncontroltype
          @ImageId = imageid
          @ImageName = imagename
          @Description = description
          @WorkspaceVersion = workspaceversion
          @WorkspaceResourceDTO = workspaceresourcedto
          @VersionControlUrl = versioncontrolurl
          @VersionControlRef = versioncontrolref
          @VersionControlRefType = versioncontrolreftype
          @SnapshotUid = snapshotuid
          @TemplateId = templateid
          @PriceId = priceid
          @InitializeStatus = initializestatus
          @VersionControlDesc = versioncontroldesc
        end

        def deserialize(params)
          @Name = params['Name']
          @VersionControlType = params['VersionControlType']
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @Description = params['Description']
          @WorkspaceVersion = params['WorkspaceVersion']
          unless params['WorkspaceResourceDTO'].nil?
            @WorkspaceResourceDTO = WorkspaceResourceDTO.new
            @WorkspaceResourceDTO.deserialize(params['WorkspaceResourceDTO'])
          end
          @VersionControlUrl = params['VersionControlUrl']
          @VersionControlRef = params['VersionControlRef']
          @VersionControlRefType = params['VersionControlRefType']
          @SnapshotUid = params['SnapshotUid']
          @TemplateId = params['TemplateId']
          @PriceId = params['PriceId']
          @InitializeStatus = params['InitializeStatus']
          @VersionControlDesc = params['VersionControlDesc']
        end
      end

      # 工作空间信息
      class WorkspaceInfo < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: Integer
        # @param SpaceKey: 工作空间标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceKey: String

        attr_accessor :WorkspaceId, :SpaceKey
        
        def initialize(workspaceid=nil, spacekey=nil)
          @WorkspaceId = workspaceid
          @SpaceKey = spacekey
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @SpaceKey = params['SpaceKey']
        end
      end

      # 工作空间基本信息描述
      class WorkspaceInfoDTO < TencentCloud::Common::AbstractModel
        # @param CreateDate: 工作空间创建时间
        # @type CreateDate: String
        # @param SpaceKey: 空间key
        # @type SpaceKey: String
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer

        attr_accessor :CreateDate, :SpaceKey, :WorkspaceId
        
        def initialize(createdate=nil, spacekey=nil, workspaceid=nil)
          @CreateDate = createdate
          @SpaceKey = spacekey
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @CreateDate = params['CreateDate']
          @SpaceKey = params['SpaceKey']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # 工作空间资源结构
      class WorkspaceResourceDTO < TencentCloud::Common::AbstractModel
        # @param CpuCoreNumber: CPU核心数
        # @type CpuCoreNumber: Integer
        # @param NormalMemory: 一般内存
        # @type NormalMemory: Integer
        # @param SystemStorage: 系统存储
        # @type SystemStorage: Integer
        # @param UserStorage: 用户存储
        # @type UserStorage: Integer
        # @param GpuNumber: GPU数
        # @type GpuNumber: Integer
        # @param GpuMemory: GPU内存
        # @type GpuMemory: Integer

        attr_accessor :CpuCoreNumber, :NormalMemory, :SystemStorage, :UserStorage, :GpuNumber, :GpuMemory
        
        def initialize(cpucorenumber=nil, normalmemory=nil, systemstorage=nil, userstorage=nil, gpunumber=nil, gpumemory=nil)
          @CpuCoreNumber = cpucorenumber
          @NormalMemory = normalmemory
          @SystemStorage = systemstorage
          @UserStorage = userstorage
          @GpuNumber = gpunumber
          @GpuMemory = gpumemory
        end

        def deserialize(params)
          @CpuCoreNumber = params['CpuCoreNumber']
          @NormalMemory = params['NormalMemory']
          @SystemStorage = params['SystemStorage']
          @UserStorage = params['UserStorage']
          @GpuNumber = params['GpuNumber']
          @GpuMemory = params['GpuMemory']
        end
      end

      # 用户空间共享信息
      class WorkspaceShareInfo < TencentCloud::Common::AbstractModel
        # @param Status: 共享或不共享状态
        # @type Status: Boolean
        # @param WithMe: 是否与我共享
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WithMe: Boolean
        # @param BeginDate: 开始共享的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginDate: String
        # @param EndDate: 停止共享的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndDate: String
        # @param Users: 停止共享的时间
        # @type Users: Array

        attr_accessor :Status, :WithMe, :BeginDate, :EndDate, :Users
        
        def initialize(status=nil, withme=nil, begindate=nil, enddate=nil, users=nil)
          @Status = status
          @WithMe = withme
          @BeginDate = begindate
          @EndDate = enddate
          @Users = users
        end

        def deserialize(params)
          @Status = params['Status']
          @WithMe = params['WithMe']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              userinforsp_tmp = UserInfoRsp.new
              userinforsp_tmp.deserialize(i)
              @Users << userinforsp_tmp
            end
          end
        end
      end

      # 获取用户工作空间返回信息
      class WorkspaceStatusInfo < TencentCloud::Common::AbstractModel
        # @param Id: 空间ID
        # @type Id: Integer
        # @param Name: 空间名称
        # @type Name: String
        # @param Owner: 所属人
        # @type Owner: :class:`Tencentcloud::Cloudstudio.v20210524.models.UserInfoRsp`
        # @param SpaceKey: 空间标识
        # @type SpaceKey: String
        # @param Status: 状态
        # @type Status: String
        # @param LastOpsDate: 最后操作时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOpsDate: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Share: 共享状态
        # @type Share: :class:`Tencentcloud::Cloudstudio.v20210524.models.WorkspaceShareInfo`
        # @param WorkspaceType: 空间类型
        # @type WorkspaceType: String
        # @param Label: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param WorkspaceVersion: 空间版本
        # @type WorkspaceVersion: Integer
        # @param ImageIcon: 图标地址
        # @type ImageIcon: String
        # @param CreateDate: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String
        # @param VersionControlUrl: 版本控制地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlUrl: String
        # @param VersionControlDesc: 版本控制描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlDesc: String
        # @param VersionControlRef: 版本控制引用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlRef: String
        # @param VersionControlRefType: 版本控制引用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlRefType: String
        # @param VersionControlType: 版本控制类型
        # @type VersionControlType: String
        # @param TemplateId: 模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: Integer
        # @param SnapshotUid: 快照ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotUid: String
        # @param SpecDesc: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecDesc: String
        # @param Cpu: CPU数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Memory: 内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer

        attr_accessor :Id, :Name, :Owner, :SpaceKey, :Status, :LastOpsDate, :Description, :Share, :WorkspaceType, :Label, :WorkspaceVersion, :ImageIcon, :CreateDate, :VersionControlUrl, :VersionControlDesc, :VersionControlRef, :VersionControlRefType, :VersionControlType, :TemplateId, :SnapshotUid, :SpecDesc, :Cpu, :Memory
        
        def initialize(id=nil, name=nil, owner=nil, spacekey=nil, status=nil, lastopsdate=nil, description=nil, share=nil, workspacetype=nil, label=nil, workspaceversion=nil, imageicon=nil, createdate=nil, versioncontrolurl=nil, versioncontroldesc=nil, versioncontrolref=nil, versioncontrolreftype=nil, versioncontroltype=nil, templateid=nil, snapshotuid=nil, specdesc=nil, cpu=nil, memory=nil)
          @Id = id
          @Name = name
          @Owner = owner
          @SpaceKey = spacekey
          @Status = status
          @LastOpsDate = lastopsdate
          @Description = description
          @Share = share
          @WorkspaceType = workspacetype
          @Label = label
          @WorkspaceVersion = workspaceversion
          @ImageIcon = imageicon
          @CreateDate = createdate
          @VersionControlUrl = versioncontrolurl
          @VersionControlDesc = versioncontroldesc
          @VersionControlRef = versioncontrolref
          @VersionControlRefType = versioncontrolreftype
          @VersionControlType = versioncontroltype
          @TemplateId = templateid
          @SnapshotUid = snapshotuid
          @SpecDesc = specdesc
          @Cpu = cpu
          @Memory = memory
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          unless params['Owner'].nil?
            @Owner = UserInfoRsp.new
            @Owner.deserialize(params['Owner'])
          end
          @SpaceKey = params['SpaceKey']
          @Status = params['Status']
          @LastOpsDate = params['LastOpsDate']
          @Description = params['Description']
          unless params['Share'].nil?
            @Share = WorkspaceShareInfo.new
            @Share.deserialize(params['Share'])
          end
          @WorkspaceType = params['WorkspaceType']
          @Label = params['Label']
          @WorkspaceVersion = params['WorkspaceVersion']
          @ImageIcon = params['ImageIcon']
          @CreateDate = params['CreateDate']
          @VersionControlUrl = params['VersionControlUrl']
          @VersionControlDesc = params['VersionControlDesc']
          @VersionControlRef = params['VersionControlRef']
          @VersionControlRefType = params['VersionControlRefType']
          @VersionControlType = params['VersionControlType']
          @TemplateId = params['TemplateId']
          @SnapshotUid = params['SnapshotUid']
          @SpecDesc = params['SpecDesc']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
        end
      end

      # 工作空间模板信息
      class WorkspaceTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Id: 模板ID
        # @type Id: Integer
        # @param Category: 模板分类
        # @type Category: String
        # @param Name: 模板名称
        # @type Name: String
        # @param Description: 模板描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param DescriptionEN: 中文描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DescriptionEN: String
        # @param Tags: 模板标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: String
        # @param Icon: 模板图标地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Icon: String
        # @param VersionControlType: 默认仓库类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlType: String
        # @param VersionControlUrl: 默认仓库地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlUrl: String
        # @param VersionControlDesc: 默认仓库描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlDesc: String
        # @param VersionControlOwner: 默认仓库所属人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlOwner: String
        # @param VersionControlRef: 默认仓库引用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlRef: String
        # @param VersionControlRefType: 默认仓库引用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlRefType: String
        # @param UserVersionControlUrl: 用户自定义仓库地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserVersionControlUrl: String
        # @param UserVersionControlType: 用户自定义仓库类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserVersionControlType: String
        # @param UserVersionControlRef: 用户自定义仓库引用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserVersionControlRef: String
        # @param UserVersionControlRefType: 用户自定义仓库引用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserVersionControlRefType: String
        # @param DevFile: xxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevFile: String
        # @param PluginFile: xxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginFile: String
        # @param PrebuildFile: xxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrebuildFile: String
        # @param Marked: 是否标记
        # @type Marked: Boolean
        # @param MarkAt: 标记状态
        # @type MarkAt: Integer
        # @param CreateDate: 创建时间
        # @type CreateDate: String
        # @param LastModified: 最后修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModified: String
        # @param Sort: 编号
        # @type Sort: Integer
        # @param SnapshotUid: xxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotUid: String
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: Integer
        # @param Author: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Author: String
        # @param Me: 是否属于当前用户
        # @type Me: Boolean
        # @param AuthorAvatar: xxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorAvatar: String

        attr_accessor :Id, :Category, :Name, :Description, :DescriptionEN, :Tags, :Icon, :VersionControlType, :VersionControlUrl, :VersionControlDesc, :VersionControlOwner, :VersionControlRef, :VersionControlRefType, :UserVersionControlUrl, :UserVersionControlType, :UserVersionControlRef, :UserVersionControlRefType, :DevFile, :PluginFile, :PrebuildFile, :Marked, :MarkAt, :CreateDate, :LastModified, :Sort, :SnapshotUid, :UserId, :Author, :Me, :AuthorAvatar
        
        def initialize(id=nil, category=nil, name=nil, description=nil, descriptionen=nil, tags=nil, icon=nil, versioncontroltype=nil, versioncontrolurl=nil, versioncontroldesc=nil, versioncontrolowner=nil, versioncontrolref=nil, versioncontrolreftype=nil, userversioncontrolurl=nil, userversioncontroltype=nil, userversioncontrolref=nil, userversioncontrolreftype=nil, devfile=nil, pluginfile=nil, prebuildfile=nil, marked=nil, markat=nil, createdate=nil, lastmodified=nil, sort=nil, snapshotuid=nil, userid=nil, author=nil, me=nil, authoravatar=nil)
          @Id = id
          @Category = category
          @Name = name
          @Description = description
          @DescriptionEN = descriptionen
          @Tags = tags
          @Icon = icon
          @VersionControlType = versioncontroltype
          @VersionControlUrl = versioncontrolurl
          @VersionControlDesc = versioncontroldesc
          @VersionControlOwner = versioncontrolowner
          @VersionControlRef = versioncontrolref
          @VersionControlRefType = versioncontrolreftype
          @UserVersionControlUrl = userversioncontrolurl
          @UserVersionControlType = userversioncontroltype
          @UserVersionControlRef = userversioncontrolref
          @UserVersionControlRefType = userversioncontrolreftype
          @DevFile = devfile
          @PluginFile = pluginfile
          @PrebuildFile = prebuildfile
          @Marked = marked
          @MarkAt = markat
          @CreateDate = createdate
          @LastModified = lastmodified
          @Sort = sort
          @SnapshotUid = snapshotuid
          @UserId = userid
          @Author = author
          @Me = me
          @AuthorAvatar = authoravatar
        end

        def deserialize(params)
          @Id = params['Id']
          @Category = params['Category']
          @Name = params['Name']
          @Description = params['Description']
          @DescriptionEN = params['DescriptionEN']
          @Tags = params['Tags']
          @Icon = params['Icon']
          @VersionControlType = params['VersionControlType']
          @VersionControlUrl = params['VersionControlUrl']
          @VersionControlDesc = params['VersionControlDesc']
          @VersionControlOwner = params['VersionControlOwner']
          @VersionControlRef = params['VersionControlRef']
          @VersionControlRefType = params['VersionControlRefType']
          @UserVersionControlUrl = params['UserVersionControlUrl']
          @UserVersionControlType = params['UserVersionControlType']
          @UserVersionControlRef = params['UserVersionControlRef']
          @UserVersionControlRefType = params['UserVersionControlRefType']
          @DevFile = params['DevFile']
          @PluginFile = params['PluginFile']
          @PrebuildFile = params['PrebuildFile']
          @Marked = params['Marked']
          @MarkAt = params['MarkAt']
          @CreateDate = params['CreateDate']
          @LastModified = params['LastModified']
          @Sort = params['Sort']
          @SnapshotUid = params['SnapshotUid']
          @UserId = params['UserId']
          @Author = params['Author']
          @Me = params['Me']
          @AuthorAvatar = params['AuthorAvatar']
        end
      end

    end
  end
end

