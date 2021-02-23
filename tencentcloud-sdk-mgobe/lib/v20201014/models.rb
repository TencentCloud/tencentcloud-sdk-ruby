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
  module Mgobe
    module V20201014
      # ChangeRoomPlayerProfile请求参数结构体
      class ChangeRoomPlayerProfileRequest < TencentCloud::Common::AbstractModel
        # @param GameId: 游戏资源Id。
        # @type GameId: String
        # @param PlayerId: 发起修改的玩家Id。
        # @type PlayerId: String
        # @param CustomProfile: 需要修改的玩家自定义属性。
        # @type CustomProfile: String

        attr_accessor :GameId, :PlayerId, :CustomProfile
        
        def initialize(gameid=nil, playerid=nil, customprofile=nil)
          @GameId = gameid
          @PlayerId = playerid
          @CustomProfile = customprofile
        end

        def deserialize(params)
          @GameId = params['GameId']
          @PlayerId = params['PlayerId']
          @CustomProfile = params['CustomProfile']
        end
      end

      # ChangeRoomPlayerProfile返回参数结构体
      class ChangeRoomPlayerProfileResponse < TencentCloud::Common::AbstractModel
        # @param Room: 房间信息。
        # @type Room: :class:`Tencentcloud::Mgobe.v20201014.models.Room`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Room, :RequestId
        
        def initialize(room=nil, requestid=nil)
          @Room = room
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Room'].nil?
            @Room = Room.new.deserialize(params['Room'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ChangeRoomPlayerStatus请求参数结构体
      class ChangeRoomPlayerStatusRequest < TencentCloud::Common::AbstractModel
        # @param GameId: 游戏资源Id。
        # @type GameId: String
        # @param CustomStatus: 玩家自定义状态。
        # @type CustomStatus: Integer
        # @param PlayerId: 玩家id。
        # @type PlayerId: String

        attr_accessor :GameId, :CustomStatus, :PlayerId
        
        def initialize(gameid=nil, customstatus=nil, playerid=nil)
          @GameId = gameid
          @CustomStatus = customstatus
          @PlayerId = playerid
        end

        def deserialize(params)
          @GameId = params['GameId']
          @CustomStatus = params['CustomStatus']
          @PlayerId = params['PlayerId']
        end
      end

      # ChangeRoomPlayerStatus返回参数结构体
      class ChangeRoomPlayerStatusResponse < TencentCloud::Common::AbstractModel
        # @param Room: 房间信息
        # @type Room: :class:`Tencentcloud::Mgobe.v20201014.models.Room`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Room, :RequestId
        
        def initialize(room=nil, requestid=nil)
          @Room = room
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Room'].nil?
            @Room = Room.new.deserialize(params['Room'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePlayer请求参数结构体
      class DescribePlayerRequest < TencentCloud::Common::AbstractModel
        # @param GameId: 游戏资源Id。
        # @type GameId: String
        # @param OpenId: 玩家OpenId。
        # @type OpenId: String
        # @param PlayerId: 玩家PlayerId，由后台分配，当OpenId不传的时候，PlayerId必传，传入PlayerId可以查询当前PlayerId的玩家信息，当OpenId传入的时候，PlayerId可不传，按照OpenId查询玩家信息。
        # @type PlayerId: String

        attr_accessor :GameId, :OpenId, :PlayerId
        
        def initialize(gameid=nil, openid=nil, playerid=nil)
          @GameId = gameid
          @OpenId = openid
          @PlayerId = playerid
        end

        def deserialize(params)
          @GameId = params['GameId']
          @OpenId = params['OpenId']
          @PlayerId = params['PlayerId']
        end
      end

      # DescribePlayer返回参数结构体
      class DescribePlayerResponse < TencentCloud::Common::AbstractModel
        # @param Player: 玩家信息。
        # @type Player: :class:`Tencentcloud::Mgobe.v20201014.models.Player`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Player, :RequestId
        
        def initialize(player=nil, requestid=nil)
          @Player = player
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Player'].nil?
            @Player = Player.new.deserialize(params['Player'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoom请求参数结构体
      class DescribeRoomRequest < TencentCloud::Common::AbstractModel
        # @param GameId: 游戏资源Id。
        # @type GameId: String
        # @param PlayerId: 玩家Id。当房间Id不传的时候，玩家Id必传，传入玩家Id可以查询当前玩家所在的房间信息，当房间Id传入的时候，优先按照房间Id查询房间信息。
        # @type PlayerId: String
        # @param RoomId: 房间Id。
        # @type RoomId: String

        attr_accessor :GameId, :PlayerId, :RoomId
        
        def initialize(gameid=nil, playerid=nil, roomid=nil)
          @GameId = gameid
          @PlayerId = playerid
          @RoomId = roomid
        end

        def deserialize(params)
          @GameId = params['GameId']
          @PlayerId = params['PlayerId']
          @RoomId = params['RoomId']
        end
      end

      # DescribeRoom返回参数结构体
      class DescribeRoomResponse < TencentCloud::Common::AbstractModel
        # @param Room: 房间信息。
        # @type Room: :class:`Tencentcloud::Mgobe.v20201014.models.Room`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Room, :RequestId
        
        def initialize(room=nil, requestid=nil)
          @Room = room
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Room'].nil?
            @Room = Room.new.deserialize(params['Room'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DismissRoom请求参数结构体
      class DismissRoomRequest < TencentCloud::Common::AbstractModel
        # @param GameId: 表示游戏资源唯一 ID, 由后台自动分配, 无法修改。
        # @type GameId: String
        # @param RoomId: 表示游戏房间唯一ID。
        # @type RoomId: String

        attr_accessor :GameId, :RoomId
        
        def initialize(gameid=nil, roomid=nil)
          @GameId = gameid
          @RoomId = roomid
        end

        def deserialize(params)
          @GameId = params['GameId']
          @RoomId = params['RoomId']
        end
      end

      # DismissRoom返回参数结构体
      class DismissRoomResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRoom请求参数结构体
      class ModifyRoomRequest < TencentCloud::Common::AbstractModel
        # @param GameId: 游戏资源Id。
        # @type GameId: String
        # @param RoomId: 房间ID。
        # @type RoomId: String
        # @param PlayerId: 发起者的PlayerId。
        # @type PlayerId: String
        # @param ChangeRoomOptionList: 需要修改的房间选项，0表示房间名称，1表示房主，2表示是否允许观战，3表示是否支持邀请码/密码，4表示是否私有，5表示是否自定义房间属性，6表示是否禁止加人。
        # @type ChangeRoomOptionList: Array
        # @param RoomName: 房间名称。
        # @type RoomName: String
        # @param Owner: 变更房主。
        # @type Owner: String
        # @param IsViewed: 是否支持观战。
        # @type IsViewed: Boolean
        # @param IsInvited: 是否支持邀请码/密码。
        # @type IsInvited: Boolean
        # @param IsPrivate: 是否私有。
        # @type IsPrivate: Boolean
        # @param CustomProperties: 自定义房间属性。
        # @type CustomProperties: String
        # @param IsForbidJoin: 房间是否禁止加人。
        # @type IsForbidJoin: Boolean

        attr_accessor :GameId, :RoomId, :PlayerId, :ChangeRoomOptionList, :RoomName, :Owner, :IsViewed, :IsInvited, :IsPrivate, :CustomProperties, :IsForbidJoin
        
        def initialize(gameid=nil, roomid=nil, playerid=nil, changeroomoptionlist=nil, roomname=nil, owner=nil, isviewed=nil, isinvited=nil, isprivate=nil, customproperties=nil, isforbidjoin=nil)
          @GameId = gameid
          @RoomId = roomid
          @PlayerId = playerid
          @ChangeRoomOptionList = changeroomoptionlist
          @RoomName = roomname
          @Owner = owner
          @IsViewed = isviewed
          @IsInvited = isinvited
          @IsPrivate = isprivate
          @CustomProperties = customproperties
          @IsForbidJoin = isforbidjoin
        end

        def deserialize(params)
          @GameId = params['GameId']
          @RoomId = params['RoomId']
          @PlayerId = params['PlayerId']
          @ChangeRoomOptionList = params['ChangeRoomOptionList']
          @RoomName = params['RoomName']
          @Owner = params['Owner']
          @IsViewed = params['IsViewed']
          @IsInvited = params['IsInvited']
          @IsPrivate = params['IsPrivate']
          @CustomProperties = params['CustomProperties']
          @IsForbidJoin = params['IsForbidJoin']
        end
      end

      # ModifyRoom返回参数结构体
      class ModifyRoomResponse < TencentCloud::Common::AbstractModel
        # @param Room: 房间信息
        # @type Room: :class:`Tencentcloud::Mgobe.v20201014.models.Room`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Room, :RequestId
        
        def initialize(room=nil, requestid=nil)
          @Room = room
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Room'].nil?
            @Room = Room.new.deserialize(params['Room'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 玩家信息详情
      class Player < TencentCloud::Common::AbstractModel
        # @param OpenId: 玩家 OpenId。最长不超过64个字符。
        # @type OpenId: String
        # @param Name: 玩家昵称。最长不超过32个字符。
        # @type Name: String
        # @param TeamId: 队伍 ID。最长不超过16个字符。
        # @type TeamId: String
        # @param IsRobot: 是否为机器人。
        # @type IsRobot: Boolean
        # @param PlayerId: 玩家 PlayerId。出参使用，由后端返回。
        # @type PlayerId: String
        # @param CustomPlayerStatus: 自定义玩家状态。非负数，最大不超过4294967295。默认为0。
        # @type CustomPlayerStatus: Integer
        # @param CustomProfile: 自定义玩家属性。最长不超过256个字符。默认为空字符串。
        # @type CustomProfile: String

        attr_accessor :OpenId, :Name, :TeamId, :IsRobot, :PlayerId, :CustomPlayerStatus, :CustomProfile
        
        def initialize(openid=nil, name=nil, teamid=nil, isrobot=nil, playerid=nil, customplayerstatus=nil, customprofile=nil)
          @OpenId = openid
          @Name = name
          @TeamId = teamid
          @IsRobot = isrobot
          @PlayerId = playerid
          @CustomPlayerStatus = customplayerstatus
          @CustomProfile = customprofile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @Name = params['Name']
          @TeamId = params['TeamId']
          @IsRobot = params['IsRobot']
          @PlayerId = params['PlayerId']
          @CustomPlayerStatus = params['CustomPlayerStatus']
          @CustomProfile = params['CustomProfile']
        end
      end

      # RemoveRoomPlayer请求参数结构体
      class RemoveRoomPlayerRequest < TencentCloud::Common::AbstractModel
        # @param GameId: 游戏资源Id。
        # @type GameId: String
        # @param RemovePlayerId: 被踢出房间的玩家Id。
        # @type RemovePlayerId: String

        attr_accessor :GameId, :RemovePlayerId
        
        def initialize(gameid=nil, removeplayerid=nil)
          @GameId = gameid
          @RemovePlayerId = removeplayerid
        end

        def deserialize(params)
          @GameId = params['GameId']
          @RemovePlayerId = params['RemovePlayerId']
        end
      end

      # RemoveRoomPlayer返回参数结构体
      class RemoveRoomPlayerResponse < TencentCloud::Common::AbstractModel
        # @param Room: 房间信息
        # @type Room: :class:`Tencentcloud::Mgobe.v20201014.models.Room`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Room, :RequestId
        
        def initialize(room=nil, requestid=nil)
          @Room = room
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Room'].nil?
            @Room = Room.new.deserialize(params['Room'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 房间信息详情。
      class Room < TencentCloud::Common::AbstractModel
        # @param Name: 表示房间名称。最长不超过32个字符。
        # @type Name: String
        # @param MaxPlayers: 表示房间最大玩家数量。最大不超过100人。
        # @type MaxPlayers: Integer
        # @param OwnerOpenId: 表示房主OpenId。最长不超过16个字符。
        # @type OwnerOpenId: String
        # @param IsPrivate: 表示是否私有，私有指的是不允许其他玩家通过匹配加入房间。
        # @type IsPrivate: Boolean
        # @param Players: 表示玩家详情列表。
        # @type Players: Array
        # @param Teams: 表示团队属性列表。
        # @type Teams: Array
        # @param Id: 表示房间 ID。出参用，由后端返回。
        # @type Id: String
        # @param Type: 表示房间类型。最长不超过32个字符。
        # @type Type: String
        # @param CreateType: 表示创建方式：0.单人主动发起创建房间请求；1.多人在线匹配请求分配房间；2. 直接创建满员房间。调用云API的创房请求默认为3，目前通过云API调用只支持第3种方式。
        # @type CreateType: Integer
        # @param CustomProperties: 表示自定义房间属性，不传为空字符串。最长不超过1024个字符。
        # @type CustomProperties: String
        # @param FrameSyncState: 表示房间帧同步状态。0表示未开始帧同步，1表示已开始帧同步，用于出参。
        # @type FrameSyncState: Integer
        # @param FrameRate: 表示帧率。由控制台设置，用于出参。
        # @type FrameRate: Integer
        # @param RouteId: 表示路由ID。用于出参。
        # @type RouteId: String
        # @param CreateTime: 表示房间创建的时间戳（单位：秒）。
        # @type CreateTime: Integer
        # @param StartGameTime: 表示开始帧同步时的时间戳（单位：秒）,未开始帧同步时返回为0。
        # @type StartGameTime: Integer
        # @param IsForbidJoin: 表示是否禁止加入房间。出参使用，默认为False，通过SDK的ChangeRoom接口可以修改。
        # @type IsForbidJoin: Boolean
        # @param Owner: 表示房主PlayerId。
        # @type Owner: String

        attr_accessor :Name, :MaxPlayers, :OwnerOpenId, :IsPrivate, :Players, :Teams, :Id, :Type, :CreateType, :CustomProperties, :FrameSyncState, :FrameRate, :RouteId, :CreateTime, :StartGameTime, :IsForbidJoin, :Owner
        
        def initialize(name=nil, maxplayers=nil, owneropenid=nil, isprivate=nil, players=nil, teams=nil, id=nil, type=nil, createtype=nil, customproperties=nil, framesyncstate=nil, framerate=nil, routeid=nil, createtime=nil, startgametime=nil, isforbidjoin=nil, owner=nil)
          @Name = name
          @MaxPlayers = maxplayers
          @OwnerOpenId = owneropenid
          @IsPrivate = isprivate
          @Players = players
          @Teams = teams
          @Id = id
          @Type = type
          @CreateType = createtype
          @CustomProperties = customproperties
          @FrameSyncState = framesyncstate
          @FrameRate = framerate
          @RouteId = routeid
          @CreateTime = createtime
          @StartGameTime = startgametime
          @IsForbidJoin = isforbidjoin
          @Owner = owner
        end

        def deserialize(params)
          @Name = params['Name']
          @MaxPlayers = params['MaxPlayers']
          @OwnerOpenId = params['OwnerOpenId']
          @IsPrivate = params['IsPrivate']
          unless params['Players'].nil?
            @Players = []
            params['Players'].each do |i|
              @Players << Player.new.deserialize(i)
            end
          end
          unless params['Teams'].nil?
            @Teams = []
            params['Teams'].each do |i|
              @Teams << Team.new.deserialize(i)
            end
          end
          @Id = params['Id']
          @Type = params['Type']
          @CreateType = params['CreateType']
          @CustomProperties = params['CustomProperties']
          @FrameSyncState = params['FrameSyncState']
          @FrameRate = params['FrameRate']
          @RouteId = params['RouteId']
          @CreateTime = params['CreateTime']
          @StartGameTime = params['StartGameTime']
          @IsForbidJoin = params['IsForbidJoin']
          @Owner = params['Owner']
        end
      end

      # 团队属性
      class Team < TencentCloud::Common::AbstractModel
        # @param Id: 队伍ID。最长不超过16个字符。
        # @type Id: String
        # @param Name: 队伍名称。最长不超过32个字符。
        # @type Name: String
        # @param MinPlayers: 队伍最小人数。最大不超过100人。
        # @type MinPlayers: Integer
        # @param MaxPlayers: 队伍最大人数。最大不超过100人。
        # @type MaxPlayers: Integer

        attr_accessor :Id, :Name, :MinPlayers, :MaxPlayers
        
        def initialize(id=nil, name=nil, minplayers=nil, maxplayers=nil)
          @Id = id
          @Name = name
          @MinPlayers = minplayers
          @MaxPlayers = maxplayers
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @MinPlayers = params['MinPlayers']
          @MaxPlayers = params['MaxPlayers']
        end
      end

    end
  end
end

