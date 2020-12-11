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
  module Cme
    module V20191029
      # 添加的团队成员信息
      class AddMemberInfo < TencentCloud::Common::AbstractModel
        # @param MemberId: 团队成员 ID。
        # @type MemberId: String
        # @param Remark: 团队成员备注。
        # @type Remark: String

        attr_accessor :MemberId, :Remark
        
        def initialize(memberid=nil, remark=nil)
          @MemberId = memberid
          @Remark = remark
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @Remark = params['Remark']
        end
      end

      # AddTeamMember请求参数结构体
      class AddTeamMemberRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TeamId: 团队 ID。
        # @type TeamId: String
        # @param TeamMembers: 要添加的成员列表，一次最多添加30个成员。
        # @type TeamMembers: Array
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :TeamId, :TeamMembers, :Operator
        
        def initialize(platform=nil, teamid=nil, teammembers=nil, operator=nil)
          @Platform = platform
          @TeamId = teamid
          @TeamMembers = teammembers
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TeamId = params['TeamId']
          @TeamMembers = params['TeamMembers']
          @Operator = params['Operator']
        end
      end

      # AddTeamMember返回参数结构体
      class AddTeamMemberResponse < TencentCloud::Common::AbstractModel
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

      # 音频素材信息
      class AudioMaterial < TencentCloud::Common::AbstractModel
        # @param MetaData: 素材元信息。
        # @type MetaData: :class:`Tencentcloud::Cme.v20191029.models.MediaMetaData`
        # @param MaterialUrl: 素材媒体文件的播放 URL 地址。
        # @type MaterialUrl: String
        # @param CoverUrl: 素材媒体文件的封面图片地址。
        # @type CoverUrl: String
        # @param MaterialStatus: 素材状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaterialStatus: :class:`Tencentcloud::Cme.v20191029.models.MaterialStatus`
        # @param OriginalUrl: 素材媒体文件的原始 URL 地址。
        # @type OriginalUrl: String
        # @param VodFileId: 云点播媒资 FileId。
        # @type VodFileId: String

        attr_accessor :MetaData, :MaterialUrl, :CoverUrl, :MaterialStatus, :OriginalUrl, :VodFileId
        
        def initialize(metadata=nil, materialurl=nil, coverurl=nil, materialstatus=nil, originalurl=nil, vodfileid=nil)
          @MetaData = metadata
          @MaterialUrl = materialurl
          @CoverUrl = coverurl
          @MaterialStatus = materialstatus
          @OriginalUrl = originalurl
          @VodFileId = vodfileid
        end

        def deserialize(params)
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params[MetaData])
          end
          @MaterialUrl = params['MaterialUrl']
          @CoverUrl = params['CoverUrl']
          unless params['MaterialStatus'].nil?
            @MaterialStatus = MaterialStatus.new.deserialize(params[MaterialStatus])
          end
          @OriginalUrl = params['OriginalUrl']
          @VodFileId = params['VodFileId']
        end
      end

      # 音频流信息。
      class AudioStreamInfo < TencentCloud::Common::AbstractModel
        # @param Bitrate: 码率，单位：bps。
        # @type Bitrate: Integer
        # @param SamplingRate: 采样率，单位：hz。
        # @type SamplingRate: Integer
        # @param Codec: 编码格式。
        # @type Codec: String

        attr_accessor :Bitrate, :SamplingRate, :Codec
        
        def initialize(bitrate=nil, samplingrate=nil, codec=nil)
          @Bitrate = bitrate
          @SamplingRate = samplingrate
          @Codec = codec
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @SamplingRate = params['SamplingRate']
          @Codec = params['Codec']
        end
      end

      # 资源权限信息
      class AuthorizationInfo < TencentCloud::Common::AbstractModel
        # @param Authorizee: 被授权者实体。
        # @type Authorizee: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param PermissionSet: 详细授权值。 取值有：
        # <li>R：可读，可以浏览素材，但不能使用该素材（将其添加到 Project），或复制到自己的媒资库中</li>
        # <li>X：可用，可以使用该素材（将其添加到 Project），但不能将其复制到自己的媒资库中，意味着被授权者无法将该资源进一步扩散给其他个人或团队。</li>
        # <li>C：可复制，既可以使用该素材（将其添加到 Project），也可以将其复制到自己的媒资库中。</li>
        # <li>W：可修改、删除媒资。</li>
        # @type PermissionSet: Array

        attr_accessor :Authorizee, :PermissionSet
        
        def initialize(authorizee=nil, permissionset=nil)
          @Authorizee = authorizee
          @PermissionSet = permissionset
        end

        def deserialize(params)
          unless params['Authorizee'].nil?
            @Authorizee = Entity.new.deserialize(params[Authorizee])
          end
          @PermissionSet = params['PermissionSet']
        end
      end

      # 授权者
      class Authorizer < TencentCloud::Common::AbstractModel
        # @param Type: 授权者类型，取值有：
        # <li>PERSON：个人。</li>
        # <li>TEAM：团队。</li>
        # @type Type: String
        # @param Id: Id，当 Type=PERSON，取值为用户 Id。当Type=TEAM，取值为团队 ID。
        # @type Id: String

        attr_accessor :Type, :Id
        
        def initialize(type=nil, id=nil)
          @Type = type
          @Id = id
        end

        def deserialize(params)
          @Type = params['Type']
          @Id = params['Id']
        end
      end

      # 云剪导出信息。
      class CMEExportInfo < TencentCloud::Common::AbstractModel
        # @param Owner: 导出的归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Name: 导出的素材名称，不得超过30个字符。
        # @type Name: String
        # @param Description: 导出的素材信息，不得超过50个字符。
        # @type Description: String
        # @param ClassPath: 导出的素材分类路径，长度不能超过15字符。
        # @type ClassPath: String
        # @param TagSet: 导出的素材标签，单个标签不得超过10个字符。
        # @type TagSet: Array

        attr_accessor :Owner, :Name, :Description, :ClassPath, :TagSet
        
        def initialize(owner=nil, name=nil, description=nil, classpath=nil, tagset=nil)
          @Owner = owner
          @Name = name
          @Description = description
          @ClassPath = classpath
          @TagSet = tagset
        end

        def deserialize(params)
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Name = params['Name']
          @Description = params['Description']
          @ClassPath = params['ClassPath']
          @TagSet = params['TagSet']
        end
      end

      # 分类信息
      class ClassInfo < TencentCloud::Common::AbstractModel
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param ClassPath: 分类路径。
        # @type ClassPath: String

        attr_accessor :Owner, :ClassPath
        
        def initialize(owner=nil, classpath=nil)
          @Owner = owner
          @ClassPath = classpath
        end

        def deserialize(params)
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @ClassPath = params['ClassPath']
        end
      end

      # CreateClass请求参数结构体
      class CreateClassRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param ClassPath: 分类路径。
        # @type ClassPath: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Owner, :ClassPath, :Operator
        
        def initialize(platform=nil, owner=nil, classpath=nil, operator=nil)
          @Platform = platform
          @Owner = owner
          @ClassPath = classpath
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @ClassPath = params['ClassPath']
          @Operator = params['Operator']
        end
      end

      # CreateClass返回参数结构体
      class CreateClassResponse < TencentCloud::Common::AbstractModel
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

      # CreateLink请求参数结构体
      class CreateLinkRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Type: 链接类型，取值有:
        # <li>CLASS: 分类链接；</li>
        # <li> MATERIAL：素材链接。</li>
        # @type Type: String
        # @param Name: 链接名称，不能超过30个字符。
        # @type Name: String
        # @param Owner: 链接归属实体。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param DestinationId: 目标资源Id。取值：
        # <li>当 Type 为 MATERIAL 时填素材 ID；</li>
        # <li>当 Type 为 CLASS 时填写分类路径。</li>
        # @type DestinationId: String
        # @param DestinationOwner: 目标资源归属者。
        # @type DestinationOwner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param ClassPath: 链接的分类路径，如填"/a/b"则代表链接属于该分类路径，不填则默认为根路径。
        # @type ClassPath: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Type, :Name, :Owner, :DestinationId, :DestinationOwner, :ClassPath, :Operator
        
        def initialize(platform=nil, type=nil, name=nil, owner=nil, destinationid=nil, destinationowner=nil, classpath=nil, operator=nil)
          @Platform = platform
          @Type = type
          @Name = name
          @Owner = owner
          @DestinationId = destinationid
          @DestinationOwner = destinationowner
          @ClassPath = classpath
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Type = params['Type']
          @Name = params['Name']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @DestinationId = params['DestinationId']
          unless params['DestinationOwner'].nil?
            @DestinationOwner = Entity.new.deserialize(params[DestinationOwner])
          end
          @ClassPath = params['ClassPath']
          @Operator = params['Operator']
        end
      end

      # CreateLink返回参数结构体
      class CreateLinkResponse < TencentCloud::Common::AbstractModel
        # @param MaterialId: 新建链接的素材 Id。
        # @type MaterialId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaterialId, :RequestId
        
        def initialize(materialid=nil, requestid=nil)
          @MaterialId = materialid
          @RequestId = requestid
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Category: 项目类别，取值有：
        # <li>VIDEO_EDIT：视频编辑。</li>
        # @type Category: String
        # @param Name: 项目名称，不可超过30个字符。
        # @type Name: String
        # @param AspectRatio: 画布宽高比，取值有：
        # <li>16:9；</li>
        # <li>9:16。</li>
        # @type AspectRatio: String
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`

        attr_accessor :Platform, :Category, :Name, :AspectRatio, :Owner
        
        def initialize(platform=nil, category=nil, name=nil, aspectratio=nil, owner=nil)
          @Platform = platform
          @Category = category
          @Name = name
          @AspectRatio = aspectratio
          @Owner = owner
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Category = params['Category']
          @Name = params['Name']
          @AspectRatio = params['AspectRatio']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目 Id。
        # @type ProjectId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectId, :RequestId
        
        def initialize(projectid=nil, requestid=nil)
          @ProjectId = projectid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTeam请求参数结构体
      class CreateTeamRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Name: 团队名称，限30个字符。
        # @type Name: String
        # @param OwnerId: 团队所有者，指定用户 ID。
        # @type OwnerId: String
        # @param OwnerRemark: 团队所有者的备注，限30个字符。
        # @type OwnerRemark: String
        # @param TeamId: 自定义团队 ID。创建后不可修改，限20个英文字符及"-"。同时不能以 cmetid_开头。不填会生成默认团队 ID。
        # @type TeamId: String

        attr_accessor :Platform, :Name, :OwnerId, :OwnerRemark, :TeamId
        
        def initialize(platform=nil, name=nil, ownerid=nil, ownerremark=nil, teamid=nil)
          @Platform = platform
          @Name = name
          @OwnerId = ownerid
          @OwnerRemark = ownerremark
          @TeamId = teamid
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Name = params['Name']
          @OwnerId = params['OwnerId']
          @OwnerRemark = params['OwnerRemark']
          @TeamId = params['TeamId']
        end
      end

      # CreateTeam返回参数结构体
      class CreateTeamResponse < TencentCloud::Common::AbstractModel
        # @param TeamId: 创建的团队 ID。
        # @type TeamId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TeamId, :RequestId
        
        def initialize(teamid=nil, requestid=nil)
          @TeamId = teamid
          @RequestId = requestid
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteClass请求参数结构体
      class DeleteClassRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param ClassPath: 分类路径。
        # @type ClassPath: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Owner, :ClassPath, :Operator
        
        def initialize(platform=nil, owner=nil, classpath=nil, operator=nil)
          @Platform = platform
          @Owner = owner
          @ClassPath = classpath
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @ClassPath = params['ClassPath']
          @Operator = params['Operator']
        end
      end

      # DeleteClass返回参数结构体
      class DeleteClassResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoginStatus请求参数结构体
      class DeleteLoginStatusRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param UserIds: 用户 Id 列表，N 从 0 开始取值，最大 19。
        # @type UserIds: Array

        attr_accessor :Platform, :UserIds
        
        def initialize(platform=nil, userids=nil)
          @Platform = platform
          @UserIds = userids
        end

        def deserialize(params)
          @Platform = params['Platform']
          @UserIds = params['UserIds']
        end
      end

      # DeleteLoginStatus返回参数结构体
      class DeleteLoginStatusResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMaterial请求参数结构体
      class DeleteMaterialRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param MaterialId: 素材 Id。
        # @type MaterialId: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :MaterialId, :Operator
        
        def initialize(platform=nil, materialid=nil, operator=nil)
          @Platform = platform
          @MaterialId = materialid
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @MaterialId = params['MaterialId']
          @Operator = params['Operator']
        end
      end

      # DeleteMaterial返回参数结构体
      class DeleteMaterialResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ProjectId: 项目 Id。
        # @type ProjectId: String

        attr_accessor :Platform, :ProjectId
        
        def initialize(platform=nil, projectid=nil)
          @Platform = platform
          @ProjectId = projectid
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTeamMembers请求参数结构体
      class DeleteTeamMembersRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TeamId: 团队 ID。
        # @type TeamId: String
        # @param MemberIds: 要删除的成员列表。
        # @type MemberIds: Array
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :TeamId, :MemberIds, :Operator
        
        def initialize(platform=nil, teamid=nil, memberids=nil, operator=nil)
          @Platform = platform
          @TeamId = teamid
          @MemberIds = memberids
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TeamId = params['TeamId']
          @MemberIds = params['MemberIds']
          @Operator = params['Operator']
        end
      end

      # DeleteTeamMembers返回参数结构体
      class DeleteTeamMembersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTeam请求参数结构体
      class DeleteTeamRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问平台。
        # @type Platform: String
        # @param TeamId: 要删除的团队  ID。
        # @type TeamId: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :TeamId, :Operator
        
        def initialize(platform=nil, teamid=nil, operator=nil)
          @Platform = platform
          @TeamId = teamid
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TeamId = params['TeamId']
          @Operator = params['Operator']
        end
      end

      # DeleteTeam返回参数结构体
      class DeleteTeamResponse < TencentCloud::Common::AbstractModel
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

      # DescribeClass请求参数结构体
      class DescribeClassRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Owner, :Operator
        
        def initialize(platform=nil, owner=nil, operator=nil)
          @Platform = platform
          @Owner = owner
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Operator = params['Operator']
        end
      end

      # DescribeClass返回参数结构体
      class DescribeClassResponse < TencentCloud::Common::AbstractModel
        # @param ClassInfoSet: 分类信息列表。
        # @type ClassInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClassInfoSet, :RequestId
        
        def initialize(classinfoset=nil, requestid=nil)
          @ClassInfoSet = classinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @ClassInfoSet = params['ClassInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeJoinTeams请求参数结构体
      class DescribeJoinTeamsRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param MemberId: 团队成员　ID。
        # @type MemberId: String
        # @param Offset: 分页偏移量，默认值：0
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：30，最大值：30。
        # @type Limit: Integer

        attr_accessor :Platform, :MemberId, :Offset, :Limit
        
        def initialize(platform=nil, memberid=nil, offset=nil, limit=nil)
          @Platform = platform
          @MemberId = memberid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Platform = params['Platform']
          @MemberId = params['MemberId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeJoinTeams返回参数结构体
      class DescribeJoinTeamsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param TeamSet: 团队列表
        # @type TeamSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TeamSet, :RequestId
        
        def initialize(totalcount=nil, teamset=nil, requestid=nil)
          @TotalCount = totalcount
          @TeamSet = teamset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TeamSet = params['TeamSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoginStatus请求参数结构体
      class DescribeLoginStatusRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param UserIds: 用户 Id 列表，N 从 0 开始取值，最大 19。
        # @type UserIds: Array

        attr_accessor :Platform, :UserIds
        
        def initialize(platform=nil, userids=nil)
          @Platform = platform
          @UserIds = userids
        end

        def deserialize(params)
          @Platform = params['Platform']
          @UserIds = params['UserIds']
        end
      end

      # DescribeLoginStatus返回参数结构体
      class DescribeLoginStatusResponse < TencentCloud::Common::AbstractModel
        # @param LoginStatusInfoSet: 用户登录状态列表。
        # @type LoginStatusInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoginStatusInfoSet, :RequestId
        
        def initialize(loginstatusinfoset=nil, requestid=nil)
          @LoginStatusInfoSet = loginstatusinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @LoginStatusInfoSet = params['LoginStatusInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaterials请求参数结构体
      class DescribeMaterialsRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param MaterialIds: 素材 ID 列表，N 从 0 开始取值，最大 19。
        # @type MaterialIds: Array
        # @param Sort: 列表排序，支持下列排序字段：
        # <li>CreateTime：创建时间；</li>
        # <li>UpdateTime：更新时间。</li>
        # @type Sort: :class:`Tencentcloud::Cme.v20191029.models.SortBy`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :MaterialIds, :Sort, :Operator
        
        def initialize(platform=nil, materialids=nil, sort=nil, operator=nil)
          @Platform = platform
          @MaterialIds = materialids
          @Sort = sort
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @MaterialIds = params['MaterialIds']
          unless params['Sort'].nil?
            @Sort = SortBy.new.deserialize(params[Sort])
          end
          @Operator = params['Operator']
        end
      end

      # DescribeMaterials返回参数结构体
      class DescribeMaterialsResponse < TencentCloud::Common::AbstractModel
        # @param MaterialInfoSet: 素材列表信息。
        # @type MaterialInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaterialInfoSet, :RequestId
        
        def initialize(materialinfoset=nil, requestid=nil)
          @MaterialInfoSet = materialinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @MaterialInfoSet = params['MaterialInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjects请求参数结构体
      class DescribeProjectsRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ProjectIds: 项目 Id 列表，N 从 0 开始取值，最大 19。
        # @type ProjectIds: Array
        # @param AspectRatioSet: 画布宽高比集合。
        # @type AspectRatioSet: Array
        # @param CategorySet: 项目类别集合。
        # @type CategorySet: Array
        # @param Sort: 列表排序，支持下列排序字段：
        # <li>CreateTime：创建时间；</li>
        # <li>UpdateTime：更新时间。</li>
        # @type Sort: :class:`Tencentcloud::Cme.v20191029.models.SortBy`
        # @param Owner: 项目归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Offset: 分页返回的起始偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：10。
        # @type Limit: Integer

        attr_accessor :Platform, :ProjectIds, :AspectRatioSet, :CategorySet, :Sort, :Owner, :Offset, :Limit
        
        def initialize(platform=nil, projectids=nil, aspectratioset=nil, categoryset=nil, sort=nil, owner=nil, offset=nil, limit=nil)
          @Platform = platform
          @ProjectIds = projectids
          @AspectRatioSet = aspectratioset
          @CategorySet = categoryset
          @Sort = sort
          @Owner = owner
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectIds = params['ProjectIds']
          @AspectRatioSet = params['AspectRatioSet']
          @CategorySet = params['CategorySet']
          unless params['Sort'].nil?
            @Sort = SortBy.new.deserialize(params[Sort])
          end
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeProjects返回参数结构体
      class DescribeProjectsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param ProjectInfoSet: 项目信息列表。
        # @type ProjectInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProjectInfoSet, :RequestId
        
        def initialize(totalcount=nil, projectinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @ProjectInfoSet = projectinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ProjectInfoSet = params['ProjectInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceAuthorization请求参数结构体
      class DescribeResourceAuthorizationRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Resource: 资源。
        # @type Resource: :class:`Tencentcloud::Cme.v20191029.models.Resource`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Owner, :Resource, :Operator
        
        def initialize(platform=nil, owner=nil, resource=nil, operator=nil)
          @Platform = platform
          @Owner = owner
          @Resource = resource
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          unless params['Resource'].nil?
            @Resource = Resource.new.deserialize(params[Resource])
          end
          @Operator = params['Operator']
        end
      end

      # DescribeResourceAuthorization返回参数结构体
      class DescribeResourceAuthorizationResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的资源授权记录总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param AuthorizationInfoSet: 授权信息列表。
        # @type AuthorizationInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AuthorizationInfoSet, :RequestId
        
        def initialize(totalcount=nil, authorizationinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @AuthorizationInfoSet = authorizationinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AuthorizationInfoSet = params['AuthorizationInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSharedSpace请求参数结构体
      class DescribeSharedSpaceRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Authorizee: 被授权目标实体。
        # @type Authorizee: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Authorizee, :Operator
        
        def initialize(platform=nil, authorizee=nil, operator=nil)
          @Platform = platform
          @Authorizee = authorizee
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['Authorizee'].nil?
            @Authorizee = Entity.new.deserialize(params[Authorizee])
          end
          @Operator = params['Operator']
        end
      end

      # DescribeSharedSpace返回参数结构体
      class DescribeSharedSpaceResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的共享空间总数。
        # @type TotalCount: Integer
        # @param AuthorizerSet: 各个共享空间对应的授权者信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AuthorizerSet, :RequestId
        
        def initialize(totalcount=nil, authorizerset=nil, requestid=nil)
          @TotalCount = totalcount
          @AuthorizerSet = authorizerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AuthorizerSet = params['AuthorizerSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TaskId: 任务 Id。
        # @type TaskId: String

        attr_accessor :Platform, :TaskId
        
        def initialize(platform=nil, taskid=nil)
          @Platform = platform
          @TaskId = taskid
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，取值有：
        # <li>PROCESSING：处理中：</li>
        # <li>SUCCESS：成功；</li>
        # <li>FAIL：失败。</li>
        # @type Status: String
        # @param Progress: 任务进度，取值为：0~100。
        # @type Progress: Integer
        # @param ErrCode: 错误码。
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param ErrMsg: 错误信息。
        # @type ErrMsg: String
        # @param TaskType: 任务类型，取值有：
        # <li>VIDEO_EDIT_PROJECT_EXPORT：视频编辑项目导出。</li>
        # @type TaskType: String
        # @param VideoEditProjectOutput: 导出项目输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoEditProjectOutput: :class:`Tencentcloud::Cme.v20191029.models.VideoEditProjectOutput`
        # @param CreateTime: 创建时间，格式按照 ISO 8601 标准表示。
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Progress, :ErrCode, :ErrMsg, :TaskType, :VideoEditProjectOutput, :CreateTime, :RequestId
        
        def initialize(status=nil, progress=nil, errcode=nil, errmsg=nil, tasktype=nil, videoeditprojectoutput=nil, createtime=nil, requestid=nil)
          @Status = status
          @Progress = progress
          @ErrCode = errcode
          @ErrMsg = errmsg
          @TaskType = tasktype
          @VideoEditProjectOutput = videoeditprojectoutput
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Progress = params['Progress']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @TaskType = params['TaskType']
          unless params['VideoEditProjectOutput'].nil?
            @VideoEditProjectOutput = VideoEditProjectOutput.new.deserialize(params[VideoEditProjectOutput])
          end
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ProjectId: 项目 Id。
        # @type ProjectId: String
        # @param TaskTypeSet: 任务类型集合，取值有：
        # <li>VIDEO_EDIT_PROJECT_EXPORT：视频编辑项目导出。</li>
        # @type TaskTypeSet: Array
        # @param StatusSet: 任务状态集合，取值有：
        # <li>PROCESSING：处理中；</li>
        # <li>SUCCESS：成功；</li>
        # <li>FAIL：失败。</li>
        # @type StatusSet: Array
        # @param Offset: 分页返回的起始偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：10。
        # @type Limit: Integer

        attr_accessor :Platform, :ProjectId, :TaskTypeSet, :StatusSet, :Offset, :Limit
        
        def initialize(platform=nil, projectid=nil, tasktypeset=nil, statusset=nil, offset=nil, limit=nil)
          @Platform = platform
          @ProjectId = projectid
          @TaskTypeSet = tasktypeset
          @StatusSet = statusset
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @TaskTypeSet = params['TaskTypeSet']
          @StatusSet = params['StatusSet']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合搜索条件的记录总数。
        # @type TotalCount: Integer
        # @param TaskBaseInfoSet: 任务基础信息列表。
        # @type TaskBaseInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskBaseInfoSet, :RequestId
        
        def initialize(totalcount=nil, taskbaseinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskBaseInfoSet = taskbaseinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TaskBaseInfoSet = params['TaskBaseInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTeamMembers请求参数结构体
      class DescribeTeamMembersRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TeamId: 团队 ID。
        # @type TeamId: String
        # @param MemberIds: 成员 ID 列表，限指定30个指定成员。
        # @type MemberIds: Array
        # @param Offset: 分页偏移量，默认值：0
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：30，最大值：30。
        # @type Limit: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :TeamId, :MemberIds, :Offset, :Limit, :Operator
        
        def initialize(platform=nil, teamid=nil, memberids=nil, offset=nil, limit=nil, operator=nil)
          @Platform = platform
          @TeamId = teamid
          @MemberIds = memberids
          @Offset = offset
          @Limit = limit
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TeamId = params['TeamId']
          @MemberIds = params['MemberIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Operator = params['Operator']
        end
      end

      # DescribeTeamMembers返回参数结构体
      class DescribeTeamMembersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param MemberSet: 团队成员列表。
        # @type MemberSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MemberSet, :RequestId
        
        def initialize(totalcount=nil, memberset=nil, requestid=nil)
          @TotalCount = totalcount
          @MemberSet = memberset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @MemberSet = params['MemberSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTeams请求参数结构体
      class DescribeTeamsRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TeamIds: 团队 ID 列表，限30个。
        # @type TeamIds: Array

        attr_accessor :Platform, :TeamIds
        
        def initialize(platform=nil, teamids=nil)
          @Platform = platform
          @TeamIds = teamids
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TeamIds = params['TeamIds']
        end
      end

      # DescribeTeams返回参数结构体
      class DescribeTeamsResponse < TencentCloud::Common::AbstractModel
        # @param TeamSet: 团队列表。
        # @type TeamSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TeamSet, :RequestId
        
        def initialize(teamset=nil, requestid=nil)
          @TeamSet = teamset
          @RequestId = requestid
        end

        def deserialize(params)
          @TeamSet = params['TeamSet']
          @RequestId = params['RequestId']
        end
      end

      # 用于描述资源的归属实体。
      class Entity < TencentCloud::Common::AbstractModel
        # @param Type: 类型，取值有：
        # <li>PERSON：个人。</li>
        # <li>TEAM：团队。</li>
        # @type Type: String
        # @param Id: Id，当 Type=PERSON，取值为用户 Id，当 Type=TEAM，取值为团队 Id。
        # @type Id: String

        attr_accessor :Type, :Id
        
        def initialize(type=nil, id=nil)
          @Type = type
          @Id = id
        end

        def deserialize(params)
          @Type = params['Type']
          @Id = params['Id']
        end
      end

      # ExportVideoByEditorTrackData请求参数结构体
      class ExportVideoByEditorTrackDataRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Definition: 导出模板 Id，目前不支持自定义创建，只支持下面的预置模板 Id。
        # <li>10：分辨率为 480P，输出视频格式为 MP4；</li>
        # <li>11：分辨率为 720P，输出视频格式为 MP4；</li>
        # <li>12：分辨率为 1080P，输出视频格式为 MP4。</li>
        # @type Definition: Integer
        # @param ExportDestination: 导出目标。
        # <li>CME：云剪，即导出为云剪素材；</li>
        # <li>VOD：云点播，即导出为云点播媒资。</li>
        # @type ExportDestination: String
        # @param TrackData: 在线编辑轨道数据。
        # @type TrackData: String
        # @param CMEExportInfo: 导出的云剪素材信息。指定 ExportDestination = CME 时有效。
        # @type CMEExportInfo: :class:`Tencentcloud::Cme.v20191029.models.CMEExportInfo`
        # @param VODExportInfo: 导出的云点播媒资信息。指定 ExportDestination = VOD 时有效。
        # @type VODExportInfo: :class:`Tencentcloud::Cme.v20191029.models.VODExportInfo`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Definition, :ExportDestination, :TrackData, :CMEExportInfo, :VODExportInfo, :Operator
        
        def initialize(platform=nil, definition=nil, exportdestination=nil, trackdata=nil, cmeexportinfo=nil, vodexportinfo=nil, operator=nil)
          @Platform = platform
          @Definition = definition
          @ExportDestination = exportdestination
          @TrackData = trackdata
          @CMEExportInfo = cmeexportinfo
          @VODExportInfo = vodexportinfo
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Definition = params['Definition']
          @ExportDestination = params['ExportDestination']
          @TrackData = params['TrackData']
          unless params['CMEExportInfo'].nil?
            @CMEExportInfo = CMEExportInfo.new.deserialize(params[CMEExportInfo])
          end
          unless params['VODExportInfo'].nil?
            @VODExportInfo = VODExportInfo.new.deserialize(params[VODExportInfo])
          end
          @Operator = params['Operator']
        end
      end

      # ExportVideoByEditorTrackData返回参数结构体
      class ExportVideoByEditorTrackDataResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 Id。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportVideoEditProject请求参数结构体
      class ExportVideoEditProjectRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ProjectId: 项目 Id。
        # @type ProjectId: String
        # @param Definition: 导出模板 Id，目前不支持自定义创建，只支持下面的预置模板 Id。
        # <li>10：分辨率为 480P，输出视频格式为 MP4；</li>
        # <li>11：分辨率为 720P，输出视频格式为 MP4；</li>
        # <li>12：分辨率为 1080P，输出视频格式为 MP4。</li>
        # @type Definition: Integer
        # @param ExportDestination: 导出目标。
        # <li>CME：云剪，即导出为云剪素材；</li>
        # <li>VOD：云点播，即导出为云点播媒资。</li>
        # @type ExportDestination: String
        # @param CMEExportInfo: 导出的云剪素材信息。指定 ExportDestination = CME 时有效。
        # @type CMEExportInfo: :class:`Tencentcloud::Cme.v20191029.models.CMEExportInfo`
        # @param VODExportInfo: 导出的云点播媒资信息。指定 ExportDestination = VOD 时有效。
        # @type VODExportInfo: :class:`Tencentcloud::Cme.v20191029.models.VODExportInfo`

        attr_accessor :Platform, :ProjectId, :Definition, :ExportDestination, :CMEExportInfo, :VODExportInfo
        
        def initialize(platform=nil, projectid=nil, definition=nil, exportdestination=nil, cmeexportinfo=nil, vodexportinfo=nil)
          @Platform = platform
          @ProjectId = projectid
          @Definition = definition
          @ExportDestination = exportdestination
          @CMEExportInfo = cmeexportinfo
          @VODExportInfo = vodexportinfo
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @Definition = params['Definition']
          @ExportDestination = params['ExportDestination']
          unless params['CMEExportInfo'].nil?
            @CMEExportInfo = CMEExportInfo.new.deserialize(params[CMEExportInfo])
          end
          unless params['VODExportInfo'].nil?
            @VODExportInfo = VODExportInfo.new.deserialize(params[VODExportInfo])
          end
        end
      end

      # ExportVideoEditProject返回参数结构体
      class ExportVideoEditProjectResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 Id。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # FlattenListMedia请求参数结构体
      class FlattenListMediaRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ClassPath: 素材分类路径，例如填写"/a/b"，则代表平铺该分类路径下及其子分类路径下的素材信息。
        # @type ClassPath: String
        # @param Owner: 素材路径的归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：50。
        # @type Limit: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :ClassPath, :Owner, :Offset, :Limit, :Operator
        
        def initialize(platform=nil, classpath=nil, owner=nil, offset=nil, limit=nil, operator=nil)
          @Platform = platform
          @ClassPath = classpath
          @Owner = owner
          @Offset = offset
          @Limit = limit
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ClassPath = params['ClassPath']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Operator = params['Operator']
        end
      end

      # FlattenListMedia返回参数结构体
      class FlattenListMediaResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param MaterialInfoSet: 该分类路径下及其子分类下的所有素材。
        # @type MaterialInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MaterialInfoSet, :RequestId
        
        def initialize(totalcount=nil, materialinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @MaterialInfoSet = materialinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @MaterialInfoSet = params['MaterialInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # GrantResourceAuthorization请求参数结构体
      class GrantResourceAuthorizationRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Owner: 资源所属实体。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Resources: 被授权资源。
        # @type Resources: Array
        # @param Authorizees: 被授权目标实体。
        # @type Authorizees: Array
        # @param Permissions: 详细授权值。 取值有：
        # <li>R：可读，可以浏览素材，但不能使用该素材（将其添加到 Project），或复制到自己的媒资库中</li>
        # <li>X：可用，可以使用该素材（将其添加到 Project），但不能将其复制到自己的媒资库中，意味着被授权者无法将该资源进一步扩散给其他个人或团队。</li>
        # <li>C：可复制，既可以使用该素材（将其添加到 Project），也可以将其复制到自己的媒资库中。</li>
        # <li>W：可修改、删除媒资。</li>
        # @type Permissions: Array
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Owner, :Resources, :Authorizees, :Permissions, :Operator
        
        def initialize(platform=nil, owner=nil, resources=nil, authorizees=nil, permissions=nil, operator=nil)
          @Platform = platform
          @Owner = owner
          @Resources = resources
          @Authorizees = authorizees
          @Permissions = permissions
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Resources = params['Resources']
          @Authorizees = params['Authorizees']
          @Permissions = params['Permissions']
          @Operator = params['Operator']
        end
      end

      # GrantResourceAuthorization返回参数结构体
      class GrantResourceAuthorizationResponse < TencentCloud::Common::AbstractModel
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

      # 图片素材信息
      class ImageMaterial < TencentCloud::Common::AbstractModel
        # @param Height: 图片高度，单位：px。
        # @type Height: Integer
        # @param Width: 图片宽度，单位：px。
        # @type Width: Integer
        # @param MaterialUrl: 素材媒体文件的展示 URL 地址。
        # @type MaterialUrl: String
        # @param Size: 图片大小，单位：字节。
        # @type Size: Integer
        # @param OriginalUrl: 素材媒体文件的原始 URL 地址。
        # @type OriginalUrl: String
        # @param VodFileId: 云点播媒资 FileId。
        # @type VodFileId: String

        attr_accessor :Height, :Width, :MaterialUrl, :Size, :OriginalUrl, :VodFileId
        
        def initialize(height=nil, width=nil, materialurl=nil, size=nil, originalurl=nil, vodfileid=nil)
          @Height = height
          @Width = width
          @MaterialUrl = materialurl
          @Size = size
          @OriginalUrl = originalurl
          @VodFileId = vodfileid
        end

        def deserialize(params)
          @Height = params['Height']
          @Width = params['Width']
          @MaterialUrl = params['MaterialUrl']
          @Size = params['Size']
          @OriginalUrl = params['OriginalUrl']
          @VodFileId = params['VodFileId']
        end
      end

      # ImportMaterial请求参数结构体
      class ImportMaterialRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param VodFileId: 云点播媒资 FileId。
        # @type VodFileId: String
        # @param Owner: 素材归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Name: 素材名称，不能超过30个字符。
        # @type Name: String
        # @param ClassPath: 素材分类路径，形如："/a/b"，层级数不能超过10，每个层级长度不能超过15字符。若不填则默认为根路径。
        # @type ClassPath: String
        # @param PreProcessDefinition: 素材预处理任务模板 ID。取值：
        # <li>10：进行编辑预处理。</li>
        # @type PreProcessDefinition: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :VodFileId, :Owner, :Name, :ClassPath, :PreProcessDefinition, :Operator
        
        def initialize(platform=nil, vodfileid=nil, owner=nil, name=nil, classpath=nil, preprocessdefinition=nil, operator=nil)
          @Platform = platform
          @VodFileId = vodfileid
          @Owner = owner
          @Name = name
          @ClassPath = classpath
          @PreProcessDefinition = preprocessdefinition
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @VodFileId = params['VodFileId']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Name = params['Name']
          @ClassPath = params['ClassPath']
          @PreProcessDefinition = params['PreProcessDefinition']
          @Operator = params['Operator']
        end
      end

      # ImportMaterial返回参数结构体
      class ImportMaterialResponse < TencentCloud::Common::AbstractModel
        # @param MaterialId: 素材 Id。
        # @type MaterialId: String
        # @param PreProcessTaskId: 素材预处理任务 ID，如果未指定发起预处理任务则为空。
        # @type PreProcessTaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaterialId, :PreProcessTaskId, :RequestId
        
        def initialize(materialid=nil, preprocesstaskid=nil, requestid=nil)
          @MaterialId = materialid
          @PreProcessTaskId = preprocesstaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @PreProcessTaskId = params['PreProcessTaskId']
          @RequestId = params['RequestId']
        end
      end

      # ImportMediaToProject请求参数结构体
      class ImportMediaToProjectRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ProjectId: 项目 Id。
        # @type ProjectId: String
        # @param VodFileId: 云点播媒资 FileId。
        # @type VodFileId: String
        # @param Name: 素材名称，不能超过30个字符。
        # @type Name: String
        # @param PreProcessDefinition: 素材预处理任务模板 ID，取值：
        # <li>10：进行编辑预处理。</li>
        # 注意：如果填0则不进行处理。
        # @type PreProcessDefinition: Integer

        attr_accessor :Platform, :ProjectId, :VodFileId, :Name, :PreProcessDefinition
        
        def initialize(platform=nil, projectid=nil, vodfileid=nil, name=nil, preprocessdefinition=nil)
          @Platform = platform
          @ProjectId = projectid
          @VodFileId = vodfileid
          @Name = name
          @PreProcessDefinition = preprocessdefinition
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @VodFileId = params['VodFileId']
          @Name = params['Name']
          @PreProcessDefinition = params['PreProcessDefinition']
        end
      end

      # ImportMediaToProject返回参数结构体
      class ImportMediaToProjectResponse < TencentCloud::Common::AbstractModel
        # @param MaterialId: 素材 Id。
        # @type MaterialId: String
        # @param TaskId: 素材预处理任务 ID，如果未指定发起预处理任务则为空。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaterialId, :TaskId, :RequestId
        
        def initialize(materialid=nil, taskid=nil, requestid=nil)
          @MaterialId = materialid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 整型范围
      class IntegerRange < TencentCloud::Common::AbstractModel
        # @param LowerBound: 按整形代表值的下限检索。
        # @type LowerBound: Integer
        # @param UpperBound: 按整形代表值的上限检索。
        # @type UpperBound: Integer

        attr_accessor :LowerBound, :UpperBound
        
        def initialize(lowerbound=nil, upperbound=nil)
          @LowerBound = lowerbound
          @UpperBound = upperbound
        end

        def deserialize(params)
          @LowerBound = params['LowerBound']
          @UpperBound = params['UpperBound']
        end
      end

      # 加入的团队信息
      class JoinTeamInfo < TencentCloud::Common::AbstractModel
        # @param TeamId: 团队 ID。
        # @type TeamId: String
        # @param Name: 团队名称。
        # @type Name: String
        # @param MemberCount: 团队成员个数
        # @type MemberCount: Integer
        # @param Role: 成员在团队中的角色，取值有：
        # <li>Owner：团队所有者，添加团队成员及修改团队成员解决时不能填此角色；</li>
        # <li>Admin：团队管理员；</li>
        # <li>Member：普通成员。</li>
        # @type Role: String

        attr_accessor :TeamId, :Name, :MemberCount, :Role
        
        def initialize(teamid=nil, name=nil, membercount=nil, role=nil)
          @TeamId = teamid
          @Name = name
          @MemberCount = membercount
          @Role = role
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @Name = params['Name']
          @MemberCount = params['MemberCount']
          @Role = params['Role']
        end
      end

      # 链接类型的素材信息
      class LinkMaterial < TencentCloud::Common::AbstractModel
        # @param LinkType: 链接类型取值:
        # <li>CLASS: 分类链接;</li>
        # <li> MATERIAL：素材链接。</li>
        # @type LinkType: String
        # @param LinkStatus: 链接状态取值：
        # <li> Normal：正常 ；</li>
        # <li>NotFound：链接目标不存在；</li> <li>Forbidden：无权限。</li>
        # @type LinkStatus: String
        # @param LinkMaterialInfo: 素材链接详细信息，当LinkType="MATERIAL"时有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkMaterialInfo: :class:`Tencentcloud::Cme.v20191029.models.LinkMaterialInfo`
        # @param LinkClassInfo: 分类链接目标信息，当LinkType=“CLASS”时有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkClassInfo: :class:`Tencentcloud::Cme.v20191029.models.ClassInfo`

        attr_accessor :LinkType, :LinkStatus, :LinkMaterialInfo, :LinkClassInfo
        
        def initialize(linktype=nil, linkstatus=nil, linkmaterialinfo=nil, linkclassinfo=nil)
          @LinkType = linktype
          @LinkStatus = linkstatus
          @LinkMaterialInfo = linkmaterialinfo
          @LinkClassInfo = linkclassinfo
        end

        def deserialize(params)
          @LinkType = params['LinkType']
          @LinkStatus = params['LinkStatus']
          unless params['LinkMaterialInfo'].nil?
            @LinkMaterialInfo = LinkMaterialInfo.new.deserialize(params[LinkMaterialInfo])
          end
          unless params['LinkClassInfo'].nil?
            @LinkClassInfo = ClassInfo.new.deserialize(params[LinkClassInfo])
          end
        end
      end

      # 链接素材信息
      class LinkMaterialInfo < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 素材基本信息。
        # @type BasicInfo: :class:`Tencentcloud::Cme.v20191029.models.MaterialBasicInfo`
        # @param VideoMaterial: 视频素材信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoMaterial: :class:`Tencentcloud::Cme.v20191029.models.VideoMaterial`
        # @param AudioMaterial: 音频素材信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioMaterial: :class:`Tencentcloud::Cme.v20191029.models.AudioMaterial`
        # @param ImageMaterial: 图片素材信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageMaterial: :class:`Tencentcloud::Cme.v20191029.models.ImageMaterial`

        attr_accessor :BasicInfo, :VideoMaterial, :AudioMaterial, :ImageMaterial
        
        def initialize(basicinfo=nil, videomaterial=nil, audiomaterial=nil, imagematerial=nil)
          @BasicInfo = basicinfo
          @VideoMaterial = videomaterial
          @AudioMaterial = audiomaterial
          @ImageMaterial = imagematerial
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = MaterialBasicInfo.new.deserialize(params[BasicInfo])
          end
          unless params['VideoMaterial'].nil?
            @VideoMaterial = VideoMaterial.new.deserialize(params[VideoMaterial])
          end
          unless params['AudioMaterial'].nil?
            @AudioMaterial = AudioMaterial.new.deserialize(params[AudioMaterial])
          end
          unless params['ImageMaterial'].nil?
            @ImageMaterial = ImageMaterial.new.deserialize(params[ImageMaterial])
          end
        end
      end

      # ListMedia请求参数结构体
      class ListMediaRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ClassPath: 素材分类路径，例如填写"/a/b"，则代表浏览该分类路径下的素材和子分类信息。
        # @type ClassPath: String
        # @param Owner: 素材和分类的归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：50。
        # @type Limit: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :ClassPath, :Owner, :Offset, :Limit, :Operator
        
        def initialize(platform=nil, classpath=nil, owner=nil, offset=nil, limit=nil, operator=nil)
          @Platform = platform
          @ClassPath = classpath
          @Owner = owner
          @Offset = offset
          @Limit = limit
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ClassPath = params['ClassPath']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Operator = params['Operator']
        end
      end

      # ListMedia返回参数结构体
      class ListMediaResponse < TencentCloud::Common::AbstractModel
        # @param MaterialTotalCount: 符合条件的素材记录总数。
        # @type MaterialTotalCount: Integer
        # @param MaterialInfoSet: 浏览分类路径下的素材列表信息。
        # @type MaterialInfoSet: Array
        # @param ClassInfoSet: 浏览分类路径下的一级子类。
        # @type ClassInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaterialTotalCount, :MaterialInfoSet, :ClassInfoSet, :RequestId
        
        def initialize(materialtotalcount=nil, materialinfoset=nil, classinfoset=nil, requestid=nil)
          @MaterialTotalCount = materialtotalcount
          @MaterialInfoSet = materialinfoset
          @ClassInfoSet = classinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @MaterialTotalCount = params['MaterialTotalCount']
          @MaterialInfoSet = params['MaterialInfoSet']
          @ClassInfoSet = params['ClassInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # 登录态信息
      class LoginStatusInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户 Id。
        # @type UserId: String
        # @param Status: 用户登录状态。
        # <li>Online：在线；</li>
        # <li>Offline：离线。</li>
        # @type Status: String

        attr_accessor :UserId, :Status
        
        def initialize(userid=nil, status=nil)
          @UserId = userid
          @Status = status
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Status = params['Status']
        end
      end

      # 素材基本信息。
      class MaterialBasicInfo < TencentCloud::Common::AbstractModel
        # @param MaterialId: 素材 Id。
        # @type MaterialId: String
        # @param MaterialType: 素材类型，取值为：音频（AUDIO）、视频（VIDEO）、图片（IMAGE）、链接（LINK）、字幕 （SUBTITLE）、转场（TRANSITION）、滤镜（FILTER）、文本文字（TEXT）、图文动效（TEXT_IMAGE）。
        # @type MaterialType: String
        # @param Owner: 素材归属实体。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Name: 素材名称。
        # @type Name: String
        # @param CreateTime: 素材文件的创建时间，使用 ISO 日期格式。
        # @type CreateTime: String
        # @param UpdateTime: 素材文件的最近更新时间（如修改视频属性、发起视频处理等会触发更新媒体文件信息的操作），使用 ISO 日期格式。
        # @type UpdateTime: String
        # @param ClassPath: 素材的分类目录路径。
        # @type ClassPath: String
        # @param TagInfoSet: 素材绑定的标签信息列表 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagInfoSet: Array
        # @param PreviewUrl: 素材媒体文件的预览图。
        # @type PreviewUrl: String

        attr_accessor :MaterialId, :MaterialType, :Owner, :Name, :CreateTime, :UpdateTime, :ClassPath, :TagInfoSet, :PreviewUrl
        
        def initialize(materialid=nil, materialtype=nil, owner=nil, name=nil, createtime=nil, updatetime=nil, classpath=nil, taginfoset=nil, previewurl=nil)
          @MaterialId = materialid
          @MaterialType = materialtype
          @Owner = owner
          @Name = name
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ClassPath = classpath
          @TagInfoSet = taginfoset
          @PreviewUrl = previewurl
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @MaterialType = params['MaterialType']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ClassPath = params['ClassPath']
          @TagInfoSet = params['TagInfoSet']
          @PreviewUrl = params['PreviewUrl']
        end
      end

      # 素材详情信息
      class MaterialInfo < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 素材基本信息。
        # @type BasicInfo: :class:`Tencentcloud::Cme.v20191029.models.MaterialBasicInfo`
        # @param VideoMaterial: 视频素材信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoMaterial: :class:`Tencentcloud::Cme.v20191029.models.VideoMaterial`
        # @param AudioMaterial: 音频素材信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioMaterial: :class:`Tencentcloud::Cme.v20191029.models.AudioMaterial`
        # @param ImageMaterial: 图片素材信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageMaterial: :class:`Tencentcloud::Cme.v20191029.models.ImageMaterial`
        # @param LinkMaterial: 链接素材信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkMaterial: :class:`Tencentcloud::Cme.v20191029.models.LinkMaterial`

        attr_accessor :BasicInfo, :VideoMaterial, :AudioMaterial, :ImageMaterial, :LinkMaterial
        
        def initialize(basicinfo=nil, videomaterial=nil, audiomaterial=nil, imagematerial=nil, linkmaterial=nil)
          @BasicInfo = basicinfo
          @VideoMaterial = videomaterial
          @AudioMaterial = audiomaterial
          @ImageMaterial = imagematerial
          @LinkMaterial = linkmaterial
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = MaterialBasicInfo.new.deserialize(params[BasicInfo])
          end
          unless params['VideoMaterial'].nil?
            @VideoMaterial = VideoMaterial.new.deserialize(params[VideoMaterial])
          end
          unless params['AudioMaterial'].nil?
            @AudioMaterial = AudioMaterial.new.deserialize(params[AudioMaterial])
          end
          unless params['ImageMaterial'].nil?
            @ImageMaterial = ImageMaterial.new.deserialize(params[ImageMaterial])
          end
          unless params['LinkMaterial'].nil?
            @LinkMaterial = LinkMaterial.new.deserialize(params[LinkMaterial])
          end
        end
      end

      # 素材的状态，目前仅包含素材编辑可用状态。
      class MaterialStatus < TencentCloud::Common::AbstractModel
        # @param EditorUsableStatus: 素材编辑可用状态，取值有：
        # <li>NORMAL：正常，可直接用于编辑；</li>
        # <li>ABNORMAL : 异常，不可用于编辑；</li>
        # <li>PROCESSING：处理中，暂不可用于编辑。</li>
        # @type EditorUsableStatus: String

        attr_accessor :EditorUsableStatus
        
        def initialize(editorusablestatus=nil)
          @EditorUsableStatus = editorusablestatus
        end

        def deserialize(params)
          @EditorUsableStatus = params['EditorUsableStatus']
        end
      end

      # 素材标签信息
      class MaterialTagInfo < TencentCloud::Common::AbstractModel
        # @param Type: 标签类型，取值为：
        # <li>PRESET：预置标签；</li>
        # @type Type: String
        # @param Id: 标签 Id 。当标签类型为 PRESET 时，标签 Id 为预置标签 Id 。
        # @type Id: String
        # @param Name: 标签名称。
        # @type Name: String

        attr_accessor :Type, :Id, :Name
        
        def initialize(type=nil, id=nil, name=nil)
          @Type = type
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Type = params['Type']
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # 雪碧图
      class MediaImageSpriteInfo < TencentCloud::Common::AbstractModel
        # @param Height: 雪碧图小图的高度。
        # @type Height: Integer
        # @param Width: 雪碧图小图的宽度。
        # @type Width: Integer
        # @param TotalCount: 雪碧图小图的总数量。
        # @type TotalCount: Integer
        # @param ImageUrlSet: 截取雪碧图输出的地址。
        # @type ImageUrlSet: Array
        # @param WebVttUrl: 雪碧图子图位置与时间关系的 WebVtt 文件地址。WebVtt 文件表明了各个雪碧图小图对应的时间点，以及在雪碧大图里的坐标位置，一般被播放器用于实现预览。
        # @type WebVttUrl: String

        attr_accessor :Height, :Width, :TotalCount, :ImageUrlSet, :WebVttUrl
        
        def initialize(height=nil, width=nil, totalcount=nil, imageurlset=nil, webvtturl=nil)
          @Height = height
          @Width = width
          @TotalCount = totalcount
          @ImageUrlSet = imageurlset
          @WebVttUrl = webvtturl
        end

        def deserialize(params)
          @Height = params['Height']
          @Width = params['Width']
          @TotalCount = params['TotalCount']
          @ImageUrlSet = params['ImageUrlSet']
          @WebVttUrl = params['WebVttUrl']
        end
      end

      # 文件元信息。
      class MediaMetaData < TencentCloud::Common::AbstractModel
        # @param Size: 大小。
        # @type Size: Integer
        # @param Container: 容器类型。
        # @type Container: String
        # @param Bitrate: 视频流码率平均值与音频流码率平均值之和，单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流高度的最大值，单位：px。
        # @type Height: Integer
        # @param Width: 视频流宽度的最大值，单位：px。
        # @type Width: Integer
        # @param Duration: 时长，单位：秒。
        # @type Duration: Float
        # @param Rotate: 视频拍摄时的选择角度，单位：度
        # @type Rotate: Integer
        # @param VideoStreamInfoSet: 视频流信息。
        # @type VideoStreamInfoSet: Array
        # @param AudioStreamInfoSet: 音频流信息。
        # @type AudioStreamInfoSet: Array

        attr_accessor :Size, :Container, :Bitrate, :Height, :Width, :Duration, :Rotate, :VideoStreamInfoSet, :AudioStreamInfoSet
        
        def initialize(size=nil, container=nil, bitrate=nil, height=nil, width=nil, duration=nil, rotate=nil, videostreaminfoset=nil, audiostreaminfoset=nil)
          @Size = size
          @Container = container
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Duration = duration
          @Rotate = rotate
          @VideoStreamInfoSet = videostreaminfoset
          @AudioStreamInfoSet = audiostreaminfoset
        end

        def deserialize(params)
          @Size = params['Size']
          @Container = params['Container']
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Duration = params['Duration']
          @Rotate = params['Rotate']
          @VideoStreamInfoSet = params['VideoStreamInfoSet']
          @AudioStreamInfoSet = params['AudioStreamInfoSet']
        end
      end

      # ModifyMaterial请求参数结构体
      class ModifyMaterialRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param MaterialId: 素材 Id。
        # @type MaterialId: String
        # @param Owner: 素材归属。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Name: 素材名称，不能超过30个字符。
        # @type Name: String
        # @param ClassPath: 素材分类路径，例如填写"/a/b"，则代表该素材存储的路径为"/a/b"。
        # @type ClassPath: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :MaterialId, :Owner, :Name, :ClassPath, :Operator
        
        def initialize(platform=nil, materialid=nil, owner=nil, name=nil, classpath=nil, operator=nil)
          @Platform = platform
          @MaterialId = materialid
          @Owner = owner
          @Name = name
          @ClassPath = classpath
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @MaterialId = params['MaterialId']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Name = params['Name']
          @ClassPath = params['ClassPath']
          @Operator = params['Operator']
        end
      end

      # ModifyMaterial返回参数结构体
      class ModifyMaterialResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ProjectId: 项目 Id。
        # @type ProjectId: String
        # @param Name: 项目名称，不可超过30个字符。
        # @type Name: String
        # @param AspectRatio: 画布宽高比，取值有：
        # <li>16:9；</li>
        # <li>9:16。</li>
        # @type AspectRatio: String
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`

        attr_accessor :Platform, :ProjectId, :Name, :AspectRatio, :Owner
        
        def initialize(platform=nil, projectid=nil, name=nil, aspectratio=nil, owner=nil)
          @Platform = platform
          @ProjectId = projectid
          @Name = name
          @AspectRatio = aspectratio
          @Owner = owner
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @AspectRatio = params['AspectRatio']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTeamMember请求参数结构体
      class ModifyTeamMemberRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TeamId: 团队 ID。
        # @type TeamId: String
        # @param MemberId: 团队成员 ID。
        # @type MemberId: String
        # @param Remark: 成员备注，允许设置备注为空，不为空时长度不能超过15个字符。
        # @type Remark: String
        # @param Role: 成员角色，取值：
        # <li>Admin：团队管理员；</li>
        # <li>Member：普通成员。</li>
        # @type Role: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :TeamId, :MemberId, :Remark, :Role, :Operator
        
        def initialize(platform=nil, teamid=nil, memberid=nil, remark=nil, role=nil, operator=nil)
          @Platform = platform
          @TeamId = teamid
          @MemberId = memberid
          @Remark = remark
          @Role = role
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TeamId = params['TeamId']
          @MemberId = params['MemberId']
          @Remark = params['Remark']
          @Role = params['Role']
          @Operator = params['Operator']
        end
      end

      # ModifyTeamMember返回参数结构体
      class ModifyTeamMemberResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTeam请求参数结构体
      class ModifyTeamRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TeamId: 团队 ID。
        # @type TeamId: String
        # @param Name: 团队名称，不能超过 30 个字符。
        # @type Name: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :TeamId, :Name, :Operator
        
        def initialize(platform=nil, teamid=nil, name=nil, operator=nil)
          @Platform = platform
          @TeamId = teamid
          @Name = name
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TeamId = params['TeamId']
          @Name = params['Name']
          @Operator = params['Operator']
        end
      end

      # ModifyTeam返回参数结构体
      class ModifyTeamResponse < TencentCloud::Common::AbstractModel
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

      # MoveClass请求参数结构体
      class MoveClassRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param SourceClassPath: 源分类路径。
        # @type SourceClassPath: String
        # @param DestinationClassPath: 目标分类路径。
        # @type DestinationClassPath: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Owner, :SourceClassPath, :DestinationClassPath, :Operator
        
        def initialize(platform=nil, owner=nil, sourceclasspath=nil, destinationclasspath=nil, operator=nil)
          @Platform = platform
          @Owner = owner
          @SourceClassPath = sourceclasspath
          @DestinationClassPath = destinationclasspath
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @SourceClassPath = params['SourceClassPath']
          @DestinationClassPath = params['DestinationClassPath']
          @Operator = params['Operator']
        end
      end

      # MoveClass返回参数结构体
      class MoveClassResponse < TencentCloud::Common::AbstractModel
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

      # 项目信息。
      class ProjectInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目 Id。
        # @type ProjectId: String
        # @param Name: 项目名称。
        # @type Name: String
        # @param AspectRatio: 画布宽高比。
        # @type AspectRatio: String
        # @param Category: 项目类别。
        # @type Category: String
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param CoverUrl: 项目封面图片地址。
        # @type CoverUrl: String
        # @param CreateTime: 项目创建时间，格式按照 ISO 8601 标准表示。
        # @type CreateTime: String
        # @param UpdateTime: 项目更新时间，格式按照 ISO 8601 标准表示。
        # @type UpdateTime: String

        attr_accessor :ProjectId, :Name, :AspectRatio, :Category, :Owner, :CoverUrl, :CreateTime, :UpdateTime
        
        def initialize(projectid=nil, name=nil, aspectratio=nil, category=nil, owner=nil, coverurl=nil, createtime=nil, updatetime=nil)
          @ProjectId = projectid
          @Name = name
          @AspectRatio = aspectratio
          @Category = category
          @Owner = owner
          @CoverUrl = coverurl
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @AspectRatio = params['AspectRatio']
          @Category = params['Category']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @CoverUrl = params['CoverUrl']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 用于描述资源
      class Resource < TencentCloud::Common::AbstractModel
        # @param Type: 类型，取值有：
        # <li>MATERIAL：素材。</li>
        # <li>CLASS：分类。</li>
        # @type Type: String
        # @param Id: 资源 Id，当 Type 为 MATERIAL 时，取值为素材 Id；当 Type 为 CLASS 时，取值为分类路径 ClassPath。
        # @type Id: String

        attr_accessor :Type, :Id
        
        def initialize(type=nil, id=nil)
          @Type = type
          @Id = id
        end

        def deserialize(params)
          @Type = params['Type']
          @Id = params['Id']
        end
      end

      # RevokeResourceAuthorization请求参数结构体
      class RevokeResourceAuthorizationRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Owner: 资源所属实体。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Resources: 被授权资源。
        # @type Resources: Array
        # @param Authorizees: 被授权目标实体。
        # @type Authorizees: Array
        # @param Permissions: 详细授权值。 取值有：
        # <li>R：可读，可以浏览素材，但不能使用该素材（将其添加到 Project），或复制到自己的媒资库中</li>
        # <li>X：可用，可以使用该素材（将其添加到 Project），但不能将其复制到自己的媒资库中，意味着被授权者无法将该资源进一步扩散给其他个人或团队。</li>
        # <li>C：可复制，既可以使用该素材（将其添加到 Project），也可以将其复制到自己的媒资库中。</li>
        # <li>W：可修改、删除媒资。</li>
        # @type Permissions: Array
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Owner, :Resources, :Authorizees, :Permissions, :Operator
        
        def initialize(platform=nil, owner=nil, resources=nil, authorizees=nil, permissions=nil, operator=nil)
          @Platform = platform
          @Owner = owner
          @Resources = resources
          @Authorizees = authorizees
          @Permissions = permissions
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @Resources = params['Resources']
          @Authorizees = params['Authorizees']
          @Permissions = params['Permissions']
          @Operator = params['Operator']
        end
      end

      # RevokeResourceAuthorization返回参数结构体
      class RevokeResourceAuthorizationResponse < TencentCloud::Common::AbstractModel
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

      # SearchMaterial请求参数结构体
      class SearchMaterialRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param SearchScopes: 指定搜索空间，数组长度不得超过5。
        # @type SearchScopes: Array
        # @param MaterialTypes: 素材类型，取值：
        # <li>AUDIO：音频；</li>
        # <li>VIDEO：视频 ；</li>
        # <li>IMAGE：图片。</li>
        # @type MaterialTypes: Array
        # @param Text: 搜索文本，模糊匹配素材名称或描述信息，匹配项越多，匹配度越高，排序越优先。长度限制：15个字符。
        # @type Text: String
        # @param Resolution: 按画质检索，取值为：LD/SD/HD/FHD/2K/4K。
        # @type Resolution: String
        # @param DurationRange: 按素材时长检索，单位s。
        # @type DurationRange: :class:`Tencentcloud::Cme.v20191029.models.IntegerRange`
        # @param CreateTimeRange: 按照素材创建时间检索。
        # @type CreateTimeRange: :class:`Tencentcloud::Cme.v20191029.models.TimeRange`
        # @param Tags: 按标签检索，填入检索的标签名。
        # @type Tags: Array
        # @param Sort: 排序方式。Sort.Field 可选值：CreateTime。指定 Text 搜索时，将根据匹配度排序，该字段无效。
        # @type Sort: :class:`Tencentcloud::Cme.v20191029.models.SortBy`
        # @param Offset: 偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：50。
        # @type Limit: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :SearchScopes, :MaterialTypes, :Text, :Resolution, :DurationRange, :CreateTimeRange, :Tags, :Sort, :Offset, :Limit, :Operator
        
        def initialize(platform=nil, searchscopes=nil, materialtypes=nil, text=nil, resolution=nil, durationrange=nil, createtimerange=nil, tags=nil, sort=nil, offset=nil, limit=nil, operator=nil)
          @Platform = platform
          @SearchScopes = searchscopes
          @MaterialTypes = materialtypes
          @Text = text
          @Resolution = resolution
          @DurationRange = durationrange
          @CreateTimeRange = createtimerange
          @Tags = tags
          @Sort = sort
          @Offset = offset
          @Limit = limit
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @SearchScopes = params['SearchScopes']
          @MaterialTypes = params['MaterialTypes']
          @Text = params['Text']
          @Resolution = params['Resolution']
          unless params['DurationRange'].nil?
            @DurationRange = IntegerRange.new.deserialize(params[DurationRange])
          end
          unless params['CreateTimeRange'].nil?
            @CreateTimeRange = TimeRange.new.deserialize(params[CreateTimeRange])
          end
          @Tags = params['Tags']
          unless params['Sort'].nil?
            @Sort = SortBy.new.deserialize(params[Sort])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Operator = params['Operator']
        end
      end

      # SearchMaterial返回参数结构体
      class SearchMaterialResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合记录总条数。
        # @type TotalCount: Integer
        # @param MaterialInfoSet: 素材信息，仅返回基础信息。
        # @type MaterialInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MaterialInfoSet, :RequestId
        
        def initialize(totalcount=nil, materialinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @MaterialInfoSet = materialinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @MaterialInfoSet = params['MaterialInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # 搜索空间
      class SearchScope < TencentCloud::Common::AbstractModel
        # @param Owner: 分类路径归属。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param ClassPath: 按分类路径检索。 不填则默认按根分类路径检索。
        # @type ClassPath: String

        attr_accessor :Owner, :ClassPath
        
        def initialize(owner=nil, classpath=nil)
          @Owner = owner
          @ClassPath = classpath
        end

        def deserialize(params)
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params[Owner])
          end
          @ClassPath = params['ClassPath']
        end
      end

      # 排序
      class SortBy < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段。
        # @type Field: String
        # @param Order: 排序方式，可选值：Asc（升序）、Desc（降序），默认降序。
        # @type Order: String

        attr_accessor :Field, :Order
        
        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

      # 任务基础信息。
      class TaskBaseInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 Id。
        # @type TaskId: String
        # @param TaskType: 任务类型，取值有：
        # <li>VIDEO_EDIT_PROJECT_EXPORT：项目导出。</li>
        # @type TaskType: String
        # @param Status: 任务状态，取值有：
        # <li>PROCESSING：处理中：</li>
        # <li>SUCCESS：成功；</li>
        # <li>FAIL：失败。</li>
        # @type Status: String
        # @param Progress: 任务进度，取值为：0~100。
        # @type Progress: Integer
        # @param ErrCode: 错误码。
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param ErrMsg: 错误信息。
        # @type ErrMsg: String
        # @param CreateTime: 创建时间，格式按照 ISO 8601 标准表示。
        # @type CreateTime: String

        attr_accessor :TaskId, :TaskType, :Status, :Progress, :ErrCode, :ErrMsg, :CreateTime
        
        def initialize(taskid=nil, tasktype=nil, status=nil, progress=nil, errcode=nil, errmsg=nil, createtime=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @Status = status
          @Progress = progress
          @ErrCode = errcode
          @ErrMsg = errmsg
          @CreateTime = createtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @Status = params['Status']
          @Progress = params['Progress']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @CreateTime = params['CreateTime']
        end
      end

      # 团队信息
      class TeamInfo < TencentCloud::Common::AbstractModel
        # @param TeamId: 团队 ID。
        # @type TeamId: String
        # @param Name: 团队名称。
        # @type Name: String
        # @param MemberCount: 团队成员个数
        # @type MemberCount: Integer
        # @param CreateTime: 团队创建时间，格式按照 ISO 8601 标准表示。
        # @type CreateTime: String
        # @param UpdateTime: 团队最后更新时间，格式按照 ISO 8601 标准表示。
        # @type UpdateTime: String

        attr_accessor :TeamId, :Name, :MemberCount, :CreateTime, :UpdateTime
        
        def initialize(teamid=nil, name=nil, membercount=nil, createtime=nil, updatetime=nil)
          @TeamId = teamid
          @Name = name
          @MemberCount = membercount
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TeamId = params['TeamId']
          @Name = params['Name']
          @MemberCount = params['MemberCount']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 团队成员信息
      class TeamMemberInfo < TencentCloud::Common::AbstractModel
        # @param MemberId: 团队成员 ID。
        # @type MemberId: String
        # @param Remark: 团队成员备注。
        # @type Remark: String
        # @param Role: 团队成员角色，取值：
        # <li>Owner：团队所有者，添加团队成员及修改团队成员解决时不能填此角色；</li>
        # <li>Admin：团队管理员；</li>
        # <li>Member：普通成员。</li>
        # @type Role: String

        attr_accessor :MemberId, :Remark, :Role
        
        def initialize(memberid=nil, remark=nil, role=nil)
          @MemberId = memberid
          @Remark = remark
          @Role = role
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @Remark = params['Remark']
          @Role = params['Role']
        end
      end

      # 时间范围
      class TimeRange < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，使用 ISO 日期格式。
        # @type StartTime: String
        # @param EndTime: 结束时间，使用 ISO 日期格式。
        # @type EndTime: String

        attr_accessor :StartTime, :EndTime
        
        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 云点播导出信息。
      class VODExportInfo < TencentCloud::Common::AbstractModel
        # @param Name: 导出的媒资名称。
        # @type Name: String
        # @param ClassId: 导出的媒资分类 Id。
        # @type ClassId: Integer

        attr_accessor :Name, :ClassId
        
        def initialize(name=nil, classid=nil)
          @Name = name
          @ClassId = classid
        end

        def deserialize(params)
          @Name = params['Name']
          @ClassId = params['ClassId']
        end
      end

      # 项目导出信息。
      class VideoEditProjectOutput < TencentCloud::Common::AbstractModel
        # @param VodFileId: 云点播媒资 FileId。
        # @type VodFileId: String
        # @param URL: 导出的媒资 URL。
        # @type URL: String
        # @param MetaData: 元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Cme.v20191029.models.MediaMetaData`

        attr_accessor :VodFileId, :URL, :MetaData
        
        def initialize(vodfileid=nil, url=nil, metadata=nil)
          @VodFileId = vodfileid
          @URL = url
          @MetaData = metadata
        end

        def deserialize(params)
          @VodFileId = params['VodFileId']
          @URL = params['URL']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params[MetaData])
          end
        end
      end

      # 视频素材信息
      class VideoMaterial < TencentCloud::Common::AbstractModel
        # @param MetaData: 素材元信息。
        # @type MetaData: :class:`Tencentcloud::Cme.v20191029.models.MediaMetaData`
        # @param ImageSpriteInfo: 雪碧图信息。
        # @type ImageSpriteInfo: :class:`Tencentcloud::Cme.v20191029.models.MediaImageSpriteInfo`
        # @param MaterialUrl: 素材媒体文件的播放 URL 地址。
        # @type MaterialUrl: String
        # @param CoverUrl: 素材媒体文件的封面图片地址。
        # @type CoverUrl: String
        # @param Resolution: 媒体文件分辨率。取值为：LD/SD/HD/FHD/2K/4K。
        # @type Resolution: String
        # @param MaterialStatus: 素材状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaterialStatus: :class:`Tencentcloud::Cme.v20191029.models.MaterialStatus`
        # @param OriginalUrl: 素材媒体文件的原始 URL 地址。
        # @type OriginalUrl: String
        # @param VodFileId: 云点播媒资 FileId。
        # @type VodFileId: String

        attr_accessor :MetaData, :ImageSpriteInfo, :MaterialUrl, :CoverUrl, :Resolution, :MaterialStatus, :OriginalUrl, :VodFileId
        
        def initialize(metadata=nil, imagespriteinfo=nil, materialurl=nil, coverurl=nil, resolution=nil, materialstatus=nil, originalurl=nil, vodfileid=nil)
          @MetaData = metadata
          @ImageSpriteInfo = imagespriteinfo
          @MaterialUrl = materialurl
          @CoverUrl = coverurl
          @Resolution = resolution
          @MaterialStatus = materialstatus
          @OriginalUrl = originalurl
          @VodFileId = vodfileid
        end

        def deserialize(params)
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params[MetaData])
          end
          unless params['ImageSpriteInfo'].nil?
            @ImageSpriteInfo = MediaImageSpriteInfo.new.deserialize(params[ImageSpriteInfo])
          end
          @MaterialUrl = params['MaterialUrl']
          @CoverUrl = params['CoverUrl']
          @Resolution = params['Resolution']
          unless params['MaterialStatus'].nil?
            @MaterialStatus = MaterialStatus.new.deserialize(params[MaterialStatus])
          end
          @OriginalUrl = params['OriginalUrl']
          @VodFileId = params['VodFileId']
        end
      end

      # 视频流信息。
      class VideoStreamInfo < TencentCloud::Common::AbstractModel
        # @param Bitrate: 码率，单位：bps。
        # @type Bitrate: Integer
        # @param Height: 高度，单位：px。
        # @type Height: Integer
        # @param Width: 宽度，单位：px。
        # @type Width: Integer
        # @param Codec: 编码格式。
        # @type Codec: String
        # @param Fps: 帧率，单位：hz。
        # @type Fps: Integer

        attr_accessor :Bitrate, :Height, :Width, :Codec, :Fps
        
        def initialize(bitrate=nil, height=nil, width=nil, codec=nil, fps=nil)
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Codec = codec
          @Fps = fps
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Codec = params['Codec']
          @Fps = params['Fps']
        end
      end

    end
  end
end

