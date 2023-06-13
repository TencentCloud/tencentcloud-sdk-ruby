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
  module Hasim
    module V20210716
      # CreateRule请求参数结构体
      class CreateRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 自动化规则名称
        # @type Name: String
        # @param Type: 规则类型：用量类(101 当月|102有效期内)、位置类(201行政区|202移动距离)、网络质量类(301网络盲点)
        # @type Type: Integer
        # @param IsActive: 是否激活
        # @type IsActive: Boolean
        # @param Notice: 触发动作：1 邮件 2 API请求 3 微信 4 停卡 5 地图标识为盲点
        # @type Notice: Integer
        # @param Email: 邮箱
        # @type Email: String
        # @param Url: 推送的API地址
        # @type Url: String
        # @param DataThreshold: 用量阈值
        # @type DataThreshold: Integer
        # @param District: 行政区类型：1. 省份 2. 城市 3. 区
        # @type District: Integer
        # @param Distance: 心跳移动距离阈值
        # @type Distance: Integer
        # @param SignalStrength: 信号强度阈值
        # @type SignalStrength: Integer
        # @param LostDay: 盲点时间阈值，天
        # @type LostDay: Integer
        # @param TagIDs: 标签ID集合
        # @type TagIDs: Array
        # @param SalePlan: 资费计划
        # @type SalePlan: String

        attr_accessor :Name, :Type, :IsActive, :Notice, :Email, :Url, :DataThreshold, :District, :Distance, :SignalStrength, :LostDay, :TagIDs, :SalePlan

        def initialize(name=nil, type=nil, isactive=nil, notice=nil, email=nil, url=nil, datathreshold=nil, district=nil, distance=nil, signalstrength=nil, lostday=nil, tagids=nil, saleplan=nil)
          @Name = name
          @Type = type
          @IsActive = isactive
          @Notice = notice
          @Email = email
          @Url = url
          @DataThreshold = datathreshold
          @District = district
          @Distance = distance
          @SignalStrength = signalstrength
          @LostDay = lostday
          @TagIDs = tagids
          @SalePlan = saleplan
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @IsActive = params['IsActive']
          @Notice = params['Notice']
          @Email = params['Email']
          @Url = params['Url']
          @DataThreshold = params['DataThreshold']
          @District = params['District']
          @Distance = params['Distance']
          @SignalStrength = params['SignalStrength']
          @LostDay = params['LostDay']
          @TagIDs = params['TagIDs']
          @SalePlan = params['SalePlan']
        end
      end

      # CreateRule返回参数结构体
      class CreateRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateTactic请求参数结构体
      class CreateTacticRequest < TencentCloud::Common::AbstractModel
        # @param Name: 策略名称
        # @type Name: String
        # @param IsAuto: 是否自动执行
        # @type IsAuto: Integer
        # @param PingInterval: 心跳上报间隔(s)
        # @type PingInterval: Integer
        # @param IsWeak: 是否开启弱信号检测
        # @type IsWeak: Integer
        # @param WeakThreshold: 弱信号阈值（-dbm）
        # @type WeakThreshold: Integer
        # @param IsDelay: 是否开启时延切换
        # @type IsDelay: Integer
        # @param DelayThreshold: 网络时延阈值（ms）
        # @type DelayThreshold: Integer
        # @param IsFake: 是否开启假信号检测
        # @type IsFake: Integer
        # @param FakeIP: 假信号检测IP字符串，用逗号分隔
        # @type FakeIP: String
        # @param FakeInterval: 假信号检测间隔（s）
        # @type FakeInterval: Integer
        # @param IsNet: 是否开启网络制式检测
        # @type IsNet: Integer
        # @param Network: 网络回落制式 1 2G、 2 3G 、 3 2/3G
        # @type Network: Integer
        # @param IsMove: 是否开启移动检测
        # @type IsMove: Integer
        # @param IsPriorityTele: 是否开启最优先运营商
        # @type IsPriorityTele: Integer
        # @param PriorityTele: 最优先运营商 1 移动、 2 联通、 3 电信 4 上次在线运营商
        # @type PriorityTele: Integer
        # @param IsBottomTele: 是否开启最不优先运营商
        # @type IsBottomTele: Integer
        # @param BottomTele: 最不优先运营商 1 移动、 2 联通、 3 电信
        # @type BottomTele: Integer
        # @param IsBestSignal: 最优先信号选取策略
        # @type IsBestSignal: Integer

        attr_accessor :Name, :IsAuto, :PingInterval, :IsWeak, :WeakThreshold, :IsDelay, :DelayThreshold, :IsFake, :FakeIP, :FakeInterval, :IsNet, :Network, :IsMove, :IsPriorityTele, :PriorityTele, :IsBottomTele, :BottomTele, :IsBestSignal

        def initialize(name=nil, isauto=nil, pinginterval=nil, isweak=nil, weakthreshold=nil, isdelay=nil, delaythreshold=nil, isfake=nil, fakeip=nil, fakeinterval=nil, isnet=nil, network=nil, ismove=nil, isprioritytele=nil, prioritytele=nil, isbottomtele=nil, bottomtele=nil, isbestsignal=nil)
          @Name = name
          @IsAuto = isauto
          @PingInterval = pinginterval
          @IsWeak = isweak
          @WeakThreshold = weakthreshold
          @IsDelay = isdelay
          @DelayThreshold = delaythreshold
          @IsFake = isfake
          @FakeIP = fakeip
          @FakeInterval = fakeinterval
          @IsNet = isnet
          @Network = network
          @IsMove = ismove
          @IsPriorityTele = isprioritytele
          @PriorityTele = prioritytele
          @IsBottomTele = isbottomtele
          @BottomTele = bottomtele
          @IsBestSignal = isbestsignal
        end

        def deserialize(params)
          @Name = params['Name']
          @IsAuto = params['IsAuto']
          @PingInterval = params['PingInterval']
          @IsWeak = params['IsWeak']
          @WeakThreshold = params['WeakThreshold']
          @IsDelay = params['IsDelay']
          @DelayThreshold = params['DelayThreshold']
          @IsFake = params['IsFake']
          @FakeIP = params['FakeIP']
          @FakeInterval = params['FakeInterval']
          @IsNet = params['IsNet']
          @Network = params['Network']
          @IsMove = params['IsMove']
          @IsPriorityTele = params['IsPriorityTele']
          @PriorityTele = params['PriorityTele']
          @IsBottomTele = params['IsBottomTele']
          @BottomTele = params['BottomTele']
          @IsBestSignal = params['IsBestSignal']
        end
      end

      # CreateTactic返回参数结构体
      class CreateTacticResponse < TencentCloud::Common::AbstractModel
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

      # CreateTag请求参数结构体
      class CreateTagRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Comment: 备注
        # @type Comment: String

        attr_accessor :Name, :Comment

        def initialize(name=nil, comment=nil)
          @Name = name
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
        end
      end

      # CreateTag返回参数结构体
      class CreateTagResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRule请求参数结构体
      class DeleteRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleID: 自动化规则ID
        # @type RuleID: Integer

        attr_accessor :RuleID

        def initialize(ruleid=nil)
          @RuleID = ruleid
        end

        def deserialize(params)
          @RuleID = params['RuleID']
        end
      end

      # DeleteRule返回参数结构体
      class DeleteRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTactic请求参数结构体
      class DeleteTacticRequest < TencentCloud::Common::AbstractModel
        # @param TacticID: 策略ID
        # @type TacticID: Integer

        attr_accessor :TacticID

        def initialize(tacticid=nil)
          @TacticID = tacticid
        end

        def deserialize(params)
          @TacticID = params['TacticID']
        end
      end

      # DeleteTactic返回参数结构体
      class DeleteTacticResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTag请求参数结构体
      class DeleteTagRequest < TencentCloud::Common::AbstractModel
        # @param TagID: 标签ID
        # @type TagID: Integer

        attr_accessor :TagID

        def initialize(tagid=nil)
          @TagID = tagid
        end

        def deserialize(params)
          @TagID = params['TagID']
        end
      end

      # DeleteTag返回参数结构体
      class DeleteTagResponse < TencentCloud::Common::AbstractModel
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

      # DescribeLink请求参数结构体
      class DescribeLinkRequest < TencentCloud::Common::AbstractModel
        # @param LinkID: 云兔卡ID
        # @type LinkID: Integer
        # @param UinAccount: 具体的账号
        # @type UinAccount: String

        attr_accessor :LinkID, :UinAccount

        def initialize(linkid=nil, uinaccount=nil)
          @LinkID = linkid
          @UinAccount = uinaccount
        end

        def deserialize(params)
          @LinkID = params['LinkID']
          @UinAccount = params['UinAccount']
        end
      end

      # DescribeLink返回参数结构体
      class DescribeLinkResponse < TencentCloud::Common::AbstractModel
        # @param Data: 云兔连接详细信息
        # @type Data: :class:`Tencentcloud::Hasim.v20210716.models.LinkDetailInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LinkDetailInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLinks请求参数结构体
      class DescribeLinksRequest < TencentCloud::Common::AbstractModel
        # @param LinkID: 云兔卡ID
        # @type LinkID: Integer
        # @param ICCID: 运营商ICCID
        # @type ICCID: String
        # @param IMEI: 设备码
        # @type IMEI: String
        # @param Status: 卡片状态
        # @type Status: Integer
        # @param TeleOperator: 运营商 1移动 2联通 3电信
        # @type TeleOperator: Integer
        # @param TagID: 标签ID
        # @type TagID: Integer
        # @param TacticID: 策略ID
        # @type TacticID: Integer
        # @param LinkedState: 设备在线状态 0 未激活 1 在线 2 离线
        # @type LinkedState: Integer
        # @param TagIDs: 标签ID 集合
        # @type TagIDs: Array
        # @param Limit: 翻页大小, 默认翻页大小为10，最大数量为500
        # @type Limit: Integer
        # @param Offset: 翻页起始
        # @type Offset: Integer

        attr_accessor :LinkID, :ICCID, :IMEI, :Status, :TeleOperator, :TagID, :TacticID, :LinkedState, :TagIDs, :Limit, :Offset

        def initialize(linkid=nil, iccid=nil, imei=nil, status=nil, teleoperator=nil, tagid=nil, tacticid=nil, linkedstate=nil, tagids=nil, limit=nil, offset=nil)
          @LinkID = linkid
          @ICCID = iccid
          @IMEI = imei
          @Status = status
          @TeleOperator = teleoperator
          @TagID = tagid
          @TacticID = tacticid
          @LinkedState = linkedstate
          @TagIDs = tagids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @LinkID = params['LinkID']
          @ICCID = params['ICCID']
          @IMEI = params['IMEI']
          @Status = params['Status']
          @TeleOperator = params['TeleOperator']
          @TagID = params['TagID']
          @TacticID = params['TacticID']
          @LinkedState = params['LinkedState']
          @TagIDs = params['TagIDs']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeLinks返回参数结构体
      class DescribeLinksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 云兔连接响应信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Hasim.v20210716.models.LinkInfos`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LinkInfos.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrders请求参数结构体
      class DescribeOrdersRequest < TencentCloud::Common::AbstractModel
        # @param DealName: 子订单ID
        # @type DealName: String
        # @param AuditStatus: 审批状态 0全部 1通过 2驳回 3待审核
        # @type AuditStatus: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param Offset: 翻页偏移
        # @type Offset: Integer
        # @param BeginTime: 开始时间,例如2022-06-30 00:00:00
        # @type BeginTime: String
        # @param EndTime: 结束时间,例如2022-06-30 00:00:00
        # @type EndTime: String

        attr_accessor :DealName, :AuditStatus, :Limit, :Offset, :BeginTime, :EndTime

        def initialize(dealname=nil, auditstatus=nil, limit=nil, offset=nil, begintime=nil, endtime=nil)
          @DealName = dealname
          @AuditStatus = auditstatus
          @Limit = limit
          @Offset = offset
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @DealName = params['DealName']
          @AuditStatus = params['AuditStatus']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeOrders返回参数结构体
      class DescribeOrdersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 订单列表
        # @type Data: :class:`Tencentcloud::Hasim.v20210716.models.Orders`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Orders.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRule请求参数结构体
      class DescribeRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleID: 自动化规则ID
        # @type RuleID: Integer

        attr_accessor :RuleID

        def initialize(ruleid=nil)
          @RuleID = ruleid
        end

        def deserialize(params)
          @RuleID = params['RuleID']
        end
      end

      # DescribeRule返回参数结构体
      class DescribeRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 策略信息
        # @type Data: :class:`Tencentcloud::Hasim.v20210716.models.RuleDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRules请求参数结构体
      class DescribeRulesRequest < TencentCloud::Common::AbstractModel
        # @param RuleID: 自动化规则ID
        # @type RuleID: Integer
        # @param RuleIDs: 自动化规则ID
        # @type RuleIDs: Array
        # @param Name: 名称
        # @type Name: String
        # @param Type: 类型
        # @type Type: Integer
        # @param IsActive: 是否激活
        # @type IsActive: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param Offset: 翻页偏移
        # @type Offset: Integer

        attr_accessor :RuleID, :RuleIDs, :Name, :Type, :IsActive, :Limit, :Offset

        def initialize(ruleid=nil, ruleids=nil, name=nil, type=nil, isactive=nil, limit=nil, offset=nil)
          @RuleID = ruleid
          @RuleIDs = ruleids
          @Name = name
          @Type = type
          @IsActive = isactive
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RuleID = params['RuleID']
          @RuleIDs = params['RuleIDs']
          @Name = params['Name']
          @Type = params['Type']
          @IsActive = params['IsActive']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeRules返回参数结构体
      class DescribeRulesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 自动化规则列表集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Hasim.v20210716.models.RuleInfos`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RuleInfos.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTactic请求参数结构体
      class DescribeTacticRequest < TencentCloud::Common::AbstractModel
        # @param TacticID: 策略ID
        # @type TacticID: Integer

        attr_accessor :TacticID

        def initialize(tacticid=nil)
          @TacticID = tacticid
        end

        def deserialize(params)
          @TacticID = params['TacticID']
        end
      end

      # DescribeTactic返回参数结构体
      class DescribeTacticResponse < TencentCloud::Common::AbstractModel
        # @param Data: 策略信息
        # @type Data: :class:`Tencentcloud::Hasim.v20210716.models.Tactic`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Tactic.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTactics请求参数结构体
      class DescribeTacticsRequest < TencentCloud::Common::AbstractModel
        # @param TacticID: 策略ID
        # @type TacticID: Integer
        # @param Name: 策略名称
        # @type Name: String

        attr_accessor :TacticID, :Name

        def initialize(tacticid=nil, name=nil)
          @TacticID = tacticid
          @Name = name
        end

        def deserialize(params)
          @TacticID = params['TacticID']
          @Name = params['Name']
        end
      end

      # DescribeTactics返回参数结构体
      class DescribeTacticsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 策略集合信息
        # @type Data: :class:`Tencentcloud::Hasim.v20210716.models.TacticInfos`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TacticInfos.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTags请求参数结构体
      class DescribeTagsRequest < TencentCloud::Common::AbstractModel
        # @param Name: 标签名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DescribeTags返回参数结构体
      class DescribeTagsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: :class:`Tencentcloud::Hasim.v20210716.models.TagInfos`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TagInfos.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备上报信息
      class DeviceReport < TencentCloud::Common::AbstractModel
        # @param Imei: 移动设备ID
        # @type Imei: String
        # @param Lng: 经度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Lng: String
        # @param Lat: 维度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Lat: String
        # @param Lac: 运营商基站ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Lac: String
        # @param Cell: 小区CellID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cell: String
        # @param Iccid: 当前上报运营商ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Iccid: String
        # @param Rss: 信号强度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rss: Integer
        # @param Tele: 运营商: 1 移动 2 联通 3 电信
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tele: Integer
        # @param Tid: 当前设备策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tid: Integer
        # @param Ping: 心跳间隔,单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ping: Integer
        # @param Delay: 网络延迟,单位毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Delay: Integer
        # @param Log: 高级日志启停状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Log: Integer
        # @param DevType: 设备型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevType: String
        # @param DevModel: 设备型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevModel: String
        # @param Version: 设备版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param UploadTime: 设备刷新时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UploadTime: String
        # @param Status: 网络环境: 0 正常 1 弱网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param MonthFirstTime: 每月第一次上报心跳时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonthFirstTime: String

        attr_accessor :Imei, :Lng, :Lat, :Lac, :Cell, :Iccid, :Rss, :Tele, :Tid, :Ping, :Delay, :Log, :DevType, :DevModel, :Version, :UploadTime, :Status, :MonthFirstTime

        def initialize(imei=nil, lng=nil, lat=nil, lac=nil, cell=nil, iccid=nil, rss=nil, tele=nil, tid=nil, ping=nil, delay=nil, log=nil, devtype=nil, devmodel=nil, version=nil, uploadtime=nil, status=nil, monthfirsttime=nil)
          @Imei = imei
          @Lng = lng
          @Lat = lat
          @Lac = lac
          @Cell = cell
          @Iccid = iccid
          @Rss = rss
          @Tele = tele
          @Tid = tid
          @Ping = ping
          @Delay = delay
          @Log = log
          @DevType = devtype
          @DevModel = devmodel
          @Version = version
          @UploadTime = uploadtime
          @Status = status
          @MonthFirstTime = monthfirsttime
        end

        def deserialize(params)
          @Imei = params['Imei']
          @Lng = params['Lng']
          @Lat = params['Lat']
          @Lac = params['Lac']
          @Cell = params['Cell']
          @Iccid = params['Iccid']
          @Rss = params['Rss']
          @Tele = params['Tele']
          @Tid = params['Tid']
          @Ping = params['Ping']
          @Delay = params['Delay']
          @Log = params['Log']
          @DevType = params['DevType']
          @DevModel = params['DevModel']
          @Version = params['Version']
          @UploadTime = params['UploadTime']
          @Status = params['Status']
          @MonthFirstTime = params['MonthFirstTime']
        end
      end

      # 云兔连接详细信息
      class LinkDetailInfo < TencentCloud::Common::AbstractModel
        # @param ID: 云兔连接ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param Status: 卡片状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ActiveTime: 激活时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveTime: String
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param DataUse: 数据用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataUse: Float
        # @param AudioUse: 语音用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioUse: Integer
        # @param SmsUse: 短信用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmsUse: Integer
        # @param LinkedState: 在线状态 0 未激活 1 在线 2 离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkedState: Integer
        # @param TacticID: 预期策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TacticID: Integer
        # @param TacticStatus: 策略下发状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TacticStatus: Integer
        # @param TacticExpireTime: 策略下发成功过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TacticExpireTime: String
        # @param IsActiveLog: 高级日志预期状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsActiveLog: Boolean
        # @param TeleOperator: 运营商 1移动 2联通 3电信
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TeleOperator: Integer
        # @param Report: 设备最新上报信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Report: :class:`Tencentcloud::Hasim.v20210716.models.DeviceReport`
        # @param Tags: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Cards: 运营商ICCID信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cards: Array
        # @param CardID: 云兔实际卡片ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CardID: String

        attr_accessor :ID, :Status, :ActiveTime, :ExpireTime, :DataUse, :AudioUse, :SmsUse, :LinkedState, :TacticID, :TacticStatus, :TacticExpireTime, :IsActiveLog, :TeleOperator, :Report, :Tags, :Cards, :CardID

        def initialize(id=nil, status=nil, activetime=nil, expiretime=nil, datause=nil, audiouse=nil, smsuse=nil, linkedstate=nil, tacticid=nil, tacticstatus=nil, tacticexpiretime=nil, isactivelog=nil, teleoperator=nil, report=nil, tags=nil, cards=nil, cardid=nil)
          @ID = id
          @Status = status
          @ActiveTime = activetime
          @ExpireTime = expiretime
          @DataUse = datause
          @AudioUse = audiouse
          @SmsUse = smsuse
          @LinkedState = linkedstate
          @TacticID = tacticid
          @TacticStatus = tacticstatus
          @TacticExpireTime = tacticexpiretime
          @IsActiveLog = isactivelog
          @TeleOperator = teleoperator
          @Report = report
          @Tags = tags
          @Cards = cards
          @CardID = cardid
        end

        def deserialize(params)
          @ID = params['ID']
          @Status = params['Status']
          @ActiveTime = params['ActiveTime']
          @ExpireTime = params['ExpireTime']
          @DataUse = params['DataUse']
          @AudioUse = params['AudioUse']
          @SmsUse = params['SmsUse']
          @LinkedState = params['LinkedState']
          @TacticID = params['TacticID']
          @TacticStatus = params['TacticStatus']
          @TacticExpireTime = params['TacticExpireTime']
          @IsActiveLog = params['IsActiveLog']
          @TeleOperator = params['TeleOperator']
          unless params['Report'].nil?
            @Report = DeviceReport.new
            @Report.deserialize(params['Report'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['Cards'].nil?
            @Cards = []
            params['Cards'].each do |i|
              teleoperatorcard_tmp = TeleOperatorCard.new
              teleoperatorcard_tmp.deserialize(i)
              @Cards << teleoperatorcard_tmp
            end
          end
          @CardID = params['CardID']
        end
      end

      # 云兔连接基本信息
      class LinkInfo < TencentCloud::Common::AbstractModel
        # @param ID: 云兔连接ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param Status: 卡片状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ActiveTime: 激活时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveTime: String
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param DataUse: 数据用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataUse: Float
        # @param AudioUse: 语音用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioUse: Integer
        # @param SmsUse: 短信用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmsUse: Integer
        # @param LinkedState: 在线状态 0 未激活 1 在线 2 离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkedState: Integer
        # @param TacticID: 预期策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TacticID: Integer
        # @param TacticStatus: 策略下发状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TacticStatus: Integer
        # @param TacticExpireTime: 策略下发成功过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TacticExpireTime: String
        # @param IsActiveLog: 高级日志预期状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsActiveLog: Boolean
        # @param TeleOperator: 运营商 1移动 2联通 3电信
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TeleOperator: Integer
        # @param Report: 设备最新上报信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Report: :class:`Tencentcloud::Hasim.v20210716.models.DeviceReport`

        attr_accessor :ID, :Status, :ActiveTime, :ExpireTime, :DataUse, :AudioUse, :SmsUse, :LinkedState, :TacticID, :TacticStatus, :TacticExpireTime, :IsActiveLog, :TeleOperator, :Report

        def initialize(id=nil, status=nil, activetime=nil, expiretime=nil, datause=nil, audiouse=nil, smsuse=nil, linkedstate=nil, tacticid=nil, tacticstatus=nil, tacticexpiretime=nil, isactivelog=nil, teleoperator=nil, report=nil)
          @ID = id
          @Status = status
          @ActiveTime = activetime
          @ExpireTime = expiretime
          @DataUse = datause
          @AudioUse = audiouse
          @SmsUse = smsuse
          @LinkedState = linkedstate
          @TacticID = tacticid
          @TacticStatus = tacticstatus
          @TacticExpireTime = tacticexpiretime
          @IsActiveLog = isactivelog
          @TeleOperator = teleoperator
          @Report = report
        end

        def deserialize(params)
          @ID = params['ID']
          @Status = params['Status']
          @ActiveTime = params['ActiveTime']
          @ExpireTime = params['ExpireTime']
          @DataUse = params['DataUse']
          @AudioUse = params['AudioUse']
          @SmsUse = params['SmsUse']
          @LinkedState = params['LinkedState']
          @TacticID = params['TacticID']
          @TacticStatus = params['TacticStatus']
          @TacticExpireTime = params['TacticExpireTime']
          @IsActiveLog = params['IsActiveLog']
          @TeleOperator = params['TeleOperator']
          unless params['Report'].nil?
            @Report = DeviceReport.new
            @Report.deserialize(params['Report'])
          end
        end
      end

      # 云兔连接信息集合
      class LinkInfos < TencentCloud::Common::AbstractModel
        # @param Total: 总量
        # @type Total: Integer
        # @param List: 云兔连接列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :List

        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              linkinfo_tmp = LinkInfo.new
              linkinfo_tmp.deserialize(i)
              @List << linkinfo_tmp
            end
          end
        end
      end

      # ModifyLinkAdvancedLog请求参数结构体
      class ModifyLinkAdvancedLogRequest < TencentCloud::Common::AbstractModel
        # @param LinkID: 云兔ID
        # @type LinkID: Integer
        # @param IsAdLog: 是否激活高级日志 0 关闭 1激活
        # @type IsAdLog: Integer

        attr_accessor :LinkID, :IsAdLog

        def initialize(linkid=nil, isadlog=nil)
          @LinkID = linkid
          @IsAdLog = isadlog
        end

        def deserialize(params)
          @LinkID = params['LinkID']
          @IsAdLog = params['IsAdLog']
        end
      end

      # ModifyLinkAdvancedLog返回参数结构体
      class ModifyLinkAdvancedLogResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLinkTactic请求参数结构体
      class ModifyLinkTacticRequest < TencentCloud::Common::AbstractModel
        # @param LinkID: 云兔ID
        # @type LinkID: Integer
        # @param TacticID: 策略ID
        # @type TacticID: Integer

        attr_accessor :LinkID, :TacticID

        def initialize(linkid=nil, tacticid=nil)
          @LinkID = linkid
          @TacticID = tacticid
        end

        def deserialize(params)
          @LinkID = params['LinkID']
          @TacticID = params['TacticID']
        end
      end

      # ModifyLinkTactic返回参数结构体
      class ModifyLinkTacticResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLinkTele请求参数结构体
      class ModifyLinkTeleRequest < TencentCloud::Common::AbstractModel
        # @param LinkID: 云兔ID
        # @type LinkID: Integer
        # @param TeleOperator: 运营商 1 移动 2 联通 3 电信
        # @type TeleOperator: Integer

        attr_accessor :LinkID, :TeleOperator

        def initialize(linkid=nil, teleoperator=nil)
          @LinkID = linkid
          @TeleOperator = teleoperator
        end

        def deserialize(params)
          @LinkID = params['LinkID']
          @TeleOperator = params['TeleOperator']
        end
      end

      # ModifyLinkTele返回参数结构体
      class ModifyLinkTeleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRule请求参数结构体
      class ModifyRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 自动化规则名称
        # @type Name: String
        # @param Type: 规则类型：用量类(101 当月|102有效期内)、位置类(201行政区|202移动距离)、网络质量类(301网络盲点)
        # @type Type: Integer
        # @param IsActive: 是否激活
        # @type IsActive: Boolean
        # @param Notice: 触发动作：1 邮件 2 API请求 3 微信 4 停卡 5 地图标识为盲点
        # @type Notice: Integer
        # @param RuleID: 自动化规则ID
        # @type RuleID: Integer
        # @param Email: 邮箱
        # @type Email: String
        # @param Url: 推送的API地址
        # @type Url: String
        # @param DataThreshold: 用量阈值
        # @type DataThreshold: Integer
        # @param District: 行政区类型：1. 省份 2. 城市 3. 区
        # @type District: Integer
        # @param Distance: 心跳移动距离阈值
        # @type Distance: Integer
        # @param SignalStrength: 信号强度阈值
        # @type SignalStrength: Integer
        # @param TagIDs: 标签ID集合
        # @type TagIDs: Array
        # @param SalePlan: 资费计划
        # @type SalePlan: String
        # @param UinAccount: 具体的账号
        # @type UinAccount: String

        attr_accessor :Name, :Type, :IsActive, :Notice, :RuleID, :Email, :Url, :DataThreshold, :District, :Distance, :SignalStrength, :TagIDs, :SalePlan, :UinAccount

        def initialize(name=nil, type=nil, isactive=nil, notice=nil, ruleid=nil, email=nil, url=nil, datathreshold=nil, district=nil, distance=nil, signalstrength=nil, tagids=nil, saleplan=nil, uinaccount=nil)
          @Name = name
          @Type = type
          @IsActive = isactive
          @Notice = notice
          @RuleID = ruleid
          @Email = email
          @Url = url
          @DataThreshold = datathreshold
          @District = district
          @Distance = distance
          @SignalStrength = signalstrength
          @TagIDs = tagids
          @SalePlan = saleplan
          @UinAccount = uinaccount
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @IsActive = params['IsActive']
          @Notice = params['Notice']
          @RuleID = params['RuleID']
          @Email = params['Email']
          @Url = params['Url']
          @DataThreshold = params['DataThreshold']
          @District = params['District']
          @Distance = params['Distance']
          @SignalStrength = params['SignalStrength']
          @TagIDs = params['TagIDs']
          @SalePlan = params['SalePlan']
          @UinAccount = params['UinAccount']
        end
      end

      # ModifyRule返回参数结构体
      class ModifyRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRuleStatus请求参数结构体
      class ModifyRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param RuleID: 自动化规则ID
        # @type RuleID: Integer
        # @param IsActive: 是否激活
        # @type IsActive: Boolean

        attr_accessor :RuleID, :IsActive

        def initialize(ruleid=nil, isactive=nil)
          @RuleID = ruleid
          @IsActive = isactive
        end

        def deserialize(params)
          @RuleID = params['RuleID']
          @IsActive = params['IsActive']
        end
      end

      # ModifyRuleStatus返回参数结构体
      class ModifyRuleStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTactic请求参数结构体
      class ModifyTacticRequest < TencentCloud::Common::AbstractModel
        # @param Name: 策略名称
        # @type Name: String
        # @param IsAuto: 是否自动执行
        # @type IsAuto: Integer
        # @param PingInterval: 心跳上报间隔(s)
        # @type PingInterval: Integer
        # @param IsWeak: 是否开启弱信号检测
        # @type IsWeak: Integer
        # @param WeakThreshold: 弱信号阈值（-dbm）
        # @type WeakThreshold: Integer
        # @param IsDelay: 是否开启时延切换
        # @type IsDelay: Integer
        # @param DelayThreshold: 网络时延阈值（ms）
        # @type DelayThreshold: Integer
        # @param IsFake: 是否开启假信号检测
        # @type IsFake: Integer
        # @param FakeInterval: 假信号检测间隔（s）
        # @type FakeInterval: Integer
        # @param IsNet: 是否开启网络制式检测
        # @type IsNet: Integer
        # @param Network: 网络回落制式 1 2G、 2 3G 、 3 2/3G
        # @type Network: Integer
        # @param IsMove: 是否开启移动检测
        # @type IsMove: Integer
        # @param TacticID: 策略ID
        # @type TacticID: Integer
        # @param IsPriorityTele: 是否开启最优先运营商
        # @type IsPriorityTele: Integer
        # @param PriorityTele: 最优先运营商 1 移动、 2 联通、 3 电信 4 上次在线运营商
        # @type PriorityTele: Integer
        # @param IsBottomTele: 是否开启最不优先运营商
        # @type IsBottomTele: Integer
        # @param BottomTele: 最不优先运营商 1 移动、 2 联通、 3 电信
        # @type BottomTele: Integer
        # @param IsBestSignal: 是否最优先信号选取策略
        # @type IsBestSignal: Integer
        # @param FakeIP: 假信号检测IP字符串，用逗号分隔
        # @type FakeIP: String

        attr_accessor :Name, :IsAuto, :PingInterval, :IsWeak, :WeakThreshold, :IsDelay, :DelayThreshold, :IsFake, :FakeInterval, :IsNet, :Network, :IsMove, :TacticID, :IsPriorityTele, :PriorityTele, :IsBottomTele, :BottomTele, :IsBestSignal, :FakeIP

        def initialize(name=nil, isauto=nil, pinginterval=nil, isweak=nil, weakthreshold=nil, isdelay=nil, delaythreshold=nil, isfake=nil, fakeinterval=nil, isnet=nil, network=nil, ismove=nil, tacticid=nil, isprioritytele=nil, prioritytele=nil, isbottomtele=nil, bottomtele=nil, isbestsignal=nil, fakeip=nil)
          @Name = name
          @IsAuto = isauto
          @PingInterval = pinginterval
          @IsWeak = isweak
          @WeakThreshold = weakthreshold
          @IsDelay = isdelay
          @DelayThreshold = delaythreshold
          @IsFake = isfake
          @FakeInterval = fakeinterval
          @IsNet = isnet
          @Network = network
          @IsMove = ismove
          @TacticID = tacticid
          @IsPriorityTele = isprioritytele
          @PriorityTele = prioritytele
          @IsBottomTele = isbottomtele
          @BottomTele = bottomtele
          @IsBestSignal = isbestsignal
          @FakeIP = fakeip
        end

        def deserialize(params)
          @Name = params['Name']
          @IsAuto = params['IsAuto']
          @PingInterval = params['PingInterval']
          @IsWeak = params['IsWeak']
          @WeakThreshold = params['WeakThreshold']
          @IsDelay = params['IsDelay']
          @DelayThreshold = params['DelayThreshold']
          @IsFake = params['IsFake']
          @FakeInterval = params['FakeInterval']
          @IsNet = params['IsNet']
          @Network = params['Network']
          @IsMove = params['IsMove']
          @TacticID = params['TacticID']
          @IsPriorityTele = params['IsPriorityTele']
          @PriorityTele = params['PriorityTele']
          @IsBottomTele = params['IsBottomTele']
          @BottomTele = params['BottomTele']
          @IsBestSignal = params['IsBestSignal']
          @FakeIP = params['FakeIP']
        end
      end

      # ModifyTactic返回参数结构体
      class ModifyTacticResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTag请求参数结构体
      class ModifyTagRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param TagID: 标签ID
        # @type TagID: Integer
        # @param Comment: 备注
        # @type Comment: String

        attr_accessor :Name, :TagID, :Comment

        def initialize(name=nil, tagid=nil, comment=nil)
          @Name = name
          @TagID = tagid
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          @TagID = params['TagID']
          @Comment = params['Comment']
        end
      end

      # ModifyTag返回参数结构体
      class ModifyTagResponse < TencentCloud::Common::AbstractModel
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

      # 订单信息
      class OrderInfo < TencentCloud::Common::AbstractModel
        # @param DealName: 子订单ID
        # @type DealName: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param Uin: 订单账户
        # @type Uin: String
        # @param BuyNum: 购买数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuyNum: Integer
        # @param IndustryCode: 行业代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndustryCode: String
        # @param Address: 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param Contact: 联系人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Contact: String
        # @param Msisdn: 电话号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msisdn: String
        # @param Specification: 卡片规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Specification: String
        # @param Comment: 用户订单备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param BigDealId: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealId: String
        # @param AuditStatus: 审批状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditStatus: String
        # @param FlowStatus: 发货状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowStatus: String
        # @param Remark: 审批备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param RefundBigDealId: 退费订单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefundBigDealId: String

        attr_accessor :DealName, :CreatedAt, :Uin, :BuyNum, :IndustryCode, :Address, :Contact, :Msisdn, :Specification, :Comment, :BigDealId, :AuditStatus, :FlowStatus, :Remark, :RefundBigDealId

        def initialize(dealname=nil, createdat=nil, uin=nil, buynum=nil, industrycode=nil, address=nil, contact=nil, msisdn=nil, specification=nil, comment=nil, bigdealid=nil, auditstatus=nil, flowstatus=nil, remark=nil, refundbigdealid=nil)
          @DealName = dealname
          @CreatedAt = createdat
          @Uin = uin
          @BuyNum = buynum
          @IndustryCode = industrycode
          @Address = address
          @Contact = contact
          @Msisdn = msisdn
          @Specification = specification
          @Comment = comment
          @BigDealId = bigdealid
          @AuditStatus = auditstatus
          @FlowStatus = flowstatus
          @Remark = remark
          @RefundBigDealId = refundbigdealid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @CreatedAt = params['CreatedAt']
          @Uin = params['Uin']
          @BuyNum = params['BuyNum']
          @IndustryCode = params['IndustryCode']
          @Address = params['Address']
          @Contact = params['Contact']
          @Msisdn = params['Msisdn']
          @Specification = params['Specification']
          @Comment = params['Comment']
          @BigDealId = params['BigDealId']
          @AuditStatus = params['AuditStatus']
          @FlowStatus = params['FlowStatus']
          @Remark = params['Remark']
          @RefundBigDealId = params['RefundBigDealId']
        end
      end

      # 订单列表
      class Orders < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 订单集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :List

        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              orderinfo_tmp = OrderInfo.new
              orderinfo_tmp.deserialize(i)
              @List << orderinfo_tmp
            end
          end
        end
      end

      # RenewLinkInfo请求参数结构体
      class RenewLinkInfoRequest < TencentCloud::Common::AbstractModel
        # @param LinkID: 云兔ID
        # @type LinkID: Integer
        # @param UinAccount: 具体的账号
        # @type UinAccount: String

        attr_accessor :LinkID, :UinAccount

        def initialize(linkid=nil, uinaccount=nil)
          @LinkID = linkid
          @UinAccount = uinaccount
        end

        def deserialize(params)
          @LinkID = params['LinkID']
          @UinAccount = params['UinAccount']
        end
      end

      # RenewLinkInfo返回参数结构体
      class RenewLinkInfoResponse < TencentCloud::Common::AbstractModel
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

      # 自动化规则
      class Rule < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param ID: 规则ID
        # @type ID: Integer
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param DeletedAt: 删除时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletedAt: String
        # @param Type: 规则类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param IsActive: 是否激活
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsActive: Boolean
        # @param Notice: 触发动作：1 邮件 2 API请求 5 停卡 6 地图标识为盲点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notice: Integer
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Url: 回调API地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param DataThreshold: 用量类：用量阈值,单位MB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataThreshold: Integer
        # @param District: 行政区类型：1. 省份 2. 城市 3. 区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type District: Integer
        # @param Distance: 移动距离阈值，单位KM
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Distance: Integer
        # @param SignalStrength: 信号强度阈值(-dbm）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignalStrength: Integer
        # @param LostDay: 盲点阈值天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LostDay: Integer
        # @param TagIDs: 绑定的标签ID集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagIDs: Array
        # @param SalePlan: 绑定的资费计划
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalePlan: String

        attr_accessor :Name, :ID, :CreatedAt, :UpdatedAt, :DeletedAt, :Type, :IsActive, :Notice, :Email, :Url, :DataThreshold, :District, :Distance, :SignalStrength, :LostDay, :TagIDs, :SalePlan

        def initialize(name=nil, id=nil, createdat=nil, updatedat=nil, deletedat=nil, type=nil, isactive=nil, notice=nil, email=nil, url=nil, datathreshold=nil, district=nil, distance=nil, signalstrength=nil, lostday=nil, tagids=nil, saleplan=nil)
          @Name = name
          @ID = id
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @DeletedAt = deletedat
          @Type = type
          @IsActive = isactive
          @Notice = notice
          @Email = email
          @Url = url
          @DataThreshold = datathreshold
          @District = district
          @Distance = distance
          @SignalStrength = signalstrength
          @LostDay = lostday
          @TagIDs = tagids
          @SalePlan = saleplan
        end

        def deserialize(params)
          @Name = params['Name']
          @ID = params['ID']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @DeletedAt = params['DeletedAt']
          @Type = params['Type']
          @IsActive = params['IsActive']
          @Notice = params['Notice']
          @Email = params['Email']
          @Url = params['Url']
          @DataThreshold = params['DataThreshold']
          @District = params['District']
          @Distance = params['Distance']
          @SignalStrength = params['SignalStrength']
          @LostDay = params['LostDay']
          @TagIDs = params['TagIDs']
          @SalePlan = params['SalePlan']
        end
      end

      # 自动化规则详细信息
      class RuleDetail < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param ID: 规则ID
        # @type ID: Integer
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param DeletedAt: 删除时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletedAt: String
        # @param Type: 规则类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param IsActive: 是否激活
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsActive: Boolean
        # @param Notice: 触发动作：1 邮件 2 API请求 5 停卡 6 地图标识为盲点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notice: Integer
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Url: 回调API地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param DataThreshold: 用量类：用量阈值,单位MB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataThreshold: Integer
        # @param District: 行政区类型：1. 省份 2. 城市 3. 区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type District: Integer
        # @param Distance: 移动距离阈值，单位KM
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Distance: Integer
        # @param SignalStrength: 信号强度阈值(-dbm）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignalStrength: Integer
        # @param LostDay: 盲点阈值天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LostDay: Integer
        # @param TagIDs: 标签ID集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagIDs: Array
        # @param SalePlan: 资费信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalePlan: String

        attr_accessor :Name, :ID, :CreatedAt, :UpdatedAt, :DeletedAt, :Type, :IsActive, :Notice, :Email, :Url, :DataThreshold, :District, :Distance, :SignalStrength, :LostDay, :TagIDs, :SalePlan

        def initialize(name=nil, id=nil, createdat=nil, updatedat=nil, deletedat=nil, type=nil, isactive=nil, notice=nil, email=nil, url=nil, datathreshold=nil, district=nil, distance=nil, signalstrength=nil, lostday=nil, tagids=nil, saleplan=nil)
          @Name = name
          @ID = id
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @DeletedAt = deletedat
          @Type = type
          @IsActive = isactive
          @Notice = notice
          @Email = email
          @Url = url
          @DataThreshold = datathreshold
          @District = district
          @Distance = distance
          @SignalStrength = signalstrength
          @LostDay = lostday
          @TagIDs = tagids
          @SalePlan = saleplan
        end

        def deserialize(params)
          @Name = params['Name']
          @ID = params['ID']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @DeletedAt = params['DeletedAt']
          @Type = params['Type']
          @IsActive = params['IsActive']
          @Notice = params['Notice']
          @Email = params['Email']
          @Url = params['Url']
          @DataThreshold = params['DataThreshold']
          @District = params['District']
          @Distance = params['Distance']
          @SignalStrength = params['SignalStrength']
          @LostDay = params['LostDay']
          @TagIDs = params['TagIDs']
          @SalePlan = params['SalePlan']
        end
      end

      # 自动化规则集合
      class RuleInfos < TencentCloud::Common::AbstractModel
        # @param Total: 总量
        # @type Total: Integer
        # @param List: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :List

        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @List << rule_tmp
            end
          end
        end
      end

      # 策略信息
      class Tactic < TencentCloud::Common::AbstractModel
        # @param ID: 策略ID
        # @type ID: Integer
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param IsAuto: 是否自动执行策略
        # @type IsAuto: Integer
        # @param PingInterval: 设备上报信息间隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PingInterval: Integer
        # @param IsWeak: 是否开启弱信号检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWeak: Integer
        # @param WeakThreshold: 弱信号阈值（-dbm）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeakThreshold: Integer
        # @param IsDelay: 忘了时延切换
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDelay: Integer
        # @param DelayThreshold: 时延阈值（ms）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayThreshold: Integer
        # @param IsFake: 是否开启假信号检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFake: Integer
        # @param FakeIP: 假信号检测IP字符串，用逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeIP: String
        # @param FakeInterval: 假信号检测间隔（s）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeInterval: Integer
        # @param IsNet: 是否开启网络制式检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNet: Integer
        # @param Network: 网络回落制式 1: 2G、 2: 3G 、 3: 2/3G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Network: Integer
        # @param IsMove: 是否开启移动检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMove: Integer
        # @param Name: 策略名称
        # @type Name: String
        # @param IsPriorityTele: 是否开启最优先运营商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPriorityTele: Integer
        # @param PriorityTele: 最优先运营商 1 移动、 2 联通、 3 电信 4 上次在线运营商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriorityTele: Integer
        # @param IsBottomTele: 是否开启最不优先运营商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsBottomTele: Integer
        # @param BottomTele: 最不优先运营商 1 移动、 2 联通、 3 电信
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BottomTele: Integer
        # @param IsBestSignal: 是否开启最优先信号选取策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsBestSignal: Integer

        attr_accessor :ID, :CreatedAt, :IsAuto, :PingInterval, :IsWeak, :WeakThreshold, :IsDelay, :DelayThreshold, :IsFake, :FakeIP, :FakeInterval, :IsNet, :Network, :IsMove, :Name, :IsPriorityTele, :PriorityTele, :IsBottomTele, :BottomTele, :IsBestSignal

        def initialize(id=nil, createdat=nil, isauto=nil, pinginterval=nil, isweak=nil, weakthreshold=nil, isdelay=nil, delaythreshold=nil, isfake=nil, fakeip=nil, fakeinterval=nil, isnet=nil, network=nil, ismove=nil, name=nil, isprioritytele=nil, prioritytele=nil, isbottomtele=nil, bottomtele=nil, isbestsignal=nil)
          @ID = id
          @CreatedAt = createdat
          @IsAuto = isauto
          @PingInterval = pinginterval
          @IsWeak = isweak
          @WeakThreshold = weakthreshold
          @IsDelay = isdelay
          @DelayThreshold = delaythreshold
          @IsFake = isfake
          @FakeIP = fakeip
          @FakeInterval = fakeinterval
          @IsNet = isnet
          @Network = network
          @IsMove = ismove
          @Name = name
          @IsPriorityTele = isprioritytele
          @PriorityTele = prioritytele
          @IsBottomTele = isbottomtele
          @BottomTele = bottomtele
          @IsBestSignal = isbestsignal
        end

        def deserialize(params)
          @ID = params['ID']
          @CreatedAt = params['CreatedAt']
          @IsAuto = params['IsAuto']
          @PingInterval = params['PingInterval']
          @IsWeak = params['IsWeak']
          @WeakThreshold = params['WeakThreshold']
          @IsDelay = params['IsDelay']
          @DelayThreshold = params['DelayThreshold']
          @IsFake = params['IsFake']
          @FakeIP = params['FakeIP']
          @FakeInterval = params['FakeInterval']
          @IsNet = params['IsNet']
          @Network = params['Network']
          @IsMove = params['IsMove']
          @Name = params['Name']
          @IsPriorityTele = params['IsPriorityTele']
          @PriorityTele = params['PriorityTele']
          @IsBottomTele = params['IsBottomTele']
          @BottomTele = params['BottomTele']
          @IsBestSignal = params['IsBestSignal']
        end
      end

      # 策略信息集合
      class TacticInfos < TencentCloud::Common::AbstractModel
        # @param Total: 总量
        # @type Total: Integer
        # @param List: 策略列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :List

        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              tactic_tmp = Tactic.new
              tactic_tmp.deserialize(i)
              @List << tactic_tmp
            end
          end
        end
      end

      # 云兔标签信息
      class Tag < TencentCloud::Common::AbstractModel
        # @param Name: 标签名称
        # @type Name: String
        # @param ID: 标签ID
        # @type ID: Integer
        # @param Comment: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String

        attr_accessor :Name, :ID, :Comment, :CreatedAt, :UpdatedAt

        def initialize(name=nil, id=nil, comment=nil, createdat=nil, updatedat=nil)
          @Name = name
          @ID = id
          @Comment = comment
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @Name = params['Name']
          @ID = params['ID']
          @Comment = params['Comment']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 标签列表集合
      class TagInfos < TencentCloud::Common::AbstractModel
        # @param Total: 总量
        # @type Total: Integer
        # @param List: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :List

        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @List << tag_tmp
            end
          end
        end
      end

      # 运营商卡片信息
      class TeleOperatorCard < TencentCloud::Common::AbstractModel
        # @param AccountTime: 开户时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountTime: String
        # @param ActiveTime: 激活时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveTime: String
        # @param ICCID: 运营商ICCID
        # @type ICCID: String
        # @param LinkID: 云兔卡ID
        # @type LinkID: Integer
        # @param Msisdn: 电话号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msisdn: String
        # @param IMSI: 移动用户识别码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IMSI: String
        # @param TeleOperator: 运营商: 1 移动 2 联通 3 电信
        # @type TeleOperator: Integer

        attr_accessor :AccountTime, :ActiveTime, :ICCID, :LinkID, :Msisdn, :IMSI, :TeleOperator

        def initialize(accounttime=nil, activetime=nil, iccid=nil, linkid=nil, msisdn=nil, imsi=nil, teleoperator=nil)
          @AccountTime = accounttime
          @ActiveTime = activetime
          @ICCID = iccid
          @LinkID = linkid
          @Msisdn = msisdn
          @IMSI = imsi
          @TeleOperator = teleoperator
        end

        def deserialize(params)
          @AccountTime = params['AccountTime']
          @ActiveTime = params['ActiveTime']
          @ICCID = params['ICCID']
          @LinkID = params['LinkID']
          @Msisdn = params['Msisdn']
          @IMSI = params['IMSI']
          @TeleOperator = params['TeleOperator']
        end
      end

    end
  end
end

