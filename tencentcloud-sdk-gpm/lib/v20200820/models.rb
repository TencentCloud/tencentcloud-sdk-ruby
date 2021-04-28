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
  module Gpm
    module V20200820
      # 玩家属性字典类型值
      class AttributeMap < TencentCloud::Common::AbstractModel
        # @param Key: 属性字典 key [a-zA-Z0-9-\.]*
        # @type Key: String
        # @param Value: 属性字典 value
        # @type Value: Integer

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

      # CancelMatching请求参数结构体
      class CancelMatchingRequest < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配 Code
        # @type MatchCode: String
        # @param MatchTicketId: 要取消的匹配匹配票据 ID
        # @type MatchTicketId: String

        attr_accessor :MatchCode, :MatchTicketId
        
        def initialize(matchcode=nil, matchticketid=nil)
          @MatchCode = matchcode
          @MatchTicketId = matchticketid
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
          @MatchTicketId = params['MatchTicketId']
        end
      end

      # CancelMatching返回参数结构体
      class CancelMatchingResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码
        # @type ErrCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :RequestId
        
        def initialize(errcode=nil, requestid=nil)
          @ErrCode = errcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @RequestId = params['RequestId']
        end
      end

      # CreateMatch请求参数结构体
      class CreateMatchRequest < TencentCloud::Common::AbstractModel
        # @param MatchName: 匹配名称，[a-zA-Z0-9-\.]* 长度128
        # @type MatchName: String
        # @param RuleCode: 规则code
        # @type RuleCode: String
        # @param Timeout: 超时时间，1-600秒
        # @type Timeout: Integer
        # @param ServerType: 是否为匹配结果请求服务器资源，0表示否，1表示请求GSE资源
        # @type ServerType: Integer
        # @param MatchDesc: 匹配描述，最长1024
        # @type MatchDesc: String
        # @param NotifyUrl: 只支持https 和 http 协议
        # @type NotifyUrl: String
        # @param ServerRegion: 游戏服务器队列地域
        # @type ServerRegion: String
        # @param ServerQueue: 游戏服务器队列
        # @type ServerQueue: String
        # @param CustomPushData: 自定义推送数据
        # @type CustomPushData: String
        # @param ServerSessionData: 游戏服务器会话数据
        # @type ServerSessionData: String
        # @param GameProperties: 游戏属性，key-value结构的数组
        # @type GameProperties: Array
        # @param LogSwitch: 日志开关，0表示关，1表示开
        # @type LogSwitch: Integer
        # @param Tags: 标签，key-value结构的数组
        # @type Tags: Array

        attr_accessor :MatchName, :RuleCode, :Timeout, :ServerType, :MatchDesc, :NotifyUrl, :ServerRegion, :ServerQueue, :CustomPushData, :ServerSessionData, :GameProperties, :LogSwitch, :Tags
        
        def initialize(matchname=nil, rulecode=nil, timeout=nil, servertype=nil, matchdesc=nil, notifyurl=nil, serverregion=nil, serverqueue=nil, custompushdata=nil, serversessiondata=nil, gameproperties=nil, logswitch=nil, tags=nil)
          @MatchName = matchname
          @RuleCode = rulecode
          @Timeout = timeout
          @ServerType = servertype
          @MatchDesc = matchdesc
          @NotifyUrl = notifyurl
          @ServerRegion = serverregion
          @ServerQueue = serverqueue
          @CustomPushData = custompushdata
          @ServerSessionData = serversessiondata
          @GameProperties = gameproperties
          @LogSwitch = logswitch
          @Tags = tags
        end

        def deserialize(params)
          @MatchName = params['MatchName']
          @RuleCode = params['RuleCode']
          @Timeout = params['Timeout']
          @ServerType = params['ServerType']
          @MatchDesc = params['MatchDesc']
          @NotifyUrl = params['NotifyUrl']
          @ServerRegion = params['ServerRegion']
          @ServerQueue = params['ServerQueue']
          @CustomPushData = params['CustomPushData']
          @ServerSessionData = params['ServerSessionData']
          unless params['GameProperties'].nil?
            @GameProperties = []
            params['GameProperties'].each do |i|
              @GameProperties << StringKV.new.deserialize(i)
            end
          end
          @LogSwitch = params['LogSwitch']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << StringKV.new.deserialize(i)
            end
          end
        end
      end

      # CreateMatch返回参数结构体
      class CreateMatchResponse < TencentCloud::Common::AbstractModel
        # @param MatchInfo: 匹配信息
        # @type MatchInfo: :class:`Tencentcloud::Gpm.v20200820.models.MatchInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchInfo, :RequestId
        
        def initialize(matchinfo=nil, requestid=nil)
          @MatchInfo = matchinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MatchInfo'].nil?
            @MatchInfo = MatchInfo.new.deserialize(params['MatchInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRule请求参数结构体
      class CreateRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称，[a-zA-Z0-9-\.]* 长度128
        # @type RuleName: String
        # @param RuleScript: 规则脚本，长度65535
        # @type RuleScript: String
        # @param RuleDesc: 规则描述，最长1024
        # @type RuleDesc: String
        # @param Tags: 标签，key-value结构的数组，最多关联50组标签
        # @type Tags: Array

        attr_accessor :RuleName, :RuleScript, :RuleDesc, :Tags
        
        def initialize(rulename=nil, rulescript=nil, ruledesc=nil, tags=nil)
          @RuleName = rulename
          @RuleScript = rulescript
          @RuleDesc = ruledesc
          @Tags = tags
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @RuleScript = params['RuleScript']
          @RuleDesc = params['RuleDesc']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << StringKV.new.deserialize(i)
            end
          end
        end
      end

      # CreateRule返回参数结构体
      class CreateRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleInfo: 规则信息
        # @type RuleInfo: :class:`Tencentcloud::Gpm.v20200820.models.RuleInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleInfo, :RequestId
        
        def initialize(ruleinfo=nil, requestid=nil)
          @RuleInfo = ruleinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleInfo'].nil?
            @RuleInfo = RuleInfo.new.deserialize(params['RuleInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteMatch请求参数结构体
      class DeleteMatchRequest < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配code
        # @type MatchCode: String

        attr_accessor :MatchCode
        
        def initialize(matchcode=nil)
          @MatchCode = matchcode
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
        end
      end

      # DeleteMatch返回参数结构体
      class DeleteMatchResponse < TencentCloud::Common::AbstractModel
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
        # @param RuleCode: 规则code
        # @type RuleCode: String

        attr_accessor :RuleCode
        
        def initialize(rulecode=nil)
          @RuleCode = rulecode
        end

        def deserialize(params)
          @RuleCode = params['RuleCode']
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

      # DescribeData请求参数结构体
      class DescribeDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间，单位：秒
        # @type StartTime: Integer
        # @param EndTime: 截止时间，单位：秒
        # @type EndTime: Integer
        # @param TimeType: 时间粒度，1表示1天；2表示1小时；3表示1分钟；4表示10分钟；5表示30分钟
        # @type TimeType: Integer
        # @param MatchCode: 匹配code
        # @type MatchCode: String

        attr_accessor :StartTime, :EndTime, :TimeType, :MatchCode
        
        def initialize(starttime=nil, endtime=nil, timetype=nil, matchcode=nil)
          @StartTime = starttime
          @EndTime = endtime
          @TimeType = timetype
          @MatchCode = matchcode
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TimeType = params['TimeType']
          @MatchCode = params['MatchCode']
        end
      end

      # DescribeData返回参数结构体
      class DescribeDataResponse < TencentCloud::Common::AbstractModel
        # @param OverviewData: 匹配概况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverviewData: :class:`Tencentcloud::Gpm.v20200820.models.ReportOverviewData`
        # @param TrendData: 匹配请求次数趋势数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrendData: :class:`Tencentcloud::Gpm.v20200820.models.ReportTrendData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OverviewData, :TrendData, :RequestId
        
        def initialize(overviewdata=nil, trenddata=nil, requestid=nil)
          @OverviewData = overviewdata
          @TrendData = trenddata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OverviewData'].nil?
            @OverviewData = ReportOverviewData.new.deserialize(params['OverviewData'])
          end
          unless params['TrendData'].nil?
            @TrendData = ReportTrendData.new.deserialize(params['TrendData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMatchCodes请求参数结构体
      class DescribeMatchCodesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，页码
        # @type Offset: Integer
        # @param Limit: 每页数量
        # @type Limit: Integer
        # @param MatchCode: 搜索的字符串
        # @type MatchCode: String

        attr_accessor :Offset, :Limit, :MatchCode
        
        def initialize(offset=nil, limit=nil, matchcode=nil)
          @Offset = offset
          @Limit = limit
          @MatchCode = matchcode
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @MatchCode = params['MatchCode']
        end
      end

      # DescribeMatchCodes返回参数结构体
      class DescribeMatchCodesResponse < TencentCloud::Common::AbstractModel
        # @param MatchCodes: 匹配Code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchCodes: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchCodes, :TotalCount, :RequestId
        
        def initialize(matchcodes=nil, totalcount=nil, requestid=nil)
          @MatchCodes = matchcodes
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MatchCodes'].nil?
            @MatchCodes = []
            params['MatchCodes'].each do |i|
              @MatchCodes << MatchCodeAttr.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMatch请求参数结构体
      class DescribeMatchRequest < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配code
        # @type MatchCode: String

        attr_accessor :MatchCode
        
        def initialize(matchcode=nil)
          @MatchCode = matchcode
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
        end
      end

      # DescribeMatch返回参数结构体
      class DescribeMatchResponse < TencentCloud::Common::AbstractModel
        # @param MatchInfo: 匹配信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchInfo: :class:`Tencentcloud::Gpm.v20200820.models.MatchInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchInfo, :RequestId
        
        def initialize(matchinfo=nil, requestid=nil)
          @MatchInfo = matchinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MatchInfo'].nil?
            @MatchInfo = MatchInfo.new.deserialize(params['MatchInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMatches请求参数结构体
      class DescribeMatchesRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页号，不传则获取所有有权限的资源。
        # @type PageNumber: Integer
        # @param PageSize: 单页大小，不传则获取所有有权限的资源。
        # @type PageSize: Integer
        # @param SearchType: 查询类型（可选）：match表示通过matchCode或者matchName来搜索，rule表示通过ruleCode或者ruleName来搜索，其余类型不做过滤处理。
        # @type SearchType: String
        # @param Keyword: 查询关键词，针对SearchType进行具体过滤的内容。
        # @type Keyword: String
        # @param Tags: 标签列表，用于过滤。
        # @type Tags: Array

        attr_accessor :PageNumber, :PageSize, :SearchType, :Keyword, :Tags
        
        def initialize(pagenumber=nil, pagesize=nil, searchtype=nil, keyword=nil, tags=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SearchType = searchtype
          @Keyword = keyword
          @Tags = tags
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SearchType = params['SearchType']
          @Keyword = params['Keyword']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
        end
      end

      # DescribeMatches返回参数结构体
      class DescribeMatchesResponse < TencentCloud::Common::AbstractModel
        # @param MatchInfoList: 匹配信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchInfoList: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param PageNumber: 当前页号，不填默认返回第一页
        # @type PageNumber: Integer
        # @param PageSize: 单页大小，不填默认取 30，最大值不能超过 30
        # @type PageSize: Integer
        # @param SearchType: 查询类型（可选）：matchName表示匹配名称，matchCode表示匹配code，ruleName表示规则名称，tag表示标签Key/Value
        # @type SearchType: String
        # @param Keyword: 查询关键词（可选）
        # @type Keyword: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchInfoList, :TotalCount, :PageNumber, :PageSize, :SearchType, :Keyword, :RequestId
        
        def initialize(matchinfolist=nil, totalcount=nil, pagenumber=nil, pagesize=nil, searchtype=nil, keyword=nil, requestid=nil)
          @MatchInfoList = matchinfolist
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SearchType = searchtype
          @Keyword = keyword
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MatchInfoList'].nil?
            @MatchInfoList = []
            params['MatchInfoList'].each do |i|
              @MatchInfoList << MatchInfo.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SearchType = params['SearchType']
          @Keyword = params['Keyword']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMatchingProgress请求参数结构体
      class DescribeMatchingProgressRequest < TencentCloud::Common::AbstractModel
        # @param MatchTicketIds: 匹配票据 ID列表, 列表长度 12。
        # @type MatchTicketIds: Array

        attr_accessor :MatchTicketIds
        
        def initialize(matchticketids=nil)
          @MatchTicketIds = matchticketids
        end

        def deserialize(params)
          unless params['MatchTicketIds'].nil?
            @MatchTicketIds = []
            params['MatchTicketIds'].each do |i|
              @MatchTicketIds << MTicket.new.deserialize(i)
            end
          end
        end
      end

      # DescribeMatchingProgress返回参数结构体
      class DescribeMatchingProgressResponse < TencentCloud::Common::AbstractModel
        # @param MatchTickets: 匹配票据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchTickets: Array
        # @param ErrCode: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchTickets, :ErrCode, :RequestId
        
        def initialize(matchtickets=nil, errcode=nil, requestid=nil)
          @MatchTickets = matchtickets
          @ErrCode = errcode
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MatchTickets'].nil?
            @MatchTickets = []
            params['MatchTickets'].each do |i|
              @MatchTickets << MatchTicket.new.deserialize(i)
            end
          end
          @ErrCode = params['ErrCode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRule请求参数结构体
      class DescribeRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleCode: 规则code
        # @type RuleCode: String

        attr_accessor :RuleCode
        
        def initialize(rulecode=nil)
          @RuleCode = rulecode
        end

        def deserialize(params)
          @RuleCode = params['RuleCode']
        end
      end

      # DescribeRule返回参数结构体
      class DescribeRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleInfo: 规则信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleInfo: :class:`Tencentcloud::Gpm.v20200820.models.RuleInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleInfo, :RequestId
        
        def initialize(ruleinfo=nil, requestid=nil)
          @RuleInfo = ruleinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleInfo'].nil?
            @RuleInfo = RuleInfo.new.deserialize(params['RuleInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRules请求参数结构体
      class DescribeRulesRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页号，不传则返回第一页
        # @type PageNumber: Integer
        # @param PageSize: 单页大小，最大 30，不填默认30
        # @type PageSize: Integer
        # @param SearchType: 查询类型（可选）：match表示通过matchCode或者matchName来搜索，rule表示通过ruleCode或者ruleName来搜索，其余类型不做过滤处理。
        # @type SearchType: String
        # @param Keyword: 查询关键词，针对SearchType进行具体过滤的内容。
        # @type Keyword: String
        # @param Tags: 标签列表，用于过滤。
        # @type Tags: Array

        attr_accessor :PageNumber, :PageSize, :SearchType, :Keyword, :Tags
        
        def initialize(pagenumber=nil, pagesize=nil, searchtype=nil, keyword=nil, tags=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SearchType = searchtype
          @Keyword = keyword
          @Tags = tags
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SearchType = params['SearchType']
          @Keyword = params['Keyword']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
        end
      end

      # DescribeRules返回参数结构体
      class DescribeRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleInfoList: 规则信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleInfoList: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param PageNumber: 当前页号
        # @type PageNumber: Integer
        # @param PageSize: 单页大小
        # @type PageSize: Integer
        # @param SearchType: 查询类型（可选）matchName表示匹配名称，matchCode表示匹配code，ruleName表示规则名称，tag表示标签Key/Value
        # @type SearchType: String
        # @param Keyword: 查询关键词（可选）
        # @type Keyword: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleInfoList, :TotalCount, :PageNumber, :PageSize, :SearchType, :Keyword, :RequestId
        
        def initialize(ruleinfolist=nil, totalcount=nil, pagenumber=nil, pagesize=nil, searchtype=nil, keyword=nil, requestid=nil)
          @RuleInfoList = ruleinfolist
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SearchType = searchtype
          @Keyword = keyword
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleInfoList'].nil?
            @RuleInfoList = []
            params['RuleInfoList'].each do |i|
              @RuleInfoList << RuleBriefInfo.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SearchType = params['SearchType']
          @Keyword = params['Keyword']
          @RequestId = params['RequestId']
        end
      end

      # DescribeToken请求参数结构体
      class DescribeTokenRequest < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配code
        # @type MatchCode: String

        attr_accessor :MatchCode
        
        def initialize(matchcode=nil)
          @MatchCode = matchcode
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
        end
      end

      # DescribeToken返回参数结构体
      class DescribeTokenResponse < TencentCloud::Common::AbstractModel
        # @param MatchToken: 当前的MatchCode对应的Token。如果当前MatchCode没有Token，该参数可能取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchToken: String
        # @param CompatibleSpan: 当Token被替换后，GPM将兼容推送原始Token的时间（秒）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompatibleSpan: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchToken, :CompatibleSpan, :RequestId
        
        def initialize(matchtoken=nil, compatiblespan=nil, requestid=nil)
          @MatchToken = matchtoken
          @CompatibleSpan = compatiblespan
          @RequestId = requestid
        end

        def deserialize(params)
          @MatchToken = params['MatchToken']
          @CompatibleSpan = params['CompatibleSpan']
          @RequestId = params['RequestId']
        end
      end

      # matchCode和匹配票据 ID组合结构
      class MTicket < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配Code
        # @type MatchCode: String
        # @param MatchTicketId: 匹配票据 ID
        # @type MatchTicketId: String

        attr_accessor :MatchCode, :MatchTicketId
        
        def initialize(matchcode=nil, matchticketid=nil)
          @MatchCode = matchcode
          @MatchTicketId = matchticketid
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
          @MatchTicketId = params['MatchTicketId']
        end
      end

      # 玩家匹配属性
      class MatchAttribute < TencentCloud::Common::AbstractModel
        # @param Name: 属性名 长度 128 [a-zA-Z0-9-\.]*
        # @type Name: String
        # @param Type: 属性类型: 0 数值; 1 string; 默认 0
        # @type Type: Integer
        # @param NumberValue: 数字属性值 默认 0.0
        # @type NumberValue: Float
        # @param StringValue: 字符串属性值 长度 128 默认 ""
        # @type StringValue: String
        # @param ListValue: list 属性值
        # @type ListValue: Array
        # @param MapValue: 字典属性值
        # @type MapValue: Array

        attr_accessor :Name, :Type, :NumberValue, :StringValue, :ListValue, :MapValue
        
        def initialize(name=nil, type=nil, numbervalue=nil, stringvalue=nil, listvalue=nil, mapvalue=nil)
          @Name = name
          @Type = type
          @NumberValue = numbervalue
          @StringValue = stringvalue
          @ListValue = listvalue
          @MapValue = mapvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @NumberValue = params['NumberValue']
          @StringValue = params['StringValue']
          @ListValue = params['ListValue']
          unless params['MapValue'].nil?
            @MapValue = []
            params['MapValue'].each do |i|
              @MapValue << AttributeMap.new.deserialize(i)
            end
          end
        end
      end

      # 匹配code
      class MatchCodeAttr < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchCode: String

        attr_accessor :MatchCode
        
        def initialize(matchcode=nil)
          @MatchCode = matchcode
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
        end
      end

      # 匹配信息
      class MatchInfo < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配code
        # @type MatchCode: String
        # @param MatchName: 匹配名称
        # @type MatchName: String
        # @param MatchDesc: 匹配描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchDesc: String
        # @param RuleCode: 规则code
        # @type RuleCode: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Timeout: 超时时间
        # @type Timeout: Integer
        # @param NotifyUrl: 接收通知地址
        # @type NotifyUrl: String
        # @param ServerType: 是否为匹配结果请求服务器资源，0否，1请求GSE资源
        # @type ServerType: Integer
        # @param ServerRegion: 服务器队列所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerRegion: String
        # @param ServerQueue: 服务器队列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerQueue: String
        # @param CustomPushData: 自定义推送数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomPushData: String
        # @param ServerSessionData: 游戏服务器会话数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerSessionData: String
        # @param GameProperties: 游戏属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameProperties: Array
        # @param LogSwitch: 日志开关，0表示关，1表示开
        # @type LogSwitch: Integer
        # @param LogsetId: 日志集id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetId: String
        # @param LogsetName: 日志集名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetName: String
        # @param LogTopicId: 日志主题id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTopicId: String
        # @param LogTopicName: 日志主题名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTopicName: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Region: 地区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param AppId: 用户AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param Uin: 用户主账号Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param CreateUin: 用户创建账号Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: String
        # @param RuleName: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param LogStatus: 日志状态，0表示正常，1表示日志集不存在，2表示日志主题不存在，3表示日志集和日志主题都不存在。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogStatus: Integer

        attr_accessor :MatchCode, :MatchName, :MatchDesc, :RuleCode, :CreateTime, :Timeout, :NotifyUrl, :ServerType, :ServerRegion, :ServerQueue, :CustomPushData, :ServerSessionData, :GameProperties, :LogSwitch, :LogsetId, :LogsetName, :LogTopicId, :LogTopicName, :Tags, :Region, :AppId, :Uin, :CreateUin, :RuleName, :LogStatus
        
        def initialize(matchcode=nil, matchname=nil, matchdesc=nil, rulecode=nil, createtime=nil, timeout=nil, notifyurl=nil, servertype=nil, serverregion=nil, serverqueue=nil, custompushdata=nil, serversessiondata=nil, gameproperties=nil, logswitch=nil, logsetid=nil, logsetname=nil, logtopicid=nil, logtopicname=nil, tags=nil, region=nil, appid=nil, uin=nil, createuin=nil, rulename=nil, logstatus=nil)
          @MatchCode = matchcode
          @MatchName = matchname
          @MatchDesc = matchdesc
          @RuleCode = rulecode
          @CreateTime = createtime
          @Timeout = timeout
          @NotifyUrl = notifyurl
          @ServerType = servertype
          @ServerRegion = serverregion
          @ServerQueue = serverqueue
          @CustomPushData = custompushdata
          @ServerSessionData = serversessiondata
          @GameProperties = gameproperties
          @LogSwitch = logswitch
          @LogsetId = logsetid
          @LogsetName = logsetname
          @LogTopicId = logtopicid
          @LogTopicName = logtopicname
          @Tags = tags
          @Region = region
          @AppId = appid
          @Uin = uin
          @CreateUin = createuin
          @RuleName = rulename
          @LogStatus = logstatus
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
          @MatchName = params['MatchName']
          @MatchDesc = params['MatchDesc']
          @RuleCode = params['RuleCode']
          @CreateTime = params['CreateTime']
          @Timeout = params['Timeout']
          @NotifyUrl = params['NotifyUrl']
          @ServerType = params['ServerType']
          @ServerRegion = params['ServerRegion']
          @ServerQueue = params['ServerQueue']
          @CustomPushData = params['CustomPushData']
          @ServerSessionData = params['ServerSessionData']
          unless params['GameProperties'].nil?
            @GameProperties = []
            params['GameProperties'].each do |i|
              @GameProperties << StringKV.new.deserialize(i)
            end
          end
          @LogSwitch = params['LogSwitch']
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
          @LogTopicId = params['LogTopicId']
          @LogTopicName = params['LogTopicName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << StringKV.new.deserialize(i)
            end
          end
          @Region = params['Region']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @CreateUin = params['CreateUin']
          @RuleName = params['RuleName']
          @LogStatus = params['LogStatus']
        end
      end

      # 匹配票据信息
      class MatchTicket < TencentCloud::Common::AbstractModel
        # @param Id: 匹配票据 ID长度 128 [a-zA-Z0-9-\.]*
        # @type Id: String
        # @param MatchCode: 匹配 Code
        # @type MatchCode: String
        # @param MatchResult: 根据 MatchType 取不同的结构序列化结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchResult: String
        # @param MatchType: 表示不同的匹配类型,NORMAL | GSE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchType: String
        # @param Players: 玩家信息列表
        # @type Players: Array
        # @param Status: 匹配状态: SEARCHING 匹配中; PLACING 匹配放置中; COMPLETED 匹配完成; CANCELLED 匹配取消; TIMEDOUT 匹配超时; FAILED 匹配失败
        # @type Status: String
        # @param StatusMessage: 匹配状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMessage: String
        # @param StatusReason: 匹配状态原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusReason: String
        # @param StartTime: 收到发起匹配请求的时间 eg: "2020-08-17T08:14:38.077Z"
        # @type StartTime: String
        # @param EndTime: 匹配请求因完成、失败、超时、被取消而停止执行的时间 eg: "2020-08-17T08:14:38.077Z"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :Id, :MatchCode, :MatchResult, :MatchType, :Players, :Status, :StatusMessage, :StatusReason, :StartTime, :EndTime
        
        def initialize(id=nil, matchcode=nil, matchresult=nil, matchtype=nil, players=nil, status=nil, statusmessage=nil, statusreason=nil, starttime=nil, endtime=nil)
          @Id = id
          @MatchCode = matchcode
          @MatchResult = matchresult
          @MatchType = matchtype
          @Players = players
          @Status = status
          @StatusMessage = statusmessage
          @StatusReason = statusreason
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Id = params['Id']
          @MatchCode = params['MatchCode']
          @MatchResult = params['MatchResult']
          @MatchType = params['MatchType']
          unless params['Players'].nil?
            @Players = []
            params['Players'].each do |i|
              @Players << Player.new.deserialize(i)
            end
          end
          @Status = params['Status']
          @StatusMessage = params['StatusMessage']
          @StatusReason = params['StatusReason']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ModifyMatch请求参数结构体
      class ModifyMatchRequest < TencentCloud::Common::AbstractModel
        # @param MatchName: 匹配名称，[a-zA-Z0-9-\.]* 长度128
        # @type MatchName: String
        # @param RuleCode: 规则code
        # @type RuleCode: String
        # @param Timeout: 超时时间，1-600秒
        # @type Timeout: Integer
        # @param ServerType: 是否为匹配结果请求服务器资源，0表示否，1表示请求GSE资源
        # @type ServerType: Integer
        # @param MatchCode: 匹配code
        # @type MatchCode: String
        # @param MatchDesc: 匹配描述，最长1024
        # @type MatchDesc: String
        # @param NotifyUrl: 只支持 http 和 https 协议
        # @type NotifyUrl: String
        # @param ServerRegion: 游戏服务器队列地域
        # @type ServerRegion: String
        # @param ServerQueue: 游戏服务器队列
        # @type ServerQueue: String
        # @param CustomPushData: 自定义推送数据
        # @type CustomPushData: String
        # @param ServerSessionData: 游戏服务器会话数据
        # @type ServerSessionData: String
        # @param GameProperties: 游戏属性，key-value结构的数组
        # @type GameProperties: Array
        # @param LogSwitch: 日志开关，0表示关，1表示开
        # @type LogSwitch: Integer
        # @param Tags: 标签，key-value结构的数组
        # @type Tags: Array

        attr_accessor :MatchName, :RuleCode, :Timeout, :ServerType, :MatchCode, :MatchDesc, :NotifyUrl, :ServerRegion, :ServerQueue, :CustomPushData, :ServerSessionData, :GameProperties, :LogSwitch, :Tags
        
        def initialize(matchname=nil, rulecode=nil, timeout=nil, servertype=nil, matchcode=nil, matchdesc=nil, notifyurl=nil, serverregion=nil, serverqueue=nil, custompushdata=nil, serversessiondata=nil, gameproperties=nil, logswitch=nil, tags=nil)
          @MatchName = matchname
          @RuleCode = rulecode
          @Timeout = timeout
          @ServerType = servertype
          @MatchCode = matchcode
          @MatchDesc = matchdesc
          @NotifyUrl = notifyurl
          @ServerRegion = serverregion
          @ServerQueue = serverqueue
          @CustomPushData = custompushdata
          @ServerSessionData = serversessiondata
          @GameProperties = gameproperties
          @LogSwitch = logswitch
          @Tags = tags
        end

        def deserialize(params)
          @MatchName = params['MatchName']
          @RuleCode = params['RuleCode']
          @Timeout = params['Timeout']
          @ServerType = params['ServerType']
          @MatchCode = params['MatchCode']
          @MatchDesc = params['MatchDesc']
          @NotifyUrl = params['NotifyUrl']
          @ServerRegion = params['ServerRegion']
          @ServerQueue = params['ServerQueue']
          @CustomPushData = params['CustomPushData']
          @ServerSessionData = params['ServerSessionData']
          unless params['GameProperties'].nil?
            @GameProperties = []
            params['GameProperties'].each do |i|
              @GameProperties << StringKV.new.deserialize(i)
            end
          end
          @LogSwitch = params['LogSwitch']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << StringKV.new.deserialize(i)
            end
          end
        end
      end

      # ModifyMatch返回参数结构体
      class ModifyMatchResponse < TencentCloud::Common::AbstractModel
        # @param MatchInfo: 匹配信息
        # @type MatchInfo: :class:`Tencentcloud::Gpm.v20200820.models.MatchInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchInfo, :RequestId
        
        def initialize(matchinfo=nil, requestid=nil)
          @MatchInfo = matchinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MatchInfo'].nil?
            @MatchInfo = MatchInfo.new.deserialize(params['MatchInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyRule请求参数结构体
      class ModifyRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleCode: 规则code
        # @type RuleCode: String
        # @param RuleName: 规则名称，只能包含数字、字母、. 和 -
        # @type RuleName: String
        # @param RuleDesc: 规则描述，最长1024
        # @type RuleDesc: String
        # @param Tags: 标签，key-value结构的数组，最多关联50组标签
        # @type Tags: Array

        attr_accessor :RuleCode, :RuleName, :RuleDesc, :Tags
        
        def initialize(rulecode=nil, rulename=nil, ruledesc=nil, tags=nil)
          @RuleCode = rulecode
          @RuleName = rulename
          @RuleDesc = ruledesc
          @Tags = tags
        end

        def deserialize(params)
          @RuleCode = params['RuleCode']
          @RuleName = params['RuleName']
          @RuleDesc = params['RuleDesc']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << StringKV.new.deserialize(i)
            end
          end
        end
      end

      # ModifyRule返回参数结构体
      class ModifyRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleInfo: 规则信息
        # @type RuleInfo: :class:`Tencentcloud::Gpm.v20200820.models.RuleInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleInfo, :RequestId
        
        def initialize(ruleinfo=nil, requestid=nil)
          @RuleInfo = ruleinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleInfo'].nil?
            @RuleInfo = RuleInfo.new.deserialize(params['RuleInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyToken请求参数结构体
      class ModifyTokenRequest < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配Code。
        # @type MatchCode: String
        # @param CompatibleSpan: 单位秒，取值0-1800。此参数表示当前Token被替换后，GPM将持续推送原Token的时间。在CompatibleSpan时间范围内，用户将在事件消息中收到当前和原始Token。
        # @type CompatibleSpan: Integer
        # @param MatchToken: Token，[a-zA-Z0-9-_.], 长度0-64。如果为空，将由GPM随机生成。
        # @type MatchToken: String

        attr_accessor :MatchCode, :CompatibleSpan, :MatchToken
        
        def initialize(matchcode=nil, compatiblespan=nil, matchtoken=nil)
          @MatchCode = matchcode
          @CompatibleSpan = compatiblespan
          @MatchToken = matchtoken
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
          @CompatibleSpan = params['CompatibleSpan']
          @MatchToken = params['MatchToken']
        end
      end

      # ModifyToken返回参数结构体
      class ModifyTokenResponse < TencentCloud::Common::AbstractModel
        # @param MatchToken: 成功设置的Token。
        # @type MatchToken: String
        # @param CompatibleSpan: 当前Token被替换后，GPM将持续推送原Token的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompatibleSpan: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchToken, :CompatibleSpan, :RequestId
        
        def initialize(matchtoken=nil, compatiblespan=nil, requestid=nil)
          @MatchToken = matchtoken
          @CompatibleSpan = compatiblespan
          @RequestId = requestid
        end

        def deserialize(params)
          @MatchToken = params['MatchToken']
          @CompatibleSpan = params['CompatibleSpan']
          @RequestId = params['RequestId']
        end
      end

      # 玩家信息。
      class Player < TencentCloud::Common::AbstractModel
        # @param Id: 玩家 PlayerId 长度 128 [a-zA-Z\d-\._]*
        # @type Id: String
        # @param Name: 玩家昵称，长度 128
        # @type Name: String
        # @param MatchAttributes: 玩家匹配属性，最多 10 条
        # @type MatchAttributes: Array
        # @param Team: 队伍名，可以传递不同队伍名，长度 128 [a-zA-Z0-9-\.]*
        # @type Team: String
        # @param CustomPlayerStatus: 自定义玩家状态 透传参数 [0, 99999]
        # @type CustomPlayerStatus: Integer
        # @param CustomProfile: 自定义玩家信息 透传参数 长度 1024
        # @type CustomProfile: String
        # @param RegionLatencies: 各区域延迟，最多 20 条
        # @type RegionLatencies: Array

        attr_accessor :Id, :Name, :MatchAttributes, :Team, :CustomPlayerStatus, :CustomProfile, :RegionLatencies
        
        def initialize(id=nil, name=nil, matchattributes=nil, team=nil, customplayerstatus=nil, customprofile=nil, regionlatencies=nil)
          @Id = id
          @Name = name
          @MatchAttributes = matchattributes
          @Team = team
          @CustomPlayerStatus = customplayerstatus
          @CustomProfile = customprofile
          @RegionLatencies = regionlatencies
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          unless params['MatchAttributes'].nil?
            @MatchAttributes = []
            params['MatchAttributes'].each do |i|
              @MatchAttributes << MatchAttribute.new.deserialize(i)
            end
          end
          @Team = params['Team']
          @CustomPlayerStatus = params['CustomPlayerStatus']
          @CustomProfile = params['CustomProfile']
          unless params['RegionLatencies'].nil?
            @RegionLatencies = []
            params['RegionLatencies'].each do |i|
              @RegionLatencies << RegionLatency.new.deserialize(i)
            end
          end
        end
      end

      # 玩家到各区域的延迟
      class RegionLatency < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # ap-beijing          华北地区(北京)
        # ap-chengdu          西南地区(成都)
        # ap-guangzhou          华南地区(广州)
        # ap-hongkong          港澳台地区(中国香港)
        # ap-seoul          亚太地区(首尔)
        # ap-shanghai          华东地区(上海)
        # ap-singapore          东南亚地区(新加坡)
        # eu-frankfurt          欧洲地区(法兰克福)
        # na-siliconvalley          美国西部(硅谷)
        # na-toronto          北美地区(多伦多)
        # ap-mumbai          亚太地区(孟买)
        # na-ashburn          美国东部(弗吉尼亚)
        # ap-bangkok          亚太地区(曼谷)
        # eu-moscow          欧洲地区(莫斯科)
        # ap-tokyo          亚太地区(东京)
        # @type Region: String
        # @param Latency: 毫秒延迟 0～999999
        # @type Latency: Integer

        attr_accessor :Region, :Latency
        
        def initialize(region=nil, latency=nil)
          @Region = region
          @Latency = latency
        end

        def deserialize(params)
          @Region = params['Region']
          @Latency = params['Latency']
        end
      end

      # 匹配概况
      class ReportOverviewData < TencentCloud::Common::AbstractModel
        # @param TotalTimes: 总次数
        # @type TotalTimes: String
        # @param SuccessPercent: 成功率
        # @type SuccessPercent: Float
        # @param TimeoutPercent: 超时率
        # @type TimeoutPercent: Float
        # @param FailPercent: 失败率
        # @type FailPercent: Float
        # @param AverageSec: 平均匹配时间
        # @type AverageSec: Float

        attr_accessor :TotalTimes, :SuccessPercent, :TimeoutPercent, :FailPercent, :AverageSec
        
        def initialize(totaltimes=nil, successpercent=nil, timeoutpercent=nil, failpercent=nil, averagesec=nil)
          @TotalTimes = totaltimes
          @SuccessPercent = successpercent
          @TimeoutPercent = timeoutpercent
          @FailPercent = failpercent
          @AverageSec = averagesec
        end

        def deserialize(params)
          @TotalTimes = params['TotalTimes']
          @SuccessPercent = params['SuccessPercent']
          @TimeoutPercent = params['TimeoutPercent']
          @FailPercent = params['FailPercent']
          @AverageSec = params['AverageSec']
        end
      end

      # 统计数据之趋势数据
      class ReportTrendData < TencentCloud::Common::AbstractModel
        # @param TotalList: 总次数
        # @type TotalList: Array
        # @param CancelList: 被取消次数
        # @type CancelList: Array
        # @param SuccessList: 成功次数
        # @type SuccessList: Array
        # @param FailList: 失败次数
        # @type FailList: Array
        # @param TimeoutList: 超时次数
        # @type TimeoutList: Array
        # @param TimeList: 时间数组，单位：秒
        # @type TimeList: Array

        attr_accessor :TotalList, :CancelList, :SuccessList, :FailList, :TimeoutList, :TimeList
        
        def initialize(totallist=nil, cancellist=nil, successlist=nil, faillist=nil, timeoutlist=nil, timelist=nil)
          @TotalList = totallist
          @CancelList = cancellist
          @SuccessList = successlist
          @FailList = faillist
          @TimeoutList = timeoutlist
          @TimeList = timelist
        end

        def deserialize(params)
          @TotalList = params['TotalList']
          @CancelList = params['CancelList']
          @SuccessList = params['SuccessList']
          @FailList = params['FailList']
          @TimeoutList = params['TimeoutList']
          @TimeList = params['TimeList']
        end
      end

      # 规则简单信息
      class RuleBriefInfo < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称 [a-zA-Z\d-\.]*
        # @type RuleName: String
        # @param MatchCodeList: 关联匹配
        # @type MatchCodeList: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param RuleCode: 规则code
        # @type RuleCode: String

        attr_accessor :RuleName, :MatchCodeList, :CreateTime, :RuleCode
        
        def initialize(rulename=nil, matchcodelist=nil, createtime=nil, rulecode=nil)
          @RuleName = rulename
          @MatchCodeList = matchcodelist
          @CreateTime = createtime
          @RuleCode = rulecode
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          unless params['MatchCodeList'].nil?
            @MatchCodeList = []
            params['MatchCodeList'].each do |i|
              @MatchCodeList << StringKV.new.deserialize(i)
            end
          end
          @CreateTime = params['CreateTime']
          @RuleCode = params['RuleCode']
        end
      end

      # 规则信息
      class RuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称 [a-zA-Z0-9-\.]*
        # @type RuleName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param RuleDesc: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleDesc: String
        # @param RuleScript: 规则脚本
        # @type RuleScript: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param MatchCodeList: 关联匹配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchCodeList: Array
        # @param RuleCode: 规则code
        # @type RuleCode: String
        # @param Region: 地区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param AppId: 用户AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param Uin: 用户Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param CreateUin: 用户OwnerUin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUin: String

        attr_accessor :RuleName, :CreateTime, :RuleDesc, :RuleScript, :Tags, :MatchCodeList, :RuleCode, :Region, :AppId, :Uin, :CreateUin
        
        def initialize(rulename=nil, createtime=nil, ruledesc=nil, rulescript=nil, tags=nil, matchcodelist=nil, rulecode=nil, region=nil, appid=nil, uin=nil, createuin=nil)
          @RuleName = rulename
          @CreateTime = createtime
          @RuleDesc = ruledesc
          @RuleScript = rulescript
          @Tags = tags
          @MatchCodeList = matchcodelist
          @RuleCode = rulecode
          @Region = region
          @AppId = appid
          @Uin = uin
          @CreateUin = createuin
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @CreateTime = params['CreateTime']
          @RuleDesc = params['RuleDesc']
          @RuleScript = params['RuleScript']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << StringKV.new.deserialize(i)
            end
          end
          unless params['MatchCodeList'].nil?
            @MatchCodeList = []
            params['MatchCodeList'].each do |i|
              @MatchCodeList << StringKV.new.deserialize(i)
            end
          end
          @RuleCode = params['RuleCode']
          @Region = params['Region']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @CreateUin = params['CreateUin']
        end
      end

      # StartMatchingBackfill请求参数结构体
      class StartMatchingBackfillRequest < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配code
        # @type MatchCode: String
        # @param Players: 玩家信息
        # @type Players: Array
        # @param GameServerSessionId: 游戏服务器回话 ID [1-256] 个ASCII 字符
        # @type GameServerSessionId: String
        # @param MatchTicketId: 匹配票据 Id 默认 "" 为空则由 GPM 自动生成 长度 [1, 128]
        # @type MatchTicketId: String

        attr_accessor :MatchCode, :Players, :GameServerSessionId, :MatchTicketId
        
        def initialize(matchcode=nil, players=nil, gameserversessionid=nil, matchticketid=nil)
          @MatchCode = matchcode
          @Players = players
          @GameServerSessionId = gameserversessionid
          @MatchTicketId = matchticketid
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
          unless params['Players'].nil?
            @Players = []
            params['Players'].each do |i|
              @Players << Player.new.deserialize(i)
            end
          end
          @GameServerSessionId = params['GameServerSessionId']
          @MatchTicketId = params['MatchTicketId']
        end
      end

      # StartMatchingBackfill返回参数结构体
      class StartMatchingBackfillResponse < TencentCloud::Common::AbstractModel
        # @param MatchTicket: 匹配票据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchTicket: :class:`Tencentcloud::Gpm.v20200820.models.MatchTicket`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MatchTicket, :RequestId
        
        def initialize(matchticket=nil, requestid=nil)
          @MatchTicket = matchticket
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MatchTicket'].nil?
            @MatchTicket = MatchTicket.new.deserialize(params['MatchTicket'])
          end
          @RequestId = params['RequestId']
        end
      end

      # StartMatching请求参数结构体
      class StartMatchingRequest < TencentCloud::Common::AbstractModel
        # @param MatchCode: 匹配 Code。
        # @type MatchCode: String
        # @param Players: 玩家信息 最多 200 条。
        # @type Players: Array
        # @param MatchTicketId: 匹配票据 ID 默认空字符串，为空则由 GPM 自动生成 长度 128，只能包含数字、字母、. 和 -
        # @type MatchTicketId: String

        attr_accessor :MatchCode, :Players, :MatchTicketId
        
        def initialize(matchcode=nil, players=nil, matchticketid=nil)
          @MatchCode = matchcode
          @Players = players
          @MatchTicketId = matchticketid
        end

        def deserialize(params)
          @MatchCode = params['MatchCode']
          unless params['Players'].nil?
            @Players = []
            params['Players'].each do |i|
              @Players << Player.new.deserialize(i)
            end
          end
          @MatchTicketId = params['MatchTicketId']
        end
      end

      # StartMatching返回参数结构体
      class StartMatchingResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # @type ErrCode: Integer
        # @param MatchTicketId: 匹配票据 ID长度 128。
        # @type MatchTicketId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :MatchTicketId, :RequestId
        
        def initialize(errcode=nil, matchticketid=nil, requestid=nil)
          @ErrCode = errcode
          @MatchTicketId = matchticketid
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @MatchTicketId = params['MatchTicketId']
          @RequestId = params['RequestId']
        end
      end

      # string keyValue解构
      class StringKV < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
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

      # 标签键值对
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

    end
  end
end

