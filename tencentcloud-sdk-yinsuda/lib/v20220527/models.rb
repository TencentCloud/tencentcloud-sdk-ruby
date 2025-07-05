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

module TencentCloud
  module Yinsuda
    module V20220527
      # AME 曲库歌曲基础信息。
      class AMEMusicBaseInfo < TencentCloud::Common::AbstractModel
        # @param MusicId: 歌曲 Id。
        # @type MusicId: String
        # @param Name: 歌曲名称。
        # @type Name: String
        # @param SingerSet: 歌手列表。
        # @type SingerSet: Array

        attr_accessor :MusicId, :Name, :SingerSet

        def initialize(musicid=nil, name=nil, singerset=nil)
          @MusicId = musicid
          @Name = name
          @SingerSet = singerset
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @Name = params['Name']
          @SingerSet = params['SingerSet']
        end
      end

      # ApplyChorus请求参数结构体
      class ApplyChorusRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param RoomId: 房间号。
        # @type RoomId: String
        # @param MusicId: 歌曲 Id。
        # @type MusicId: String
        # @param MaxChorusNum: 最大合唱人数，默认值为 8，最大值为 20。
        # @type MaxChorusNum: Integer
        # @param ChorusUserIds: 合唱用户标识列表。
        # @type ChorusUserIds: Array

        attr_accessor :AppName, :UserId, :RoomId, :MusicId, :MaxChorusNum, :ChorusUserIds

        def initialize(appname=nil, userid=nil, roomid=nil, musicid=nil, maxchorusnum=nil, chorususerids=nil)
          @AppName = appname
          @UserId = userid
          @RoomId = roomid
          @MusicId = musicid
          @MaxChorusNum = maxchorusnum
          @ChorusUserIds = chorususerids
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @RoomId = params['RoomId']
          @MusicId = params['MusicId']
          @MaxChorusNum = params['MaxChorusNum']
          @ChorusUserIds = params['ChorusUserIds']
        end
      end

      # ApplyChorus返回参数结构体
      class ApplyChorusResponse < TencentCloud::Common::AbstractModel
        # @param ChorusToken: 合唱 Token。
        # @type ChorusToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ChorusToken, :RequestId

        def initialize(chorustoken=nil, requestid=nil)
          @ChorusToken = chorustoken
          @RequestId = requestid
        end

        def deserialize(params)
          @ChorusToken = params['ChorusToken']
          @RequestId = params['RequestId']
        end
      end

      # BatchDescribeKTVMusicDetails请求参数结构体
      class BatchDescribeKTVMusicDetailsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param MusicIds: 歌曲 Id 列表。
        # @type MusicIds: Array
        # @param PlayScene: 播放场景。默认为Chat
        # <li>Live：直播</li><li>Chat：语聊</li>
        # @type PlayScene: String
        # @param GuestUserId: 玩家用户标识
        # @type GuestUserId: String
        # @param RoomId: 房间Id
        # @type RoomId: String

        attr_accessor :AppName, :UserId, :MusicIds, :PlayScene, :GuestUserId, :RoomId

        def initialize(appname=nil, userid=nil, musicids=nil, playscene=nil, guestuserid=nil, roomid=nil)
          @AppName = appname
          @UserId = userid
          @MusicIds = musicids
          @PlayScene = playscene
          @GuestUserId = guestuserid
          @RoomId = roomid
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @MusicIds = params['MusicIds']
          @PlayScene = params['PlayScene']
          @GuestUserId = params['GuestUserId']
          @RoomId = params['RoomId']
        end
      end

      # BatchDescribeKTVMusicDetails返回参数结构体
      class BatchDescribeKTVMusicDetailsResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicDetailInfoSet: 歌曲详细信息列表。
        # @type KTVMusicDetailInfoSet: Array
        # @param NotExistMusicIdSet: 不存在歌曲Id列表。
        # @type NotExistMusicIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeKTVMusicAccompanySegmentUrl请求参数结构体
      class DescribeKTVMusicAccompanySegmentUrlRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param MusicId: 歌曲 Id 。
        # @type MusicId: String
        # @param PlayScene: 播放场景。默认为Chat
        # <li>Live：直播</li><li>Chat：语聊</li>
        # @type PlayScene: String
        # @param RoomId: 房间Id
        # @type RoomId: String

        attr_accessor :AppName, :UserId, :MusicId, :PlayScene, :RoomId

        def initialize(appname=nil, userid=nil, musicid=nil, playscene=nil, roomid=nil)
          @AppName = appname
          @UserId = userid
          @MusicId = musicid
          @PlayScene = playscene
          @RoomId = roomid
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @MusicId = params['MusicId']
          @PlayScene = params['PlayScene']
          @RoomId = params['RoomId']
        end
      end

      # DescribeKTVMusicAccompanySegmentUrl返回参数结构体
      class DescribeKTVMusicAccompanySegmentUrlResponse < TencentCloud::Common::AbstractModel
        # @param Status: 歌曲状态。
        # 0：可用
        # 1：下线
        # 2：没权限
        # 3：没伴奏
        # 当返回2时，其他参数有可能全部为空
        # @type Status: Integer
        # @param Url: 伴奏链接
        # @type Url: String
        # @param ExtName: 伴奏类型，如mkv，mp3等
        # @type ExtName: String
        # @param SegmentBegin: 高潮开始时间
        # @type SegmentBegin: Integer
        # @param SegmentEnd: 高潮结束时间
        # @type SegmentEnd: Integer
        # @param FileSize: 链接文件大小 单位 字节
        # @type FileSize: Integer
        # @param OtherSegments: 其它片段时间（可用于抢唱）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherSegments: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Url, :ExtName, :SegmentBegin, :SegmentEnd, :FileSize, :OtherSegments, :RequestId

        def initialize(status=nil, url=nil, extname=nil, segmentbegin=nil, segmentend=nil, filesize=nil, othersegments=nil, requestid=nil)
          @Status = status
          @Url = url
          @ExtName = extname
          @SegmentBegin = segmentbegin
          @SegmentEnd = segmentend
          @FileSize = filesize
          @OtherSegments = othersegments
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Url = params['Url']
          @ExtName = params['ExtName']
          @SegmentBegin = params['SegmentBegin']
          @SegmentEnd = params['SegmentEnd']
          @FileSize = params['FileSize']
          unless params['OtherSegments'].nil?
            @OtherSegments = []
            params['OtherSegments'].each do |i|
              ktvothersegments_tmp = KTVOtherSegments.new
              ktvothersegments_tmp.deserialize(i)
              @OtherSegments << ktvothersegments_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVMusicAccompanySegmentUrlVip请求参数结构体
      class DescribeKTVMusicAccompanySegmentUrlVipRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称
        # @type AppName: String
        # @param UserId: 用户标识
        # @type UserId: String
        # @param MusicId: 歌曲 Id
        # @type MusicId: String
        # @param RoomId: 房间Id
        # @type RoomId: String

        attr_accessor :AppName, :UserId, :MusicId, :RoomId

        def initialize(appname=nil, userid=nil, musicid=nil, roomid=nil)
          @AppName = appname
          @UserId = userid
          @MusicId = musicid
          @RoomId = roomid
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @MusicId = params['MusicId']
          @RoomId = params['RoomId']
        end
      end

      # DescribeKTVMusicAccompanySegmentUrlVip返回参数结构体
      class DescribeKTVMusicAccompanySegmentUrlVipResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0:成功获取 1:歌曲下架 2:无权限 3: 非包月会员 4:没有对应的链接
        # @type Status: Integer
        # @param Url: 伴奏链接
        # @type Url: String
        # @param ExtName: 伴奏类型，如mkv，mp3等
        # @type ExtName: String
        # @param SegmentBegin: 高潮开始时间
        # @type SegmentBegin: Integer
        # @param SegmentEnd: 高潮结束时间
        # @type SegmentEnd: Integer
        # @param FileSize: 链接文件大小 (单位:字节)
        # @type FileSize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Url, :ExtName, :SegmentBegin, :SegmentEnd, :FileSize, :RequestId

        def initialize(status=nil, url=nil, extname=nil, segmentbegin=nil, segmentend=nil, filesize=nil, requestid=nil)
          @Status = status
          @Url = url
          @ExtName = extname
          @SegmentBegin = segmentbegin
          @SegmentEnd = segmentend
          @FileSize = filesize
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Url = params['Url']
          @ExtName = params['ExtName']
          @SegmentBegin = params['SegmentBegin']
          @SegmentEnd = params['SegmentEnd']
          @FileSize = params['FileSize']
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
        # @param MaterialFilters: 物料过滤，取值有：
        # <li>Lyrics：含有歌词；</li>
        # <li>Midi：含有音高线。</li>
        # @type MaterialFilters: Array

        attr_accessor :AppName, :UserId, :TagId, :ScrollToken, :Limit, :RightFilters, :MaterialFilters

        def initialize(appname=nil, userid=nil, tagid=nil, scrolltoken=nil, limit=nil, rightfilters=nil, materialfilters=nil)
          @AppName = appname
          @UserId = userid
          @TagId = tagid
          @ScrollToken = scrolltoken
          @Limit = limit
          @RightFilters = rightfilters
          @MaterialFilters = materialfilters
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @TagId = params['TagId']
          @ScrollToken = params['ScrollToken']
          @Limit = params['Limit']
          @RightFilters = params['RightFilters']
          @MaterialFilters = params['MaterialFilters']
        end
      end

      # DescribeKTVMusicsByTag返回参数结构体
      class DescribeKTVMusicsByTagResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicInfoSet: 歌曲信息列表。
        # @type KTVMusicInfoSet: Array
        # @param ScrollToken: 滚动标记，用于设置下次请求的 ScrollToken 参数。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param PlayScene: 播放场景。默认为Chat
        # <li>Live：直播</li><li>Chat：语聊</li>
        # @type PlayScene: String
        # @param MaterialFilters: 物料过滤，取值有：
        # <li>Lyrics：含有歌词；</li>
        # <li>Midi：含有音高线。</li>
        # @type MaterialFilters: Array

        attr_accessor :AppName, :UserId, :PlaylistId, :ScrollToken, :Limit, :RightFilters, :PlayScene, :MaterialFilters

        def initialize(appname=nil, userid=nil, playlistid=nil, scrolltoken=nil, limit=nil, rightfilters=nil, playscene=nil, materialfilters=nil)
          @AppName = appname
          @UserId = userid
          @PlaylistId = playlistid
          @ScrollToken = scrolltoken
          @Limit = limit
          @RightFilters = rightfilters
          @PlayScene = playscene
          @MaterialFilters = materialfilters
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @PlaylistId = params['PlaylistId']
          @ScrollToken = params['ScrollToken']
          @Limit = params['Limit']
          @RightFilters = params['RightFilters']
          @PlayScene = params['PlayScene']
          @MaterialFilters = params['MaterialFilters']
        end
      end

      # DescribeKTVPlaylistDetail返回参数结构体
      class DescribeKTVPlaylistDetailResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicInfoSet: 歌曲信息列表。
        # @type KTVMusicInfoSet: Array
        # @param ScrollToken: 滚动标记，用于设置下次请求的 ScrollToken 参数。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # 默认值为 OfficialRec。
        # @type Types: Array
        # @param Offset: 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：20，最大值：50。
        # @type Limit: Integer

        attr_accessor :AppName, :UserId, :Types, :Offset, :Limit

        def initialize(appname=nil, userid=nil, types=nil, offset=nil, limit=nil)
          @AppName = appname
          @UserId = userid
          @Types = types
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @Types = params['Types']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeKTVPlaylists返回参数结构体
      class DescribeKTVPlaylistsResponse < TencentCloud::Common::AbstractModel
        # @param PlaylistBaseInfoSet: 歌单基础信息。
        # @type PlaylistBaseInfoSet: Array
        # @param TotalCount: 歌单总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlaylistBaseInfoSet, :TotalCount, :RequestId

        def initialize(playlistbaseinfoset=nil, totalcount=nil, requestid=nil)
          @PlaylistBaseInfoSet = playlistbaseinfoset
          @TotalCount = totalcount
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
          @TotalCount = params['TotalCount']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeLiveVipTradeInfos请求参数结构体
      class DescribeLiveVipTradeInfosRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param StartTime: 直播会员充值下单起始时间，格式为 ISO。默认为当前时间前一天。
        # @type StartTime: String
        # @param EndTime: 直播会员充值下单截止时间，格式为 ISO。默认为当前时间。 EndTime不能小于StartTime
        # @type EndTime: String
        # @param TradeSerialNos: 交易流水号集合，匹配集合指定所有流水号 。
        # <li>数组长度限制：10。</li>
        # @type TradeSerialNos: Array
        # @param UserIds: 用户标识集合，匹配集合指定所有用户标识 。
        # <li>数组长度限制：10。</li>
        # @type UserIds: Array
        # @param Offset: 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：20，最大值：50。
        # @type Limit: Integer

        attr_accessor :AppName, :StartTime, :EndTime, :TradeSerialNos, :UserIds, :Offset, :Limit

        def initialize(appname=nil, starttime=nil, endtime=nil, tradeserialnos=nil, userids=nil, offset=nil, limit=nil)
          @AppName = appname
          @StartTime = starttime
          @EndTime = endtime
          @TradeSerialNos = tradeserialnos
          @UserIds = userids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AppName = params['AppName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TradeSerialNos = params['TradeSerialNos']
          @UserIds = params['UserIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeLiveVipTradeInfos返回参数结构体
      class DescribeLiveVipTradeInfosResponse < TencentCloud::Common::AbstractModel
        # @param LiveVipTradeInfoSet: 直播会员充值流水信息列表
        # @type LiveVipTradeInfoSet: Array
        # @param TotalCount: 直播会员充值流水总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LiveVipTradeInfoSet, :TotalCount, :RequestId

        def initialize(liveviptradeinfoset=nil, totalcount=nil, requestid=nil)
          @LiveVipTradeInfoSet = liveviptradeinfoset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LiveVipTradeInfoSet'].nil?
            @LiveVipTradeInfoSet = []
            params['LiveVipTradeInfoSet'].each do |i|
              liveviptradeinfo_tmp = LiveVipTradeInfo.new
              liveviptradeinfo_tmp.deserialize(i)
              @LiveVipTradeInfoSet << liveviptradeinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserInfo请求参数结构体
      class DescribeUserInfoRequest < TencentCloud::Common::AbstractModel
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

      # DescribeUserInfo返回参数结构体
      class DescribeUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户信息。
        # @type UserInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.UserInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserInfo, :RequestId

        def initialize(userinfo=nil, requestid=nil)
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = UserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVipUserInfo请求参数结构体
      class DescribeVipUserInfoRequest < TencentCloud::Common::AbstractModel
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

      # DescribeVipUserInfo返回参数结构体
      class DescribeVipUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param IsVip: 是否是会员。（0:不是会员 1:是会员）
        # @type IsVip: Integer
        # @param AnchorId: 主播id
        # @type AnchorId: String
        # @param RoomId: 房间id
        # @type RoomId: String
        # @param EndTime: 会员过期时间
        # @type EndTime: String
        # @param Status: 会员状态。（-1:未开通过；1:已开通，未过期；2:已开通，已过期）
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsVip, :AnchorId, :RoomId, :EndTime, :Status, :RequestId

        def initialize(isvip=nil, anchorid=nil, roomid=nil, endtime=nil, status=nil, requestid=nil)
          @IsVip = isvip
          @AnchorId = anchorid
          @RoomId = roomid
          @EndTime = endtime
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @IsVip = params['IsVip']
          @AnchorId = params['AnchorId']
          @RoomId = params['RoomId']
          @EndTime = params['EndTime']
          @Status = params['Status']
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
        # @param AMEMusicBaseInfo: AME 歌曲基础信息，仅在使用音速达歌曲 Id 匹配 AME 曲库时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AMEMusicBaseInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.AMEMusicBaseInfo`

        attr_accessor :KTVMusicBaseInfo, :MatchRule, :AMEMusicBaseInfo

        def initialize(ktvmusicbaseinfo=nil, matchrule=nil, amemusicbaseinfo=nil)
          @KTVMusicBaseInfo = ktvmusicbaseinfo
          @MatchRule = matchrule
          @AMEMusicBaseInfo = amemusicbaseinfo
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
          unless params['AMEMusicBaseInfo'].nil?
            @AMEMusicBaseInfo = AMEMusicBaseInfo.new
            @AMEMusicBaseInfo.deserialize(params['AMEMusicBaseInfo'])
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
        # @param MusicIdToMatchAME: 音速达歌曲 Id，用于匹配 AME 曲库歌曲。
        # @type MusicIdToMatchAME: String

        attr_accessor :AMEMusicId, :MusicInfo, :MusicIdToMatchAME

        def initialize(amemusicid=nil, musicinfo=nil, musicidtomatchame=nil)
          @AMEMusicId = amemusicid
          @MusicInfo = musicinfo
          @MusicIdToMatchAME = musicidtomatchame
        end

        def deserialize(params)
          @AMEMusicId = params['AMEMusicId']
          unless params['MusicInfo'].nil?
            @MusicInfo = KTVMatchRuleMusicInfo.new
            @MusicInfo.deserialize(params['MusicInfo'])
          end
          @MusicIdToMatchAME = params['MusicIdToMatchAME']
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

      # 其它片段时间（可用于抢唱）
      class KTVOtherSegments < TencentCloud::Common::AbstractModel
        # @param SegmentBegin: 片段开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentBegin: Integer
        # @param SegmentEnd: 片段结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentEnd: Integer

        attr_accessor :SegmentBegin, :SegmentEnd

        def initialize(segmentbegin=nil, segmentend=nil)
          @SegmentBegin = segmentbegin
          @SegmentEnd = segmentend
        end

        def deserialize(params)
          @SegmentBegin = params['SegmentBegin']
          @SegmentEnd = params['SegmentEnd']
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

      # 充值直播会员流水信息
      class LiveVipTradeInfo < TencentCloud::Common::AbstractModel
        # @param TradeSerialNo: 交易流水号。
        # @type TradeSerialNo: String
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param RoomId: 房间标识。
        # @type RoomId: String
        # @param VipDays: 充值会员天数。
        # 取值有：
        # <li>31</li> <li>93</li><li>186</li> <li>372</li>
        # @type VipDays: Integer
        # @param Status: 订单状态。
        # 取值有：
        # <li>Success：成功</li><li>Fail：失败</li><li>Processing：订单处理中</li>
        # @type Status: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String

        attr_accessor :TradeSerialNo, :AppName, :UserId, :RoomId, :VipDays, :Status, :CreateTime

        def initialize(tradeserialno=nil, appname=nil, userid=nil, roomid=nil, vipdays=nil, status=nil, createtime=nil)
          @TradeSerialNo = tradeserialno
          @AppName = appname
          @UserId = userid
          @RoomId = roomid
          @VipDays = vipdays
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @TradeSerialNo = params['TradeSerialNo']
          @AppName = params['AppName']
          @UserId = params['UserId']
          @RoomId = params['RoomId']
          @VipDays = params['VipDays']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # 直播会员用户信息
      class LiveVipUserInfo < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间标识。
        # @type RoomId: String
        # @param LiveVipEndTime: 直播会员结束时间。
        # @type LiveVipEndTime: String
        # @param LiveVipStatus: 会员生效状态
        # <li>Valid：生效</li><li>Invalid：无效</li>
        # @type LiveVipStatus: String

        attr_accessor :RoomId, :LiveVipEndTime, :LiveVipStatus

        def initialize(roomid=nil, livevipendtime=nil, livevipstatus=nil)
          @RoomId = roomid
          @LiveVipEndTime = livevipendtime
          @LiveVipStatus = livevipstatus
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @LiveVipEndTime = params['LiveVipEndTime']
          @LiveVipStatus = params['LiveVipStatus']
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

      # RechargeLiveVip请求参数结构体
      class RechargeLiveVipRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param TradeSerialNo: 交易流水号，用于标记此次充值记录，多次充值记录传入相同的 TradeSerialNo 会判断为失败，可用于防止重提提交造成重复计费。
        # @type TradeSerialNo: String
        # @param RoomId: 房间标识。
        # @type RoomId: String
        # @param VipDays: 充值会员天数。
        # 取值有：
        # <li>31</li>
        # <li>93</li>
        # <li>186</li>
        # <li>372</li>
        # @type VipDays: Integer
        # @param GiveType: 充值分类。取值有：room_card-包月房卡; 其他-保留。
        # @type GiveType: String
        # @param PlayScene: 播放场景。默认为Live
        # <li>Live：直播</li><li>Chat：语聊</li>
        # @type PlayScene: String

        attr_accessor :AppName, :UserId, :TradeSerialNo, :RoomId, :VipDays, :GiveType, :PlayScene

        def initialize(appname=nil, userid=nil, tradeserialno=nil, roomid=nil, vipdays=nil, givetype=nil, playscene=nil)
          @AppName = appname
          @UserId = userid
          @TradeSerialNo = tradeserialno
          @RoomId = roomid
          @VipDays = vipdays
          @GiveType = givetype
          @PlayScene = playscene
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @TradeSerialNo = params['TradeSerialNo']
          @RoomId = params['RoomId']
          @VipDays = params['VipDays']
          @GiveType = params['GiveType']
          @PlayScene = params['PlayScene']
        end
      end

      # RechargeLiveVip返回参数结构体
      class RechargeLiveVipResponse < TencentCloud::Common::AbstractModel
        # @param LiveVipUserInfo: 直播会员信息。
        # @type LiveVipUserInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.LiveVipUserInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LiveVipUserInfo, :RequestId

        def initialize(livevipuserinfo=nil, requestid=nil)
          @LiveVipUserInfo = livevipuserinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LiveVipUserInfo'].nil?
            @LiveVipUserInfo = LiveVipUserInfo.new
            @LiveVipUserInfo.deserialize(params['LiveVipUserInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RechargeVip请求参数结构体
      class RechargeVipRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param RoomId: 房间Id。
        # @type RoomId: String
        # @param VipDays: 充值会员天数。(取值有：31、93、186、372)
        # @type VipDays: Integer
        # @param AnchorId: 主播id。
        # @type AnchorId: String

        attr_accessor :AppName, :UserId, :RoomId, :VipDays, :AnchorId

        def initialize(appname=nil, userid=nil, roomid=nil, vipdays=nil, anchorid=nil)
          @AppName = appname
          @UserId = userid
          @RoomId = roomid
          @VipDays = vipdays
          @AnchorId = anchorid
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @RoomId = params['RoomId']
          @VipDays = params['VipDays']
          @AnchorId = params['AnchorId']
        end
      end

      # RechargeVip返回参数结构体
      class RechargeVipResponse < TencentCloud::Common::AbstractModel
        # @param PartnerNo: 厂商订单号。
        # @type PartnerNo: String
        # @param OrderNo: TME订单号。
        # @type OrderNo: String
        # @param CreateTime: 订单创建时间。
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PartnerNo, :OrderNo, :CreateTime, :RequestId

        def initialize(partnerno=nil, orderno=nil, createtime=nil, requestid=nil)
          @PartnerNo = partnerno
          @OrderNo = orderno
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @PartnerNo = params['PartnerNo']
          @OrderNo = params['OrderNo']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
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
        # @param PlayScene: 播放场景。默认为Chat
        # <li>Live：直播</li><li>Chat：语聊</li>
        # @type PlayScene: String
        # @param MaterialFilters: 物料过滤，取值有：
        # <li>Lyrics：含有歌词；</li>
        # <li>Midi：含有音高线。</li>
        # @type MaterialFilters: Array

        attr_accessor :AppName, :UserId, :KeyWord, :ScrollToken, :Limit, :RightFilters, :PlayScene, :MaterialFilters

        def initialize(appname=nil, userid=nil, keyword=nil, scrolltoken=nil, limit=nil, rightfilters=nil, playscene=nil, materialfilters=nil)
          @AppName = appname
          @UserId = userid
          @KeyWord = keyword
          @ScrollToken = scrolltoken
          @Limit = limit
          @RightFilters = rightfilters
          @PlayScene = playscene
          @MaterialFilters = materialfilters
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @KeyWord = params['KeyWord']
          @ScrollToken = params['ScrollToken']
          @Limit = params['Limit']
          @RightFilters = params['RightFilters']
          @PlayScene = params['PlayScene']
          @MaterialFilters = params['MaterialFilters']
        end
      end

      # SearchKTVMusics返回参数结构体
      class SearchKTVMusicsResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicInfoSet: 歌曲信息列表。
        # @type KTVMusicInfoSet: Array
        # @param ScrollToken: 滚动标记，用于设置下次请求的 ScrollToken 参数。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param RoomIdType: TRTC房间号的类型：

        # Integer：数字类型
        # String：字符串类型
        # 默认为：Integer 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomIdType: String

        attr_accessor :Sign, :RoomId, :SdkAppId, :UserId, :RoomIdType

        def initialize(sign=nil, roomid=nil, sdkappid=nil, userid=nil, roomidtype=nil)
          @Sign = sign
          @RoomId = roomid
          @SdkAppId = sdkappid
          @UserId = userid
          @RoomIdType = roomidtype
        end

        def deserialize(params)
          @Sign = params['Sign']
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
          @RoomIdType = params['RoomIdType']
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

      # 用户信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param LiveVipUserInfo: 直播会员详细信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveVipUserInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.LiveVipUserInfo`
        # @param UserType: 用户类型
        # <li>Normal：普通用户</li>
        # <li>LiveVip：直播会员用户</li>
        # @type UserType: String

        attr_accessor :AppName, :UserId, :LiveVipUserInfo, :UserType

        def initialize(appname=nil, userid=nil, livevipuserinfo=nil, usertype=nil)
          @AppName = appname
          @UserId = userid
          @LiveVipUserInfo = livevipuserinfo
          @UserType = usertype
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          unless params['LiveVipUserInfo'].nil?
            @LiveVipUserInfo = LiveVipUserInfo.new
            @LiveVipUserInfo.deserialize(params['LiveVipUserInfo'])
          end
          @UserType = params['UserType']
        end
      end

    end
  end
end

