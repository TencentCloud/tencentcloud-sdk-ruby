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
  module Yunsou
    module V20191115
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
        # @param Data: 数据操作结果
        # @type Data: :class:`Tencentcloud::Yunsou.v20191115.models.DataManipulationResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataManipulationResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据操作结果
      class DataManipulationResult < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # @type AppId: Integer
        # @param Seq: 序号
        # @type Seq: Integer
        # @param TotalResult: 结果
        # @type TotalResult: String
        # @param Result: 操作结果明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param ErrorResult: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorResult: String

        attr_accessor :AppId, :Seq, :TotalResult, :Result, :ErrorResult
        
        def initialize(appid=nil, seq=nil, totalresult=nil, result=nil, errorresult=nil)
          @AppId = appid
          @Seq = seq
          @TotalResult = totalresult
          @Result = result
          @ErrorResult = errorresult
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Seq = params['Seq']
          @TotalResult = params['TotalResult']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              datamanipulationresultitem_tmp = DataManipulationResultItem.new
              datamanipulationresultitem_tmp.deserialize(i)
              @Result << datamanipulationresultitem_tmp
            end
          end
          @ErrorResult = params['ErrorResult']
        end
      end

      # 数据操作结果明细
      class DataManipulationResultItem < TencentCloud::Common::AbstractModel
        # @param Result: 结果
        # @type Result: String
        # @param DocId: 文档ID
        # @type DocId: String
        # @param Errno: 错误码
        # @type Errno: Integer

        attr_accessor :Result, :DocId, :Errno
        
        def initialize(result=nil, docid=nil, errno=nil)
          @Result = result
          @DocId = docid
          @Errno = errno
        end

        def deserialize(params)
          @Result = params['Result']
          @DocId = params['DocId']
          @Errno = params['Errno']
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
        # @param Data: 检索结果
        # @type Data: :class:`Tencentcloud::Yunsou.v20191115.models.SearchResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SearchResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 搜索结果
      class SearchResult < TencentCloud::Common::AbstractModel
        # @param CostTime: 检索耗时，单位ms
        # @type CostTime: Integer
        # @param DisplayNum: 搜索最多可以展示的结果数，多页
        # @type DisplayNum: Integer
        # @param Echo: 和检索请求中的echo相对应
        # @type Echo: String
        # @param EResultNum: 检索结果的估算篇数，由索引平台估算
        # @type EResultNum: Integer
        # @param ResultNum: 检索返回的当前页码结果数
        # @type ResultNum: Integer
        # @param ResultList: 检索结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultList: Array
        # @param SegList: 检索的分词结果，array类型，可包含多个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegList: Array

        attr_accessor :CostTime, :DisplayNum, :Echo, :EResultNum, :ResultNum, :ResultList, :SegList
        
        def initialize(costtime=nil, displaynum=nil, echo=nil, eresultnum=nil, resultnum=nil, resultlist=nil, seglist=nil)
          @CostTime = costtime
          @DisplayNum = displaynum
          @Echo = echo
          @EResultNum = eresultnum
          @ResultNum = resultnum
          @ResultList = resultlist
          @SegList = seglist
        end

        def deserialize(params)
          @CostTime = params['CostTime']
          @DisplayNum = params['DisplayNum']
          @Echo = params['Echo']
          @EResultNum = params['EResultNum']
          @ResultNum = params['ResultNum']
          unless params['ResultList'].nil?
            @ResultList = []
            params['ResultList'].each do |i|
              searchresultitem_tmp = SearchResultItem.new
              searchresultitem_tmp.deserialize(i)
              @ResultList << searchresultitem_tmp
            end
          end
          unless params['SegList'].nil?
            @SegList = []
            params['SegList'].each do |i|
              searchresultseg_tmp = SearchResultSeg.new
              searchresultseg_tmp.deserialize(i)
              @SegList << searchresultseg_tmp
            end
          end
        end
      end

      # 搜索结果元素
      class SearchResultItem < TencentCloud::Common::AbstractModel
        # @param DocAbs: 动态摘要信息
        # @type DocAbs: String
        # @param DocId: 检索文档id
        # @type DocId: String
        # @param DocMeta: 原始文档信息
        # @type DocMeta: String
        # @param L2Score: 精计算得分
        # @type L2Score: Float
        # @param SearchDebuginfo: 文档级回传信息
        # @type SearchDebuginfo: String

        attr_accessor :DocAbs, :DocId, :DocMeta, :L2Score, :SearchDebuginfo
        
        def initialize(docabs=nil, docid=nil, docmeta=nil, l2score=nil, searchdebuginfo=nil)
          @DocAbs = docabs
          @DocId = docid
          @DocMeta = docmeta
          @L2Score = l2score
          @SearchDebuginfo = searchdebuginfo
        end

        def deserialize(params)
          @DocAbs = params['DocAbs']
          @DocId = params['DocId']
          @DocMeta = params['DocMeta']
          @L2Score = params['L2Score']
          @SearchDebuginfo = params['SearchDebuginfo']
        end
      end

      # SearchResultSeg
      class SearchResultSeg < TencentCloud::Common::AbstractModel
        # @param SegStr: 分词
        # @type SegStr: String

        attr_accessor :SegStr
        
        def initialize(segstr=nil)
          @SegStr = segstr
        end

        def deserialize(params)
          @SegStr = params['SegStr']
        end
      end

    end
  end
end

