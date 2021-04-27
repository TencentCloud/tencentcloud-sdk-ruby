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
      # 制作云用户账号信息。
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户 Id。
        # @type UserId: String
        # @param Phone: 用户手机号码。
        # @type Phone: String
        # @param Nick: 用户昵称。
        # @type Nick: String
        # @param Status: 账号状态，取值：
        # <li>Normal：有效；</li>
        # <li>Stopped：无效。</li>
        # @type Status: String

        attr_accessor :UserId, :Phone, :Nick, :Status
        
        def initialize(userid=nil, phone=nil, nick=nil, status=nil)
          @UserId = userid
          @Phone = phone
          @Nick = nick
          @Status = status
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Phone = params['Phone']
          @Nick = params['Nick']
          @Status = params['Status']
        end
      end

      # 添加的团队成员信息
      class AddMemberInfo < TencentCloud::Common::AbstractModel
        # @param MemberId: 团队成员 ID。
        # @type MemberId: String
        # @param Remark: 团队成员备注。
        # @type Remark: String
        # @param Role: 团队成员角色，不填则默认添加普通成员。可选值：
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
          unless params['TeamMembers'].nil?
            @TeamMembers = []
            params['TeamMembers'].each do |i|
              @TeamMembers << AddMemberInfo.new.deserialize(i)
            end
          end
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
            @MetaData = MediaMetaData.new.deserialize(params['MetaData'])
          end
          @MaterialUrl = params['MaterialUrl']
          @CoverUrl = params['CoverUrl']
          unless params['MaterialStatus'].nil?
            @MaterialStatus = MaterialStatus.new.deserialize(params['MaterialStatus'])
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

      # 音频轨道上的音频片段信息。
      class AudioTrackItem < TencentCloud::Common::AbstractModel
        # @param SourceType: 音频媒体来源类型，取值有：
        # <ul>
        # <li>VOD ：素材来源于云点播文件 ；</li>
        # <li>CME ：视频来源于制作云媒体文件 ；</li>
        # <li>EXTERNAL ：视频来源于媒资绑定。</li>
        # </ul>
        # @type SourceType: String
        # @param SourceMedia: 音频片段的媒体来源，可以是：
        # <ul>
        # <li>当 SourceType 为 VOD 时，为云点播的媒体文件 FileId ，会默认将该 FileId 导入到项目中 ；</li>
        # <li>当 SourceType 为 CME 时，为制作云的媒体 ID，项目归属者必须对该云媒资有访问权限；</li>
        # <li>当 SourceType 为 EXTERNAL 时，为媒资绑定的 Definition 与 MediaKey 中间用冒号分隔合并后的字符串，格式为 Definition:MediaKey 。</li>
        # </ul>
        # @type SourceMedia: String
        # @param SourceMediaStartTime: 音频片段取自媒体文件的起始时间，单位为秒。0 表示从媒体开始位置截取。默认为0。
        # @type SourceMediaStartTime: Float
        # @param Duration: 音频片段的时长，单位为秒。默认和媒体本身长度一致，表示截取全部媒体。
        # @type Duration: Float

        attr_accessor :SourceType, :SourceMedia, :SourceMediaStartTime, :Duration
        
        def initialize(sourcetype=nil, sourcemedia=nil, sourcemediastarttime=nil, duration=nil)
          @SourceType = sourcetype
          @SourceMedia = sourcemedia
          @SourceMediaStartTime = sourcemediastarttime
          @Duration = duration
        end

        def deserialize(params)
          @SourceType = params['SourceType']
          @SourceMedia = params['SourceMedia']
          @SourceMediaStartTime = params['SourceMediaStartTime']
          @Duration = params['Duration']
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
            @Authorizee = Entity.new.deserialize(params['Authorizee'])
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
        # @param Owner: 导出媒体归属，个人或团队。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Name: 导出的媒体名称，不得超过30个字符。
        # @type Name: String
        # @param Description: 导出的媒体信息，不得超过50个字符。
        # @type Description: String
        # @param ClassPath: 导出的媒体分类路径，长度不能超过15字符。
        # @type ClassPath: String
        # @param TagSet: 导出的媒体标签，单个标签不得超过10个字符。
        # @type TagSet: Array
        # @param ThirdPartyPublishInfos: 第三方平台发布信息列表。暂未正式对外，请勿使用。
        # @type ThirdPartyPublishInfos: Array

        attr_accessor :Owner, :Name, :Description, :ClassPath, :TagSet, :ThirdPartyPublishInfos
        
        def initialize(owner=nil, name=nil, description=nil, classpath=nil, tagset=nil, thirdpartypublishinfos=nil)
          @Owner = owner
          @Name = name
          @Description = description
          @ClassPath = classpath
          @TagSet = tagset
          @ThirdPartyPublishInfos = thirdpartypublishinfos
        end

        def deserialize(params)
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          @Name = params['Name']
          @Description = params['Description']
          @ClassPath = params['ClassPath']
          @TagSet = params['TagSet']
          unless params['ThirdPartyPublishInfos'].nil?
            @ThirdPartyPublishInfos = []
            params['ThirdPartyPublishInfos'].each do |i|
              @ThirdPartyPublishInfos << ThirdPartyPublishInfo.new.deserialize(i)
            end
          end
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
            @Owner = Entity.new.deserialize(params['Owner'])
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
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验分类创建权限。
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
            @Owner = Entity.new.deserialize(params['Owner'])
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
        # <li> MATERIAL：媒体文件链接。</li>
        # @type Type: String
        # @param Name: 链接名称，不能超过30个字符。
        # @type Name: String
        # @param Owner: 链接归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param DestinationId: 目标资源Id。取值：
        # <li>当 Type 为 MATERIAL 时填媒体 ID；</li>
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
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          @DestinationId = params['DestinationId']
          unless params['DestinationOwner'].nil?
            @DestinationOwner = Entity.new.deserialize(params['DestinationOwner'])
          end
          @ClassPath = params['ClassPath']
          @Operator = params['Operator']
        end
      end

      # CreateLink返回参数结构体
      class CreateLinkResponse < TencentCloud::Common::AbstractModel
        # @param MaterialId: 新建链接的媒体 Id。
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
        # @param Name: 项目名称，不可超过30个字符。
        # @type Name: String
        # @param Owner: 项目归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Category: 项目类别，取值有：
        # <li>VIDEO_EDIT：视频编辑。</li>
        # <li>SWITCHER：导播台。</li>
        # <li>VIDEO_SEGMENTATION：视频拆条。</li>
        # <li>STREAM_CONNECT：云转推。</li>
        # <li>RECORD_REPLAY：录制回放。</li>
        # @type Category: String
        # @param AspectRatio: 画布宽高比。
        # 该字段已经废弃，请使用具体项目输入中的 AspectRatio 字段。
        # @type AspectRatio: String
        # @param Description: 项目描述信息。
        # @type Description: String
        # @param SwitcherProjectInput: 导播台信息，仅当项目类型为 SWITCHER 时必填。
        # @type SwitcherProjectInput: :class:`Tencentcloud::Cme.v20191029.models.SwitcherProjectInput`
        # @param LiveStreamClipProjectInput: 直播剪辑信息，暂未开放，请勿使用。
        # @type LiveStreamClipProjectInput: :class:`Tencentcloud::Cme.v20191029.models.LiveStreamClipProjectInput`
        # @param VideoEditProjectInput: 视频编辑信息，仅当项目类型为 VIDEO_EDIT 时必填。
        # @type VideoEditProjectInput: :class:`Tencentcloud::Cme.v20191029.models.VideoEditProjectInput`
        # @param VideoSegmentationProjectInput: 视频拆条信息，仅当项目类型为 VIDEO_SEGMENTATION  时必填。
        # @type VideoSegmentationProjectInput: :class:`Tencentcloud::Cme.v20191029.models.VideoSegmentationProjectInput`
        # @param StreamConnectProjectInput: 云转推项目信息，仅当项目类型为 STREAM_CONNECT 时必填。
        # @type StreamConnectProjectInput: :class:`Tencentcloud::Cme.v20191029.models.StreamConnectProjectInput`
        # @param RecordReplayProjectInput: 录制回放项目信息，仅当项目类型为 RECORD_REPLAY 时必填。
        # @type RecordReplayProjectInput: :class:`Tencentcloud::Cme.v20191029.models.RecordReplayProjectInput`

        attr_accessor :Platform, :Name, :Owner, :Category, :AspectRatio, :Description, :SwitcherProjectInput, :LiveStreamClipProjectInput, :VideoEditProjectInput, :VideoSegmentationProjectInput, :StreamConnectProjectInput, :RecordReplayProjectInput
        
        def initialize(platform=nil, name=nil, owner=nil, category=nil, aspectratio=nil, description=nil, switcherprojectinput=nil, livestreamclipprojectinput=nil, videoeditprojectinput=nil, videosegmentationprojectinput=nil, streamconnectprojectinput=nil, recordreplayprojectinput=nil)
          @Platform = platform
          @Name = name
          @Owner = owner
          @Category = category
          @AspectRatio = aspectratio
          @Description = description
          @SwitcherProjectInput = switcherprojectinput
          @LiveStreamClipProjectInput = livestreamclipprojectinput
          @VideoEditProjectInput = videoeditprojectinput
          @VideoSegmentationProjectInput = videosegmentationprojectinput
          @StreamConnectProjectInput = streamconnectprojectinput
          @RecordReplayProjectInput = recordreplayprojectinput
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Name = params['Name']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          @Category = params['Category']
          @AspectRatio = params['AspectRatio']
          @Description = params['Description']
          unless params['SwitcherProjectInput'].nil?
            @SwitcherProjectInput = SwitcherProjectInput.new.deserialize(params['SwitcherProjectInput'])
          end
          unless params['LiveStreamClipProjectInput'].nil?
            @LiveStreamClipProjectInput = LiveStreamClipProjectInput.new.deserialize(params['LiveStreamClipProjectInput'])
          end
          unless params['VideoEditProjectInput'].nil?
            @VideoEditProjectInput = VideoEditProjectInput.new.deserialize(params['VideoEditProjectInput'])
          end
          unless params['VideoSegmentationProjectInput'].nil?
            @VideoSegmentationProjectInput = VideoSegmentationProjectInput.new.deserialize(params['VideoSegmentationProjectInput'])
          end
          unless params['StreamConnectProjectInput'].nil?
            @StreamConnectProjectInput = StreamConnectProjectInput.new.deserialize(params['StreamConnectProjectInput'])
          end
          unless params['RecordReplayProjectInput'].nil?
            @RecordReplayProjectInput = RecordReplayProjectInput.new.deserialize(params['RecordReplayProjectInput'])
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
            @Owner = Entity.new.deserialize(params['Owner'])
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
        # @param MaterialId: 媒体 Id。
        # @type MaterialId: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验媒体删除权限。
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
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验对项目删除操作权限。
        # @type Operator: String

        attr_accessor :Platform, :ProjectId, :Operator
        
        def initialize(platform=nil, projectid=nil, operator=nil)
          @Platform = platform
          @ProjectId = projectid
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @Operator = params['Operator']
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

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台唯一标识。
        # @type Platform: String
        # @param Phone: 手机号码。
        # @type Phone: String
        # @param Offset: 分页返回的起始偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：10，最大值：20。
        # @type Limit: Integer

        attr_accessor :Platform, :Phone, :Offset, :Limit
        
        def initialize(platform=nil, phone=nil, offset=nil, limit=nil)
          @Platform = platform
          @Phone = phone
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Phone = params['Phone']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合搜索条件的记录总数。
        # @type TotalCount: Integer
        # @param AccountInfoSet: 账号信息列表。
        # @type AccountInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccountInfoSet, :RequestId
        
        def initialize(totalcount=nil, accountinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @AccountInfoSet = accountinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AccountInfoSet'].nil?
            @AccountInfoSet = []
            params['AccountInfoSet'].each do |i|
              @AccountInfoSet << AccountInfo.new.deserialize(i)
            end
          end
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
            @Owner = Entity.new.deserialize(params['Owner'])
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
          unless params['ClassInfoSet'].nil?
            @ClassInfoSet = []
            params['ClassInfoSet'].each do |i|
              @ClassInfoSet << ClassInfo.new.deserialize(i)
            end
          end
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
          unless params['TeamSet'].nil?
            @TeamSet = []
            params['TeamSet'].each do |i|
              @TeamSet << JoinTeamInfo.new.deserialize(i)
            end
          end
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
          unless params['LoginStatusInfoSet'].nil?
            @LoginStatusInfoSet = []
            params['LoginStatusInfoSet'].each do |i|
              @LoginStatusInfoSet << LoginStatusInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaterials请求参数结构体
      class DescribeMaterialsRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param MaterialIds: 媒体 ID 列表，N 从 0 开始取值，最大 19。
        # @type MaterialIds: Array
        # @param Sort: 列表排序，支持下列排序字段：
        # <li>CreateTime：创建时间；</li>
        # <li>UpdateTime：更新时间。</li>
        # @type Sort: :class:`Tencentcloud::Cme.v20191029.models.SortBy`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验媒体的访问权限。
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
            @Sort = SortBy.new.deserialize(params['Sort'])
          end
          @Operator = params['Operator']
        end
      end

      # DescribeMaterials返回参数结构体
      class DescribeMaterialsResponse < TencentCloud::Common::AbstractModel
        # @param MaterialInfoSet: 媒体列表信息。
        # @type MaterialInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaterialInfoSet, :RequestId
        
        def initialize(materialinfoset=nil, requestid=nil)
          @MaterialInfoSet = materialinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MaterialInfoSet'].nil?
            @MaterialInfoSet = []
            params['MaterialInfoSet'].each do |i|
              @MaterialInfoSet << MaterialInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePlatforms请求参数结构体
      class DescribePlatformsRequest < TencentCloud::Common::AbstractModel
        # @param Platforms: 平台集合。
        # @type Platforms: Array
        # @param LicenseIds: 平台绑定的 license Id 集合。
        # @type LicenseIds: Array
        # @param Offset: 分页返回的起始偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：10。
        # @type Limit: Integer

        attr_accessor :Platforms, :LicenseIds, :Offset, :Limit
        
        def initialize(platforms=nil, licenseids=nil, offset=nil, limit=nil)
          @Platforms = platforms
          @LicenseIds = licenseids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Platforms = params['Platforms']
          @LicenseIds = params['LicenseIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePlatforms返回参数结构体
      class DescribePlatformsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合搜索条件的记录总数。
        # @type TotalCount: Integer
        # @param PlatformInfoSet: 平台信息列表。
        # @type PlatformInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PlatformInfoSet, :RequestId
        
        def initialize(totalcount=nil, platforminfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @PlatformInfoSet = platforminfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PlatformInfoSet'].nil?
            @PlatformInfoSet = []
            params['PlatformInfoSet'].each do |i|
              @PlatformInfoSet << PlatformInfo.new.deserialize(i)
            end
          end
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
        # @param CategorySet: 项目类别，取值有：
        # <li>VIDEO_EDIT：视频编辑。</li>
        # <li>SWITCHER：导播台。</li>
        # <li>VIDEO_SEGMENTATION：视频拆条。</li>
        # <li>STREAM_CONNECT：云转推。</li>
        # <li>RECORD_REPLAY：录制回放。</li>
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
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验项目访问权限。
        # @type Operator: String

        attr_accessor :Platform, :ProjectIds, :AspectRatioSet, :CategorySet, :Sort, :Owner, :Offset, :Limit, :Operator
        
        def initialize(platform=nil, projectids=nil, aspectratioset=nil, categoryset=nil, sort=nil, owner=nil, offset=nil, limit=nil, operator=nil)
          @Platform = platform
          @ProjectIds = projectids
          @AspectRatioSet = aspectratioset
          @CategorySet = categoryset
          @Sort = sort
          @Owner = owner
          @Offset = offset
          @Limit = limit
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectIds = params['ProjectIds']
          @AspectRatioSet = params['AspectRatioSet']
          @CategorySet = params['CategorySet']
          unless params['Sort'].nil?
            @Sort = SortBy.new.deserialize(params['Sort'])
          end
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Operator = params['Operator']
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
          unless params['ProjectInfoSet'].nil?
            @ProjectInfoSet = []
            params['ProjectInfoSet'].each do |i|
              @ProjectInfoSet << ProjectInfo.new.deserialize(i)
            end
          end
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
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          unless params['Resource'].nil?
            @Resource = Resource.new.deserialize(params['Resource'])
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
          unless params['AuthorizationInfoSet'].nil?
            @AuthorizationInfoSet = []
            params['AuthorizationInfoSet'].each do |i|
              @AuthorizationInfoSet << AuthorizationInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSharedSpace请求参数结构体
      class DescribeSharedSpaceRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Authorizee: 被授权目标,，个人或团队。
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
            @Authorizee = Entity.new.deserialize(params['Authorizee'])
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
          unless params['AuthorizerSet'].nil?
            @AuthorizerSet = []
            params['AuthorizerSet'].each do |i|
              @AuthorizerSet << Authorizer.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TaskId: 任务 Id。
        # @type TaskId: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验对任务的访问权限。
        # @type Operator: String

        attr_accessor :Platform, :TaskId, :Operator
        
        def initialize(platform=nil, taskid=nil, operator=nil)
          @Platform = platform
          @TaskId = taskid
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TaskId = params['TaskId']
          @Operator = params['Operator']
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
            @VideoEditProjectOutput = VideoEditProjectOutput.new.deserialize(params['VideoEditProjectOutput'])
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
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验对任务的访问权限。
        # @type Operator: String

        attr_accessor :Platform, :ProjectId, :TaskTypeSet, :StatusSet, :Offset, :Limit, :Operator
        
        def initialize(platform=nil, projectid=nil, tasktypeset=nil, statusset=nil, offset=nil, limit=nil, operator=nil)
          @Platform = platform
          @ProjectId = projectid
          @TaskTypeSet = tasktypeset
          @StatusSet = statusset
          @Offset = offset
          @Limit = limit
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @TaskTypeSet = params['TaskTypeSet']
          @StatusSet = params['StatusSet']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Operator = params['Operator']
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
          unless params['TaskBaseInfoSet'].nil?
            @TaskBaseInfoSet = []
            params['TaskBaseInfoSet'].each do |i|
              @TaskBaseInfoSet << TaskBaseInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTeamMembers请求参数结构体
      class DescribeTeamMembersRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TeamId: 团队 ID。
        # @type TeamId: String
        # @param MemberIds: 成员 ID 列表，限指定30个指定成员。如不填，则返回指定团队下的所有成员。
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
          unless params['MemberSet'].nil?
            @MemberSet = []
            params['MemberSet'].each do |i|
              @MemberSet << TeamMemberInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTeams请求参数结构体
      class DescribeTeamsRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TeamIds: 团队 ID 列表，限30个。若不填，则默认获取平台下所有团队。
        # @type TeamIds: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：20，最大值：30。
        # @type Limit: Integer

        attr_accessor :Platform, :TeamIds, :Offset, :Limit
        
        def initialize(platform=nil, teamids=nil, offset=nil, limit=nil)
          @Platform = platform
          @TeamIds = teamids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TeamIds = params['TeamIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTeams返回参数结构体
      class DescribeTeamsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param TeamSet: 团队列表。
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
          unless params['TeamSet'].nil?
            @TeamSet = []
            params['TeamSet'].each do |i|
              @TeamSet << TeamInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 空的轨道片段，用来进行时间轴的占位。如需要两个音频片段之间有一段时间的静音，可以用 EmptyTrackItem 来进行占位。
      class EmptyTrackItem < TencentCloud::Common::AbstractModel
        # @param Duration: 持续时间，单位为秒。
        # @type Duration: Float

        attr_accessor :Duration
        
        def initialize(duration=nil)
          @Duration = duration
        end

        def deserialize(params)
          @Duration = params['Duration']
        end
      end

      # 用于描述资源的归属，归属者为个人或者团队。
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
        # @param TrackData: 在线编辑轨道数据。轨道数据相关介绍，请查看 [视频合成协议](https://cloud.tencent.com/document/product/1156/51225)。
        # @type TrackData: String
        # @param CMEExportInfo: 导出的云剪素材信息。指定 ExportDestination = CME 时有效。
        # @type CMEExportInfo: :class:`Tencentcloud::Cme.v20191029.models.CMEExportInfo`
        # @param VODExportInfo: 导出的云点播媒资信息。指定 ExportDestination = VOD 时有效。
        # @type VODExportInfo: :class:`Tencentcloud::Cme.v20191029.models.VODExportInfo`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验导出操作权限。
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
            @CMEExportInfo = CMEExportInfo.new.deserialize(params['CMEExportInfo'])
          end
          unless params['VODExportInfo'].nil?
            @VODExportInfo = VODExportInfo.new.deserialize(params['VODExportInfo'])
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

      # ExportVideoByTemplate请求参数结构体
      class ExportVideoByTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param TemplateId: 视频编辑模板  Id。
        # @type TemplateId: String
        # @param Definition: 导出模板 Id，目前不支持自定义创建，只支持下面的预置模板 Id。
        # <li>10：分辨率为 480P，输出视频格式为 MP4；</li>
        # <li>11：分辨率为 720P，输出视频格式为 MP4；</li>
        # <li>12：分辨率为 1080P，输出视频格式为 MP4。</li>
        # @type Definition: Integer
        # @param ExportDestination: 导出目标，可取值为：
        # <li>CME：云剪，即导出为云剪媒体；</li>
        # <li>VOD：云点播，即导出为云点播媒资。</li>
        # @type ExportDestination: String
        # @param SlotReplacements: 需要替换的素材信息。
        # @type SlotReplacements: Array
        # @param CMEExportInfo: 导出的云剪媒体信息。指定 ExportDestination = CME 时有效。
        # @type CMEExportInfo: :class:`Tencentcloud::Cme.v20191029.models.CMEExportInfo`
        # @param VODExportInfo: 导出的云点播媒资信息。指定 ExportDestination = VOD 时有效。
        # @type VODExportInfo: :class:`Tencentcloud::Cme.v20191029.models.VODExportInfo`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验项目导出权限。
        # @type Operator: String

        attr_accessor :Platform, :TemplateId, :Definition, :ExportDestination, :SlotReplacements, :CMEExportInfo, :VODExportInfo, :Operator
        
        def initialize(platform=nil, templateid=nil, definition=nil, exportdestination=nil, slotreplacements=nil, cmeexportinfo=nil, vodexportinfo=nil, operator=nil)
          @Platform = platform
          @TemplateId = templateid
          @Definition = definition
          @ExportDestination = exportdestination
          @SlotReplacements = slotreplacements
          @CMEExportInfo = cmeexportinfo
          @VODExportInfo = vodexportinfo
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @TemplateId = params['TemplateId']
          @Definition = params['Definition']
          @ExportDestination = params['ExportDestination']
          unless params['SlotReplacements'].nil?
            @SlotReplacements = []
            params['SlotReplacements'].each do |i|
              @SlotReplacements << SlotReplacementInfo.new.deserialize(i)
            end
          end
          unless params['CMEExportInfo'].nil?
            @CMEExportInfo = CMEExportInfo.new.deserialize(params['CMEExportInfo'])
          end
          unless params['VODExportInfo'].nil?
            @VODExportInfo = VODExportInfo.new.deserialize(params['VODExportInfo'])
          end
          @Operator = params['Operator']
        end
      end

      # ExportVideoByTemplate返回参数结构体
      class ExportVideoByTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 导出任务 Id。
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

      # ExportVideoByVideoSegmentationData请求参数结构体
      class ExportVideoByVideoSegmentationDataRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ProjectId: 视频拆条项目 Id 。
        # @type ProjectId: String
        # @param SegmentGroupId: 指定需要导出的智能拆条片段的组 Id 。
        # @type SegmentGroupId: String
        # @param SegmentIds: 指定需要导出的智能拆条片段 Id  集合。
        # @type SegmentIds: Array
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
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :ProjectId, :SegmentGroupId, :SegmentIds, :Definition, :ExportDestination, :CMEExportInfo, :VODExportInfo, :Operator
        
        def initialize(platform=nil, projectid=nil, segmentgroupid=nil, segmentids=nil, definition=nil, exportdestination=nil, cmeexportinfo=nil, vodexportinfo=nil, operator=nil)
          @Platform = platform
          @ProjectId = projectid
          @SegmentGroupId = segmentgroupid
          @SegmentIds = segmentids
          @Definition = definition
          @ExportDestination = exportdestination
          @CMEExportInfo = cmeexportinfo
          @VODExportInfo = vodexportinfo
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @SegmentGroupId = params['SegmentGroupId']
          @SegmentIds = params['SegmentIds']
          @Definition = params['Definition']
          @ExportDestination = params['ExportDestination']
          unless params['CMEExportInfo'].nil?
            @CMEExportInfo = CMEExportInfo.new.deserialize(params['CMEExportInfo'])
          end
          unless params['VODExportInfo'].nil?
            @VODExportInfo = VODExportInfo.new.deserialize(params['VODExportInfo'])
          end
          @Operator = params['Operator']
        end
      end

      # ExportVideoByVideoSegmentationData返回参数结构体
      class ExportVideoByVideoSegmentationDataResponse < TencentCloud::Common::AbstractModel
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
        # <li>CME：云剪，即导出为云剪媒体；</li>
        # <li>VOD：云点播，即导出为云点播媒资。</li>
        # @type ExportDestination: String
        # @param CoverData: 视频封面图片文件（如 jpeg, png 等）进行 Base64 编码后的字符串，仅支持 gif、jpeg、png 三种图片格式，原图片文件不能超过2 M大 小。
        # @type CoverData: String
        # @param CMEExportInfo: 导出的云剪媒体信息。指定 ExportDestination = CME 时有效。
        # @type CMEExportInfo: :class:`Tencentcloud::Cme.v20191029.models.CMEExportInfo`
        # @param VODExportInfo: 导出的云点播媒资信息。指定 ExportDestination = VOD 时有效。
        # @type VODExportInfo: :class:`Tencentcloud::Cme.v20191029.models.VODExportInfo`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验项目导出权限。
        # @type Operator: String

        attr_accessor :Platform, :ProjectId, :Definition, :ExportDestination, :CoverData, :CMEExportInfo, :VODExportInfo, :Operator
        
        def initialize(platform=nil, projectid=nil, definition=nil, exportdestination=nil, coverdata=nil, cmeexportinfo=nil, vodexportinfo=nil, operator=nil)
          @Platform = platform
          @ProjectId = projectid
          @Definition = definition
          @ExportDestination = exportdestination
          @CoverData = coverdata
          @CMEExportInfo = cmeexportinfo
          @VODExportInfo = vodexportinfo
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @Definition = params['Definition']
          @ExportDestination = params['ExportDestination']
          @CoverData = params['CoverData']
          unless params['CMEExportInfo'].nil?
            @CMEExportInfo = CMEExportInfo.new.deserialize(params['CMEExportInfo'])
          end
          unless params['VODExportInfo'].nil?
            @VODExportInfo = VODExportInfo.new.deserialize(params['VODExportInfo'])
          end
          @Operator = params['Operator']
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

      # 媒资绑定资源信息，包含媒资绑定模板 ID 和文件信息。
      class ExternalMediaInfo < TencentCloud::Common::AbstractModel
        # @param Definition: 媒资绑定模板 ID。
        # @type Definition: Integer
        # @param MediaKey: 媒资绑定媒体路径或文件 ID。
        # @type MediaKey: String

        attr_accessor :Definition, :MediaKey
        
        def initialize(definition=nil, mediakey=nil)
          @Definition = definition
          @MediaKey = mediakey
        end

        def deserialize(params)
          @Definition = params['Definition']
          @MediaKey = params['MediaKey']
        end
      end

      # FlattenListMedia请求参数结构体
      class FlattenListMediaRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ClassPath: 媒体分类路径，例如填写"/a/b"，则代表平铺该分类路径下及其子分类路径下的媒体信息。
        # @type ClassPath: String
        # @param Owner: 媒体分类的归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：50。
        # @type Limit: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验媒体访问权限。
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
            @Owner = Entity.new.deserialize(params['Owner'])
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
        # @param MaterialInfoSet: 该分类路径下及其子分类下的所有媒体基础信息列表。
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
          unless params['MaterialInfoSet'].nil?
            @MaterialInfoSet = []
            params['MaterialInfoSet'].each do |i|
              @MaterialInfoSet << MaterialInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GenerateVideoSegmentationSchemeByAi请求参数结构体
      class GenerateVideoSegmentationSchemeByAiRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ProjectId: 视频拆条项目 Id 。
        # @type ProjectId: String
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :ProjectId, :Operator
        
        def initialize(platform=nil, projectid=nil, operator=nil)
          @Platform = platform
          @ProjectId = projectid
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @Operator = params['Operator']
        end
      end

      # GenerateVideoSegmentationSchemeByAi返回参数结构体
      class GenerateVideoSegmentationSchemeByAiResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频智能拆条任务 Id 。
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

      # GrantResourceAuthorization请求参数结构体
      class GrantResourceAuthorizationRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param Owner: 资源归属者，个人或者团队。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Resources: 被授权资源。
        # @type Resources: Array
        # @param Authorizees: 被授权目标，个人或者团队。
        # @type Authorizees: Array
        # @param Permissions: 详细授权值。 取值有：
        # <li>R：可读，可以浏览媒体，但不能使用该媒体文件（将其添加到 Project），或复制到自己的媒资库中</li>
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
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              @Resources << Resource.new.deserialize(i)
            end
          end
          unless params['Authorizees'].nil?
            @Authorizees = []
            params['Authorizees'].each do |i|
              @Authorizees << Entity.new.deserialize(i)
            end
          end
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

      # HandleStreamConnectProject请求参数结构体
      class HandleStreamConnectProjectRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ProjectId: 云转推项目Id 。
        # @type ProjectId: String
        # @param Operation: 请参考 [操作类型](#Operation)
        # @type Operation: String
        # @param InputInfo: 转推输入源操作参数。具体操作方式详见 [操作类型](#Operation) 及下文示例。
        # @type InputInfo: :class:`Tencentcloud::Cme.v20191029.models.StreamInputInfo`
        # @param InputEndpoint: 主备输入源标识，取值有：
        # <li> Main ：主源；</li>
        # <li> Backup ：备源。</li>
        # @type InputEndpoint: String
        # @param OutputInfo: 转推输出源操作参数。具体操作方式详见 [操作类型](#Operation) 及下文示例。
        # @type OutputInfo: :class:`Tencentcloud::Cme.v20191029.models.StreamConnectOutput`
        # @param CurrentStopTime: 云转推当前预计结束时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。具体操作方式详见 [操作类型](#Operation) 及下文示例。
        # @type CurrentStopTime: String

        attr_accessor :Platform, :ProjectId, :Operation, :InputInfo, :InputEndpoint, :OutputInfo, :CurrentStopTime
        
        def initialize(platform=nil, projectid=nil, operation=nil, inputinfo=nil, inputendpoint=nil, outputinfo=nil, currentstoptime=nil)
          @Platform = platform
          @ProjectId = projectid
          @Operation = operation
          @InputInfo = inputinfo
          @InputEndpoint = inputendpoint
          @OutputInfo = outputinfo
          @CurrentStopTime = currentstoptime
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @Operation = params['Operation']
          unless params['InputInfo'].nil?
            @InputInfo = StreamInputInfo.new.deserialize(params['InputInfo'])
          end
          @InputEndpoint = params['InputEndpoint']
          unless params['OutputInfo'].nil?
            @OutputInfo = StreamConnectOutput.new.deserialize(params['OutputInfo'])
          end
          @CurrentStopTime = params['CurrentStopTime']
        end
      end

      # HandleStreamConnectProject返回参数结构体
      class HandleStreamConnectProjectResponse < TencentCloud::Common::AbstractModel
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
        # @param Owner: 媒体归属者，团队或个人。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Name: 媒体名称，不能超过30个字符。
        # @type Name: String
        # @param SourceType: 导入媒资类型，取值：
        # <li>VOD：云点播文件；</li>
        # <li>EXTERNAL：媒资绑定。</li>
        # 注意：如果不填默认为云点播文件。
        # @type SourceType: String
        # @param VodFileId: 云点播媒资 FileId，仅当 SourceType 为 VOD 时有效。
        # @type VodFileId: String
        # @param ExternalMediaInfo: 原始媒资文件信息，当 SourceType 取值 EXTERNAL 的时候必填。
        # @type ExternalMediaInfo: :class:`Tencentcloud::Cme.v20191029.models.ExternalMediaInfo`
        # @param ClassPath: 媒体分类路径，形如："/a/b"，层级数不能超过10，每个层级长度不能超过15字符。若不填则默认为根路径。
        # @type ClassPath: String
        # @param PreProcessDefinition: 媒体预处理任务模板 ID。取值：
        # <li>10：进行编辑预处理。</li>
        # @type PreProcessDefinition: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        # @type Operator: String

        attr_accessor :Platform, :Owner, :Name, :SourceType, :VodFileId, :ExternalMediaInfo, :ClassPath, :PreProcessDefinition, :Operator
        
        def initialize(platform=nil, owner=nil, name=nil, sourcetype=nil, vodfileid=nil, externalmediainfo=nil, classpath=nil, preprocessdefinition=nil, operator=nil)
          @Platform = platform
          @Owner = owner
          @Name = name
          @SourceType = sourcetype
          @VodFileId = vodfileid
          @ExternalMediaInfo = externalmediainfo
          @ClassPath = classpath
          @PreProcessDefinition = preprocessdefinition
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          @Name = params['Name']
          @SourceType = params['SourceType']
          @VodFileId = params['VodFileId']
          unless params['ExternalMediaInfo'].nil?
            @ExternalMediaInfo = ExternalMediaInfo.new.deserialize(params['ExternalMediaInfo'])
          end
          @ClassPath = params['ClassPath']
          @PreProcessDefinition = params['PreProcessDefinition']
          @Operator = params['Operator']
        end
      end

      # ImportMaterial返回参数结构体
      class ImportMaterialResponse < TencentCloud::Common::AbstractModel
        # @param MaterialId: 媒体 Id。
        # @type MaterialId: String
        # @param PreProcessTaskId: 媒体文预处理任务 ID，如果未指定发起预处理任务则为空。
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
        # @param SourceType: 导入媒资类型，取值：
        # <li>VOD：云点播文件；</li>
        # <li>EXTERNAL：媒资绑定。</li>
        # 注意：如果不填默认为云点播文件。
        # @type SourceType: String
        # @param VodFileId: 云点播媒资文件 Id，当 SourceType 取值 VOD 或者缺省的时候必填。
        # @type VodFileId: String
        # @param ExternalMediaInfo: 原始媒资文件信息，当 SourceType 取值 EXTERNAL 的时候必填。
        # @type ExternalMediaInfo: :class:`Tencentcloud::Cme.v20191029.models.ExternalMediaInfo`
        # @param Name: 媒体名称，不能超过30个字符。
        # @type Name: String
        # @param PreProcessDefinition: 媒体预处理任务模板 ID，取值：
        # <li>10：进行编辑预处理。</li>
        # 注意：如果填0则不进行处理。
        # @type PreProcessDefinition: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验项目和媒体文件访问权限。
        # @type Operator: String

        attr_accessor :Platform, :ProjectId, :SourceType, :VodFileId, :ExternalMediaInfo, :Name, :PreProcessDefinition, :Operator
        
        def initialize(platform=nil, projectid=nil, sourcetype=nil, vodfileid=nil, externalmediainfo=nil, name=nil, preprocessdefinition=nil, operator=nil)
          @Platform = platform
          @ProjectId = projectid
          @SourceType = sourcetype
          @VodFileId = vodfileid
          @ExternalMediaInfo = externalmediainfo
          @Name = name
          @PreProcessDefinition = preprocessdefinition
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          @ProjectId = params['ProjectId']
          @SourceType = params['SourceType']
          @VodFileId = params['VodFileId']
          unless params['ExternalMediaInfo'].nil?
            @ExternalMediaInfo = ExternalMediaInfo.new.deserialize(params['ExternalMediaInfo'])
          end
          @Name = params['Name']
          @PreProcessDefinition = params['PreProcessDefinition']
          @Operator = params['Operator']
        end
      end

      # ImportMediaToProject返回参数结构体
      class ImportMediaToProjectResponse < TencentCloud::Common::AbstractModel
        # @param MaterialId: 媒体 Id。
        # @type MaterialId: String
        # @param TaskId: 媒体预处理任务 ID，如果未指定发起预处理任务则为空。
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

      # 快手视频发布信息。
      class KuaishouPublishInfo < TencentCloud::Common::AbstractModel
        # @param Title: 视频发布标题，限30个字符。
        # @type Title: String

        attr_accessor :Title
        
        def initialize(title=nil)
          @Title = title
        end

        def deserialize(params)
          @Title = params['Title']
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
            @LinkMaterialInfo = LinkMaterialInfo.new.deserialize(params['LinkMaterialInfo'])
          end
          unless params['LinkClassInfo'].nil?
            @LinkClassInfo = ClassInfo.new.deserialize(params['LinkClassInfo'])
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
            @BasicInfo = MaterialBasicInfo.new.deserialize(params['BasicInfo'])
          end
          unless params['VideoMaterial'].nil?
            @VideoMaterial = VideoMaterial.new.deserialize(params['VideoMaterial'])
          end
          unless params['AudioMaterial'].nil?
            @AudioMaterial = AudioMaterial.new.deserialize(params['AudioMaterial'])
          end
          unless params['ImageMaterial'].nil?
            @ImageMaterial = ImageMaterial.new.deserialize(params['ImageMaterial'])
          end
        end
      end

      # ListMedia请求参数结构体
      class ListMediaRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param ClassPath: 媒体分类路径，例如填写"/a/b"，则代表浏览该分类路径下的媒体和子分类信息。
        # @type ClassPath: String
        # @param Owner: 媒体和分类的归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：50。
        # @type Limit: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验对媒体的访问权限。
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
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Operator = params['Operator']
        end
      end

      # ListMedia返回参数结构体
      class ListMediaResponse < TencentCloud::Common::AbstractModel
        # @param MaterialTotalCount: 符合条件的媒体记录总数。
        # @type MaterialTotalCount: Integer
        # @param MaterialInfoSet: 浏览分类路径下的媒体列表信息。
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
          unless params['MaterialInfoSet'].nil?
            @MaterialInfoSet = []
            params['MaterialInfoSet'].each do |i|
              @MaterialInfoSet << MaterialInfo.new.deserialize(i)
            end
          end
          unless params['ClassInfoSet'].nil?
            @ClassInfoSet = []
            params['ClassInfoSet'].each do |i|
              @ClassInfoSet << ClassInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 直播拉流信息
      class LivePullInputInfo < TencentCloud::Common::AbstractModel
        # @param InputUrl: 直播拉流地址。
        # @type InputUrl: String

        attr_accessor :InputUrl
        
        def initialize(inputurl=nil)
          @InputUrl = inputurl
        end

        def deserialize(params)
          @InputUrl = params['InputUrl']
        end
      end

      # 直播剪辑项目输入参数。
      class LiveStreamClipProjectInput < TencentCloud::Common::AbstractModel
        # @param Url: 直播流播放地址，目前仅支持 HLS 和 FLV 格式。
        # @type Url: String
        # @param StreamRecordDuration: 直播流录制时长，单位为秒，最大值为 7200。
        # @type StreamRecordDuration: Integer

        attr_accessor :Url, :StreamRecordDuration
        
        def initialize(url=nil, streamrecordduration=nil)
          @Url = url
          @StreamRecordDuration = streamrecordduration
        end

        def deserialize(params)
          @Url = params['Url']
          @StreamRecordDuration = params['StreamRecordDuration']
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

      # 媒体基本信息。
      class MaterialBasicInfo < TencentCloud::Common::AbstractModel
        # @param MaterialId: 媒体 Id。
        # @type MaterialId: String
        # @param MaterialType: 媒体类型，取值为：
        # <li> AUDIO :音频;</li>
        # <li> VIDEO :视频;</li>
        # <li> IMAGE :图片;</li>
        # <li> LINK  :链接.</li>
        # <li> OTHER : 其他.</li>
        # @type MaterialType: String
        # @param Owner: 媒体归属实体。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Name: 媒体名称。
        # @type Name: String
        # @param CreateTime: 媒体文件的创建时间，使用 ISO 日期格式。
        # @type CreateTime: String
        # @param UpdateTime: 媒体文件的最近更新时间（如修改视频属性、发起视频处理等会触发更新媒体文件信息的操作），使用 ISO 日期格式。
        # @type UpdateTime: String
        # @param ClassPath: 媒体的分类路径。
        # @type ClassPath: String
        # @param PresetTagSet: 预置标签列表。
        # @type PresetTagSet: Array
        # @param TagSet: 人工标签列表。
        # @type TagSet: Array
        # @param PreviewUrl: 媒体文件的预览图。
        # @type PreviewUrl: String
        # @param TagInfoSet: 媒体绑定的标签信息列表 。
        # 该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagInfoSet: Array

        attr_accessor :MaterialId, :MaterialType, :Owner, :Name, :CreateTime, :UpdateTime, :ClassPath, :PresetTagSet, :TagSet, :PreviewUrl, :TagInfoSet
        
        def initialize(materialid=nil, materialtype=nil, owner=nil, name=nil, createtime=nil, updatetime=nil, classpath=nil, presettagset=nil, tagset=nil, previewurl=nil, taginfoset=nil)
          @MaterialId = materialid
          @MaterialType = materialtype
          @Owner = owner
          @Name = name
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ClassPath = classpath
          @PresetTagSet = presettagset
          @TagSet = tagset
          @PreviewUrl = previewurl
          @TagInfoSet = taginfoset
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @MaterialType = params['MaterialType']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ClassPath = params['ClassPath']
          unless params['PresetTagSet'].nil?
            @PresetTagSet = []
            params['PresetTagSet'].each do |i|
              @PresetTagSet << PresetTagInfo.new.deserialize(i)
            end
          end
          @TagSet = params['TagSet']
          @PreviewUrl = params['PreviewUrl']
          unless params['TagInfoSet'].nil?
            @TagInfoSet = []
            params['TagInfoSet'].each do |i|
              @TagInfoSet << MaterialTagInfo.new.deserialize(i)
            end
          end
        end
      end

      # 媒体详情信息
      class MaterialInfo < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 媒体基本信息。
        # @type BasicInfo: :class:`Tencentcloud::Cme.v20191029.models.MaterialBasicInfo`
        # @param VideoMaterial: 视频媒体信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoMaterial: :class:`Tencentcloud::Cme.v20191029.models.VideoMaterial`
        # @param AudioMaterial: 音频媒体信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioMaterial: :class:`Tencentcloud::Cme.v20191029.models.AudioMaterial`
        # @param ImageMaterial: 图片媒体信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageMaterial: :class:`Tencentcloud::Cme.v20191029.models.ImageMaterial`
        # @param LinkMaterial: 链接媒体信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkMaterial: :class:`Tencentcloud::Cme.v20191029.models.LinkMaterial`
        # @param VideoEditTemplateMaterial: 模板媒体信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoEditTemplateMaterial: :class:`Tencentcloud::Cme.v20191029.models.VideoEditTemplateMaterial`
        # @param OtherMaterial: 其他类型媒体信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherMaterial: :class:`Tencentcloud::Cme.v20191029.models.OtherMaterial`

        attr_accessor :BasicInfo, :VideoMaterial, :AudioMaterial, :ImageMaterial, :LinkMaterial, :VideoEditTemplateMaterial, :OtherMaterial
        
        def initialize(basicinfo=nil, videomaterial=nil, audiomaterial=nil, imagematerial=nil, linkmaterial=nil, videoedittemplatematerial=nil, othermaterial=nil)
          @BasicInfo = basicinfo
          @VideoMaterial = videomaterial
          @AudioMaterial = audiomaterial
          @ImageMaterial = imagematerial
          @LinkMaterial = linkmaterial
          @VideoEditTemplateMaterial = videoedittemplatematerial
          @OtherMaterial = othermaterial
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = MaterialBasicInfo.new.deserialize(params['BasicInfo'])
          end
          unless params['VideoMaterial'].nil?
            @VideoMaterial = VideoMaterial.new.deserialize(params['VideoMaterial'])
          end
          unless params['AudioMaterial'].nil?
            @AudioMaterial = AudioMaterial.new.deserialize(params['AudioMaterial'])
          end
          unless params['ImageMaterial'].nil?
            @ImageMaterial = ImageMaterial.new.deserialize(params['ImageMaterial'])
          end
          unless params['LinkMaterial'].nil?
            @LinkMaterial = LinkMaterial.new.deserialize(params['LinkMaterial'])
          end
          unless params['VideoEditTemplateMaterial'].nil?
            @VideoEditTemplateMaterial = VideoEditTemplateMaterial.new.deserialize(params['VideoEditTemplateMaterial'])
          end
          unless params['OtherMaterial'].nil?
            @OtherMaterial = OtherMaterial.new.deserialize(params['OtherMaterial'])
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
          unless params['VideoStreamInfoSet'].nil?
            @VideoStreamInfoSet = []
            params['VideoStreamInfoSet'].each do |i|
              @VideoStreamInfoSet << VideoStreamInfo.new.deserialize(i)
            end
          end
          unless params['AudioStreamInfoSet'].nil?
            @AudioStreamInfoSet = []
            params['AudioStreamInfoSet'].each do |i|
              @AudioStreamInfoSet << AudioStreamInfo.new.deserialize(i)
            end
          end
        end
      end

      # 媒体替换信息。
      class MediaReplacementInfo < TencentCloud::Common::AbstractModel
        # @param MaterialId: 素材 ID。
        # @type MaterialId: String
        # @param StartTimeOffset: 替换媒体选取的开始时间，单位为秒，默认为 0。
        # @type StartTimeOffset: Float

        attr_accessor :MaterialId, :StartTimeOffset
        
        def initialize(materialid=nil, starttimeoffset=nil)
          @MaterialId = materialid
          @StartTimeOffset = starttimeoffset
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @StartTimeOffset = params['StartTimeOffset']
        end
      end

      # 轨道信息
      class MediaTrack < TencentCloud::Common::AbstractModel
        # @param Type: 轨道类型，取值有：
        # <ul>
        # <li>Video ：视频轨道。视频轨道由以下 Item 组成：<ul><li>VideoTrackItem</li><li>EmptyTrackItem</li><li>MediaTransitionItem</li></ul> </li>
        # <li>Audio ：音频轨道。音频轨道由以下 Item 组成：<ul><li>AudioTrackItem</li><li>EmptyTrackItem</li></ul> </li>
        # </ul>
        # @type Type: String
        # @param TrackItems: 轨道上的媒体片段列表。
        # @type TrackItems: Array

        attr_accessor :Type, :TrackItems
        
        def initialize(type=nil, trackitems=nil)
          @Type = type
          @TrackItems = trackitems
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['TrackItems'].nil?
            @TrackItems = []
            params['TrackItems'].each do |i|
              @TrackItems << MediaTrackItem.new.deserialize(i)
            end
          end
        end
      end

      # 媒体轨道的片段信息
      class MediaTrackItem < TencentCloud::Common::AbstractModel
        # @param Type: 片段类型。取值有：
        # <li>Video：视频片段；</li>
        # <li>Audio：音频片段；</li>
        # <li>Empty：空白片段；</li>
        # <li>Transition：转场。</li>
        # @type Type: String
        # @param VideoItem: 视频片段，当 Type = Video 时有效。
        # @type VideoItem: :class:`Tencentcloud::Cme.v20191029.models.VideoTrackItem`
        # @param AudioItem: 音频片段，当 Type = Audio 时有效。
        # @type AudioItem: :class:`Tencentcloud::Cme.v20191029.models.AudioTrackItem`
        # @param EmptyItem: 空白片段，当 Type = Empty 时有效。空片段用于时间轴的占位。<li>如需要两个音频片段之间有一段时间的静音，可以用 EmptyTrackItem 来进行占位。</li>
        # <li>使用 EmptyTrackItem 进行占位，来定位某个Item。</li>
        # @type EmptyItem: :class:`Tencentcloud::Cme.v20191029.models.EmptyTrackItem`
        # @param TransitionItem: 转场，当 Type = Transition 时有效。
        # @type TransitionItem: :class:`Tencentcloud::Cme.v20191029.models.MediaTransitionItem`

        attr_accessor :Type, :VideoItem, :AudioItem, :EmptyItem, :TransitionItem
        
        def initialize(type=nil, videoitem=nil, audioitem=nil, emptyitem=nil, transitionitem=nil)
          @Type = type
          @VideoItem = videoitem
          @AudioItem = audioitem
          @EmptyItem = emptyitem
          @TransitionItem = transitionitem
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['VideoItem'].nil?
            @VideoItem = VideoTrackItem.new.deserialize(params['VideoItem'])
          end
          unless params['AudioItem'].nil?
            @AudioItem = AudioTrackItem.new.deserialize(params['AudioItem'])
          end
          unless params['EmptyItem'].nil?
            @EmptyItem = EmptyTrackItem.new.deserialize(params['EmptyItem'])
          end
          unless params['TransitionItem'].nil?
            @TransitionItem = MediaTransitionItem.new.deserialize(params['TransitionItem'])
          end
        end
      end

      # 转场信息
      class MediaTransitionItem < TencentCloud::Common::AbstractModel
        # @param TransitionId: 转场 Id 。暂只支持一个转场。
        # @type TransitionId: String
        # @param Duration: 转场持续时间，单位为秒，默认为2秒。进行转场处理的两个媒体片段，第二个片段在轨道上的起始时间会自动进行调整，设置为前面一个片段的结束时间减去转场的持续时间。
        # @type Duration: Float

        attr_accessor :TransitionId, :Duration
        
        def initialize(transitionid=nil, duration=nil)
          @TransitionId = transitionid
          @Duration = duration
        end

        def deserialize(params)
          @TransitionId = params['TransitionId']
          @Duration = params['Duration']
        end
      end

      # ModifyMaterial请求参数结构体
      class ModifyMaterialRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param MaterialId: 媒体 Id。
        # @type MaterialId: String
        # @param Owner: 媒体或分类路径归属。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param Name: 媒体名称，不能超过30个字符。
        # @type Name: String
        # @param ClassPath: 媒体分类路径，例如填写"/a/b"，则代表该媒体存储的路径为"/a/b"。若修改分类路径，则 Owner 字段必填。
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
            @Owner = Entity.new.deserialize(params['Owner'])
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
        # @param Owner: 项目归属者。
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
            @Owner = Entity.new.deserialize(params['Owner'])
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
            @Owner = Entity.new.deserialize(params['Owner'])
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

      # MoveResource请求参数结构体
      class MoveResourceRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param SourceResource: 待移动的原始资源信息，包含原始媒体或分类资源，以及资源归属。
        # @type SourceResource: :class:`Tencentcloud::Cme.v20191029.models.ResourceInfo`
        # @param DestinationResource: 目标信息，包含分类及归属，仅支持移动资源到分类。
        # @type DestinationResource: :class:`Tencentcloud::Cme.v20191029.models.ResourceInfo`
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验资源访问以及写权限。
        # @type Operator: String

        attr_accessor :Platform, :SourceResource, :DestinationResource, :Operator
        
        def initialize(platform=nil, sourceresource=nil, destinationresource=nil, operator=nil)
          @Platform = platform
          @SourceResource = sourceresource
          @DestinationResource = destinationresource
          @Operator = operator
        end

        def deserialize(params)
          @Platform = params['Platform']
          unless params['SourceResource'].nil?
            @SourceResource = ResourceInfo.new.deserialize(params['SourceResource'])
          end
          unless params['DestinationResource'].nil?
            @DestinationResource = ResourceInfo.new.deserialize(params['DestinationResource'])
          end
          @Operator = params['Operator']
        end
      end

      # MoveResource返回参数结构体
      class MoveResourceResponse < TencentCloud::Common::AbstractModel
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

      # 其他类型素材
      class OtherMaterial < TencentCloud::Common::AbstractModel
        # @param MaterialUrl: 素材媒体文件的播放 URL 地址。
        # @type MaterialUrl: String
        # @param VodFileId: 云点播媒资 FileId。
        # @type VodFileId: String

        attr_accessor :MaterialUrl, :VodFileId
        
        def initialize(materialurl=nil, vodfileid=nil)
          @MaterialUrl = materialurl
          @VodFileId = vodfileid
        end

        def deserialize(params)
          @MaterialUrl = params['MaterialUrl']
          @VodFileId = params['VodFileId']
        end
      end

      # 企鹅号发布信息。
      class PenguinMediaPlatformPublishInfo < TencentCloud::Common::AbstractModel
        # @param Title: 视频发布标题。
        # @type Title: String
        # @param Description: 视频发布描述信息。
        # @type Description: String
        # @param Tags: 视频标签。
        # @type Tags: Array
        # @param Category: 视频分类，详见[企鹅号官网](https://open.om.qq.com/resources/resourcesCenter)视频分类。
        # @type Category: Integer

        attr_accessor :Title, :Description, :Tags, :Category
        
        def initialize(title=nil, description=nil, tags=nil, category=nil)
          @Title = title
          @Description = description
          @Tags = tags
          @Category = category
        end

        def deserialize(params)
          @Title = params['Title']
          @Description = params['Description']
          @Tags = params['Tags']
          @Category = params['Category']
        end
      end

      # 平台信息。
      class PlatformInfo < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称。
        # @type Platform: String
        # @param Description: 平台描述。
        # @type Description: String
        # @param VodSubAppId: 云点播子应用 Id。
        # @type VodSubAppId: Integer
        # @param LicenseId: 平台绑定的 license Id。
        # @type LicenseId: String
        # @param CreateTime: 创建时间，格式按照 ISO 8601 标准表示。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，格式按照 ISO 8601 标准表示。
        # @type UpdateTime: String

        attr_accessor :Platform, :Description, :VodSubAppId, :LicenseId, :CreateTime, :UpdateTime
        
        def initialize(platform=nil, description=nil, vodsubappid=nil, licenseid=nil, createtime=nil, updatetime=nil)
          @Platform = platform
          @Description = description
          @VodSubAppId = vodsubappid
          @LicenseId = licenseid
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Description = params['Description']
          @VodSubAppId = params['VodSubAppId']
          @LicenseId = params['LicenseId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 预置标签信息
      class PresetTagInfo < TencentCloud::Common::AbstractModel
        # @param Id: 标签 Id 。
        # @type Id: String
        # @param Name: 标签名称。
        # @type Name: String
        # @param ParentTagId: 父级预设 Id。
        # @type ParentTagId: String

        attr_accessor :Id, :Name, :ParentTagId
        
        def initialize(id=nil, name=nil, parenttagid=nil)
          @Id = id
          @Name = name
          @ParentTagId = parenttagid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ParentTagId = params['ParentTagId']
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
        # @param Category: 项目类别，取值有：
        # <li>VIDEO_EDIT：视频编辑。</li>
        # <li>SWITCHER：导播台。</li>
        # <li>VIDEO_SEGMENTATION：视频拆条。</li>
        # <li>STREAM_CONNECT：云转推。</li>
        # <li>RECORD_REPLAY：录制回放。</li>
        # @type Category: String
        # @param Owner: 归属者。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param CoverUrl: 项目封面图片地址。
        # @type CoverUrl: String
        # @param StreamConnectProjectInfo: 云转推项目信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamConnectProjectInfo: :class:`Tencentcloud::Cme.v20191029.models.StreamConnectProjectInfo`
        # @param CreateTime: 项目创建时间，格式按照 ISO 8601 标准表示。
        # @type CreateTime: String
        # @param UpdateTime: 项目更新时间，格式按照 ISO 8601 标准表示。
        # @type UpdateTime: String

        attr_accessor :ProjectId, :Name, :AspectRatio, :Category, :Owner, :CoverUrl, :StreamConnectProjectInfo, :CreateTime, :UpdateTime
        
        def initialize(projectid=nil, name=nil, aspectratio=nil, category=nil, owner=nil, coverurl=nil, streamconnectprojectinfo=nil, createtime=nil, updatetime=nil)
          @ProjectId = projectid
          @Name = name
          @AspectRatio = aspectratio
          @Category = category
          @Owner = owner
          @CoverUrl = coverurl
          @StreamConnectProjectInfo = streamconnectprojectinfo
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @AspectRatio = params['AspectRatio']
          @Category = params['Category']
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          @CoverUrl = params['CoverUrl']
          unless params['StreamConnectProjectInfo'].nil?
            @StreamConnectProjectInfo = StreamConnectProjectInfo.new.deserialize(params['StreamConnectProjectInfo'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 录制回放项目输入信息。
      class RecordReplayProjectInput < TencentCloud::Common::AbstractModel
        # @param PullStreamUrl: 录制拉流地址。
        # @type PullStreamUrl: String
        # @param MaterialOwner: 录制文件归属者。
        # @type MaterialOwner: :class:`Tencentcloud::Cme.v20191029.models.Entity`
        # @param MaterialClassPath: 录制文件存储分类路径。
        # @type MaterialClassPath: String
        # @param PushStreamUrl: 回放推流地址。
        # @type PushStreamUrl: String

        attr_accessor :PullStreamUrl, :MaterialOwner, :MaterialClassPath, :PushStreamUrl
        
        def initialize(pullstreamurl=nil, materialowner=nil, materialclasspath=nil, pushstreamurl=nil)
          @PullStreamUrl = pullstreamurl
          @MaterialOwner = materialowner
          @MaterialClassPath = materialclasspath
          @PushStreamUrl = pushstreamurl
        end

        def deserialize(params)
          @PullStreamUrl = params['PullStreamUrl']
          unless params['MaterialOwner'].nil?
            @MaterialOwner = Entity.new.deserialize(params['MaterialOwner'])
          end
          @MaterialClassPath = params['MaterialClassPath']
          @PushStreamUrl = params['PushStreamUrl']
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

      # 资源信息，包含资源以及归属信息
      class ResourceInfo < TencentCloud::Common::AbstractModel
        # @param Resource: 媒资和分类资源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Cme.v20191029.models.Resource`
        # @param Owner: 资源归属，个人或团队。
        # @type Owner: :class:`Tencentcloud::Cme.v20191029.models.Entity`

        attr_accessor :Resource, :Owner
        
        def initialize(resource=nil, owner=nil)
          @Resource = resource
          @Owner = owner
        end

        def deserialize(params)
          unless params['Resource'].nil?
            @Resource = Resource.new.deserialize(params['Resource'])
          end
          unless params['Owner'].nil?
            @Owner = Entity.new.deserialize(params['Owner'])
          end
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
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              @Resources << Resource.new.deserialize(i)
            end
          end
          unless params['Authorizees'].nil?
            @Authorizees = []
            params['Authorizees'].each do |i|
              @Authorizees << Entity.new.deserialize(i)
            end
          end
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

      # 直播推流信息，包括推流地址有效时长，云剪后端生成直播推流地址。
      class RtmpPushInputInfo < TencentCloud::Common::AbstractModel
        # @param ExpiredSecond: 直播推流地址有效期，单位：秒 。
        # @type ExpiredSecond: Integer
        # @param PushUrl: 直播推流地址，入参不填默认由云剪生成。
        # @type PushUrl: String

        attr_accessor :ExpiredSecond, :PushUrl
        
        def initialize(expiredsecond=nil, pushurl=nil)
          @ExpiredSecond = expiredsecond
          @PushUrl = pushurl
        end

        def deserialize(params)
          @ExpiredSecond = params['ExpiredSecond']
          @PushUrl = params['PushUrl']
        end
      end

      # SearchMaterial请求参数结构体
      class SearchMaterialRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 平台名称，指定访问的平台。
        # @type Platform: String
        # @param SearchScopes: 指定搜索空间，数组长度不得超过5。
        # @type SearchScopes: Array
        # @param MaterialTypes: 媒体类型，取值：
        # <li>AUDIO：音频；</li>
        # <li>VIDEO：视频 ；</li>
        # <li>IMAGE：图片。</li>
        # @type MaterialTypes: Array
        # @param Text: 搜索文本，模糊匹配媒体名称或描述信息，匹配项越多，匹配度越高，排序越优先。长度限制：15个字符。
        # @type Text: String
        # @param Resolution: 按画质检索，取值为：LD/SD/HD/FHD/2K/4K。
        # @type Resolution: String
        # @param DurationRange: 按媒体时长检索，单位s。
        # @type DurationRange: :class:`Tencentcloud::Cme.v20191029.models.IntegerRange`
        # @param CreateTimeRange: 按照媒体创建时间检索。
        # @type CreateTimeRange: :class:`Tencentcloud::Cme.v20191029.models.TimeRange`
        # @param Tags: 按标签检索，填入检索的标签名。
        # @type Tags: Array
        # @param Sort: 排序方式。Sort.Field 可选值：CreateTime。指定 Text 搜索时，将根据匹配度排序，该字段无效。
        # @type Sort: :class:`Tencentcloud::Cme.v20191029.models.SortBy`
        # @param Offset: 偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：50。
        # @type Limit: Integer
        # @param Operator: 操作者。填写用户的 Id，用于标识调用者及校验媒体访问权限。
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
          unless params['SearchScopes'].nil?
            @SearchScopes = []
            params['SearchScopes'].each do |i|
              @SearchScopes << SearchScope.new.deserialize(i)
            end
          end
          @MaterialTypes = params['MaterialTypes']
          @Text = params['Text']
          @Resolution = params['Resolution']
          unless params['DurationRange'].nil?
            @DurationRange = IntegerRange.new.deserialize(params['DurationRange'])
          end
          unless params['CreateTimeRange'].nil?
            @CreateTimeRange = TimeRange.new.deserialize(params['CreateTimeRange'])
          end
          @Tags = params['Tags']
          unless params['Sort'].nil?
            @Sort = SortBy.new.deserialize(params['Sort'])
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
        # @param MaterialInfoSet: 媒体信息，仅返回基础信息。
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
          unless params['MaterialInfoSet'].nil?
            @MaterialInfoSet = []
            params['MaterialInfoSet'].each do |i|
              @MaterialInfoSet << MaterialInfo.new.deserialize(i)
            end
          end
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
            @Owner = Entity.new.deserialize(params['Owner'])
          end
          @ClassPath = params['ClassPath']
        end
      end

      # 卡槽信息。
      class SlotInfo < TencentCloud::Common::AbstractModel
        # @param Id: 卡槽 Id。
        # @type Id: Integer
        # @param Type: 素材类型，同素材素材，可取值有：
        # <li> AUDIO :音频;</li>
        # <li> VIDEO :视频;</li>
        # <li> IMAGE :图片。</li>
        # @type Type: String
        # @param DefaultMaterialId: 默认素材 Id。
        # @type DefaultMaterialId: String
        # @param Duration: 素材时长，单位秒。
        # @type Duration: Float

        attr_accessor :Id, :Type, :DefaultMaterialId, :Duration
        
        def initialize(id=nil, type=nil, defaultmaterialid=nil, duration=nil)
          @Id = id
          @Type = type
          @DefaultMaterialId = defaultmaterialid
          @Duration = duration
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @DefaultMaterialId = params['DefaultMaterialId']
          @Duration = params['Duration']
        end
      end

      # 卡槽替换信息。
      class SlotReplacementInfo < TencentCloud::Common::AbstractModel
        # @param Id: 卡槽 Id。
        # @type Id: Integer
        # @param ReplacementType: 替换类型，可取值有：
        # <li> AUDIO :音频;</li>
        # <li> VIDEO :视频;</li>
        # <li> IMAGE :图片。</li>
        # 注意：这里必须保证替换的素材类型与模板轨道数据的素材类型一致。
        # @type ReplacementType: String
        # @param MediaReplacementInfo: 媒体替换信息，仅当要替换的媒体类型为音频、视频、图片时有效。
        # @type MediaReplacementInfo: :class:`Tencentcloud::Cme.v20191029.models.MediaReplacementInfo`

        attr_accessor :Id, :ReplacementType, :MediaReplacementInfo
        
        def initialize(id=nil, replacementtype=nil, mediareplacementinfo=nil)
          @Id = id
          @ReplacementType = replacementtype
          @MediaReplacementInfo = mediareplacementinfo
        end

        def deserialize(params)
          @Id = params['Id']
          @ReplacementType = params['ReplacementType']
          unless params['MediaReplacementInfo'].nil?
            @MediaReplacementInfo = MediaReplacementInfo.new.deserialize(params['MediaReplacementInfo'])
          end
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

      # 云转推输出源。
      class StreamConnectOutput < TencentCloud::Common::AbstractModel
        # @param Id: 云转推输出源标识，转推项目级别唯一。若不填则由后端生成。
        # @type Id: String
        # @param Name: 云转推输出源名称。
        # @type Name: String
        # @param Type: 云转推输出源类型，取值：
        # <li>URL ：URL类型</li>
        # 不填默认为URL类型。
        # @type Type: String
        # @param PushUrl: 云转推推流地址。
        # @type PushUrl: String

        attr_accessor :Id, :Name, :Type, :PushUrl
        
        def initialize(id=nil, name=nil, type=nil, pushurl=nil)
          @Id = id
          @Name = name
          @Type = type
          @PushUrl = pushurl
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @PushUrl = params['PushUrl']
        end
      end

      # 云转推输出源信息，包含输出源和输出源转推状态。
      class StreamConnectOutputInfo < TencentCloud::Common::AbstractModel
        # @param StreamConnectOutput: 输出源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamConnectOutput: :class:`Tencentcloud::Cme.v20191029.models.StreamConnectOutput`
        # @param PushSwitch: 输出流状态：
        # <li>On ：开；</li>
        # <li>Off ：关 。</li>
        # @type PushSwitch: String

        attr_accessor :StreamConnectOutput, :PushSwitch
        
        def initialize(streamconnectoutput=nil, pushswitch=nil)
          @StreamConnectOutput = streamconnectoutput
          @PushSwitch = pushswitch
        end

        def deserialize(params)
          unless params['StreamConnectOutput'].nil?
            @StreamConnectOutput = StreamConnectOutput.new.deserialize(params['StreamConnectOutput'])
          end
          @PushSwitch = params['PushSwitch']
        end
      end

      # 云转推项目信息，包含输入源、输出源、当前转推开始时间等信息。
      class StreamConnectProjectInfo < TencentCloud::Common::AbstractModel
        # @param Status: 转推项目状态，取值有：
        # <li>Working ：转推中；</li>
        # <li>Idle ：空闲中。</li>
        # @type Status: String
        # @param CurrentInputEndpoint: 当前转推输入源，取值有：
        # <li>Main ：主输入源；</li>
        # <li>Backup ：备输入源。</li>
        # @type CurrentInputEndpoint: String
        # @param CurrentStartTime: 当前转推开始时间， 采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。仅 Status 取值 Working 时有效。
        # @type CurrentStartTime: String
        # @param CurrentStopTime: 当前转推计划结束时间， 采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。仅 Status 取值 Working 时有效。
        # @type CurrentStopTime: String
        # @param LastStopTime: 上一次转推结束时间， 采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。仅 Status 取值 Idle 时有效。
        # @type LastStopTime: String
        # @param MainInput: 云转推主输入源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainInput: :class:`Tencentcloud::Cme.v20191029.models.StreamInputInfo`
        # @param BackupInput: 云转推备输入源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupInput: :class:`Tencentcloud::Cme.v20191029.models.StreamInputInfo`
        # @param OutputSet: 云转推输出源。
        # @type OutputSet: Array

        attr_accessor :Status, :CurrentInputEndpoint, :CurrentStartTime, :CurrentStopTime, :LastStopTime, :MainInput, :BackupInput, :OutputSet
        
        def initialize(status=nil, currentinputendpoint=nil, currentstarttime=nil, currentstoptime=nil, laststoptime=nil, maininput=nil, backupinput=nil, outputset=nil)
          @Status = status
          @CurrentInputEndpoint = currentinputendpoint
          @CurrentStartTime = currentstarttime
          @CurrentStopTime = currentstoptime
          @LastStopTime = laststoptime
          @MainInput = maininput
          @BackupInput = backupinput
          @OutputSet = outputset
        end

        def deserialize(params)
          @Status = params['Status']
          @CurrentInputEndpoint = params['CurrentInputEndpoint']
          @CurrentStartTime = params['CurrentStartTime']
          @CurrentStopTime = params['CurrentStopTime']
          @LastStopTime = params['LastStopTime']
          unless params['MainInput'].nil?
            @MainInput = StreamInputInfo.new.deserialize(params['MainInput'])
          end
          unless params['BackupInput'].nil?
            @BackupInput = StreamInputInfo.new.deserialize(params['BackupInput'])
          end
          unless params['OutputSet'].nil?
            @OutputSet = []
            params['OutputSet'].each do |i|
              @OutputSet << StreamConnectOutputInfo.new.deserialize(i)
            end
          end
        end
      end

      # 云转推项目输入信息。
      class StreamConnectProjectInput < TencentCloud::Common::AbstractModel
        # @param MainInput: 云转推主输入源信息。
        # @type MainInput: :class:`Tencentcloud::Cme.v20191029.models.StreamInputInfo`
        # @param BackupInput: 云转推备输入源信息。
        # @type BackupInput: :class:`Tencentcloud::Cme.v20191029.models.StreamInputInfo`
        # @param Outputs: 云转推输出源信息。
        # @type Outputs: Array

        attr_accessor :MainInput, :BackupInput, :Outputs
        
        def initialize(maininput=nil, backupinput=nil, outputs=nil)
          @MainInput = maininput
          @BackupInput = backupinput
          @Outputs = outputs
        end

        def deserialize(params)
          unless params['MainInput'].nil?
            @MainInput = StreamInputInfo.new.deserialize(params['MainInput'])
          end
          unless params['BackupInput'].nil?
            @BackupInput = StreamInputInfo.new.deserialize(params['BackupInput'])
          end
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              @Outputs << StreamConnectOutput.new.deserialize(i)
            end
          end
        end
      end

      # 输入流信息。
      class StreamInputInfo < TencentCloud::Common::AbstractModel
        # @param InputType: 流输入类型，取值：
        # <li>VodPull ： 点播拉流；</li>
        # <li>LivePull ：直播拉流；</li>
        # <li>RtmpPush ： 直播推流。</li>
        # @type InputType: String
        # @param VodPullInputInfo: 点播拉流信息，当 InputType = VodPull 时必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VodPullInputInfo: :class:`Tencentcloud::Cme.v20191029.models.VodPullInputInfo`
        # @param LivePullInputInfo: 直播拉流信息，当 InputType = LivePull  时必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivePullInputInfo: :class:`Tencentcloud::Cme.v20191029.models.LivePullInputInfo`
        # @param RtmpPushInputInfo: 直播推流信息，当 InputType = RtmpPush 时必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RtmpPushInputInfo: :class:`Tencentcloud::Cme.v20191029.models.RtmpPushInputInfo`

        attr_accessor :InputType, :VodPullInputInfo, :LivePullInputInfo, :RtmpPushInputInfo
        
        def initialize(inputtype=nil, vodpullinputinfo=nil, livepullinputinfo=nil, rtmppushinputinfo=nil)
          @InputType = inputtype
          @VodPullInputInfo = vodpullinputinfo
          @LivePullInputInfo = livepullinputinfo
          @RtmpPushInputInfo = rtmppushinputinfo
        end

        def deserialize(params)
          @InputType = params['InputType']
          unless params['VodPullInputInfo'].nil?
            @VodPullInputInfo = VodPullInputInfo.new.deserialize(params['VodPullInputInfo'])
          end
          unless params['LivePullInputInfo'].nil?
            @LivePullInputInfo = LivePullInputInfo.new.deserialize(params['LivePullInputInfo'])
          end
          unless params['RtmpPushInputInfo'].nil?
            @RtmpPushInputInfo = RtmpPushInputInfo.new.deserialize(params['RtmpPushInputInfo'])
          end
        end
      end

      # 导播台主监输出配置信息
      class SwitcherPgmOutputConfig < TencentCloud::Common::AbstractModel
        # @param TemplateId: 导播台输出模板 ID，可取值：
        # <li>10001：分辨率为1080 P；</li>
        # <li>10002：分辨率为720 P；</li>
        # <li>10003：分辨率为480 P。</li>
        # @type TemplateId: Integer
        # @param Width: 导播台输出宽，单位：像素。
        # @type Width: Integer
        # @param Height: 导播台输出高，单位：像素。
        # @type Height: Integer
        # @param Fps: 导播台输出帧率，单位：帧/秒
        # @type Fps: Integer
        # @param BitRate: 导播台输出码率， 单位：bit/s。
        # @type BitRate: Integer

        attr_accessor :TemplateId, :Width, :Height, :Fps, :BitRate
        
        def initialize(templateid=nil, width=nil, height=nil, fps=nil, bitrate=nil)
          @TemplateId = templateid
          @Width = width
          @Height = height
          @Fps = fps
          @BitRate = bitrate
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
          @BitRate = params['BitRate']
        end
      end

      # 导播台项目输入信息
      class SwitcherProjectInput < TencentCloud::Common::AbstractModel
        # @param StopTime: 导播台停止时间，格式按照 ISO 8601 标准表示。若不填，该值默认为当前时间加七天。
        # @type StopTime: String
        # @param PgmOutputConfig: 导播台主监输出配置信息。若不填，默认输出 720P。
        # @type PgmOutputConfig: :class:`Tencentcloud::Cme.v20191029.models.SwitcherPgmOutputConfig`

        attr_accessor :StopTime, :PgmOutputConfig
        
        def initialize(stoptime=nil, pgmoutputconfig=nil)
          @StopTime = stoptime
          @PgmOutputConfig = pgmoutputconfig
        end

        def deserialize(params)
          @StopTime = params['StopTime']
          unless params['PgmOutputConfig'].nil?
            @PgmOutputConfig = SwitcherPgmOutputConfig.new.deserialize(params['PgmOutputConfig'])
          end
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

      # 第三方平台视频发布信息。
      class ThirdPartyPublishInfo < TencentCloud::Common::AbstractModel
        # @param ChannelMaterialId: 发布通道  ID。
        # @type ChannelMaterialId: String
        # @param PenguinMediaPlatformPublishInfo: 企鹅号发布信息，如果使用的发布通道为企鹅号时必填。
        # @type PenguinMediaPlatformPublishInfo: :class:`Tencentcloud::Cme.v20191029.models.PenguinMediaPlatformPublishInfo`
        # @param WeiboPublishInfo: 新浪微博发布信息，如果使用的发布通道为新浪微博时必填。
        # @type WeiboPublishInfo: :class:`Tencentcloud::Cme.v20191029.models.WeiboPublishInfo`
        # @param KuaishouPublishInfo: 快手发布信息，如果使用的发布通道为快手时必填。
        # @type KuaishouPublishInfo: :class:`Tencentcloud::Cme.v20191029.models.KuaishouPublishInfo`

        attr_accessor :ChannelMaterialId, :PenguinMediaPlatformPublishInfo, :WeiboPublishInfo, :KuaishouPublishInfo
        
        def initialize(channelmaterialid=nil, penguinmediaplatformpublishinfo=nil, weibopublishinfo=nil, kuaishoupublishinfo=nil)
          @ChannelMaterialId = channelmaterialid
          @PenguinMediaPlatformPublishInfo = penguinmediaplatformpublishinfo
          @WeiboPublishInfo = weibopublishinfo
          @KuaishouPublishInfo = kuaishoupublishinfo
        end

        def deserialize(params)
          @ChannelMaterialId = params['ChannelMaterialId']
          unless params['PenguinMediaPlatformPublishInfo'].nil?
            @PenguinMediaPlatformPublishInfo = PenguinMediaPlatformPublishInfo.new.deserialize(params['PenguinMediaPlatformPublishInfo'])
          end
          unless params['WeiboPublishInfo'].nil?
            @WeiboPublishInfo = WeiboPublishInfo.new.deserialize(params['WeiboPublishInfo'])
          end
          unless params['KuaishouPublishInfo'].nil?
            @KuaishouPublishInfo = KuaishouPublishInfo.new.deserialize(params['KuaishouPublishInfo'])
          end
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
        # @param ThirdPartyPublishInfos: 第三方平台发布信息列表。暂未正式对外，请勿使用。
        # @type ThirdPartyPublishInfos: Array

        attr_accessor :Name, :ClassId, :ThirdPartyPublishInfos
        
        def initialize(name=nil, classid=nil, thirdpartypublishinfos=nil)
          @Name = name
          @ClassId = classid
          @ThirdPartyPublishInfos = thirdpartypublishinfos
        end

        def deserialize(params)
          @Name = params['Name']
          @ClassId = params['ClassId']
          unless params['ThirdPartyPublishInfos'].nil?
            @ThirdPartyPublishInfos = []
            params['ThirdPartyPublishInfos'].each do |i|
              @ThirdPartyPublishInfos << ThirdPartyPublishInfo.new.deserialize(i)
            end
          end
        end
      end

      # 视频编辑项目输入参数
      class VideoEditProjectInput < TencentCloud::Common::AbstractModel
        # @param AspectRatio: 画布宽高比，取值有：
        # <li>16:9；</li>
        # <li>9:16；</li>
        # <li>2:1。</li>
        # 默认值 16:9 。
        # @type AspectRatio: String
        # @param VideoEditTemplateId: 视频编辑模板媒体 ID ，通过模板媒体导入项目轨道数据时填写。
        # @type VideoEditTemplateId: String
        # @param InitTracks: 输入的媒体轨道列表，包括视频、音频，等媒体组成的多个轨道信息。其中：<li>输入的多个轨道在时间轴上和输出媒体文件的时间轴对齐；</li><li>时间轴上相同时间点的各个轨道的素材进行重叠，视频或者图片按轨道顺序进行图像的叠加，轨道顺序高的素材叠加在上面，音频素材进行混音；</li><li>视频、音频，每一种类型的轨道最多支持10个。</li>
        # 注：当从模板导入项目时（即 VideoEditTemplateId 不为空时），该参数无效。
        # @type InitTracks: Array

        attr_accessor :AspectRatio, :VideoEditTemplateId, :InitTracks
        
        def initialize(aspectratio=nil, videoedittemplateid=nil, inittracks=nil)
          @AspectRatio = aspectratio
          @VideoEditTemplateId = videoedittemplateid
          @InitTracks = inittracks
        end

        def deserialize(params)
          @AspectRatio = params['AspectRatio']
          @VideoEditTemplateId = params['VideoEditTemplateId']
          unless params['InitTracks'].nil?
            @InitTracks = []
            params['InitTracks'].each do |i|
              @InitTracks << MediaTrack.new.deserialize(i)
            end
          end
        end
      end

      # 项目导出信息。
      class VideoEditProjectOutput < TencentCloud::Common::AbstractModel
        # @param MaterialId: 导出的云剪素材 MaterialId，仅当导出为云剪素材时有效。
        # @type MaterialId: String
        # @param VodFileId: 云点播媒资 FileId。
        # @type VodFileId: String
        # @param URL: 导出的媒资 URL。
        # @type URL: String
        # @param MetaData: 元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Cme.v20191029.models.MediaMetaData`

        attr_accessor :MaterialId, :VodFileId, :URL, :MetaData
        
        def initialize(materialid=nil, vodfileid=nil, url=nil, metadata=nil)
          @MaterialId = materialid
          @VodFileId = vodfileid
          @URL = url
          @MetaData = metadata
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @VodFileId = params['VodFileId']
          @URL = params['URL']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params['MetaData'])
          end
        end
      end

      # 视频编辑模板素材信息。
      class VideoEditTemplateMaterial < TencentCloud::Common::AbstractModel
        # @param AspectRatio: 视频编辑模板宽高比。
        # @type AspectRatio: String
        # @param SlotSet: 卡槽信息。
        # @type SlotSet: Array

        attr_accessor :AspectRatio, :SlotSet
        
        def initialize(aspectratio=nil, slotset=nil)
          @AspectRatio = aspectratio
          @SlotSet = slotset
        end

        def deserialize(params)
          @AspectRatio = params['AspectRatio']
          unless params['SlotSet'].nil?
            @SlotSet = []
            params['SlotSet'].each do |i|
              @SlotSet << SlotInfo.new.deserialize(i)
            end
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
            @MetaData = MediaMetaData.new.deserialize(params['MetaData'])
          end
          unless params['ImageSpriteInfo'].nil?
            @ImageSpriteInfo = MediaImageSpriteInfo.new.deserialize(params['ImageSpriteInfo'])
          end
          @MaterialUrl = params['MaterialUrl']
          @CoverUrl = params['CoverUrl']
          @Resolution = params['Resolution']
          unless params['MaterialStatus'].nil?
            @MaterialStatus = MaterialStatus.new.deserialize(params['MaterialStatus'])
          end
          @OriginalUrl = params['OriginalUrl']
          @VodFileId = params['VodFileId']
        end
      end

      # 视频拆条项目的输入信息。
      class VideoSegmentationProjectInput < TencentCloud::Common::AbstractModel
        # @param AspectRatio: 画布宽高比，取值有：
        # <li>16:9；</li>
        # <li>9:16；</li>
        # <li>2:1。</li>
        # 默认值 16:9 。
        # @type AspectRatio: String
        # @param ProcessModel: 视频拆条处理模型，不填则默认为手工分割视频。取值 ：
        # <li>AI.GameHighlights.PUBG：和平精英集锦 ;</li>
        # <li>AI.GameHighlights.Honor OfKings：王者荣耀集锦 ;</li>
        # <li>AI.SportHighlights.Football：足球集锦 </li>
        # <li>AI.SportHighlights.Basketball：篮球集锦 ；</li>
        # <li>AI.PersonSegmentation：人物集锦  ;</li>
        # <li>AI.NewsSegmentation：新闻拆条。</li>
        # @type ProcessModel: String

        attr_accessor :AspectRatio, :ProcessModel
        
        def initialize(aspectratio=nil, processmodel=nil)
          @AspectRatio = aspectratio
          @ProcessModel = processmodel
        end

        def deserialize(params)
          @AspectRatio = params['AspectRatio']
          @ProcessModel = params['ProcessModel']
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

      # 视频轨的视频片段信息。
      class VideoTrackItem < TencentCloud::Common::AbstractModel
        # @param SourceType: 视频媒体来源类型，取值有：
        # <ul>
        # <li>VOD ：媒体来源于云点播文件 。</li>
        # <li>CME ：视频来源制作云媒体文件。</li>
        # <li>EXTERNAL ：视频来源于媒资绑定。</li>
        # </ul>
        # @type SourceType: String
        # @param SourceMedia: 视频片段的媒体文件来源，取值为：
        # <ul>
        # <li>当 SourceType 为 VOD 时，为云点播的媒体文件 FileId ，会默认将该 FileId 导入到项目中；</li>
        # <li>当 SourceType 为 CME 时，为制作云的媒体 ID，项目归属者必须对该云媒资有访问权限；</li>
        # <li>当 SourceType 为 EXTERNAL 时，为媒资绑定的 Definition 与 MediaKey 中间用冒号分隔合并后的字符串，格式为 Definition:MediaKey 。</li>
        # </ul>
        # @type SourceMedia: String
        # @param SourceMediaStartTime: 视频片段取自媒体文件的起始时间，单位为秒。默认为0。
        # @type SourceMediaStartTime: Float
        # @param Duration: 视频片段时长，单位为秒。默认取视频媒体文件本身长度，表示截取全部媒体文件。如果源文件是图片，Duration需要大于0。
        # @type Duration: Float
        # @param XPos: 视频片段原点距离画布原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 XPos 为画布宽度指定百分比的位置，如 10% 表示 XPos 为画布口宽度的 10%。</li>
        # <li>当字符串以 px 结尾，表示视频片段 XPos 单位为像素，如 100px 表示 XPos 为100像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 视频片段原点距离画布原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 YPos 为画布高度指定百分比的位置，如 10% 表示 YPos 为画布高度的 10%。</li>
        # <li>当字符串以 px 结尾，表示视频片段 YPos 单位为像素，如 100px 表示 YPos 为100像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param CoordinateOrigin: 视频原点位置，取值有：
        # <li>Center：坐标原点为中心位置，如画布中心。</li>
        # 默认值 ：Center。
        # @type CoordinateOrigin: String
        # @param Height: 视频片段的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 Height 为画布高度的百分比大小，如 10% 表示 Height 为画布高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示视频片段 Height 单位为像素，如 100px 表示 Height 为100像素；</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取视频媒体文件本身的 Width、Height；</li>
        # <li>当 Width 为空，Height 非空，则 Width 按比例缩放；</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Height: String
        # @param Width: 视频片段的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 Width 为画布宽度的百分比大小，如 10% 表示 Width 为画布宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示视频片段 Width 单位为像素，如 100px 表示 Width 为100像素；</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取视频媒体文件本身的 Width、Height；</li>
        # <li>当 Width 为空，Height 非空，则 Width 按比例缩放；</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Width: String

        attr_accessor :SourceType, :SourceMedia, :SourceMediaStartTime, :Duration, :XPos, :YPos, :CoordinateOrigin, :Height, :Width
        
        def initialize(sourcetype=nil, sourcemedia=nil, sourcemediastarttime=nil, duration=nil, xpos=nil, ypos=nil, coordinateorigin=nil, height=nil, width=nil)
          @SourceType = sourcetype
          @SourceMedia = sourcemedia
          @SourceMediaStartTime = sourcemediastarttime
          @Duration = duration
          @XPos = xpos
          @YPos = ypos
          @CoordinateOrigin = coordinateorigin
          @Height = height
          @Width = width
        end

        def deserialize(params)
          @SourceType = params['SourceType']
          @SourceMedia = params['SourceMedia']
          @SourceMediaStartTime = params['SourceMediaStartTime']
          @Duration = params['Duration']
          @XPos = params['XPos']
          @YPos = params['YPos']
          @CoordinateOrigin = params['CoordinateOrigin']
          @Height = params['Height']
          @Width = params['Width']
        end
      end

      # 点播拉流信息，包括输入拉流地址和播放次数。
      class VodPullInputInfo < TencentCloud::Common::AbstractModel
        # @param InputUrls: 点播输入拉流 URL 。
        # @type InputUrls: Array
        # @param LoopTimes: 播放次数，取值有：
        # <li>-1 : 循环播放，直到转推结束；</li>
        # <li>0 : 不循环；</li>
        # <li>大于0 : 具体循环次数，次数和时间以先结束的为准。</li>
        # 默认不循环。
        # @type LoopTimes: Integer

        attr_accessor :InputUrls, :LoopTimes
        
        def initialize(inputurls=nil, looptimes=nil)
          @InputUrls = inputurls
          @LoopTimes = looptimes
        end

        def deserialize(params)
          @InputUrls = params['InputUrls']
          @LoopTimes = params['LoopTimes']
        end
      end

      # 微博发布信息。
      class WeiboPublishInfo < TencentCloud::Common::AbstractModel
        # @param Title: 视频发布标题。
        # @type Title: String
        # @param Description: 视频发布描述信息。
        # @type Description: String
        # @param Visible: 微博可见性，可取值为：
        # <li>Public：公开，所有人可见；</li>
        # <li>Private：私有，仅自己可见。</li>

        # 默认为 Public，所有人可见。
        # @type Visible: String

        attr_accessor :Title, :Description, :Visible
        
        def initialize(title=nil, description=nil, visible=nil)
          @Title = title
          @Description = description
          @Visible = visible
        end

        def deserialize(params)
          @Title = params['Title']
          @Description = params['Description']
          @Visible = params['Visible']
        end
      end

    end
  end
end

