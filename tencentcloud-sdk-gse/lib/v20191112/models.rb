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
  module Gse
    module V20191112
      # CreateGameServerSession请求参数结构体
      class CreateGameServerSessionRequest < TencentCloud::Common::AbstractModel
        # @param MaximumPlayerSessionCount: 最大玩家数量
        # @type MaximumPlayerSessionCount: Integer
        # @param AliasId: 别名ID
        # @type AliasId: String
        # @param CreatorId: 创建者ID
        # @type CreatorId: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param GameProperties: 游戏属性
        # @type GameProperties: Array
        # @param GameServerSessionData: 游戏服务器会话属性详情
        # @type GameServerSessionData: String
        # @param GameServerSessionId: 游戏服务器会话自定义ID
        # @type GameServerSessionId: String
        # @param IdempotencyToken: 幂等token
        # @type IdempotencyToken: String
        # @param Name: 游戏服务器会话名称
        # @type Name: String

        attr_accessor :MaximumPlayerSessionCount, :AliasId, :CreatorId, :FleetId, :GameProperties, :GameServerSessionData, :GameServerSessionId, :IdempotencyToken, :Name
        
        def initialize(maximumplayersessioncount=nil, aliasid=nil, creatorid=nil, fleetid=nil, gameproperties=nil, gameserversessiondata=nil, gameserversessionid=nil, idempotencytoken=nil, name=nil)
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @AliasId = aliasid
          @CreatorId = creatorid
          @FleetId = fleetid
          @GameProperties = gameproperties
          @GameServerSessionData = gameserversessiondata
          @GameServerSessionId = gameserversessionid
          @IdempotencyToken = idempotencytoken
          @Name = name
        end

        def deserialize(params)
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @AliasId = params['AliasId']
          @CreatorId = params['CreatorId']
          @FleetId = params['FleetId']
          @GameProperties = params['GameProperties']
          @GameServerSessionData = params['GameServerSessionData']
          @GameServerSessionId = params['GameServerSessionId']
          @IdempotencyToken = params['IdempotencyToken']
          @Name = params['Name']
        end
      end

      # CreateGameServerSession返回参数结构体
      class CreateGameServerSessionResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSession: 游戏服务器会话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSession: :class:`Tencentcloud::Gse.v20191112.models.GameServerSession`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSession, :RequestId
        
        def initialize(gameserversession=nil, requestid=nil)
          @GameServerSession = gameserversession
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSession'].nil?
            @GameServerSession = GameServerSession.new.deserialize(params[GameServerSession])
          end
          @RequestId = params['RequestId']
        end
      end

      # 访问实例所需要的凭据
      class Credentials < TencentCloud::Common::AbstractModel
        # @param Secret: ssh私钥
        # @type Secret: String
        # @param UserName: 用户名
        # @type UserName: String

        attr_accessor :Secret, :UserName
        
        def initialize(secret=nil, username=nil)
          @Secret = secret
          @UserName = username
        end

        def deserialize(params)
          @Secret = params['Secret']
          @UserName = params['UserName']
        end
      end

      # DeleteScalingPolicy请求参数结构体
      class DeleteScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署ID
        # @type FleetId: String
        # @param Name: 名称
        # @type Name: String

        attr_accessor :FleetId, :Name
        
        def initialize(fleetid=nil, name=nil)
          @FleetId = fleetid
          @Name = name
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Name = params['Name']
        end
      end

      # DeleteScalingPolicy返回参数结构体
      class DeleteScalingPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DescribeGameServerSessionDetails请求参数结构体
      class DescribeGameServerSessionDetailsRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 别名ID
        # @type AliasId: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param GameServerSessionId: 游戏服务器会话ID
        # @type GameServerSessionId: String
        # @param Limit: 单次查询记录数上限
        # @type Limit: Integer
        # @param NextToken: 页偏移，用于查询下一页
        # @type NextToken: String
        # @param StatusFilter: 游戏服务器会话状态(ACTIVE,ACTIVATING,TERMINATED,TERMINATING,ERROR)
        # @type StatusFilter: String

        attr_accessor :AliasId, :FleetId, :GameServerSessionId, :Limit, :NextToken, :StatusFilter
        
        def initialize(aliasid=nil, fleetid=nil, gameserversessionid=nil, limit=nil, nexttoken=nil, statusfilter=nil)
          @AliasId = aliasid
          @FleetId = fleetid
          @GameServerSessionId = gameserversessionid
          @Limit = limit
          @NextToken = nexttoken
          @StatusFilter = statusfilter
        end

        def deserialize(params)
          @AliasId = params['AliasId']
          @FleetId = params['FleetId']
          @GameServerSessionId = params['GameServerSessionId']
          @Limit = params['Limit']
          @NextToken = params['NextToken']
          @StatusFilter = params['StatusFilter']
        end
      end

      # DescribeGameServerSessionDetails返回参数结构体
      class DescribeGameServerSessionDetailsResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionDetails: 游戏服务器会话详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionDetails: Array
        # @param NextToken: 页偏移，用于查询下一页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionDetails, :NextToken, :RequestId
        
        def initialize(gameserversessiondetails=nil, nexttoken=nil, requestid=nil)
          @GameServerSessionDetails = gameserversessiondetails
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          @GameServerSessionDetails = params['GameServerSessionDetails']
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGameServerSessionPlacement请求参数结构体
      class DescribeGameServerSessionPlacementRequest < TencentCloud::Common::AbstractModel
        # @param PlacementId: 游戏服务器会话放置的唯一标识符
        # @type PlacementId: String

        attr_accessor :PlacementId
        
        def initialize(placementid=nil)
          @PlacementId = placementid
        end

        def deserialize(params)
          @PlacementId = params['PlacementId']
        end
      end

      # DescribeGameServerSessionPlacement返回参数结构体
      class DescribeGameServerSessionPlacementResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionPlacement: 游戏服务器会话放置
        # @type GameServerSessionPlacement: :class:`Tencentcloud::Gse.v20191112.models.GameServerSessionPlacement`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionPlacement, :RequestId
        
        def initialize(gameserversessionplacement=nil, requestid=nil)
          @GameServerSessionPlacement = gameserversessionplacement
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionPlacement'].nil?
            @GameServerSessionPlacement = GameServerSessionPlacement.new.deserialize(params[GameServerSessionPlacement])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGameServerSessionQueues请求参数结构体
      class DescribeGameServerSessionQueuesRequest < TencentCloud::Common::AbstractModel
        # @param Names: 游戏服务器会话队列数组
        # @type Names: Array
        # @param Limit: 要返回的最大结果数
        # @type Limit: Integer
        # @param Offset: 偏移
        # @type Offset: Integer

        attr_accessor :Names, :Limit, :Offset
        
        def initialize(names=nil, limit=nil, offset=nil)
          @Names = names
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Names = params['Names']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeGameServerSessionQueues返回参数结构体
      class DescribeGameServerSessionQueuesResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionQueues: 游戏服务器会话队列数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionQueues: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionQueues, :TotalCount, :RequestId
        
        def initialize(gameserversessionqueues=nil, totalcount=nil, requestid=nil)
          @GameServerSessionQueues = gameserversessionqueues
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @GameServerSessionQueues = params['GameServerSessionQueues']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGameServerSessions请求参数结构体
      class DescribeGameServerSessionsRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 别名ID
        # @type AliasId: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param GameServerSessionId: 游戏服务器会话ID
        # @type GameServerSessionId: String
        # @param Limit: 单次查询记录数上限
        # @type Limit: Integer
        # @param NextToken: 页偏移，用于查询下一页
        # @type NextToken: String
        # @param StatusFilter: 游戏服务器会话状态(ACTIVE,ACTIVATING,TERMINATED,TERMINATING,ERROR)
        # @type StatusFilter: String

        attr_accessor :AliasId, :FleetId, :GameServerSessionId, :Limit, :NextToken, :StatusFilter
        
        def initialize(aliasid=nil, fleetid=nil, gameserversessionid=nil, limit=nil, nexttoken=nil, statusfilter=nil)
          @AliasId = aliasid
          @FleetId = fleetid
          @GameServerSessionId = gameserversessionid
          @Limit = limit
          @NextToken = nexttoken
          @StatusFilter = statusfilter
        end

        def deserialize(params)
          @AliasId = params['AliasId']
          @FleetId = params['FleetId']
          @GameServerSessionId = params['GameServerSessionId']
          @Limit = params['Limit']
          @NextToken = params['NextToken']
          @StatusFilter = params['StatusFilter']
        end
      end

      # DescribeGameServerSessions返回参数结构体
      class DescribeGameServerSessionsResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessions: 游戏服务器会话列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessions: Array
        # @param NextToken: 页便宜，用于查询下一页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessions, :NextToken, :RequestId
        
        def initialize(gameserversessions=nil, nexttoken=nil, requestid=nil)
          @GameServerSessions = gameserversessions
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          @GameServerSessions = params['GameServerSessions']
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署ID
        # @type FleetId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Offset: 结果返回最大数量
        # @type Offset: Integer
        # @param Limit: 返回结果偏移
        # @type Limit: Integer

        attr_accessor :FleetId, :InstanceId, :Offset, :Limit
        
        def initialize(fleetid=nil, instanceid=nil, offset=nil, limit=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 实例信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instances: Array
        # @param TotalCount: 结果返回最大数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId
        
        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Instances = params['Instances']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePlayerSessions请求参数结构体
      class DescribePlayerSessionsRequest < TencentCloud::Common::AbstractModel
        # @param GameServerSessionId: 游戏服务器会话ID
        # @type GameServerSessionId: String
        # @param Limit: 单次查询记录数上限
        # @type Limit: Integer
        # @param NextToken: 页偏移，用于查询下一页
        # @type NextToken: String
        # @param PlayerId: 玩家ID
        # @type PlayerId: String
        # @param PlayerSessionId: 玩家会话ID
        # @type PlayerSessionId: String
        # @param PlayerSessionStatusFilter: 玩家会话状态（RESERVED,ACTIVE,COMPLETED,TIMEDOUT）
        # @type PlayerSessionStatusFilter: String

        attr_accessor :GameServerSessionId, :Limit, :NextToken, :PlayerId, :PlayerSessionId, :PlayerSessionStatusFilter
        
        def initialize(gameserversessionid=nil, limit=nil, nexttoken=nil, playerid=nil, playersessionid=nil, playersessionstatusfilter=nil)
          @GameServerSessionId = gameserversessionid
          @Limit = limit
          @NextToken = nexttoken
          @PlayerId = playerid
          @PlayerSessionId = playersessionid
          @PlayerSessionStatusFilter = playersessionstatusfilter
        end

        def deserialize(params)
          @GameServerSessionId = params['GameServerSessionId']
          @Limit = params['Limit']
          @NextToken = params['NextToken']
          @PlayerId = params['PlayerId']
          @PlayerSessionId = params['PlayerSessionId']
          @PlayerSessionStatusFilter = params['PlayerSessionStatusFilter']
        end
      end

      # DescribePlayerSessions返回参数结构体
      class DescribePlayerSessionsResponse < TencentCloud::Common::AbstractModel
        # @param PlayerSessions: 玩家会话列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerSessions: Array
        # @param NextToken: 页偏移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlayerSessions, :NextToken, :RequestId
        
        def initialize(playersessions=nil, nexttoken=nil, requestid=nil)
          @PlayerSessions = playersessions
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          @PlayerSessions = params['PlayerSessions']
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScalingPolicies请求参数结构体
      class DescribeScalingPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署ID
        # @type FleetId: String
        # @param StatusFilter: 状态过滤条件
        # @type StatusFilter: String
        # @param Offset: 结果返回最大数量
        # @type Offset: Integer
        # @param Limit: 返回结果偏移
        # @type Limit: Integer

        attr_accessor :FleetId, :StatusFilter, :Offset, :Limit
        
        def initialize(fleetid=nil, statusfilter=nil, offset=nil, limit=nil)
          @FleetId = fleetid
          @StatusFilter = statusfilter
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @StatusFilter = params['StatusFilter']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeScalingPolicies返回参数结构体
      class DescribeScalingPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param ScalingPolicies: 动态扩缩容配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalingPolicies: Array
        # @param TotalCount: 返回总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScalingPolicies, :TotalCount, :RequestId
        
        def initialize(scalingpolicies=nil, totalcount=nil, requestid=nil)
          @ScalingPolicies = scalingpolicies
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ScalingPolicies = params['ScalingPolicies']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 玩家游戏会话信息
      class DesiredPlayerSession < TencentCloud::Common::AbstractModel
        # @param PlayerId: 与玩家会话关联的唯一玩家标识
        # @type PlayerId: String
        # @param PlayerData: 开发人员定义的玩家数据
        # @type PlayerData: String

        attr_accessor :PlayerId, :PlayerData
        
        def initialize(playerid=nil, playerdata=nil)
          @PlayerId = playerid
          @PlayerData = playerdata
        end

        def deserialize(params)
          @PlayerId = params['PlayerId']
          @PlayerData = params['PlayerData']
        end
      end

      # 游戏属性详情
      class GameProperty < TencentCloud::Common::AbstractModel
        # @param Key: 属性名称
        # @type Key: String
        # @param Value: 属性值
        # @type Value: String

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 游戏会话详情
      class GameServerSession < TencentCloud::Common::AbstractModel
        # @param CreationTime: 游戏服务器会话创建时间
        # @type CreationTime: String
        # @param CreatorId: 创建者ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorId: String
        # @param CurrentPlayerSessionCount: 当前玩家数量
        # @type CurrentPlayerSessionCount: Integer
        # @param DnsName: CVM的DNS标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsName: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param GameProperties: 游戏属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameProperties: Array
        # @param GameServerSessionData: 游戏服务器会话属性详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionData: String
        # @param GameServerSessionId: 游戏服务器会话ID
        # @type GameServerSessionId: String
        # @param IpAddress: CVM IP地址
        # @type IpAddress: String
        # @param MatchmakerData: 对战进程详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchmakerData: String
        # @param MaximumPlayerSessionCount: 最大玩家数量
        # @type MaximumPlayerSessionCount: Integer
        # @param Name: 游戏服务器会话名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param PlayerSessionCreationPolicy: 玩家会话创建策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerSessionCreationPolicy: String
        # @param Port: 端口号
        # @type Port: Integer
        # @param Status: 游戏服务器会话状态
        # @type Status: String
        # @param StatusReason: 游戏服务器会话状态附加信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusReason: String
        # @param TerminationTime: 终止的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerminationTime: String
        # @param InstanceType: 实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param CurrentCustomCount: 当前自定义数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentCustomCount: Integer
        # @param MaxCustomCount: 最大自定义数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxCustomCount: Integer
        # @param Weight: 权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param AvailabilityStatus: 会话可用性状态，是否被屏蔽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailabilityStatus: String

        attr_accessor :CreationTime, :CreatorId, :CurrentPlayerSessionCount, :DnsName, :FleetId, :GameProperties, :GameServerSessionData, :GameServerSessionId, :IpAddress, :MatchmakerData, :MaximumPlayerSessionCount, :Name, :PlayerSessionCreationPolicy, :Port, :Status, :StatusReason, :TerminationTime, :InstanceType, :CurrentCustomCount, :MaxCustomCount, :Weight, :AvailabilityStatus
        
        def initialize(creationtime=nil, creatorid=nil, currentplayersessioncount=nil, dnsname=nil, fleetid=nil, gameproperties=nil, gameserversessiondata=nil, gameserversessionid=nil, ipaddress=nil, matchmakerdata=nil, maximumplayersessioncount=nil, name=nil, playersessioncreationpolicy=nil, port=nil, status=nil, statusreason=nil, terminationtime=nil, instancetype=nil, currentcustomcount=nil, maxcustomcount=nil, weight=nil, availabilitystatus=nil)
          @CreationTime = creationtime
          @CreatorId = creatorid
          @CurrentPlayerSessionCount = currentplayersessioncount
          @DnsName = dnsname
          @FleetId = fleetid
          @GameProperties = gameproperties
          @GameServerSessionData = gameserversessiondata
          @GameServerSessionId = gameserversessionid
          @IpAddress = ipaddress
          @MatchmakerData = matchmakerdata
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @Name = name
          @PlayerSessionCreationPolicy = playersessioncreationpolicy
          @Port = port
          @Status = status
          @StatusReason = statusreason
          @TerminationTime = terminationtime
          @InstanceType = instancetype
          @CurrentCustomCount = currentcustomcount
          @MaxCustomCount = maxcustomcount
          @Weight = weight
          @AvailabilityStatus = availabilitystatus
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @CreatorId = params['CreatorId']
          @CurrentPlayerSessionCount = params['CurrentPlayerSessionCount']
          @DnsName = params['DnsName']
          @FleetId = params['FleetId']
          @GameProperties = params['GameProperties']
          @GameServerSessionData = params['GameServerSessionData']
          @GameServerSessionId = params['GameServerSessionId']
          @IpAddress = params['IpAddress']
          @MatchmakerData = params['MatchmakerData']
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @Name = params['Name']
          @PlayerSessionCreationPolicy = params['PlayerSessionCreationPolicy']
          @Port = params['Port']
          @Status = params['Status']
          @StatusReason = params['StatusReason']
          @TerminationTime = params['TerminationTime']
          @InstanceType = params['InstanceType']
          @CurrentCustomCount = params['CurrentCustomCount']
          @MaxCustomCount = params['MaxCustomCount']
          @Weight = params['Weight']
          @AvailabilityStatus = params['AvailabilityStatus']
        end
      end

      # 游戏服务器会话详情（GameServerSessionDetail）
      class GameServerSessionDetail < TencentCloud::Common::AbstractModel
        # @param GameServerSession: 游戏服务器会话
        # @type GameServerSession: :class:`Tencentcloud::Gse.v20191112.models.GameServerSession`
        # @param ProtectionPolicy: 保护策略，可选（NoProtection,FullProtection）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectionPolicy: String

        attr_accessor :GameServerSession, :ProtectionPolicy
        
        def initialize(gameserversession=nil, protectionpolicy=nil)
          @GameServerSession = gameserversession
          @ProtectionPolicy = protectionpolicy
        end

        def deserialize(params)
          unless params['GameServerSession'].nil?
            @GameServerSession = GameServerSession.new.deserialize(params[GameServerSession])
          end
          @ProtectionPolicy = params['ProtectionPolicy']
        end
      end

      # 游戏会话部署对象
      class GameServerSessionPlacement < TencentCloud::Common::AbstractModel
        # @param PlacementId: 部署Id
        # @type PlacementId: String
        # @param GameServerSessionQueueName: 服务部署组名称
        # @type GameServerSessionQueueName: String
        # @param PlayerLatencies: 玩家延迟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerLatencies: Array
        # @param Status: 服务部署状态
        # @type Status: String
        # @param DnsName: 分配给正在运行游戏会话的实例的DNS标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsName: String
        # @param GameServerSessionId: 游戏会话Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionId: String
        # @param GameServerSessionName: 游戏会话名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionName: String
        # @param GameServerSessionRegion: 服务部署区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionRegion: String
        # @param GameProperties: 游戏属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameProperties: Array
        # @param MaximumPlayerSessionCount: 最大玩家数量
        # @type MaximumPlayerSessionCount: Integer
        # @param GameServerSessionData: 游戏会话数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionData: String
        # @param IpAddress: 运行游戏会话的实例的IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpAddress: String
        # @param Port: 运行游戏会话的实例的端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param MatchmakerData: 游戏匹配数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchmakerData: String
        # @param PlacedPlayerSessions: 部署的玩家游戏数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlacedPlayerSessions: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :PlacementId, :GameServerSessionQueueName, :PlayerLatencies, :Status, :DnsName, :GameServerSessionId, :GameServerSessionName, :GameServerSessionRegion, :GameProperties, :MaximumPlayerSessionCount, :GameServerSessionData, :IpAddress, :Port, :MatchmakerData, :PlacedPlayerSessions, :StartTime, :EndTime
        
        def initialize(placementid=nil, gameserversessionqueuename=nil, playerlatencies=nil, status=nil, dnsname=nil, gameserversessionid=nil, gameserversessionname=nil, gameserversessionregion=nil, gameproperties=nil, maximumplayersessioncount=nil, gameserversessiondata=nil, ipaddress=nil, port=nil, matchmakerdata=nil, placedplayersessions=nil, starttime=nil, endtime=nil)
          @PlacementId = placementid
          @GameServerSessionQueueName = gameserversessionqueuename
          @PlayerLatencies = playerlatencies
          @Status = status
          @DnsName = dnsname
          @GameServerSessionId = gameserversessionid
          @GameServerSessionName = gameserversessionname
          @GameServerSessionRegion = gameserversessionregion
          @GameProperties = gameproperties
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @GameServerSessionData = gameserversessiondata
          @IpAddress = ipaddress
          @Port = port
          @MatchmakerData = matchmakerdata
          @PlacedPlayerSessions = placedplayersessions
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @PlacementId = params['PlacementId']
          @GameServerSessionQueueName = params['GameServerSessionQueueName']
          @PlayerLatencies = params['PlayerLatencies']
          @Status = params['Status']
          @DnsName = params['DnsName']
          @GameServerSessionId = params['GameServerSessionId']
          @GameServerSessionName = params['GameServerSessionName']
          @GameServerSessionRegion = params['GameServerSessionRegion']
          @GameProperties = params['GameProperties']
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @GameServerSessionData = params['GameServerSessionData']
          @IpAddress = params['IpAddress']
          @Port = params['Port']
          @MatchmakerData = params['MatchmakerData']
          @PlacedPlayerSessions = params['PlacedPlayerSessions']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 服务部署组对象
      class GameServerSessionQueue < TencentCloud::Common::AbstractModel
        # @param Name: 服务部署组名字
        # @type Name: String
        # @param GameServerSessionQueueArn: 服务部署组资源
        # @type GameServerSessionQueueArn: String
        # @param Destinations: 目的fleet（可为别名）列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Destinations: Array
        # @param PlayerLatencyPolicies: 延迟策略集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerLatencyPolicies: Array
        # @param TimeoutInSeconds: 超时时间
        # @type TimeoutInSeconds: Integer

        attr_accessor :Name, :GameServerSessionQueueArn, :Destinations, :PlayerLatencyPolicies, :TimeoutInSeconds
        
        def initialize(name=nil, gameserversessionqueuearn=nil, destinations=nil, playerlatencypolicies=nil, timeoutinseconds=nil)
          @Name = name
          @GameServerSessionQueueArn = gameserversessionqueuearn
          @Destinations = destinations
          @PlayerLatencyPolicies = playerlatencypolicies
          @TimeoutInSeconds = timeoutinseconds
        end

        def deserialize(params)
          @Name = params['Name']
          @GameServerSessionQueueArn = params['GameServerSessionQueueArn']
          @Destinations = params['Destinations']
          @PlayerLatencyPolicies = params['PlayerLatencyPolicies']
          @TimeoutInSeconds = params['TimeoutInSeconds']
        end
      end

      # 服务部署组目的集合
      class GameServerSessionQueueDestination < TencentCloud::Common::AbstractModel
        # @param DestinationArn: 服务部署组目的的资源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestinationArn: String

        attr_accessor :DestinationArn
        
        def initialize(destinationarn=nil)
          @DestinationArn = destinationarn
        end

        def deserialize(params)
          @DestinationArn = params['DestinationArn']
        end
      end

      # GetGameServerSessionLogUrl请求参数结构体
      class GetGameServerSessionLogUrlRequest < TencentCloud::Common::AbstractModel
        # @param GameServerSessionId: 游戏服务器会话ID
        # @type GameServerSessionId: String

        attr_accessor :GameServerSessionId
        
        def initialize(gameserversessionid=nil)
          @GameServerSessionId = gameserversessionid
        end

        def deserialize(params)
          @GameServerSessionId = params['GameServerSessionId']
        end
      end

      # GetGameServerSessionLogUrl返回参数结构体
      class GetGameServerSessionLogUrlResponse < TencentCloud::Common::AbstractModel
        # @param PreSignedUrl: 日志下载URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreSignedUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PreSignedUrl, :RequestId
        
        def initialize(presignedurl=nil, requestid=nil)
          @PreSignedUrl = presignedurl
          @RequestId = requestid
        end

        def deserialize(params)
          @PreSignedUrl = params['PreSignedUrl']
          @RequestId = params['RequestId']
        end
      end

      # GetInstanceAccess请求参数结构体
      class GetInstanceAccessRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署Id
        # @type FleetId: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String

        attr_accessor :FleetId, :InstanceId
        
        def initialize(fleetid=nil, instanceid=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
        end
      end

      # GetInstanceAccess返回参数结构体
      class GetInstanceAccessResponse < TencentCloud::Common::AbstractModel
        # @param InstanceAccess: 实例登录所需要的凭据
        # @type InstanceAccess: :class:`Tencentcloud::Gse.v20191112.models.InstanceAccess`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceAccess, :RequestId
        
        def initialize(instanceaccess=nil, requestid=nil)
          @InstanceAccess = instanceaccess
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceAccess'].nil?
            @InstanceAccess = InstanceAccess.new.deserialize(params[InstanceAccess])
          end
          @RequestId = params['RequestId']
        end
      end

      # 实例信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param IpAddress: IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpAddress: String
        # @param DnsName: dns
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsName: String
        # @param OperatingSystem: 操作系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatingSystem: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :FleetId, :InstanceId, :IpAddress, :DnsName, :OperatingSystem, :Status, :Type, :CreateTime
        
        def initialize(fleetid=nil, instanceid=nil, ipaddress=nil, dnsname=nil, operatingsystem=nil, status=nil, type=nil, createtime=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
          @IpAddress = ipaddress
          @DnsName = dnsname
          @OperatingSystem = operatingsystem
          @Status = status
          @Type = type
          @CreateTime = createtime
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @IpAddress = params['IpAddress']
          @DnsName = params['DnsName']
          @OperatingSystem = params['OperatingSystem']
          @Status = params['Status']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
        end
      end

      # 实例访问凭证信息
      class InstanceAccess < TencentCloud::Common::AbstractModel
        # @param Credentials: 访问实例所需要的凭据
        # @type Credentials: :class:`Tencentcloud::Gse.v20191112.models.Credentials`
        # @param FleetId: 服务部署Id
        # @type FleetId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param IpAddress: 实例公网IP
        # @type IpAddress: String
        # @param OperatingSystem: 操作系统
        # @type OperatingSystem: String

        attr_accessor :Credentials, :FleetId, :InstanceId, :IpAddress, :OperatingSystem
        
        def initialize(credentials=nil, fleetid=nil, instanceid=nil, ipaddress=nil, operatingsystem=nil)
          @Credentials = credentials
          @FleetId = fleetid
          @InstanceId = instanceid
          @IpAddress = ipaddress
          @OperatingSystem = operatingsystem
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new.deserialize(params[Credentials])
          end
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @IpAddress = params['IpAddress']
          @OperatingSystem = params['OperatingSystem']
        end
      end

      # JoinGameServerSession请求参数结构体
      class JoinGameServerSessionRequest < TencentCloud::Common::AbstractModel
        # @param GameServerSessionId: 游戏服务器会话ID
        # @type GameServerSessionId: String
        # @param PlayerId: 玩家ID
        # @type PlayerId: String
        # @param PlayerData: 玩家自定义信息
        # @type PlayerData: String

        attr_accessor :GameServerSessionId, :PlayerId, :PlayerData
        
        def initialize(gameserversessionid=nil, playerid=nil, playerdata=nil)
          @GameServerSessionId = gameserversessionid
          @PlayerId = playerid
          @PlayerData = playerdata
        end

        def deserialize(params)
          @GameServerSessionId = params['GameServerSessionId']
          @PlayerId = params['PlayerId']
          @PlayerData = params['PlayerData']
        end
      end

      # JoinGameServerSession返回参数结构体
      class JoinGameServerSessionResponse < TencentCloud::Common::AbstractModel
        # @param PlayerSession: 玩家会话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerSession: :class:`Tencentcloud::Gse.v20191112.models.PlayerSession`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlayerSession, :RequestId
        
        def initialize(playersession=nil, requestid=nil)
          @PlayerSession = playersession
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlayerSession'].nil?
            @PlayerSession = PlayerSession.new.deserialize(params[PlayerSession])
          end
          @RequestId = params['RequestId']
        end
      end

      # 部署的玩家游戏会话
      class PlacedPlayerSession < TencentCloud::Common::AbstractModel
        # @param PlayerId: 玩家Id
        # @type PlayerId: String
        # @param PlayerSessionId: 玩家会话Id
        # @type PlayerSessionId: String

        attr_accessor :PlayerId, :PlayerSessionId
        
        def initialize(playerid=nil, playersessionid=nil)
          @PlayerId = playerid
          @PlayerSessionId = playersessionid
        end

        def deserialize(params)
          @PlayerId = params['PlayerId']
          @PlayerSessionId = params['PlayerSessionId']
        end
      end

      # 玩家延迟信息
      class PlayerLatency < TencentCloud::Common::AbstractModel
        # @param PlayerId: 玩家Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerId: String
        # @param RegionIdentifier: 延迟对应的区域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionIdentifier: String
        # @param LatencyInMilliseconds: 毫秒级延迟
        # @type LatencyInMilliseconds: Integer

        attr_accessor :PlayerId, :RegionIdentifier, :LatencyInMilliseconds
        
        def initialize(playerid=nil, regionidentifier=nil, latencyinmilliseconds=nil)
          @PlayerId = playerid
          @RegionIdentifier = regionidentifier
          @LatencyInMilliseconds = latencyinmilliseconds
        end

        def deserialize(params)
          @PlayerId = params['PlayerId']
          @RegionIdentifier = params['RegionIdentifier']
          @LatencyInMilliseconds = params['LatencyInMilliseconds']
        end
      end

      # 延迟策略
      class PlayerLatencyPolicy < TencentCloud::Common::AbstractModel
        # @param MaximumIndividualPlayerLatencyMilliseconds: 任意player允许的最大延迟，单位：毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaximumIndividualPlayerLatencyMilliseconds: Integer
        # @param PolicyDurationSeconds: 放置新GameServerSession时强制实施策略的时间长度，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDurationSeconds: Integer

        attr_accessor :MaximumIndividualPlayerLatencyMilliseconds, :PolicyDurationSeconds
        
        def initialize(maximumindividualplayerlatencymilliseconds=nil, policydurationseconds=nil)
          @MaximumIndividualPlayerLatencyMilliseconds = maximumindividualplayerlatencymilliseconds
          @PolicyDurationSeconds = policydurationseconds
        end

        def deserialize(params)
          @MaximumIndividualPlayerLatencyMilliseconds = params['MaximumIndividualPlayerLatencyMilliseconds']
          @PolicyDurationSeconds = params['PolicyDurationSeconds']
        end
      end

      # 玩家会话详情
      class PlayerSession < TencentCloud::Common::AbstractModel
        # @param CreationTime: 玩家会话创建时间
        # @type CreationTime: String
        # @param DnsName: 游戏服务器会话运行的DNS标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsName: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param GameServerSessionId: 游戏服务器会话ID
        # @type GameServerSessionId: String
        # @param IpAddress: 游戏服务器会话运行的CVM地址
        # @type IpAddress: String
        # @param PlayerData: 玩家相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerData: String
        # @param PlayerId: 玩家ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerId: String
        # @param PlayerSessionId: 玩家会话ID
        # @type PlayerSessionId: String
        # @param Port: 端口号
        # @type Port: Integer
        # @param Status: 玩家会话的状态
        # @type Status: String
        # @param TerminationTime: 玩家会话终止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerminationTime: String

        attr_accessor :CreationTime, :DnsName, :FleetId, :GameServerSessionId, :IpAddress, :PlayerData, :PlayerId, :PlayerSessionId, :Port, :Status, :TerminationTime
        
        def initialize(creationtime=nil, dnsname=nil, fleetid=nil, gameserversessionid=nil, ipaddress=nil, playerdata=nil, playerid=nil, playersessionid=nil, port=nil, status=nil, terminationtime=nil)
          @CreationTime = creationtime
          @DnsName = dnsname
          @FleetId = fleetid
          @GameServerSessionId = gameserversessionid
          @IpAddress = ipaddress
          @PlayerData = playerdata
          @PlayerId = playerid
          @PlayerSessionId = playersessionid
          @Port = port
          @Status = status
          @TerminationTime = terminationtime
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @DnsName = params['DnsName']
          @FleetId = params['FleetId']
          @GameServerSessionId = params['GameServerSessionId']
          @IpAddress = params['IpAddress']
          @PlayerData = params['PlayerData']
          @PlayerId = params['PlayerId']
          @PlayerSessionId = params['PlayerSessionId']
          @Port = params['Port']
          @Status = params['Status']
          @TerminationTime = params['TerminationTime']
        end
      end

      # PutScalingPolicy请求参数结构体
      class PutScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 基于规则的扩缩容配置
        # @type FleetId: String
        # @param Name: 名称
        # @type Name: String
        # @param ScalingAdjustment: 调整值
        # @type ScalingAdjustment: Integer
        # @param ScalingAdjustmentType: 调整类型
        # @type ScalingAdjustmentType: String
        # @param Threshold: 指标阈值
        # @type Threshold: Float
        # @param ComparisonOperator: 比较符
        # @type ComparisonOperator: String
        # @param EvaluationPeriods: 时间长度（分钟）
        # @type EvaluationPeriods: Integer
        # @param MetricName: 指标名称
        # @type MetricName: String
        # @param PolicyType: 策略类型
        # @type PolicyType: String
        # @param TargetConfiguration: 扩缩容配置类型
        # @type TargetConfiguration: :class:`Tencentcloud::Gse.v20191112.models.TargetConfiguration`

        attr_accessor :FleetId, :Name, :ScalingAdjustment, :ScalingAdjustmentType, :Threshold, :ComparisonOperator, :EvaluationPeriods, :MetricName, :PolicyType, :TargetConfiguration
        
        def initialize(fleetid=nil, name=nil, scalingadjustment=nil, scalingadjustmenttype=nil, threshold=nil, comparisonoperator=nil, evaluationperiods=nil, metricname=nil, policytype=nil, targetconfiguration=nil)
          @FleetId = fleetid
          @Name = name
          @ScalingAdjustment = scalingadjustment
          @ScalingAdjustmentType = scalingadjustmenttype
          @Threshold = threshold
          @ComparisonOperator = comparisonoperator
          @EvaluationPeriods = evaluationperiods
          @MetricName = metricname
          @PolicyType = policytype
          @TargetConfiguration = targetconfiguration
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Name = params['Name']
          @ScalingAdjustment = params['ScalingAdjustment']
          @ScalingAdjustmentType = params['ScalingAdjustmentType']
          @Threshold = params['Threshold']
          @ComparisonOperator = params['ComparisonOperator']
          @EvaluationPeriods = params['EvaluationPeriods']
          @MetricName = params['MetricName']
          @PolicyType = params['PolicyType']
          unless params['TargetConfiguration'].nil?
            @TargetConfiguration = TargetConfiguration.new.deserialize(params[TargetConfiguration])
          end
        end
      end

      # PutScalingPolicy返回参数结构体
      class PutScalingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :RequestId
        
        def initialize(name=nil, requestid=nil)
          @Name = name
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @RequestId = params['RequestId']
        end
      end

      # 动态扩缩容配置
      class ScalingPolicy < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ScalingAdjustment: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalingAdjustment: String
        # @param ScalingAdjustmentType: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalingAdjustmentType: String
        # @param ComparisonOperator: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComparisonOperator: String
        # @param Threshold: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Threshold: String
        # @param EvaluationPeriods: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvaluationPeriods: String
        # @param MetricName: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param PolicyType: 策略类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: String
        # @param TargetConfiguration: 基于规则的配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetConfiguration: :class:`Tencentcloud::Gse.v20191112.models.TargetConfiguration`

        attr_accessor :FleetId, :Name, :Status, :ScalingAdjustment, :ScalingAdjustmentType, :ComparisonOperator, :Threshold, :EvaluationPeriods, :MetricName, :PolicyType, :TargetConfiguration
        
        def initialize(fleetid=nil, name=nil, status=nil, scalingadjustment=nil, scalingadjustmenttype=nil, comparisonoperator=nil, threshold=nil, evaluationperiods=nil, metricname=nil, policytype=nil, targetconfiguration=nil)
          @FleetId = fleetid
          @Name = name
          @Status = status
          @ScalingAdjustment = scalingadjustment
          @ScalingAdjustmentType = scalingadjustmenttype
          @ComparisonOperator = comparisonoperator
          @Threshold = threshold
          @EvaluationPeriods = evaluationperiods
          @MetricName = metricname
          @PolicyType = policytype
          @TargetConfiguration = targetconfiguration
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Name = params['Name']
          @Status = params['Status']
          @ScalingAdjustment = params['ScalingAdjustment']
          @ScalingAdjustmentType = params['ScalingAdjustmentType']
          @ComparisonOperator = params['ComparisonOperator']
          @Threshold = params['Threshold']
          @EvaluationPeriods = params['EvaluationPeriods']
          @MetricName = params['MetricName']
          @PolicyType = params['PolicyType']
          unless params['TargetConfiguration'].nil?
            @TargetConfiguration = TargetConfiguration.new.deserialize(params[TargetConfiguration])
          end
        end
      end

      # SearchGameServerSessions请求参数结构体
      class SearchGameServerSessionsRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 别名ID
        # @type AliasId: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param Limit: 单次查询记录数上限
        # @type Limit: Integer
        # @param NextToken: 页偏移，用于查询下一页
        # @type NextToken: String
        # @param FilterExpression: 搜索条件表达式，支持如下变量
        # gameServerSessionName 游戏会话名称 String
        # gameServerSessionId 游戏会话ID String
        # maximumSessions 最大的玩家会话数 Number
        # creationTimeMillis 创建时间，单位：毫秒 Number
        # playerSessionCount 当前玩家会话数 Number
        # hasAvailablePlayerSessions 是否有可用玩家数 String 取值true或false
        # gameServerSessionProperties 游戏会话属性 String

        # 表达式String类型 等于=，不等于<>判断
        # 表示Number类型支持 =,<>,>,>=,<,<=
        # @type FilterExpression: String
        # @param SortExpression: 排序条件关键字
        # 支持排序字段
        # gameServerSessionName 游戏会话名称 String
        # gameServerSessionId 游戏会话ID String
        # maximumSessions 最大的玩家会话数 Number
        # creationTimeMillis 创建时间，单位：毫秒 Number
        # playerSessionCount 当前玩家会话数 Number
        # @type SortExpression: String

        attr_accessor :AliasId, :FleetId, :Limit, :NextToken, :FilterExpression, :SortExpression
        
        def initialize(aliasid=nil, fleetid=nil, limit=nil, nexttoken=nil, filterexpression=nil, sortexpression=nil)
          @AliasId = aliasid
          @FleetId = fleetid
          @Limit = limit
          @NextToken = nexttoken
          @FilterExpression = filterexpression
          @SortExpression = sortexpression
        end

        def deserialize(params)
          @AliasId = params['AliasId']
          @FleetId = params['FleetId']
          @Limit = params['Limit']
          @NextToken = params['NextToken']
          @FilterExpression = params['FilterExpression']
          @SortExpression = params['SortExpression']
        end
      end

      # SearchGameServerSessions返回参数结构体
      class SearchGameServerSessionsResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessions: 游戏服务器会话列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessions: Array
        # @param NextToken: 页偏移，用于查询下一页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessions, :NextToken, :RequestId
        
        def initialize(gameserversessions=nil, nexttoken=nil, requestid=nil)
          @GameServerSessions = gameserversessions
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          @GameServerSessions = params['GameServerSessions']
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # SetServerWeight请求参数结构体
      class SetServerWeightRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务舰队ID
        # @type FleetId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Weight: 权重
        # @type Weight: Integer

        attr_accessor :FleetId, :InstanceId, :Weight
        
        def initialize(fleetid=nil, instanceid=nil, weight=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
          @Weight = weight
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
        end
      end

      # SetServerWeight返回参数结构体
      class SetServerWeightResponse < TencentCloud::Common::AbstractModel
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

      # StartGameServerSessionPlacement请求参数结构体
      class StartGameServerSessionPlacementRequest < TencentCloud::Common::AbstractModel
        # @param PlacementId: 开始部署游戏服务器会话的唯一标识符
        # @type PlacementId: String
        # @param GameServerSessionQueueName: 游戏服务器会话队列名称
        # @type GameServerSessionQueueName: String
        # @param MaximumPlayerSessionCount: 游戏服务器允许同时连接到游戏会话的最大玩家数量
        # @type MaximumPlayerSessionCount: Integer
        # @param DesiredPlayerSessions: 玩家游戏会话信息
        # @type DesiredPlayerSessions: Array
        # @param GameProperties: 玩家游戏会话属性
        # @type GameProperties: Array
        # @param GameServerSessionData: 游戏服务器会话数据
        # @type GameServerSessionData: String
        # @param GameServerSessionName: 游戏服务器会话名称
        # @type GameServerSessionName: String
        # @param PlayerLatencies: 玩家延迟
        # @type PlayerLatencies: Array

        attr_accessor :PlacementId, :GameServerSessionQueueName, :MaximumPlayerSessionCount, :DesiredPlayerSessions, :GameProperties, :GameServerSessionData, :GameServerSessionName, :PlayerLatencies
        
        def initialize(placementid=nil, gameserversessionqueuename=nil, maximumplayersessioncount=nil, desiredplayersessions=nil, gameproperties=nil, gameserversessiondata=nil, gameserversessionname=nil, playerlatencies=nil)
          @PlacementId = placementid
          @GameServerSessionQueueName = gameserversessionqueuename
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @DesiredPlayerSessions = desiredplayersessions
          @GameProperties = gameproperties
          @GameServerSessionData = gameserversessiondata
          @GameServerSessionName = gameserversessionname
          @PlayerLatencies = playerlatencies
        end

        def deserialize(params)
          @PlacementId = params['PlacementId']
          @GameServerSessionQueueName = params['GameServerSessionQueueName']
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @DesiredPlayerSessions = params['DesiredPlayerSessions']
          @GameProperties = params['GameProperties']
          @GameServerSessionData = params['GameServerSessionData']
          @GameServerSessionName = params['GameServerSessionName']
          @PlayerLatencies = params['PlayerLatencies']
        end
      end

      # StartGameServerSessionPlacement返回参数结构体
      class StartGameServerSessionPlacementResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionPlacement: 游戏服务器会话放置
        # @type GameServerSessionPlacement: :class:`Tencentcloud::Gse.v20191112.models.GameServerSessionPlacement`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionPlacement, :RequestId
        
        def initialize(gameserversessionplacement=nil, requestid=nil)
          @GameServerSessionPlacement = gameserversessionplacement
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionPlacement'].nil?
            @GameServerSessionPlacement = GameServerSessionPlacement.new.deserialize(params[GameServerSessionPlacement])
          end
          @RequestId = params['RequestId']
        end
      end

      # StartMatchPlacement请求参数结构体
      class StartMatchPlacementRequest < TencentCloud::Common::AbstractModel
        # @param PlacementId: 开始部署游戏服务器会话的唯一标识符
        # @type PlacementId: String
        # @param GameServerSessionQueueName: 游戏服务器会话队列名称
        # @type GameServerSessionQueueName: String
        # @param MaximumPlayerSessionCount: 游戏服务器允许同时连接到游戏会话的最大玩家数量
        # @type MaximumPlayerSessionCount: Integer
        # @param DesiredPlayerSessions: 玩家游戏会话信息
        # @type DesiredPlayerSessions: Array
        # @param GameProperties: 玩家游戏会话属性
        # @type GameProperties: Array
        # @param GameServerSessionData: 游戏服务器会话数据
        # @type GameServerSessionData: String
        # @param GameServerSessionName: 游戏服务器会话名称
        # @type GameServerSessionName: String
        # @param PlayerLatencies: 玩家延迟
        # @type PlayerLatencies: Array
        # @param MatchmakerData: 游戏匹配数据
        # @type MatchmakerData: String

        attr_accessor :PlacementId, :GameServerSessionQueueName, :MaximumPlayerSessionCount, :DesiredPlayerSessions, :GameProperties, :GameServerSessionData, :GameServerSessionName, :PlayerLatencies, :MatchmakerData
        
        def initialize(placementid=nil, gameserversessionqueuename=nil, maximumplayersessioncount=nil, desiredplayersessions=nil, gameproperties=nil, gameserversessiondata=nil, gameserversessionname=nil, playerlatencies=nil, matchmakerdata=nil)
          @PlacementId = placementid
          @GameServerSessionQueueName = gameserversessionqueuename
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @DesiredPlayerSessions = desiredplayersessions
          @GameProperties = gameproperties
          @GameServerSessionData = gameserversessiondata
          @GameServerSessionName = gameserversessionname
          @PlayerLatencies = playerlatencies
          @MatchmakerData = matchmakerdata
        end

        def deserialize(params)
          @PlacementId = params['PlacementId']
          @GameServerSessionQueueName = params['GameServerSessionQueueName']
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @DesiredPlayerSessions = params['DesiredPlayerSessions']
          @GameProperties = params['GameProperties']
          @GameServerSessionData = params['GameServerSessionData']
          @GameServerSessionName = params['GameServerSessionName']
          @PlayerLatencies = params['PlayerLatencies']
          @MatchmakerData = params['MatchmakerData']
        end
      end

      # StartMatchPlacement返回参数结构体
      class StartMatchPlacementResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionPlacement: 游戏服务器会话放置
        # @type GameServerSessionPlacement: :class:`Tencentcloud::Gse.v20191112.models.GameServerSessionPlacement`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionPlacement, :RequestId
        
        def initialize(gameserversessionplacement=nil, requestid=nil)
          @GameServerSessionPlacement = gameserversessionplacement
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionPlacement'].nil?
            @GameServerSessionPlacement = GameServerSessionPlacement.new.deserialize(params[GameServerSessionPlacement])
          end
          @RequestId = params['RequestId']
        end
      end

      # StopGameServerSessionPlacement请求参数结构体
      class StopGameServerSessionPlacementRequest < TencentCloud::Common::AbstractModel
        # @param PlacementId: 游戏服务器会话放置的唯一标识符
        # @type PlacementId: String

        attr_accessor :PlacementId
        
        def initialize(placementid=nil)
          @PlacementId = placementid
        end

        def deserialize(params)
          @PlacementId = params['PlacementId']
        end
      end

      # StopGameServerSessionPlacement返回参数结构体
      class StopGameServerSessionPlacementResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionPlacement: 游戏服务器会话放置
        # @type GameServerSessionPlacement: :class:`Tencentcloud::Gse.v20191112.models.GameServerSessionPlacement`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionPlacement, :RequestId
        
        def initialize(gameserversessionplacement=nil, requestid=nil)
          @GameServerSessionPlacement = gameserversessionplacement
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionPlacement'].nil?
            @GameServerSessionPlacement = GameServerSessionPlacement.new.deserialize(params[GameServerSessionPlacement])
          end
          @RequestId = params['RequestId']
        end
      end

      # 基于规则的动态扩缩容配置项
      class TargetConfiguration < TencentCloud::Common::AbstractModel
        # @param TargetValue: 预留存率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetValue: Integer

        attr_accessor :TargetValue
        
        def initialize(targetvalue=nil)
          @TargetValue = targetvalue
        end

        def deserialize(params)
          @TargetValue = params['TargetValue']
        end
      end

      # UpdateGameServerSession请求参数结构体
      class UpdateGameServerSessionRequest < TencentCloud::Common::AbstractModel
        # @param GameServerSessionId: 游戏服务器会话ID
        # @type GameServerSessionId: String
        # @param MaximumPlayerSessionCount: 最大玩家数量
        # @type MaximumPlayerSessionCount: Integer
        # @param Name: 游戏服务器会话名称
        # @type Name: String
        # @param PlayerSessionCreationPolicy: 玩家会话创建策略（ACCEPT_ALL,DENY_ALL）
        # @type PlayerSessionCreationPolicy: String
        # @param ProtectionPolicy: 保护策略(NoProtection,TimeLimitProtection,FullProtection)
        # @type ProtectionPolicy: String

        attr_accessor :GameServerSessionId, :MaximumPlayerSessionCount, :Name, :PlayerSessionCreationPolicy, :ProtectionPolicy
        
        def initialize(gameserversessionid=nil, maximumplayersessioncount=nil, name=nil, playersessioncreationpolicy=nil, protectionpolicy=nil)
          @GameServerSessionId = gameserversessionid
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @Name = name
          @PlayerSessionCreationPolicy = playersessioncreationpolicy
          @ProtectionPolicy = protectionpolicy
        end

        def deserialize(params)
          @GameServerSessionId = params['GameServerSessionId']
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @Name = params['Name']
          @PlayerSessionCreationPolicy = params['PlayerSessionCreationPolicy']
          @ProtectionPolicy = params['ProtectionPolicy']
        end
      end

      # UpdateGameServerSession返回参数结构体
      class UpdateGameServerSessionResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSession: 更新后的游戏会话
        # @type GameServerSession: :class:`Tencentcloud::Gse.v20191112.models.GameServerSession`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSession, :RequestId
        
        def initialize(gameserversession=nil, requestid=nil)
          @GameServerSession = gameserversession
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSession'].nil?
            @GameServerSession = GameServerSession.new.deserialize(params[GameServerSession])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

