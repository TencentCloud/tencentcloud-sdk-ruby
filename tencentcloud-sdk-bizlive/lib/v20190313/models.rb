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
  module Bizlive
    module V20190313
      # CreateSession请求参数结构体
      class CreateSessionRequest < TencentCloud::Common::AbstractModel
        # @param ClientSession: 客户端session信息，从JSSDK请求中获得
        # @type ClientSession: String
        # @param GameId: 游戏ID
        # @type GameId: String
        # @param UserId: 游戏用户ID
        # @type UserId: String
        # @param GameParas: 游戏参数
        # @type GameParas: String
        # @param GameRegion: 游戏区域
        # @type GameRegion: String
        # @param ImageUrl: 背景图url
        # @type ImageUrl: String
        # @param Resolution: 分辨率
        # @type Resolution: String

        attr_accessor :ClientSession, :GameId, :UserId, :GameParas, :GameRegion, :ImageUrl, :Resolution
        
        def initialize(clientsession=nil, gameid=nil, userid=nil, gameparas=nil, gameregion=nil, imageurl=nil, resolution=nil)
          @ClientSession = clientsession
          @GameId = gameid
          @UserId = userid
          @GameParas = gameparas
          @GameRegion = gameregion
          @ImageUrl = imageurl
          @Resolution = resolution
        end

        def deserialize(params)
          @ClientSession = params['ClientSession']
          @GameId = params['GameId']
          @UserId = params['UserId']
          @GameParas = params['GameParas']
          @GameRegion = params['GameRegion']
          @ImageUrl = params['ImageUrl']
          @Resolution = params['Resolution']
        end
      end

      # CreateSession返回参数结构体
      class CreateSessionResponse < TencentCloud::Common::AbstractModel
        # @param ServerSession: 服务端session信息，返回给JSSDK
        # @type ServerSession: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServerSession, :RequestId
        
        def initialize(serversession=nil, requestid=nil)
          @ServerSession = serversession
          @RequestId = requestid
        end

        def deserialize(params)
          @ServerSession = params['ServerSession']
          @RequestId = params['RequestId']
        end
      end

      # 流播放信息
      class DayStreamPlayInfo < TencentCloud::Common::AbstractModel
        # @param Bandwidth: 带宽（单位Mbps）。
        # @type Bandwidth: Float
        # @param Flux: 流量 （单位MB）。
        # @type Flux: Float
        # @param Online: 在线人数。
        # @type Online: Integer
        # @param Request: 请求数。
        # @type Request: Integer
        # @param Time: 数据时间点，格式：yyyy-mm-dd HH:MM:SS。
        # @type Time: String

        attr_accessor :Bandwidth, :Flux, :Online, :Request, :Time
        
        def initialize(bandwidth=nil, flux=nil, online=nil, request=nil, time=nil)
          @Bandwidth = bandwidth
          @Flux = flux
          @Online = online
          @Request = request
          @Time = time
        end

        def deserialize(params)
          @Bandwidth = params['Bandwidth']
          @Flux = params['Flux']
          @Online = params['Online']
          @Request = params['Request']
          @Time = params['Time']
        end
      end

      # DescribeStreamPlayInfoList请求参数结构体
      class DescribeStreamPlayInfoListRequest < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间，北京时间，格式：2019-04-28 10:36:00
        # 结束时间 和 开始时间  必须在同一天内。
        # @type EndTime: String
        # @param PlayDomain: 播放域名。
        # @type PlayDomain: String
        # @param StartTime: 开始时间，北京时间，格式：2019-04-28 10:36:00
        # 当前时间 和 开始时间 间隔不超过30天。
        # @type StartTime: String
        # @param StreamName: 流名称，精确匹配。
        # 若不填，则为查询总体播放数据。
        # @type StreamName: String

        attr_accessor :EndTime, :PlayDomain, :StartTime, :StreamName
        
        def initialize(endtime=nil, playdomain=nil, starttime=nil, streamname=nil)
          @EndTime = endtime
          @PlayDomain = playdomain
          @StartTime = starttime
          @StreamName = streamname
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @PlayDomain = params['PlayDomain']
          @StartTime = params['StartTime']
          @StreamName = params['StreamName']
        end
      end

      # DescribeStreamPlayInfoList返回参数结构体
      class DescribeStreamPlayInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 统计信息列表。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @DataInfoList = params['DataInfoList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkers请求参数结构体
      class DescribeWorkersRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWorkers返回参数结构体
      class DescribeWorkersResponse < TencentCloud::Common::AbstractModel
        # @param RegionDetail: 各个区域的机器情况
        # @type RegionDetail: Array
        # @param Idle: 空闲机器总数量
        # @type Idle: Integer
        # @param RegionNum: 区域个数
        # @type RegionNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionDetail, :Idle, :RegionNum, :RequestId
        
        def initialize(regiondetail=nil, idle=nil, regionnum=nil, requestid=nil)
          @RegionDetail = regiondetail
          @Idle = idle
          @RegionNum = regionnum
          @RequestId = requestid
        end

        def deserialize(params)
          @RegionDetail = params['RegionDetail']
          @Idle = params['Idle']
          @RegionNum = params['RegionNum']
          @RequestId = params['RequestId']
        end
      end

      # ForbidLiveStream请求参数结构体
      class ForbidLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param DomainName: 您的推流域名。
        # @type DomainName: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param ResumeTime: 恢复流的时间。UTC 格式，例如：2018-11-29T19:00:00Z。
        # 注意：默认禁播90天，且最长支持禁播90天。
        # @type ResumeTime: String

        attr_accessor :AppName, :DomainName, :StreamName, :ResumeTime
        
        def initialize(appname=nil, domainname=nil, streamname=nil, resumetime=nil)
          @AppName = appname
          @DomainName = domainname
          @StreamName = streamname
          @ResumeTime = resumetime
        end

        def deserialize(params)
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StreamName = params['StreamName']
          @ResumeTime = params['ResumeTime']
        end
      end

      # ForbidLiveStream返回参数结构体
      class ForbidLiveStreamResponse < TencentCloud::Common::AbstractModel
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

      # RegisterIM请求参数结构体
      class RegisterIMRequest < TencentCloud::Common::AbstractModel
        # @param Nickname: 用户昵称
        # @type Nickname: String
        # @param UserId: 用户唯一ID，建议采用用户小程序OpenID加盐形式
        # @type UserId: String
        # @param HeadImgUrl: 用户头像URL
        # @type HeadImgUrl: String
        # @param Level: 用户身份，默认值：0，表示无特殊身份
        # @type Level: Integer

        attr_accessor :Nickname, :UserId, :HeadImgUrl, :Level
        
        def initialize(nickname=nil, userid=nil, headimgurl=nil, level=nil)
          @Nickname = nickname
          @UserId = userid
          @HeadImgUrl = headimgurl
          @Level = level
        end

        def deserialize(params)
          @Nickname = params['Nickname']
          @UserId = params['UserId']
          @HeadImgUrl = params['HeadImgUrl']
          @Level = params['Level']
        end
      end

      # RegisterIM返回参数结构体
      class RegisterIMResponse < TencentCloud::Common::AbstractModel
        # @param UserKey: 用来传递给插件的关键字段
        # @type UserKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserKey, :RequestId
        
        def initialize(userkey=nil, requestid=nil)
          @UserKey = userkey
          @RequestId = requestid
        end

        def deserialize(params)
          @UserKey = params['UserKey']
          @RequestId = params['RequestId']
        end
      end

      # StopGame请求参数结构体
      class StopGameRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 游戏用户ID
        # @type UserId: String

        attr_accessor :UserId
        
        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
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

      # worker的区域信息
      class WorkerRegionInfo < TencentCloud::Common::AbstractModel
        # @param Idle: 该区域空闲机器数量
        # @type Idle: Integer
        # @param Region: 区域
        # @type Region: String

        attr_accessor :Idle, :Region
        
        def initialize(idle=nil, region=nil)
          @Idle = idle
          @Region = region
        end

        def deserialize(params)
          @Idle = params['Idle']
          @Region = params['Region']
        end
      end

    end
  end
end

