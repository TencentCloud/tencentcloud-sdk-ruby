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
  module Gs
    module V20191118
      # CreateSession请求参数结构体
      class CreateSessionRequest < TencentCloud::Common::AbstractModel
        # @param ClientSession: 客户端session信息，从JSSDK请求中获得
        # @type ClientSession: String
        # @param UserId: 游戏用户ID
        # @type UserId: String
        # @param GameId: 游戏ID
        # @type GameId: String
        # @param GameRegion: 游戏区域，ap-guangzhou、ap-shanghai、ap-beijing、ap-chengdu、ap-chongqing、ap-nanjing等
        # @type GameRegion: String
        # @param GameParas: 游戏参数
        # @type GameParas: String
        # @param Resolution: 分辨率,，可设置为1080p或720p
        # @type Resolution: String
        # @param ImageUrl: 背景图url，格式为png或jpeg，宽高1920*1080
        # @type ImageUrl: String
        # @param SetNo: 【废弃】资源池编号
        # @type SetNo: Integer
        # @param Bitrate: 单位Mbps，固定码率，后端不动态调整(MaxBitrate和MinBitrate将无效)
        # @type Bitrate: Integer
        # @param MaxBitrate: 单位Mbps，动态调整最大码率
        # @type MaxBitrate: Integer
        # @param MinBitrate: 单位Mbps，动态调整最小码率
        # @type MinBitrate: Integer
        # @param Fps: 帧率，可设置为30、45、60、90、120、144
        # @type Fps: Integer
        # @param UserIp: 游戏用户IP，用于就近调度，例如125.127.178.228
        # @type UserIp: String
        # @param Optimization: 优化项，便于客户灰度开启新的优化项，默认为0
        # @type Optimization: Integer
        # @param HostUserId: 【多人云游】游戏主机用户ID
        # @type HostUserId: String
        # @param Role: 【多人云游】角色；Player表示玩家；Viewer表示观察者
        # @type Role: String
        # @param GameContext: 游戏相关参数
        # @type GameContext: String

        attr_accessor :ClientSession, :UserId, :GameId, :GameRegion, :GameParas, :Resolution, :ImageUrl, :SetNo, :Bitrate, :MaxBitrate, :MinBitrate, :Fps, :UserIp, :Optimization, :HostUserId, :Role, :GameContext
        
        def initialize(clientsession=nil, userid=nil, gameid=nil, gameregion=nil, gameparas=nil, resolution=nil, imageurl=nil, setno=nil, bitrate=nil, maxbitrate=nil, minbitrate=nil, fps=nil, userip=nil, optimization=nil, hostuserid=nil, role=nil, gamecontext=nil)
          @ClientSession = clientsession
          @UserId = userid
          @GameId = gameid
          @GameRegion = gameregion
          @GameParas = gameparas
          @Resolution = resolution
          @ImageUrl = imageurl
          @SetNo = setno
          @Bitrate = bitrate
          @MaxBitrate = maxbitrate
          @MinBitrate = minbitrate
          @Fps = fps
          @UserIp = userip
          @Optimization = optimization
          @HostUserId = hostuserid
          @Role = role
          @GameContext = gamecontext
        end

        def deserialize(params)
          @ClientSession = params['ClientSession']
          @UserId = params['UserId']
          @GameId = params['GameId']
          @GameRegion = params['GameRegion']
          @GameParas = params['GameParas']
          @Resolution = params['Resolution']
          @ImageUrl = params['ImageUrl']
          @SetNo = params['SetNo']
          @Bitrate = params['Bitrate']
          @MaxBitrate = params['MaxBitrate']
          @MinBitrate = params['MinBitrate']
          @Fps = params['Fps']
          @UserIp = params['UserIp']
          @Optimization = params['Optimization']
          @HostUserId = params['HostUserId']
          @Role = params['Role']
          @GameContext = params['GameContext']
        end
      end

      # CreateSession返回参数结构体
      class CreateSessionResponse < TencentCloud::Common::AbstractModel
        # @param ServerSession: 服务端session信息，返回给JSSDK
        # @type ServerSession: String
        # @param RoleNumber: 【多人游戏】角色编号；比如1、2、3、4
        # @type RoleNumber: String
        # @param Role: 【多人云游】角色；Player表示玩家；Viewer表示观察者
        # @type Role: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServerSession, :RoleNumber, :Role, :RequestId
        
        def initialize(serversession=nil, rolenumber=nil, role=nil, requestid=nil)
          @ServerSession = serversession
          @RoleNumber = rolenumber
          @Role = role
          @RequestId = requestid
        end

        def deserialize(params)
          @ServerSession = params['ServerSession']
          @RoleNumber = params['RoleNumber']
          @Role = params['Role']
          @RequestId = params['RequestId']
        end
      end

      # SaveGameArchive请求参数结构体
      class SaveGameArchiveRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 游戏用户ID
        # @type UserId: String
        # @param GameId: 游戏ID
        # @type GameId: String

        attr_accessor :UserId, :GameId
        
        def initialize(userid=nil, gameid=nil)
          @UserId = userid
          @GameId = gameid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @GameId = params['GameId']
        end
      end

      # SaveGameArchive返回参数结构体
      class SaveGameArchiveResponse < TencentCloud::Common::AbstractModel
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

      # StopGame请求参数结构体
      class StopGameRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 游戏用户ID
        # @type UserId: String
        # @param HostUserId: 【多人游戏】游戏主机用户ID
        # @type HostUserId: String

        attr_accessor :UserId, :HostUserId
        
        def initialize(userid=nil, hostuserid=nil)
          @UserId = userid
          @HostUserId = hostuserid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @HostUserId = params['HostUserId']
        end
      end

      # StopGame返回参数结构体
      class StopGameResponse < TencentCloud::Common::AbstractModel
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

      # SwitchGameArchive请求参数结构体
      class SwitchGameArchiveRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 游戏用户ID
        # @type UserId: String
        # @param GameId: 游戏ID
        # @type GameId: String
        # @param GameArchiveUrl: 游戏存档Url
        # @type GameArchiveUrl: String
        # @param GameContext: 游戏相关参数
        # @type GameContext: String

        attr_accessor :UserId, :GameId, :GameArchiveUrl, :GameContext
        
        def initialize(userid=nil, gameid=nil, gamearchiveurl=nil, gamecontext=nil)
          @UserId = userid
          @GameId = gameid
          @GameArchiveUrl = gamearchiveurl
          @GameContext = gamecontext
        end

        def deserialize(params)
          @UserId = params['UserId']
          @GameId = params['GameId']
          @GameArchiveUrl = params['GameArchiveUrl']
          @GameContext = params['GameContext']
        end
      end

      # SwitchGameArchive返回参数结构体
      class SwitchGameArchiveResponse < TencentCloud::Common::AbstractModel
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

      # TrylockWorker请求参数结构体
      class TrylockWorkerRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 游戏用户ID
        # @type UserId: String
        # @param GameId: 游戏ID
        # @type GameId: String
        # @param GameRegion: 游戏区域，ap-guangzhou、ap-shanghai、ap-beijing等，如果不为空，优先按照该区域进行调度分配机器
        # @type GameRegion: String
        # @param SetNo: 【废弃】资源池编号
        # @type SetNo: Integer
        # @param UserIp: 游戏用户IP，用于就近调度，例如125.127.178.228
        # @type UserIp: String
        # @param GroupId: 分组ID
        # @type GroupId: String

        attr_accessor :UserId, :GameId, :GameRegion, :SetNo, :UserIp, :GroupId
        
        def initialize(userid=nil, gameid=nil, gameregion=nil, setno=nil, userip=nil, groupid=nil)
          @UserId = userid
          @GameId = gameid
          @GameRegion = gameregion
          @SetNo = setno
          @UserIp = userip
          @GroupId = groupid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @GameId = params['GameId']
          @GameRegion = params['GameRegion']
          @SetNo = params['SetNo']
          @UserIp = params['UserIp']
          @GroupId = params['GroupId']
        end
      end

      # TrylockWorker返回参数结构体
      class TrylockWorkerResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

