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
  module Tbm
    module V20180129
      # 用户年龄画像
      class AgePortrait < TencentCloud::Common::AbstractModel
        # @param AgeRange: 年龄区间
        # @type AgeRange: String
        # @param Percent: 百分比
        # @type Percent: Float

        attr_accessor :AgeRange, :Percent
        
        def initialize(agerange=nil, percent=nil)
          @AgeRange = agerange
          @Percent = percent
        end

        def deserialize(params)
          @AgeRange = params['AgeRange']
          @Percent = params['Percent']
        end
      end

      # 用户年龄画像元素数组
      class AgePortraitInfo < TencentCloud::Common::AbstractModel
        # @param PortraitSet: 用户年龄画像数组
        # @type PortraitSet: Array

        attr_accessor :PortraitSet
        
        def initialize(portraitset=nil)
          @PortraitSet = portraitset
        end

        def deserialize(params)
          unless params['PortraitSet'].nil?
            @PortraitSet = []
            params['PortraitSet'].each do |i|
              @PortraitSet << AgePortrait.new.deserialize(i)
            end
          end
        end
      end

      # 文章信息
      class BrandReportArticle < TencentCloud::Common::AbstractModel
        # @param Title: 文章标题
        # @type Title: String
        # @param Url: 文章url地址
        # @type Url: String
        # @param FromSite: 文章来源
        # @type FromSite: String
        # @param PubTime: 文章发表日期
        # @type PubTime: String
        # @param Flag: 文章标识
        # @type Flag: Integer
        # @param Hot: 文章热度值
        # @type Hot: Integer
        # @param Level: 文章来源等级
        # @type Level: Integer
        # @param Abstract: 文章摘要
        # @type Abstract: String
        # @param ArticleId: 文章ID
        # @type ArticleId: String

        attr_accessor :Title, :Url, :FromSite, :PubTime, :Flag, :Hot, :Level, :Abstract, :ArticleId
        
        def initialize(title=nil, url=nil, fromsite=nil, pubtime=nil, flag=nil, hot=nil, level=nil, abstract=nil, articleid=nil)
          @Title = title
          @Url = url
          @FromSite = fromsite
          @PubTime = pubtime
          @Flag = flag
          @Hot = hot
          @Level = level
          @Abstract = abstract
          @ArticleId = articleid
        end

        def deserialize(params)
          @Title = params['Title']
          @Url = params['Url']
          @FromSite = params['FromSite']
          @PubTime = params['PubTime']
          @Flag = params['Flag']
          @Hot = params['Hot']
          @Level = params['Level']
          @Abstract = params['Abstract']
          @ArticleId = params['ArticleId']
        end
      end

      # 用户好评差评个数信息
      class Comment < TencentCloud::Common::AbstractModel
        # @param Date: 评论的日期
        # @type Date: String
        # @param NegCommentCount: 差评的个数
        # @type NegCommentCount: Integer
        # @param PosCommentCount: 好评的个数
        # @type PosCommentCount: Integer

        attr_accessor :Date, :NegCommentCount, :PosCommentCount
        
        def initialize(date=nil, negcommentcount=nil, poscommentcount=nil)
          @Date = date
          @NegCommentCount = negcommentcount
          @PosCommentCount = poscommentcount
        end

        def deserialize(params)
          @Date = params['Date']
          @NegCommentCount = params['NegCommentCount']
          @PosCommentCount = params['PosCommentCount']
        end
      end

      # 用户评论内容类型
      class CommentInfo < TencentCloud::Common::AbstractModel
        # @param Comment: 用户评论内容
        # @type Comment: String
        # @param Date: 评论的时间
        # @type Date: String

        attr_accessor :Comment, :Date
        
        def initialize(comment=nil, date=nil)
          @Comment = comment
          @Date = date
        end

        def deserialize(params)
          @Comment = params['Comment']
          @Date = params['Date']
        end
      end

      # 按日期的统计数据
      class DateCount < TencentCloud::Common::AbstractModel
        # @param Date: 统计日期
        # @type Date: String
        # @param Count: 统计值
        # @type Count: Integer

        attr_accessor :Date, :Count
        
        def initialize(date=nil, count=nil)
          @Date = date
          @Count = count
        end

        def deserialize(params)
          @Date = params['Date']
          @Count = params['Count']
        end
      end

      # DescribeBrandCommentCount请求参数结构体
      class DescribeBrandCommentCountRequest < TencentCloud::Common::AbstractModel
        # @param BrandId: 品牌ID
        # @type BrandId: String
        # @param StartDate: 查询开始日期
        # @type StartDate: String
        # @param EndDate: 查询结束日期
        # @type EndDate: String

        attr_accessor :BrandId, :StartDate, :EndDate
        
        def initialize(brandid=nil, startdate=nil, enddate=nil)
          @BrandId = brandid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @BrandId = params['BrandId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeBrandCommentCount返回参数结构体
      class DescribeBrandCommentCountResponse < TencentCloud::Common::AbstractModel
        # @param CommentSet: 按天统计好评/差评数
        # @type CommentSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CommentSet, :RequestId
        
        def initialize(commentset=nil, requestid=nil)
          @CommentSet = commentset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CommentSet'].nil?
            @CommentSet = []
            params['CommentSet'].each do |i|
              @CommentSet << Comment.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBrandExposure请求参数结构体
      class DescribeBrandExposureRequest < TencentCloud::Common::AbstractModel
        # @param BrandId: 品牌ID
        # @type BrandId: String
        # @param StartDate: 查询开始时间
        # @type StartDate: String
        # @param EndDate: 查询结束时间
        # @type EndDate: String

        attr_accessor :BrandId, :StartDate, :EndDate
        
        def initialize(brandid=nil, startdate=nil, enddate=nil)
          @BrandId = brandid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @BrandId = params['BrandId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeBrandExposure返回参数结构体
      class DescribeBrandExposureResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 累计曝光量
        # @type TotalCount: Integer
        # @param DateCountSet: 按天计算的统计数据
        # @type DateCountSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DateCountSet, :RequestId
        
        def initialize(totalcount=nil, datecountset=nil, requestid=nil)
          @TotalCount = totalcount
          @DateCountSet = datecountset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DateCountSet'].nil?
            @DateCountSet = []
            params['DateCountSet'].each do |i|
              @DateCountSet << DateCount.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBrandMediaReport请求参数结构体
      class DescribeBrandMediaReportRequest < TencentCloud::Common::AbstractModel
        # @param BrandId: 品牌ID
        # @type BrandId: String
        # @param StartDate: 查询开始时间
        # @type StartDate: String
        # @param EndDate: 查询结束时间
        # @type EndDate: String

        attr_accessor :BrandId, :StartDate, :EndDate
        
        def initialize(brandid=nil, startdate=nil, enddate=nil)
          @BrandId = brandid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @BrandId = params['BrandId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeBrandMediaReport返回参数结构体
      class DescribeBrandMediaReportResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询范围内文章总数
        # @type TotalCount: Integer
        # @param DateCountSet: 按天计算的每天文章数
        # @type DateCountSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DateCountSet, :RequestId
        
        def initialize(totalcount=nil, datecountset=nil, requestid=nil)
          @TotalCount = totalcount
          @DateCountSet = datecountset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DateCountSet'].nil?
            @DateCountSet = []
            params['DateCountSet'].each do |i|
              @DateCountSet << DateCount.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBrandNegComments请求参数结构体
      class DescribeBrandNegCommentsRequest < TencentCloud::Common::AbstractModel
        # @param BrandId: 品牌ID
        # @type BrandId: String
        # @param StartDate: 查询开始时间
        # @type StartDate: String
        # @param EndDate: 查询结束时间
        # @type EndDate: String
        # @param Limit: 查询条数上限，默认20
        # @type Limit: Integer
        # @param Offset: 查询偏移，默认从0开始
        # @type Offset: Integer

        attr_accessor :BrandId, :StartDate, :EndDate, :Limit, :Offset
        
        def initialize(brandid=nil, startdate=nil, enddate=nil, limit=nil, offset=nil)
          @BrandId = brandid
          @StartDate = startdate
          @EndDate = enddate
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BrandId = params['BrandId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeBrandNegComments返回参数结构体
      class DescribeBrandNegCommentsResponse < TencentCloud::Common::AbstractModel
        # @param BrandCommentSet: 评论列表
        # @type BrandCommentSet: Array
        # @param TotalComments: 总的差评个数
        # @type TotalComments: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BrandCommentSet, :TotalComments, :RequestId
        
        def initialize(brandcommentset=nil, totalcomments=nil, requestid=nil)
          @BrandCommentSet = brandcommentset
          @TotalComments = totalcomments
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BrandCommentSet'].nil?
            @BrandCommentSet = []
            params['BrandCommentSet'].each do |i|
              @BrandCommentSet << CommentInfo.new.deserialize(i)
            end
          end
          @TotalComments = params['TotalComments']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBrandPosComments请求参数结构体
      class DescribeBrandPosCommentsRequest < TencentCloud::Common::AbstractModel
        # @param BrandId: 品牌ID
        # @type BrandId: String
        # @param StartDate: 查询开始时间
        # @type StartDate: String
        # @param EndDate: 查询结束时间
        # @type EndDate: String
        # @param Limit: 查询条数上限，默认20
        # @type Limit: Integer
        # @param Offset: 查询偏移，从0开始
        # @type Offset: Integer

        attr_accessor :BrandId, :StartDate, :EndDate, :Limit, :Offset
        
        def initialize(brandid=nil, startdate=nil, enddate=nil, limit=nil, offset=nil)
          @BrandId = brandid
          @StartDate = startdate
          @EndDate = enddate
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BrandId = params['BrandId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeBrandPosComments返回参数结构体
      class DescribeBrandPosCommentsResponse < TencentCloud::Common::AbstractModel
        # @param BrandCommentSet: 评论列表
        # @type BrandCommentSet: Array
        # @param TotalComments: 总的好评个数
        # @type TotalComments: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BrandCommentSet, :TotalComments, :RequestId
        
        def initialize(brandcommentset=nil, totalcomments=nil, requestid=nil)
          @BrandCommentSet = brandcommentset
          @TotalComments = totalcomments
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BrandCommentSet'].nil?
            @BrandCommentSet = []
            params['BrandCommentSet'].each do |i|
              @BrandCommentSet << CommentInfo.new.deserialize(i)
            end
          end
          @TotalComments = params['TotalComments']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBrandSocialOpinion请求参数结构体
      class DescribeBrandSocialOpinionRequest < TencentCloud::Common::AbstractModel
        # @param BrandId: 品牌ID
        # @type BrandId: String
        # @param StartDate: 检索开始时间
        # @type StartDate: String
        # @param EndDate: 检索结束时间
        # @type EndDate: String
        # @param Offset: 查询偏移，默认从0开始
        # @type Offset: Integer
        # @param Limit: 查询条数上限，默认20
        # @type Limit: Integer
        # @param ShowList: 列表显示标记，若为true，则返回文章列表详情
        # @type ShowList: Boolean

        attr_accessor :BrandId, :StartDate, :EndDate, :Offset, :Limit, :ShowList
        
        def initialize(brandid=nil, startdate=nil, enddate=nil, offset=nil, limit=nil, showlist=nil)
          @BrandId = brandid
          @StartDate = startdate
          @EndDate = enddate
          @Offset = offset
          @Limit = limit
          @ShowList = showlist
        end

        def deserialize(params)
          @BrandId = params['BrandId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ShowList = params['ShowList']
        end
      end

      # DescribeBrandSocialOpinion返回参数结构体
      class DescribeBrandSocialOpinionResponse < TencentCloud::Common::AbstractModel
        # @param ArticleCount: 文章总数
        # @type ArticleCount: Integer
        # @param FromCount: 来源统计总数
        # @type FromCount: Integer
        # @param AdverseCount: 疑似负面报道总数
        # @type AdverseCount: Integer
        # @param ArticleSet: 文章列表详情
        # @type ArticleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ArticleCount, :FromCount, :AdverseCount, :ArticleSet, :RequestId
        
        def initialize(articlecount=nil, fromcount=nil, adversecount=nil, articleset=nil, requestid=nil)
          @ArticleCount = articlecount
          @FromCount = fromcount
          @AdverseCount = adversecount
          @ArticleSet = articleset
          @RequestId = requestid
        end

        def deserialize(params)
          @ArticleCount = params['ArticleCount']
          @FromCount = params['FromCount']
          @AdverseCount = params['AdverseCount']
          unless params['ArticleSet'].nil?
            @ArticleSet = []
            params['ArticleSet'].each do |i|
              @ArticleSet << BrandReportArticle.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBrandSocialReport请求参数结构体
      class DescribeBrandSocialReportRequest < TencentCloud::Common::AbstractModel
        # @param BrandId: 品牌ID
        # @type BrandId: String
        # @param StartDate: 查询开始时间
        # @type StartDate: String
        # @param EndDate: 查询结束时间
        # @type EndDate: String

        attr_accessor :BrandId, :StartDate, :EndDate
        
        def initialize(brandid=nil, startdate=nil, enddate=nil)
          @BrandId = brandid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @BrandId = params['BrandId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeBrandSocialReport返回参数结构体
      class DescribeBrandSocialReportResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 累计统计数据
        # @type TotalCount: Integer
        # @param DateCountSet: 按天计算的统计数据
        # @type DateCountSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DateCountSet, :RequestId
        
        def initialize(totalcount=nil, datecountset=nil, requestid=nil)
          @TotalCount = totalcount
          @DateCountSet = datecountset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DateCountSet'].nil?
            @DateCountSet = []
            params['DateCountSet'].each do |i|
              @DateCountSet << DateCount.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIndustryNews请求参数结构体
      class DescribeIndustryNewsRequest < TencentCloud::Common::AbstractModel
        # @param IndustryId: 行业ID
        # @type IndustryId: String
        # @param StartDate: 查询开始时间
        # @type StartDate: String
        # @param EndDate: 查询结束时间
        # @type EndDate: String
        # @param ShowList: 是否显示列表，若为 true，则返回文章列表
        # @type ShowList: Boolean
        # @param Offset: 查询偏移，默认从0开始
        # @type Offset: Integer
        # @param Limit: 查询条数上限，默认20
        # @type Limit: Integer

        attr_accessor :IndustryId, :StartDate, :EndDate, :ShowList, :Offset, :Limit
        
        def initialize(industryid=nil, startdate=nil, enddate=nil, showlist=nil, offset=nil, limit=nil)
          @IndustryId = industryid
          @StartDate = startdate
          @EndDate = enddate
          @ShowList = showlist
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @IndustryId = params['IndustryId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ShowList = params['ShowList']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeIndustryNews返回参数结构体
      class DescribeIndustryNewsResponse < TencentCloud::Common::AbstractModel
        # @param NewsCount: 总计文章数量
        # @type NewsCount: Integer
        # @param FromCount: 总计来源数量
        # @type FromCount: Integer
        # @param AdverseCount: 总计疑似负面数量
        # @type AdverseCount: Integer
        # @param NewsSet: 文章列表
        # @type NewsSet: Array
        # @param DateCountSet: 按天统计的数量列表
        # @type DateCountSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NewsCount, :FromCount, :AdverseCount, :NewsSet, :DateCountSet, :RequestId
        
        def initialize(newscount=nil, fromcount=nil, adversecount=nil, newsset=nil, datecountset=nil, requestid=nil)
          @NewsCount = newscount
          @FromCount = fromcount
          @AdverseCount = adversecount
          @NewsSet = newsset
          @DateCountSet = datecountset
          @RequestId = requestid
        end

        def deserialize(params)
          @NewsCount = params['NewsCount']
          @FromCount = params['FromCount']
          @AdverseCount = params['AdverseCount']
          unless params['NewsSet'].nil?
            @NewsSet = []
            params['NewsSet'].each do |i|
              @NewsSet << IndustryNews.new.deserialize(i)
            end
          end
          unless params['DateCountSet'].nil?
            @DateCountSet = []
            params['DateCountSet'].each do |i|
              @DateCountSet << DateCount.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserPortrait请求参数结构体
      class DescribeUserPortraitRequest < TencentCloud::Common::AbstractModel
        # @param BrandId: 品牌ID
        # @type BrandId: String

        attr_accessor :BrandId
        
        def initialize(brandid=nil)
          @BrandId = brandid
        end

        def deserialize(params)
          @BrandId = params['BrandId']
        end
      end

      # DescribeUserPortrait返回参数结构体
      class DescribeUserPortraitResponse < TencentCloud::Common::AbstractModel
        # @param Age: 年龄画像
        # @type Age: :class:`Tencentcloud::Tbm.v20180129.models.AgePortraitInfo`
        # @param Gender: 性别画像
        # @type Gender: :class:`Tencentcloud::Tbm.v20180129.models.GenderPortraitInfo`
        # @param Province: 省份画像
        # @type Province: :class:`Tencentcloud::Tbm.v20180129.models.ProvincePortraitInfo`
        # @param Movie: 电影喜好画像
        # @type Movie: :class:`Tencentcloud::Tbm.v20180129.models.MoviePortraitInfo`
        # @param Star: 明星喜好画像
        # @type Star: :class:`Tencentcloud::Tbm.v20180129.models.StarPortraitInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Age, :Gender, :Province, :Movie, :Star, :RequestId
        
        def initialize(age=nil, gender=nil, province=nil, movie=nil, star=nil, requestid=nil)
          @Age = age
          @Gender = gender
          @Province = province
          @Movie = movie
          @Star = star
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Age'].nil?
            @Age = AgePortraitInfo.new.deserialize(params['Age'])
          end
          unless params['Gender'].nil?
            @Gender = GenderPortraitInfo.new.deserialize(params['Gender'])
          end
          unless params['Province'].nil?
            @Province = ProvincePortraitInfo.new.deserialize(params['Province'])
          end
          unless params['Movie'].nil?
            @Movie = MoviePortraitInfo.new.deserialize(params['Movie'])
          end
          unless params['Star'].nil?
            @Star = StarPortraitInfo.new.deserialize(params['Star'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 性别画像元素
      class GenderPortrait < TencentCloud::Common::AbstractModel
        # @param Gender: 性别
        # @type Gender: String
        # @param Percent: 百分比
        # @type Percent: Integer

        attr_accessor :Gender, :Percent
        
        def initialize(gender=nil, percent=nil)
          @Gender = gender
          @Percent = percent
        end

        def deserialize(params)
          @Gender = params['Gender']
          @Percent = params['Percent']
        end
      end

      # 用户性别画像元素数组
      class GenderPortraitInfo < TencentCloud::Common::AbstractModel
        # @param PortraitSet: 用户性别画像数组
        # @type PortraitSet: Array

        attr_accessor :PortraitSet
        
        def initialize(portraitset=nil)
          @PortraitSet = portraitset
        end

        def deserialize(params)
          unless params['PortraitSet'].nil?
            @PortraitSet = []
            params['PortraitSet'].each do |i|
              @PortraitSet << GenderPortrait.new.deserialize(i)
            end
          end
        end
      end

      # 行业报道新闻
      class IndustryNews < TencentCloud::Common::AbstractModel
        # @param IndustryId: 行业报道ID
        # @type IndustryId: String
        # @param PubTime: 报道发表时间
        # @type PubTime: String
        # @param FromSite: 报道来源
        # @type FromSite: String
        # @param Title: 报道标题
        # @type Title: String
        # @param Url: 报道来源url
        # @type Url: String
        # @param Level: 报道来源等级
        # @type Level: Integer
        # @param Hot: 热度值
        # @type Hot: Integer
        # @param Flag: 报道标识
        # @type Flag: Integer
        # @param Abstract: 报道摘要
        # @type Abstract: String

        attr_accessor :IndustryId, :PubTime, :FromSite, :Title, :Url, :Level, :Hot, :Flag, :Abstract
        
        def initialize(industryid=nil, pubtime=nil, fromsite=nil, title=nil, url=nil, level=nil, hot=nil, flag=nil, abstract=nil)
          @IndustryId = industryid
          @PubTime = pubtime
          @FromSite = fromsite
          @Title = title
          @Url = url
          @Level = level
          @Hot = hot
          @Flag = flag
          @Abstract = abstract
        end

        def deserialize(params)
          @IndustryId = params['IndustryId']
          @PubTime = params['PubTime']
          @FromSite = params['FromSite']
          @Title = params['Title']
          @Url = params['Url']
          @Level = params['Level']
          @Hot = params['Hot']
          @Flag = params['Flag']
          @Abstract = params['Abstract']
        end
      end

      # 电影喜好画像元素
      class MoviePortrait < TencentCloud::Common::AbstractModel
        # @param Name: 电影名称
        # @type Name: String
        # @param Percent: 百分比
        # @type Percent: Float

        attr_accessor :Name, :Percent
        
        def initialize(name=nil, percent=nil)
          @Name = name
          @Percent = percent
        end

        def deserialize(params)
          @Name = params['Name']
          @Percent = params['Percent']
        end
      end

      # 用户喜好电影画像元素数组
      class MoviePortraitInfo < TencentCloud::Common::AbstractModel
        # @param PortraitSet: 用户喜好电影画像数组
        # @type PortraitSet: Array

        attr_accessor :PortraitSet
        
        def initialize(portraitset=nil)
          @PortraitSet = portraitset
        end

        def deserialize(params)
          unless params['PortraitSet'].nil?
            @PortraitSet = []
            params['PortraitSet'].each do |i|
              @PortraitSet << MoviePortrait.new.deserialize(i)
            end
          end
        end
      end

      # 省份画像元素
      class ProvincePortrait < TencentCloud::Common::AbstractModel
        # @param Province: 省份名称
        # @type Province: String
        # @param Percent: 百分比
        # @type Percent: Float

        attr_accessor :Province, :Percent
        
        def initialize(province=nil, percent=nil)
          @Province = province
          @Percent = percent
        end

        def deserialize(params)
          @Province = params['Province']
          @Percent = params['Percent']
        end
      end

      # 用户省份画像元素数组
      class ProvincePortraitInfo < TencentCloud::Common::AbstractModel
        # @param PortraitSet: 用户省份画像数组
        # @type PortraitSet: Array

        attr_accessor :PortraitSet
        
        def initialize(portraitset=nil)
          @PortraitSet = portraitset
        end

        def deserialize(params)
          unless params['PortraitSet'].nil?
            @PortraitSet = []
            params['PortraitSet'].each do |i|
              @PortraitSet << ProvincePortrait.new.deserialize(i)
            end
          end
        end
      end

      # 明星喜好画像元素
      class StarPortrait < TencentCloud::Common::AbstractModel
        # @param Name: 喜欢的明星名字
        # @type Name: String
        # @param Percent: 百分比
        # @type Percent: Float

        attr_accessor :Name, :Percent
        
        def initialize(name=nil, percent=nil)
          @Name = name
          @Percent = percent
        end

        def deserialize(params)
          @Name = params['Name']
          @Percent = params['Percent']
        end
      end

      # 用户喜好的明星画像元素数组
      class StarPortraitInfo < TencentCloud::Common::AbstractModel
        # @param PortraitSet: 用户喜好的明星画像数组
        # @type PortraitSet: Array

        attr_accessor :PortraitSet
        
        def initialize(portraitset=nil)
          @PortraitSet = portraitset
        end

        def deserialize(params)
          unless params['PortraitSet'].nil?
            @PortraitSet = []
            params['PortraitSet'].each do |i|
              @PortraitSet << StarPortrait.new.deserialize(i)
            end
          end
        end
      end

    end
  end
end

