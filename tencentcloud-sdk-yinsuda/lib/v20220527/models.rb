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
  module Yinsuda
    module V20220527
      # BatchDescribeKTVMusicDetails请求参数结构体
      class BatchDescribeKTVMusicDetailsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param MusicIds: 歌曲 Id 列表。
        # @type MusicIds: Array

        attr_accessor :AppName, :UserId, :MusicIds
        
        def initialize(appname=nil, userid=nil, musicids=nil)
          @AppName = appname
          @UserId = userid
          @MusicIds = musicids
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @MusicIds = params['MusicIds']
        end
      end

      # BatchDescribeKTVMusicDetails返回参数结构体
      class BatchDescribeKTVMusicDetailsResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicDetailInfoSet: 歌曲详细信息列表。
        # @type KTVMusicDetailInfoSet: Array
        # @param NotExistMusicIdSet: 不存在歌曲Id列表。
        # @type NotExistMusicIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicDetailInfoSet, :NotExistMusicIdSet, :RequestId
        
        def initialize(ktvmusicdetailinfoset=nil, notexistmusicidset=nil, requestid=nil)
          @KTVMusicDetailInfoSet = ktvmusicdetailinfoset
          @NotExistMusicIdSet = notexistmusicidset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVMusicDetailInfoSet'].nil?
            @KTVMusicDetailInfoSet = []
            params['KTVMusicDetailInfoSet'].each do |i|
              ktvmusicdetailinfo_tmp = KTVMusicDetailInfo.new
              ktvmusicdetailinfo_tmp.deserialize(i)
              @KTVMusicDetailInfoSet << ktvmusicdetailinfo_tmp
            end
          end
          @NotExistMusicIdSet = params['NotExistMusicIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 副歌片段信息。
      class ChorusClip < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，单位：毫秒。
        # @type StartTime: Integer
        # @param EndTime: 结束时间，单位：毫秒。
        # @type EndTime: Integer

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

      # CreateKTVRobot请求参数结构体
      class CreateKTVRobotRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param RTCSystem: RTC厂商类型，取值有：
        # <li>TRTC</li>
        # @type RTCSystem: String
        # @param JoinRoomInput: 进房参数。
        # @type JoinRoomInput: :class:`Tencentcloud::Yinsuda.v20220527.models.JoinRoomInput`
        # @param SyncRobotCommands: 创建机器人时初始化参数。
        # @type SyncRobotCommands: Array

        attr_accessor :AppName, :UserId, :RTCSystem, :JoinRoomInput, :SyncRobotCommands
        
        def initialize(appname=nil, userid=nil, rtcsystem=nil, joinroominput=nil, syncrobotcommands=nil)
          @AppName = appname
          @UserId = userid
          @RTCSystem = rtcsystem
          @JoinRoomInput = joinroominput
          @SyncRobotCommands = syncrobotcommands
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @RTCSystem = params['RTCSystem']
          unless params['JoinRoomInput'].nil?
            @JoinRoomInput = JoinRoomInput.new
            @JoinRoomInput.deserialize(params['JoinRoomInput'])
          end
          unless params['SyncRobotCommands'].nil?
            @SyncRobotCommands = []
            params['SyncRobotCommands'].each do |i|
              syncrobotcommand_tmp = SyncRobotCommand.new
              syncrobotcommand_tmp.deserialize(i)
              @SyncRobotCommands << syncrobotcommand_tmp
            end
          end
        end
      end

      # CreateKTVRobot返回参数结构体
      class CreateKTVRobotResponse < TencentCloud::Common::AbstractModel
        # @param RobotId: 机器人Id。
        # @type RobotId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RobotId, :RequestId
        
        def initialize(robotid=nil, requestid=nil)
          @RobotId = robotid
          @RequestId = requestid
        end

        def deserialize(params)
          @RobotId = params['RobotId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVMatchMusics请求参数结构体
      class DescribeKTVMatchMusicsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param Rules: 匹配规则列表。
        # @type Rules: Array

        attr_accessor :AppName, :UserId, :Rules
        
        def initialize(appname=nil, userid=nil, rules=nil)
          @AppName = appname
          @UserId = userid
          @Rules = rules
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ktvmatchrule_tmp = KTVMatchRule.new
              ktvmatchrule_tmp.deserialize(i)
              @Rules << ktvmatchrule_tmp
            end
          end
        end
      end

      # DescribeKTVMatchMusics返回参数结构体
      class DescribeKTVMatchMusicsResponse < TencentCloud::Common::AbstractModel
        # @param MatchMusicSet: 匹配到的歌曲列表。
        # @type MatchMusicSet: Array
        # @param NotMatchRuleSet: 未匹配的规则列表。
        # @type NotMatchRuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchMusicSet, :NotMatchRuleSet, :RequestId
        
        def initialize(matchmusicset=nil, notmatchruleset=nil, requestid=nil)
          @MatchMusicSet = matchmusicset
          @NotMatchRuleSet = notmatchruleset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MatchMusicSet'].nil?
            @MatchMusicSet = []
            params['MatchMusicSet'].each do |i|
              ktvmatchmusic_tmp = KTVMatchMusic.new
              ktvmatchmusic_tmp.deserialize(i)
              @MatchMusicSet << ktvmatchmusic_tmp
            end
          end
          unless params['NotMatchRuleSet'].nil?
            @NotMatchRuleSet = []
            params['NotMatchRuleSet'].each do |i|
              ktvmatchrule_tmp = KTVMatchRule.new
              ktvmatchrule_tmp.deserialize(i)
              @NotMatchRuleSet << ktvmatchrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVMusicsByTag请求参数结构体
      class DescribeKTVMusicsByTagRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param TagId: 标签 Id。
        # @type TagId: String
        # @param ScrollToken: 滚动标记。
        # @type ScrollToken: String
        # @param Limit: 返回条数限制，默认 20，最大 50。
        # @type Limit: Integer
        # @param RightFilters: 权益过滤，取值有：
        # <li>Play：可播；</li>
        # <li>Sing：可唱。</li>
        # @type RightFilters: Array

        attr_accessor :AppName, :UserId, :TagId, :ScrollToken, :Limit, :RightFilters
        
        def initialize(appname=nil, userid=nil, tagid=nil, scrolltoken=nil, limit=nil, rightfilters=nil)
          @AppName = appname
          @UserId = userid
          @TagId = tagid
          @ScrollToken = scrolltoken
          @Limit = limit
          @RightFilters = rightfilters
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @TagId = params['TagId']
          @ScrollToken = params['ScrollToken']
          @Limit = params['Limit']
          @RightFilters = params['RightFilters']
        end
      end

      # DescribeKTVMusicsByTag返回参数结构体
      class DescribeKTVMusicsByTagResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicInfoSet: 歌曲信息列表。
        # @type KTVMusicInfoSet: Array
        # @param ScrollToken: 滚动标记，用于设置下次请求的 ScrollToken 参数。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicInfoSet, :ScrollToken, :RequestId
        
        def initialize(ktvmusicinfoset=nil, scrolltoken=nil, requestid=nil)
          @KTVMusicInfoSet = ktvmusicinfoset
          @ScrollToken = scrolltoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVMusicInfoSet'].nil?
            @KTVMusicInfoSet = []
            params['KTVMusicInfoSet'].each do |i|
              ktvmusicbaseinfo_tmp = KTVMusicBaseInfo.new
              ktvmusicbaseinfo_tmp.deserialize(i)
              @KTVMusicInfoSet << ktvmusicbaseinfo_tmp
            end
          end
          @ScrollToken = params['ScrollToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVPlaylistDetail请求参数结构体
      class DescribeKTVPlaylistDetailRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param PlaylistId: 歌单 Id。
        # @type PlaylistId: String
        # @param ScrollToken: 滚动标记。
        # @type ScrollToken: String
        # @param Limit: 返回条数，默认：20，最大：50。
        # @type Limit: Integer
        # @param RightFilters: 权益过滤，取值有：
        # <li>Play：可播；</li>
        # <li>Sing：可唱。</li>
        # @type RightFilters: Array

        attr_accessor :AppName, :UserId, :PlaylistId, :ScrollToken, :Limit, :RightFilters
        
        def initialize(appname=nil, userid=nil, playlistid=nil, scrolltoken=nil, limit=nil, rightfilters=nil)
          @AppName = appname
          @UserId = userid
          @PlaylistId = playlistid
          @ScrollToken = scrolltoken
          @Limit = limit
          @RightFilters = rightfilters
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @PlaylistId = params['PlaylistId']
          @ScrollToken = params['ScrollToken']
          @Limit = params['Limit']
          @RightFilters = params['RightFilters']
        end
      end

      # DescribeKTVPlaylistDetail返回参数结构体
      class DescribeKTVPlaylistDetailResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicInfoSet: 歌曲信息列表。
        # @type KTVMusicInfoSet: Array
        # @param ScrollToken: 滚动标记，用于设置下次请求的 ScrollToken 参数。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicInfoSet, :ScrollToken, :RequestId
        
        def initialize(ktvmusicinfoset=nil, scrolltoken=nil, requestid=nil)
          @KTVMusicInfoSet = ktvmusicinfoset
          @ScrollToken = scrolltoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVMusicInfoSet'].nil?
            @KTVMusicInfoSet = []
            params['KTVMusicInfoSet'].each do |i|
              ktvmusicbaseinfo_tmp = KTVMusicBaseInfo.new
              ktvmusicbaseinfo_tmp.deserialize(i)
              @KTVMusicInfoSet << ktvmusicbaseinfo_tmp
            end
          end
          @ScrollToken = params['ScrollToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVPlaylists请求参数结构体
      class DescribeKTVPlaylistsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param Types: 类型列表，取值有：
        # <li>OfficialRec：官方推荐；</li>
        # <li>Customize：自定义。</li>
        # @type Types: Array

        attr_accessor :AppName, :UserId, :Types
        
        def initialize(appname=nil, userid=nil, types=nil)
          @AppName = appname
          @UserId = userid
          @Types = types
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @Types = params['Types']
        end
      end

      # DescribeKTVPlaylists返回参数结构体
      class DescribeKTVPlaylistsResponse < TencentCloud::Common::AbstractModel
        # @param PlaylistBaseInfoSet: 歌单基础信息。
        # @type PlaylistBaseInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlaylistBaseInfoSet, :RequestId
        
        def initialize(playlistbaseinfoset=nil, requestid=nil)
          @PlaylistBaseInfoSet = playlistbaseinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlaylistBaseInfoSet'].nil?
            @PlaylistBaseInfoSet = []
            params['PlaylistBaseInfoSet'].each do |i|
              ktvplaylistbaseinfo_tmp = KTVPlaylistBaseInfo.new
              ktvplaylistbaseinfo_tmp.deserialize(i)
              @PlaylistBaseInfoSet << ktvplaylistbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVRobots请求参数结构体
      class DescribeKTVRobotsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param RobotIds: 机器人Id列表。
        # @type RobotIds: Array
        # @param Statuses: 机器人状态，取值有：
        # <li>Play：播放</li>
        # <li>Pause：暂停</li>
        # <li>Destroy：销毁</li>
        # @type Statuses: Array
        # @param CreateTime: 匹配创建时间在此时间段内的机器人。
        # <li>包含所指定的头尾时间点。</li>
        # @type CreateTime: :class:`Tencentcloud::Yinsuda.v20220527.models.TimeRange`
        # @param Offset: 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Offset: Integer
        # @param Limit: 分页返回的起始偏移量，默认值：10。
        # @type Limit: Integer

        attr_accessor :AppName, :UserId, :RobotIds, :Statuses, :CreateTime, :Offset, :Limit
        
        def initialize(appname=nil, userid=nil, robotids=nil, statuses=nil, createtime=nil, offset=nil, limit=nil)
          @AppName = appname
          @UserId = userid
          @RobotIds = robotids
          @Statuses = statuses
          @CreateTime = createtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @RobotIds = params['RobotIds']
          @Statuses = params['Statuses']
          unless params['CreateTime'].nil?
            @CreateTime = TimeRange.new
            @CreateTime.deserialize(params['CreateTime'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeKTVRobots返回参数结构体
      class DescribeKTVRobotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 机器人总数。
        # @type TotalCount: Integer
        # @param KTVRobotInfoSet: 机器人信息集合。
        # @type KTVRobotInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KTVRobotInfoSet, :RequestId
        
        def initialize(totalcount=nil, ktvrobotinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @KTVRobotInfoSet = ktvrobotinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KTVRobotInfoSet'].nil?
            @KTVRobotInfoSet = []
            params['KTVRobotInfoSet'].each do |i|
              ktvrobotinfo_tmp = KTVRobotInfo.new
              ktvrobotinfo_tmp.deserialize(i)
              @KTVRobotInfoSet << ktvrobotinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVSuggestions请求参数结构体
      class DescribeKTVSuggestionsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param KeyWord: 搜索词。
        # @type KeyWord: String

        attr_accessor :AppName, :UserId, :KeyWord
        
        def initialize(appname=nil, userid=nil, keyword=nil)
          @AppName = appname
          @UserId = userid
          @KeyWord = keyword
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @KeyWord = params['KeyWord']
        end
      end

      # DescribeKTVSuggestions返回参数结构体
      class DescribeKTVSuggestionsResponse < TencentCloud::Common::AbstractModel
        # @param KTVSuggestionInfoSet: 联想词信息列表。
        # @type KTVSuggestionInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVSuggestionInfoSet, :RequestId
        
        def initialize(ktvsuggestioninfoset=nil, requestid=nil)
          @KTVSuggestionInfoSet = ktvsuggestioninfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVSuggestionInfoSet'].nil?
            @KTVSuggestionInfoSet = []
            params['KTVSuggestionInfoSet'].each do |i|
              ktvsuggestioninfo_tmp = KTVSuggestionInfo.new
              ktvsuggestioninfo_tmp.deserialize(i)
              @KTVSuggestionInfoSet << ktvsuggestioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVTags请求参数结构体
      class DescribeKTVTagsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String

        attr_accessor :AppName, :UserId
        
        def initialize(appname=nil, userid=nil)
          @AppName = appname
          @UserId = userid
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
        end
      end

      # DescribeKTVTags返回参数结构体
      class DescribeKTVTagsResponse < TencentCloud::Common::AbstractModel
        # @param TagGroupInfoSet: 标签分组列表。
        # @type TagGroupInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TagGroupInfoSet, :RequestId
        
        def initialize(taggroupinfoset=nil, requestid=nil)
          @TagGroupInfoSet = taggroupinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TagGroupInfoSet'].nil?
            @TagGroupInfoSet = []
            params['TagGroupInfoSet'].each do |i|
              ktvtaggroupinfo_tmp = KTVTagGroupInfo.new
              ktvtaggroupinfo_tmp.deserialize(i)
              @TagGroupInfoSet << ktvtaggroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyKTVRobot请求参数结构体
      class DestroyKTVRobotRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param RobotId: 机器人Id。
        # @type RobotId: String

        attr_accessor :AppName, :UserId, :RobotId
        
        def initialize(appname=nil, userid=nil, robotid=nil)
          @AppName = appname
          @UserId = userid
          @RobotId = robotid
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @RobotId = params['RobotId']
        end
      end

      # DestroyKTVRobot返回参数结构体
      class DestroyKTVRobotResponse < TencentCloud::Common::AbstractModel
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

      # 直播进房输入参数
      class JoinRoomInput < TencentCloud::Common::AbstractModel
        # @param TRTCJoinRoomInput: TRTC进房参数
        # @type TRTCJoinRoomInput: :class:`Tencentcloud::Yinsuda.v20220527.models.TRTCJoinRoomInput`

        attr_accessor :TRTCJoinRoomInput
        
        def initialize(trtcjoinroominput=nil)
          @TRTCJoinRoomInput = trtcjoinroominput
        end

        def deserialize(params)
          unless params['TRTCJoinRoomInput'].nil?
            @TRTCJoinRoomInput = TRTCJoinRoomInput.new
            @TRTCJoinRoomInput.deserialize(params['TRTCJoinRoomInput'])
          end
        end
      end

      # 节拍信息。
      class KTVBPMInfo < TencentCloud::Common::AbstractModel
        # @param Type: 节拍类型，取值有：
        # <li>Slow：慢；</li>
        # <li>Middle：中等；</li>
        # <li>Fast：快；</li>
        # <li>Unknown：未知。</li>
        # @type Type: String
        # @param Value: BPM 值。
        # @type Value: Integer

        attr_accessor :Type, :Value
        
        def initialize(type=nil, value=nil)
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # 匹配歌曲信息。
      class KTVMatchMusic < TencentCloud::Common::AbstractModel
        # @param KTVMusicBaseInfo: 匹配到的歌曲基础信息。
        # @type KTVMusicBaseInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.KTVMusicBaseInfo`
        # @param MatchRule: 命中规则。
        # @type MatchRule: :class:`Tencentcloud::Yinsuda.v20220527.models.KTVMatchRule`

        attr_accessor :KTVMusicBaseInfo, :MatchRule
        
        def initialize(ktvmusicbaseinfo=nil, matchrule=nil)
          @KTVMusicBaseInfo = ktvmusicbaseinfo
          @MatchRule = matchrule
        end

        def deserialize(params)
          unless params['KTVMusicBaseInfo'].nil?
            @KTVMusicBaseInfo = KTVMusicBaseInfo.new
            @KTVMusicBaseInfo.deserialize(params['KTVMusicBaseInfo'])
          end
          unless params['MatchRule'].nil?
            @MatchRule = KTVMatchRule.new
            @MatchRule.deserialize(params['MatchRule'])
          end
        end
      end

      # 歌曲匹配规则。
      class KTVMatchRule < TencentCloud::Common::AbstractModel
        # @param AMEMusicId: AME 曲库 Id。
        # @type AMEMusicId: String
        # @param MusicInfo: 歌曲匹配信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MusicInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.KTVMatchRuleMusicInfo`

        attr_accessor :AMEMusicId, :MusicInfo
        
        def initialize(amemusicid=nil, musicinfo=nil)
          @AMEMusicId = amemusicid
          @MusicInfo = musicinfo
        end

        def deserialize(params)
          @AMEMusicId = params['AMEMusicId']
          unless params['MusicInfo'].nil?
            @MusicInfo = KTVMatchRuleMusicInfo.new
            @MusicInfo.deserialize(params['MusicInfo'])
          end
        end
      end

      # 歌曲信息匹配。
      class KTVMatchRuleMusicInfo < TencentCloud::Common::AbstractModel
        # @param MusicName: 歌曲名称。
        # @type MusicName: String
        # @param SingerSet: 歌手列表。
        # @type SingerSet: Array

        attr_accessor :MusicName, :SingerSet
        
        def initialize(musicname=nil, singerset=nil)
          @MusicName = musicname
          @SingerSet = singerset
        end

        def deserialize(params)
          @MusicName = params['MusicName']
          @SingerSet = params['SingerSet']
        end
      end

      # 歌曲基础信息。
      class KTVMusicBaseInfo < TencentCloud::Common::AbstractModel
        # @param MusicId: 歌曲Id。
        # @type MusicId: String
        # @param Name: 歌曲名称。
        # @type Name: String
        # @param SingerSet: 歌手名称。
        # @type SingerSet: Array
        # @param Duration: 播放时长。
        # @type Duration: Integer
        # @param SingerImageUrl: 歌手图片链接。
        # @type SingerImageUrl: String
        # @param AlbumInfo: 专辑信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlbumInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.MusicAlbumInfo`
        # @param RightSet: 权益列表，取值有：
        # <li>Play：可播；</li>
        # <li>Sing：可唱。</li>
        # @type RightSet: Array
        # @param RecommendType: 推荐类型，取值有：
        # <li>Featured：精选；</li>
        # <li>Other：其他。</li>
        # @type RecommendType: String

        attr_accessor :MusicId, :Name, :SingerSet, :Duration, :SingerImageUrl, :AlbumInfo, :RightSet, :RecommendType
        
        def initialize(musicid=nil, name=nil, singerset=nil, duration=nil, singerimageurl=nil, albuminfo=nil, rightset=nil, recommendtype=nil)
          @MusicId = musicid
          @Name = name
          @SingerSet = singerset
          @Duration = duration
          @SingerImageUrl = singerimageurl
          @AlbumInfo = albuminfo
          @RightSet = rightset
          @RecommendType = recommendtype
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @Name = params['Name']
          @SingerSet = params['SingerSet']
          @Duration = params['Duration']
          @SingerImageUrl = params['SingerImageUrl']
          unless params['AlbumInfo'].nil?
            @AlbumInfo = MusicAlbumInfo.new
            @AlbumInfo.deserialize(params['AlbumInfo'])
          end
          @RightSet = params['RightSet']
          @RecommendType = params['RecommendType']
        end
      end

      # 歌曲详细信息。
      class KTVMusicDetailInfo < TencentCloud::Common::AbstractModel
        # @param KTVMusicBaseInfo: 歌曲基础信息。
        # @type KTVMusicBaseInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.KTVMusicBaseInfo`
        # @param PlayToken: 播放凭证。
        # @type PlayToken: String
        # @param LyricsUrl: 歌词下载链接。
        # @type LyricsUrl: String
        # @param MidiUrl: 音高数据下载链接。
        # @type MidiUrl: String
        # @param ChorusClipSet: 副歌片段信息。
        # @type ChorusClipSet: Array
        # @param PreludeInterval: 前奏间隔。
        # @type PreludeInterval: Integer
        # @param GenreSet: 歌曲流派列表。
        # @type GenreSet: Array
        # @param BPMInfo: 节拍信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BPMInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.KTVBPMInfo`

        attr_accessor :KTVMusicBaseInfo, :PlayToken, :LyricsUrl, :MidiUrl, :ChorusClipSet, :PreludeInterval, :GenreSet, :BPMInfo
        
        def initialize(ktvmusicbaseinfo=nil, playtoken=nil, lyricsurl=nil, midiurl=nil, chorusclipset=nil, preludeinterval=nil, genreset=nil, bpminfo=nil)
          @KTVMusicBaseInfo = ktvmusicbaseinfo
          @PlayToken = playtoken
          @LyricsUrl = lyricsurl
          @MidiUrl = midiurl
          @ChorusClipSet = chorusclipset
          @PreludeInterval = preludeinterval
          @GenreSet = genreset
          @BPMInfo = bpminfo
        end

        def deserialize(params)
          unless params['KTVMusicBaseInfo'].nil?
            @KTVMusicBaseInfo = KTVMusicBaseInfo.new
            @KTVMusicBaseInfo.deserialize(params['KTVMusicBaseInfo'])
          end
          @PlayToken = params['PlayToken']
          @LyricsUrl = params['LyricsUrl']
          @MidiUrl = params['MidiUrl']
          unless params['ChorusClipSet'].nil?
            @ChorusClipSet = []
            params['ChorusClipSet'].each do |i|
              chorusclip_tmp = ChorusClip.new
              chorusclip_tmp.deserialize(i)
              @ChorusClipSet << chorusclip_tmp
            end
          end
          @PreludeInterval = params['PreludeInterval']
          @GenreSet = params['GenreSet']
          unless params['BPMInfo'].nil?
            @BPMInfo = KTVBPMInfo.new
            @BPMInfo.deserialize(params['BPMInfo'])
          end
        end
      end

      # 歌单基础信息。
      class KTVPlaylistBaseInfo < TencentCloud::Common::AbstractModel
        # @param PlaylistId: 歌单Id。
        # @type PlaylistId: String
        # @param Title: 歌单标题。
        # @type Title: String

        attr_accessor :PlaylistId, :Title
        
        def initialize(playlistid=nil, title=nil)
          @PlaylistId = playlistid
          @Title = title
        end

        def deserialize(params)
          @PlaylistId = params['PlaylistId']
          @Title = params['Title']
        end
      end

      # 机器人信息
      class KTVRobotInfo < TencentCloud::Common::AbstractModel
        # @param RobotId: 机器人Id。
        # @type RobotId: String
        # @param Status: 状态，取值有：
        # <li>Play：播放</li>
        # <li>Pause：暂停</li>
        # <li>Destroy：销毁</li>
        # @type Status: String
        # @param Playlists: 播放列表。
        # @type Playlists: Array
        # @param CurIndex: 当前歌单索引位置。
        # @type CurIndex: Integer
        # @param Position: 播放进度，单位：毫秒。
        # @type Position: Integer
        # @param SetAudioParamInput: 音频参数。
        # @type SetAudioParamInput: :class:`Tencentcloud::Yinsuda.v20220527.models.SetAudioParamCommandInput`
        # @param JoinRoomInput: 进房信息。
        # @type JoinRoomInput: :class:`Tencentcloud::Yinsuda.v20220527.models.JoinRoomInput`
        # @param RTCSystem: RTC厂商类型，取值有：
        # <li>TRTC</li>
        # @type RTCSystem: String
        # @param SetPlayModeInput: 播放模式，PlayMode取值有：
        # <li>RepeatPlaylist：列表循环</li>
        # <li>Order：顺序播放</li>
        # <li>RepeatSingle：单曲循环</li>
        # <li>Shuffle：随机播放</li>
        # @type SetPlayModeInput: :class:`Tencentcloud::Yinsuda.v20220527.models.SetPlayModeCommandInput`

        attr_accessor :RobotId, :Status, :Playlists, :CurIndex, :Position, :SetAudioParamInput, :JoinRoomInput, :RTCSystem, :SetPlayModeInput
        
        def initialize(robotid=nil, status=nil, playlists=nil, curindex=nil, position=nil, setaudioparaminput=nil, joinroominput=nil, rtcsystem=nil, setplaymodeinput=nil)
          @RobotId = robotid
          @Status = status
          @Playlists = playlists
          @CurIndex = curindex
          @Position = position
          @SetAudioParamInput = setaudioparaminput
          @JoinRoomInput = joinroominput
          @RTCSystem = rtcsystem
          @SetPlayModeInput = setplaymodeinput
        end

        def deserialize(params)
          @RobotId = params['RobotId']
          @Status = params['Status']
          @Playlists = params['Playlists']
          @CurIndex = params['CurIndex']
          @Position = params['Position']
          unless params['SetAudioParamInput'].nil?
            @SetAudioParamInput = SetAudioParamCommandInput.new
            @SetAudioParamInput.deserialize(params['SetAudioParamInput'])
          end
          unless params['JoinRoomInput'].nil?
            @JoinRoomInput = JoinRoomInput.new
            @JoinRoomInput.deserialize(params['JoinRoomInput'])
          end
          @RTCSystem = params['RTCSystem']
          unless params['SetPlayModeInput'].nil?
            @SetPlayModeInput = SetPlayModeCommandInput.new
            @SetPlayModeInput.deserialize(params['SetPlayModeInput'])
          end
        end
      end

      # 联想词信息。
      class KTVSuggestionInfo < TencentCloud::Common::AbstractModel
        # @param Suggestion: 联想词。
        # @type Suggestion: String

        attr_accessor :Suggestion
        
        def initialize(suggestion=nil)
          @Suggestion = suggestion
        end

        def deserialize(params)
          @Suggestion = params['Suggestion']
        end
      end

      # 标签分组信息。
      class KTVTagGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组 Id。
        # @type GroupId: String
        # @param Name: 分组名。
        # @type Name: String
        # @param TagInfoSet: 标签列表。
        # @type TagInfoSet: Array

        attr_accessor :GroupId, :Name, :TagInfoSet
        
        def initialize(groupid=nil, name=nil, taginfoset=nil)
          @GroupId = groupid
          @Name = name
          @TagInfoSet = taginfoset
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Name = params['Name']
          unless params['TagInfoSet'].nil?
            @TagInfoSet = []
            params['TagInfoSet'].each do |i|
              ktvtaginfo_tmp = KTVTagInfo.new
              ktvtaginfo_tmp.deserialize(i)
              @TagInfoSet << ktvtaginfo_tmp
            end
          end
        end
      end

      # 标签信息。
      class KTVTagInfo < TencentCloud::Common::AbstractModel
        # @param TagId: 标签 Id。
        # @type TagId: String
        # @param Name: 标签名称。
        # @type Name: String

        attr_accessor :TagId, :Name
        
        def initialize(tagid=nil, name=nil)
          @TagId = tagid
          @Name = name
        end

        def deserialize(params)
          @TagId = params['TagId']
          @Name = params['Name']
        end
      end

      # 歌曲专辑封面信息。
      class MusicAlbumCoverInfo < TencentCloud::Common::AbstractModel
        # @param Dimension: 尺寸规格，取值有：
        # <li>Mini：150 x 150 尺寸；</li>
        # <li>Small：240 x 240 尺寸；</li>
        # <li>Medium：480 x 480 尺寸。</li>
        # @type Dimension: String
        # @param Url: 下载链接。
        # @type Url: String

        attr_accessor :Dimension, :Url
        
        def initialize(dimension=nil, url=nil)
          @Dimension = dimension
          @Url = url
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          @Url = params['Url']
        end
      end

      # 歌曲专辑信息。
      class MusicAlbumInfo < TencentCloud::Common::AbstractModel
        # @param Name: 专辑名称。
        # @type Name: String
        # @param CoverInfoSet: 封面列表。
        # @type CoverInfoSet: Array

        attr_accessor :Name, :CoverInfoSet
        
        def initialize(name=nil, coverinfoset=nil)
          @Name = name
          @CoverInfoSet = coverinfoset
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['CoverInfoSet'].nil?
            @CoverInfoSet = []
            params['CoverInfoSet'].each do |i|
              musicalbumcoverinfo_tmp = MusicAlbumCoverInfo.new
              musicalbumcoverinfo_tmp.deserialize(i)
              @CoverInfoSet << musicalbumcoverinfo_tmp
            end
          end
        end
      end

      # 播放指令输入参数
      class PlayCommandInput < TencentCloud::Common::AbstractModel
        # @param Index: 歌曲位置索引。
        # @type Index: Integer

        attr_accessor :Index
        
        def initialize(index=nil)
          @Index = index
        end

        def deserialize(params)
          @Index = params['Index']
        end
      end

      # SearchKTVMusics请求参数结构体
      class SearchKTVMusicsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param KeyWord: 关键词。
        # @type KeyWord: String
        # @param ScrollToken: 滚动标记。
        # @type ScrollToken: String
        # @param Limit: 返回条数限制，默认 20，最大 50.
        # @type Limit: Integer
        # @param RightFilters: 权益过滤，取值有：
        # <li>Play：可播；</li>
        # <li>Sing：可唱。</li>
        # @type RightFilters: Array

        attr_accessor :AppName, :UserId, :KeyWord, :ScrollToken, :Limit, :RightFilters
        
        def initialize(appname=nil, userid=nil, keyword=nil, scrolltoken=nil, limit=nil, rightfilters=nil)
          @AppName = appname
          @UserId = userid
          @KeyWord = keyword
          @ScrollToken = scrolltoken
          @Limit = limit
          @RightFilters = rightfilters
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @KeyWord = params['KeyWord']
          @ScrollToken = params['ScrollToken']
          @Limit = params['Limit']
          @RightFilters = params['RightFilters']
        end
      end

      # SearchKTVMusics返回参数结构体
      class SearchKTVMusicsResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicInfoSet: 歌曲信息列表。
        # @type KTVMusicInfoSet: Array
        # @param ScrollToken: 滚动标记，用于设置下次请求的 ScrollToken 参数。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicInfoSet, :ScrollToken, :RequestId
        
        def initialize(ktvmusicinfoset=nil, scrolltoken=nil, requestid=nil)
          @KTVMusicInfoSet = ktvmusicinfoset
          @ScrollToken = scrolltoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVMusicInfoSet'].nil?
            @KTVMusicInfoSet = []
            params['KTVMusicInfoSet'].each do |i|
              ktvmusicbaseinfo_tmp = KTVMusicBaseInfo.new
              ktvmusicbaseinfo_tmp.deserialize(i)
              @KTVMusicInfoSet << ktvmusicbaseinfo_tmp
            end
          end
          @ScrollToken = params['ScrollToken']
          @RequestId = params['RequestId']
        end
      end

      # 调整播放进度指令参数
      class SeekCommandInput < TencentCloud::Common::AbstractModel
        # @param Position: 播放位置，单位：毫秒。
        # @type Position: Integer

        attr_accessor :Position
        
        def initialize(position=nil)
          @Position = position
        end

        def deserialize(params)
          @Position = params['Position']
        end
      end

      # 发送自定义信息指令参数
      class SendMessageCommandInput < TencentCloud::Common::AbstractModel
        # @param Message: 自定义消息，json格式字符串。
        # @type Message: String
        # @param Repeat: 消息重复次数，默认为 1。
        # @type Repeat: Integer

        attr_accessor :Message, :Repeat
        
        def initialize(message=nil, repeat=nil)
          @Message = message
          @Repeat = repeat
        end

        def deserialize(params)
          @Message = params['Message']
          @Repeat = params['Repeat']
        end
      end

      # 音频参数信息
      class SetAudioParamCommandInput < TencentCloud::Common::AbstractModel
        # @param Type: 音频类型，取值有：
        # <li>Original：原唱</li>
        # <li>Accompaniment：伴奏</li>
        # @type Type: String

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 设置销毁模式
      class SetDestroyModeCommandInput < TencentCloud::Common::AbstractModel
        # @param DestroyMode: 销毁模式，取值有：
        # <li>Auto：房间没人时自动销毁</li>
        # <li>Expire：房间没人时过期自动销毁</li>
        # <li>Never：不自动销毁，需手动销毁</li>默认为：Auto。
        # @type DestroyMode: String
        # @param DestroyExpireTime: 过期销毁时间，单位：秒，当DestroyMode取Expire时必填。
        # @type DestroyExpireTime: Integer

        attr_accessor :DestroyMode, :DestroyExpireTime
        
        def initialize(destroymode=nil, destroyexpiretime=nil)
          @DestroyMode = destroymode
          @DestroyExpireTime = destroyexpiretime
        end

        def deserialize(params)
          @DestroyMode = params['DestroyMode']
          @DestroyExpireTime = params['DestroyExpireTime']
        end
      end

      # 设置播放模式
      class SetPlayModeCommandInput < TencentCloud::Common::AbstractModel
        # @param PlayMode: 播放模式，取值有：
        # <li>RepeatPlaylist：列表循环</li>
        # <li>Order：顺序播放</li>
        # <li>RepeatSingle：单曲循环</li>
        # <li>Shuffle：随机播放</li>
        # @type PlayMode: String

        attr_accessor :PlayMode
        
        def initialize(playmode=nil)
          @PlayMode = playmode
        end

        def deserialize(params)
          @PlayMode = params['PlayMode']
        end
      end

      # 设置播放列表指令参数
      class SetPlaylistCommandInput < TencentCloud::Common::AbstractModel
        # @param Type: 变更类型，取值有：
        # <li>Add：添加</li>
        # <li>Delete：删除</li>
        # <li>ClearList：清空歌曲列表</li>
        # <li>Move：移动歌曲</li>
        # @type Type: String
        # @param Index: 歌单索引位置，
        # 当 Type 取 Add 时，-1表示添加在列表最后位置，大于-1表示要添加的位置；
        # 当 Type 取 Delete 时，表示待删除歌曲的位置；
        # 当 Type 取 Move 时，表示待调整歌曲的位置。
        # @type Index: Integer
        # @param ChangedIndex: 当 Type 取 Move 时，必填，表示移动歌曲的目标位置。
        # @type ChangedIndex: Integer
        # @param MusicIds: 歌曲 ID 列表，当 Type 取 Add 时，必填。
        # @type MusicIds: Array

        attr_accessor :Type, :Index, :ChangedIndex, :MusicIds
        
        def initialize(type=nil, index=nil, changedindex=nil, musicids=nil)
          @Type = type
          @Index = index
          @ChangedIndex = changedindex
          @MusicIds = musicids
        end

        def deserialize(params)
          @Type = params['Type']
          @Index = params['Index']
          @ChangedIndex = params['ChangedIndex']
          @MusicIds = params['MusicIds']
        end
      end

      # SyncKTVRobotCommand请求参数结构体
      class SyncKTVRobotCommandRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param RobotId: 机器人Id。
        # @type RobotId: String
        # @param SyncRobotCommands: 指令及指令参数数组。
        # @type SyncRobotCommands: Array

        attr_accessor :AppName, :UserId, :RobotId, :SyncRobotCommands
        
        def initialize(appname=nil, userid=nil, robotid=nil, syncrobotcommands=nil)
          @AppName = appname
          @UserId = userid
          @RobotId = robotid
          @SyncRobotCommands = syncrobotcommands
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @RobotId = params['RobotId']
          unless params['SyncRobotCommands'].nil?
            @SyncRobotCommands = []
            params['SyncRobotCommands'].each do |i|
              syncrobotcommand_tmp = SyncRobotCommand.new
              syncrobotcommand_tmp.deserialize(i)
              @SyncRobotCommands << syncrobotcommand_tmp
            end
          end
        end
      end

      # SyncKTVRobotCommand返回参数结构体
      class SyncKTVRobotCommandResponse < TencentCloud::Common::AbstractModel
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

      # KTV 机器人初始化参数，在创建后自动完成相关初始化工作。
      class SyncRobotCommand < TencentCloud::Common::AbstractModel
        # @param Command: 可同时传入多个指令，顺序执行。取值有：
        # <li>Play：播放</li>
        # <li>Pause：暂停</li>
        # <li>SwitchPrevious：上一首</li>
        # <li>SwitchNext：下一首</li>
        # <li>SetPlayMode：设置播放模式</li>
        # <li>Seek：调整播放进度</li>
        # <li>SetPlaylist：歌单变更</li>
        # <li>SetAudioParam：音频参数变更</li>
        # <li>SendMessage：发送自定义消息</li>
        # <li>SetDestroyMode：设置销毁模式</li>
        # @type Command: String
        # @param PlayCommandInput: 播放参数。
        # @type PlayCommandInput: :class:`Tencentcloud::Yinsuda.v20220527.models.PlayCommandInput`
        # @param SetPlaylistCommandInput: 播放列表变更信息，当Command取SetPlaylist时，必填。
        # @type SetPlaylistCommandInput: :class:`Tencentcloud::Yinsuda.v20220527.models.SetPlaylistCommandInput`
        # @param SeekCommandInput: 播放进度，当Command取Seek时，必填。
        # @type SeekCommandInput: :class:`Tencentcloud::Yinsuda.v20220527.models.SeekCommandInput`
        # @param SetAudioParamCommandInput: 音频参数，当Command取SetAudioParam时，必填。
        # @type SetAudioParamCommandInput: :class:`Tencentcloud::Yinsuda.v20220527.models.SetAudioParamCommandInput`
        # @param SendMessageCommandInput: 自定义消息，当Command取SendMessage时，必填。
        # @type SendMessageCommandInput: :class:`Tencentcloud::Yinsuda.v20220527.models.SendMessageCommandInput`
        # @param SetPlayModeCommandInput: 播放模式，当Command取SetPlayMode时，必填。
        # @type SetPlayModeCommandInput: :class:`Tencentcloud::Yinsuda.v20220527.models.SetPlayModeCommandInput`
        # @param SetDestroyModeCommandInput: 销毁模式，当Command取SetDestroyMode时，必填。
        # @type SetDestroyModeCommandInput: :class:`Tencentcloud::Yinsuda.v20220527.models.SetDestroyModeCommandInput`

        attr_accessor :Command, :PlayCommandInput, :SetPlaylistCommandInput, :SeekCommandInput, :SetAudioParamCommandInput, :SendMessageCommandInput, :SetPlayModeCommandInput, :SetDestroyModeCommandInput
        
        def initialize(command=nil, playcommandinput=nil, setplaylistcommandinput=nil, seekcommandinput=nil, setaudioparamcommandinput=nil, sendmessagecommandinput=nil, setplaymodecommandinput=nil, setdestroymodecommandinput=nil)
          @Command = command
          @PlayCommandInput = playcommandinput
          @SetPlaylistCommandInput = setplaylistcommandinput
          @SeekCommandInput = seekcommandinput
          @SetAudioParamCommandInput = setaudioparamcommandinput
          @SendMessageCommandInput = sendmessagecommandinput
          @SetPlayModeCommandInput = setplaymodecommandinput
          @SetDestroyModeCommandInput = setdestroymodecommandinput
        end

        def deserialize(params)
          @Command = params['Command']
          unless params['PlayCommandInput'].nil?
            @PlayCommandInput = PlayCommandInput.new
            @PlayCommandInput.deserialize(params['PlayCommandInput'])
          end
          unless params['SetPlaylistCommandInput'].nil?
            @SetPlaylistCommandInput = SetPlaylistCommandInput.new
            @SetPlaylistCommandInput.deserialize(params['SetPlaylistCommandInput'])
          end
          unless params['SeekCommandInput'].nil?
            @SeekCommandInput = SeekCommandInput.new
            @SeekCommandInput.deserialize(params['SeekCommandInput'])
          end
          unless params['SetAudioParamCommandInput'].nil?
            @SetAudioParamCommandInput = SetAudioParamCommandInput.new
            @SetAudioParamCommandInput.deserialize(params['SetAudioParamCommandInput'])
          end
          unless params['SendMessageCommandInput'].nil?
            @SendMessageCommandInput = SendMessageCommandInput.new
            @SendMessageCommandInput.deserialize(params['SendMessageCommandInput'])
          end
          unless params['SetPlayModeCommandInput'].nil?
            @SetPlayModeCommandInput = SetPlayModeCommandInput.new
            @SetPlayModeCommandInput.deserialize(params['SetPlayModeCommandInput'])
          end
          unless params['SetDestroyModeCommandInput'].nil?
            @SetDestroyModeCommandInput = SetDestroyModeCommandInput.new
            @SetDestroyModeCommandInput.deserialize(params['SetDestroyModeCommandInput'])
          end
        end
      end

      # TRTC推流进房信息
      class TRTCJoinRoomInput < TencentCloud::Common::AbstractModel
        # @param Sign: 签名。
        # @type Sign: String
        # @param RoomId: 房间号。
        # @type RoomId: String
        # @param SdkAppId: 推流应用ID。
        # @type SdkAppId: String
        # @param UserId: 用户唯一标识。
        # @type UserId: String

        attr_accessor :Sign, :RoomId, :SdkAppId, :UserId
        
        def initialize(sign=nil, roomid=nil, sdkappid=nil, userid=nil)
          @Sign = sign
          @RoomId = roomid
          @SdkAppId = sdkappid
          @UserId = userid
        end

        def deserialize(params)
          @Sign = params['Sign']
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
        end
      end

      # 时间范围
      class TimeRange < TencentCloud::Common::AbstractModel
        # @param Before: <li>大于等于此时间（起始时间）。</li>
        # <li>格式按照 ISO 8601标准表示，详见 <a href="https://cloud.tencent.com/document/product/266/11732#I" target="_blank">ISO 日期格式说明</a>。</li>
        # @type Before: String
        # @param After: <li>小于此时间（结束时间）。</li>
        # <li>格式按照 ISO 8601标准表示，详见 <a href="https://cloud.tencent.com/document/product/266/11732#I" target="_blank">ISO 日期格式说明</a>。</li>
        # @type After: String

        attr_accessor :Before, :After
        
        def initialize(before=nil, after=nil)
          @Before = before
          @After = after
        end

        def deserialize(params)
          @Before = params['Before']
          @After = params['After']
        end
      end

    end
  end
end

