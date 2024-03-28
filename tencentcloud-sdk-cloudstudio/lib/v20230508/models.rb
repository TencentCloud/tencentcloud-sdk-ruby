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
    module V20230508
      # CreateWorkspace请求参数结构体
      class CreateWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 工作空间名称, 长度限制 2~64
        # @type Name: String
        # @param Description: 工作空间描述, 长度限制 0~255
        # @type Description: String
        # @param Specs: 工作空间规格。Standard: 2C4G, Calculation: 4C8G, Profession: 8C16G. 默认是 Standard。
        # @type Specs: String
        # @param Image: 工作空间基础镜像名称, 默认会使用 All In One 镜像, 长度限制 1~255
        # @type Image: String
        # @param Repository: Git 仓库. 工作空间启动时会自动克隆该仓库
        # @type Repository: :class:`Tencentcloud::Cloudstudio.v20230508.models.GitRepository`
        # @param Envs: 环境变量. 会被注入到工作空间中
        # @type Envs: Array
        # @param Extensions: 预装插件. 工作空间启动时, 会自动安装这些插件。长度限制: 0~10
        # @type Extensions: Array
        # @param Lifecycle: 工作空间生命周期钩子.  分为三个阶段 init, start, destroy. 分别表示工作空间数据初始化阶段, 工作空间启动阶段, 工作空间关闭阶段.  用户可以自定义 shell 命令.
        # @type Lifecycle: :class:`Tencentcloud::Cloudstudio.v20230508.models.LifeCycle`
        # @param AppId: 应用名称
        # @type AppId: Integer
        # @param Uin: 用户UIN
        # @type Uin: String
        # @param UniqVpcId: VPCID
        # @type UniqVpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String

        attr_accessor :Name, :Description, :Specs, :Image, :Repository, :Envs, :Extensions, :Lifecycle, :AppId, :Uin, :UniqVpcId, :SubnetId

        def initialize(name=nil, description=nil, specs=nil, image=nil, repository=nil, envs=nil, extensions=nil, lifecycle=nil, appid=nil, uin=nil, uniqvpcid=nil, subnetid=nil)
          @Name = name
          @Description = description
          @Specs = specs
          @Image = image
          @Repository = repository
          @Envs = envs
          @Extensions = extensions
          @Lifecycle = lifecycle
          @AppId = appid
          @Uin = uin
          @UniqVpcId = uniqvpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Specs = params['Specs']
          @Image = params['Image']
          unless params['Repository'].nil?
            @Repository = GitRepository.new
            @Repository.deserialize(params['Repository'])
          end
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              env_tmp = Env.new
              env_tmp.deserialize(i)
              @Envs << env_tmp
            end
          end
          @Extensions = params['Extensions']
          unless params['Lifecycle'].nil?
            @Lifecycle = LifeCycle.new
            @Lifecycle.deserialize(params['Lifecycle'])
          end
          @AppId = params['AppId']
          @Uin = params['Uin']
          @UniqVpcId = params['UniqVpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # CreateWorkspace返回参数结构体
      class CreateWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param SpaceKey: 工作空间 SpaceKey
        # @type SpaceKey: String
        # @param Name: 工作空间名称
        # @type Name: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpaceKey, :Name, :RequestId

        def initialize(spacekey=nil, name=nil, requestid=nil)
          @SpaceKey = spacekey
          @Name = name
          @RequestId = requestid
        end

        def deserialize(params)
          @SpaceKey = params['SpaceKey']
          @Name = params['Name']
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkspaceToken请求参数结构体
      class CreateWorkspaceTokenRequest < TencentCloud::Common::AbstractModel
        # @param SpaceKey: 工作空间 SpaceKey
        # @type SpaceKey: String
        # @param TokenExpiredLimitSec: token过期时间，单位是秒，默认 3600
        # @type TokenExpiredLimitSec: Integer
        # @param Policies: token 授权策略，可选值为 workspace-run-only, all。默认为 all
        # @type Policies: Array

        attr_accessor :SpaceKey, :TokenExpiredLimitSec, :Policies

        def initialize(spacekey=nil, tokenexpiredlimitsec=nil, policies=nil)
          @SpaceKey = spacekey
          @TokenExpiredLimitSec = tokenexpiredlimitsec
          @Policies = policies
        end

        def deserialize(params)
          @SpaceKey = params['SpaceKey']
          @TokenExpiredLimitSec = params['TokenExpiredLimitSec']
          @Policies = params['Policies']
        end
      end

      # CreateWorkspaceToken返回参数结构体
      class CreateWorkspaceTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: 访问工作空间临时凭证
        # @type Token: String
        # @param ExpiredTime: token 过期时间
        # @type ExpiredTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :ExpiredTime, :RequestId

        def initialize(token=nil, expiredtime=nil, requestid=nil)
          @Token = token
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @ExpiredTime = params['ExpiredTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfig请求参数结构体
      class DescribeConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 配置名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DescribeConfig返回参数结构体
      class DescribeConfigResponse < TencentCloud::Common::AbstractModel
        # @param Data: 配置值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImages请求参数结构体
      class DescribeImagesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeImages返回参数结构体
      class DescribeImagesResponse < TencentCloud::Common::AbstractModel
        # @param Images: 镜像列表
        # @type Images: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Images, :RequestId

        def initialize(images=nil, requestid=nil)
          @Images = images
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              image_tmp = Image.new
              image_tmp.deserialize(i)
              @Images << image_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkspaces请求参数结构体
      class DescribeWorkspacesRequest < TencentCloud::Common::AbstractModel
        # @param Name: 工作空间名称过滤条件
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DescribeWorkspaces返回参数结构体
      class DescribeWorkspacesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 工作空间列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 环境变量
      class Env < TencentCloud::Common::AbstractModel
        # @param Name: 环境变量 key
        # @type Name: String
        # @param Value: 环境变量 value
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # Git 仓库
      class GitRepository < TencentCloud::Common::AbstractModel
        # @param Url: Git 仓库地址
        # @type Url: String
        # @param Branch: Git 仓库分支名或 Tag 名
        # @type Branch: String

        attr_accessor :Url, :Branch

        def initialize(url=nil, branch=nil)
          @Url = url
          @Branch = branch
        end

        def deserialize(params)
          @Url = params['Url']
          @Branch = params['Branch']
        end
      end

      # 基础镜像
      class Image < TencentCloud::Common::AbstractModel
        # @param Name: 镜像名称
        # @type Name: String
        # @param Repository: 镜像仓库
        # @type Repository: String
        # @param Tags: tag 列表
        # @type Tags: Array

        attr_accessor :Name, :Repository, :Tags

        def initialize(name=nil, repository=nil, tags=nil)
          @Name = name
          @Repository = repository
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @Repository = params['Repository']
          @Tags = params['Tags']
        end
      end

      # 工作空间生命周期自动执行脚本
      class LifeCycle < TencentCloud::Common::AbstractModel
        # @param Init: 工作空间首次初始化时执行
        # @type Init: Array
        # @param Start: 每次工作空间启动时执行
        # @type Start: Array
        # @param Destroy: 每次工作空间关闭时执行
        # @type Destroy: Array

        attr_accessor :Init, :Start, :Destroy

        def initialize(init=nil, start=nil, destroy=nil)
          @Init = init
          @Start = start
          @Destroy = destroy
        end

        def deserialize(params)
          unless params['Init'].nil?
            @Init = []
            params['Init'].each do |i|
              lifecyclecommand_tmp = LifeCycleCommand.new
              lifecyclecommand_tmp.deserialize(i)
              @Init << lifecyclecommand_tmp
            end
          end
          unless params['Start'].nil?
            @Start = []
            params['Start'].each do |i|
              lifecyclecommand_tmp = LifeCycleCommand.new
              lifecyclecommand_tmp.deserialize(i)
              @Start << lifecyclecommand_tmp
            end
          end
          unless params['Destroy'].nil?
            @Destroy = []
            params['Destroy'].each do |i|
              lifecyclecommand_tmp = LifeCycleCommand.new
              lifecyclecommand_tmp.deserialize(i)
              @Destroy << lifecyclecommand_tmp
            end
          end
        end
      end

      # 工作空间生命周期执行指令
      class LifeCycleCommand < TencentCloud::Common::AbstractModel
        # @param Name: 指令描述
        # @type Name: String
        # @param Command: 具体命令
        # @type Command: String

        attr_accessor :Name, :Command

        def initialize(name=nil, command=nil)
          @Name = name
          @Command = command
        end

        def deserialize(params)
          @Name = params['Name']
          @Command = params['Command']
        end
      end

      # ModifyWorkspace请求参数结构体
      class ModifyWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceKey: 工作空间 SpaceKey. 更新该工作空间的属性
        # @type SpaceKey: String
        # @param Name: 工作空间名称
        # @type Name: String
        # @param Description: 工作空间描述
        # @type Description: String
        # @param Specs: 工作空间规格。STANDARD: 2C4G, CALCULATION: 4C8G, PROFESSION: 8C16G. 默认是 STANDARD。
        # @type Specs: String
        # @param Envs: 环境变量. 会被注入到工作空间中
        # @type Envs: Array
        # @param Extensions: 预装插件. 工作空间启动时, 会自动安装这些插件
        # @type Extensions: Array
        # @param Lifecycle: 工作空间生命周期钩子.  分为三个阶段 init, start, destroy. 分别表示工作空间数据初始化阶段, 工作空间启动阶段, 工作空间关闭阶段.  用户可以自定义 shell 命令.
        # @type Lifecycle: :class:`Tencentcloud::Cloudstudio.v20230508.models.LifeCycle`

        attr_accessor :SpaceKey, :Name, :Description, :Specs, :Envs, :Extensions, :Lifecycle

        def initialize(spacekey=nil, name=nil, description=nil, specs=nil, envs=nil, extensions=nil, lifecycle=nil)
          @SpaceKey = spacekey
          @Name = name
          @Description = description
          @Specs = specs
          @Envs = envs
          @Extensions = extensions
          @Lifecycle = lifecycle
        end

        def deserialize(params)
          @SpaceKey = params['SpaceKey']
          @Name = params['Name']
          @Description = params['Description']
          @Specs = params['Specs']
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              env_tmp = Env.new
              env_tmp.deserialize(i)
              @Envs << env_tmp
            end
          end
          @Extensions = params['Extensions']
          unless params['Lifecycle'].nil?
            @Lifecycle = LifeCycle.new
            @Lifecycle.deserialize(params['Lifecycle'])
          end
        end
      end

      # ModifyWorkspace返回参数结构体
      class ModifyWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param SpaceKey: 工作空间 SpaceKey
        # @type SpaceKey: String

        attr_accessor :SpaceKey

        def initialize(spacekey=nil)
          @SpaceKey = spacekey
        end

        def deserialize(params)
          @SpaceKey = params['SpaceKey']
        end
      end

      # RemoveWorkspace返回参数结构体
      class RemoveWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param SpaceKey: 工作空间 SpaceKey
        # @type SpaceKey: String

        attr_accessor :SpaceKey

        def initialize(spacekey=nil)
          @SpaceKey = spacekey
        end

        def deserialize(params)
          @SpaceKey = params['SpaceKey']
        end
      end

      # RunWorkspace返回参数结构体
      class RunWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param SpaceKey: 工作空间 SpaceKey
        # @type SpaceKey: String

        attr_accessor :SpaceKey

        def initialize(spacekey=nil)
          @SpaceKey = spacekey
        end

        def deserialize(params)
          @SpaceKey = params['SpaceKey']
        end
      end

      # StopWorkspace返回参数结构体
      class StopWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 获取用户工作空间返回信息
      class WorkspaceStatusInfo < TencentCloud::Common::AbstractModel
        # @param Id: 工作空间 ID
        # @type Id: Integer
        # @param Name: 工作空间名称
        # @type Name: String
        # @param SpaceKey: 工作空间标识
        # @type SpaceKey: String
        # @param Status: 工作空间状态
        # @type Status: String
        # @param Cpu: CPU数量
        # @type Cpu: Integer
        # @param Memory: 内存
        # @type Memory: Integer
        # @param Icon: 工作空间图标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Icon: String
        # @param StatusReason: 工作空间状态, 异常原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusReason: String
        # @param Description: 工作空间描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param WorkspaceType: 工作空间类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceType: String
        # @param VersionControlUrl: Git 仓库 HTTPS 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlUrl: String
        # @param VersionControlRef: Git 仓库引用。指定分支使用 /refs/heads/{分支名}, 指定 Tag 用 /refs/tags/{Tag名}
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionControlRef: String
        # @param LastOpsDate: 最后操作时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOpsDate: String
        # @param CreateDate: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String

        attr_accessor :Id, :Name, :SpaceKey, :Status, :Cpu, :Memory, :Icon, :StatusReason, :Description, :WorkspaceType, :VersionControlUrl, :VersionControlRef, :LastOpsDate, :CreateDate

        def initialize(id=nil, name=nil, spacekey=nil, status=nil, cpu=nil, memory=nil, icon=nil, statusreason=nil, description=nil, workspacetype=nil, versioncontrolurl=nil, versioncontrolref=nil, lastopsdate=nil, createdate=nil)
          @Id = id
          @Name = name
          @SpaceKey = spacekey
          @Status = status
          @Cpu = cpu
          @Memory = memory
          @Icon = icon
          @StatusReason = statusreason
          @Description = description
          @WorkspaceType = workspacetype
          @VersionControlUrl = versioncontrolurl
          @VersionControlRef = versioncontrolref
          @LastOpsDate = lastopsdate
          @CreateDate = createdate
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @SpaceKey = params['SpaceKey']
          @Status = params['Status']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Icon = params['Icon']
          @StatusReason = params['StatusReason']
          @Description = params['Description']
          @WorkspaceType = params['WorkspaceType']
          @VersionControlUrl = params['VersionControlUrl']
          @VersionControlRef = params['VersionControlRef']
          @LastOpsDate = params['LastOpsDate']
          @CreateDate = params['CreateDate']
        end
      end

    end
  end
end

