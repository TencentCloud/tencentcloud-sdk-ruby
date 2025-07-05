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
  module Yunsou
    module V20180504
      # DataManipulation请求参数结构体
      class DataManipulationRequest < TencentCloud::Common::AbstractModel
        # @param OpType: 操作类型，add或del
        # @type OpType: String
        # @param Encoding: 数据编码类型
        # @type Encoding: String
        # @param Contents: 数据
        # @type Contents: String
        # @param ResourceId: 应用Id
        # @type ResourceId: Integer

        attr_accessor :OpType, :Encoding, :Contents, :ResourceId

        def initialize(optype=nil, encoding=nil, contents=nil, resourceid=nil)
          @OpType = optype
          @Encoding = encoding
          @Contents = contents
          @ResourceId = resourceid
        end

        def deserialize(params)
          @OpType = params['OpType']
          @Encoding = params['Encoding']
          @Contents = params['Contents']
          @ResourceId = params['ResourceId']
        end
      end

      # DataManipulation返回参数结构体
      class DataManipulationResponse < TencentCloud::Common::AbstractModel
        # @param RetMsg: 返回信息
        # @type RetMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RetMsg, :RequestId

        def initialize(retmsg=nil, requestid=nil)
          @RetMsg = retmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @RetMsg = params['RetMsg']
          @RequestId = params['RequestId']
        end
      end

      # DataSearch请求参数结构体
      class DataSearchRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 云搜的业务ID，用以表明当前数据请求的业务
        # @type ResourceId: Integer
        # @param SearchQuery: 检索串
        # @type SearchQuery: String
        # @param PageId: 当前页，从第0页开始计算
        # @type PageId: Integer
        # @param NumPerPage: 每页结果数
        # @type NumPerPage: Integer
        # @param SearchId: 当前检索号，用于定位问题，建议指定并且全局唯一
        # @type SearchId: String
        # @param QueryEncode: 请求编码，0表示utf8，1表示gbk，建议指定
        # @type QueryEncode: Integer
        # @param RankType: 排序类型
        # @type RankType: Integer
        # @param NumFilter: 数值过滤，结果中按属性过滤
        # @type NumFilter: String
        # @param ClFilter: 分类过滤，导航类检索请求
        # @type ClFilter: String
        # @param Extra: 检索用户相关字段
        # @type Extra: String
        # @param SourceId: 检索来源
        # @type SourceId: Integer
        # @param SecondSearch: 是否进行二次检索，0关闭，1打开
        # @type SecondSearch: Integer
        # @param MaxDocReturn: 指定返回最大篇数，无特殊原因不建议指定
        # @type MaxDocReturn: Integer
        # @param IsSmartbox: 是否smartbox检索，0关闭，1打开
        # @type IsSmartbox: Integer
        # @param EnableAbsHighlight: 是否打开高红标亮，0关闭，1打开
        # @type EnableAbsHighlight: Integer
        # @param QcBid: 指定访问QC纠错业务ID
        # @type QcBid: Integer
        # @param GroupBy: 按指定字段进行group by，只能对数值字段进行操作
        # @type GroupBy: String
        # @param Distinct: 按指定字段进行distinct，只能对数值字段进行操作
        # @type Distinct: String
        # @param L4RankExpression: 高级排序参数，具体参见高级排序说明
        # @type L4RankExpression: String
        # @param MatchValue: 高级排序参数，具体参见高级排序说明
        # @type MatchValue: String
        # @param Longitude: 经度信息
        # @type Longitude: Float
        # @param Latitude: 纬度信息
        # @type Latitude: Float
        # @param MultiFilter: 分类过滤并集
        # @type MultiFilter: Array

        attr_accessor :ResourceId, :SearchQuery, :PageId, :NumPerPage, :SearchId, :QueryEncode, :RankType, :NumFilter, :ClFilter, :Extra, :SourceId, :SecondSearch, :MaxDocReturn, :IsSmartbox, :EnableAbsHighlight, :QcBid, :GroupBy, :Distinct, :L4RankExpression, :MatchValue, :Longitude, :Latitude, :MultiFilter

        def initialize(resourceid=nil, searchquery=nil, pageid=nil, numperpage=nil, searchid=nil, queryencode=nil, ranktype=nil, numfilter=nil, clfilter=nil, extra=nil, sourceid=nil, secondsearch=nil, maxdocreturn=nil, issmartbox=nil, enableabshighlight=nil, qcbid=nil, groupby=nil, distinct=nil, l4rankexpression=nil, matchvalue=nil, longitude=nil, latitude=nil, multifilter=nil)
          @ResourceId = resourceid
          @SearchQuery = searchquery
          @PageId = pageid
          @NumPerPage = numperpage
          @SearchId = searchid
          @QueryEncode = queryencode
          @RankType = ranktype
          @NumFilter = numfilter
          @ClFilter = clfilter
          @Extra = extra
          @SourceId = sourceid
          @SecondSearch = secondsearch
          @MaxDocReturn = maxdocreturn
          @IsSmartbox = issmartbox
          @EnableAbsHighlight = enableabshighlight
          @QcBid = qcbid
          @GroupBy = groupby
          @Distinct = distinct
          @L4RankExpression = l4rankexpression
          @MatchValue = matchvalue
          @Longitude = longitude
          @Latitude = latitude
          @MultiFilter = multifilter
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @SearchQuery = params['SearchQuery']
          @PageId = params['PageId']
          @NumPerPage = params['NumPerPage']
          @SearchId = params['SearchId']
          @QueryEncode = params['QueryEncode']
          @RankType = params['RankType']
          @NumFilter = params['NumFilter']
          @ClFilter = params['ClFilter']
          @Extra = params['Extra']
          @SourceId = params['SourceId']
          @SecondSearch = params['SecondSearch']
          @MaxDocReturn = params['MaxDocReturn']
          @IsSmartbox = params['IsSmartbox']
          @EnableAbsHighlight = params['EnableAbsHighlight']
          @QcBid = params['QcBid']
          @GroupBy = params['GroupBy']
          @Distinct = params['Distinct']
          @L4RankExpression = params['L4RankExpression']
          @MatchValue = params['MatchValue']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
          @MultiFilter = params['MultiFilter']
        end
      end

      # DataSearch返回参数结构体
      class DataSearchResponse < TencentCloud::Common::AbstractModel
        # @param RetMsg: 数据返回信息
        # @type RetMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RetMsg, :RequestId

        def initialize(retmsg=nil, requestid=nil)
          @RetMsg = retmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @RetMsg = params['RetMsg']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

