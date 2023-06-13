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
  module Irp
    module V20220805
      # DescribeGoodsRecommend请求参数结构体
      class DescribeGoodsRecommendRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，在控制台获取
        # @type InstanceId: String
        # @param SceneId: 场景ID，在控制台创建场景后获取
        # @type SceneId: String
        # @param UserId: 用户唯一ID，客户自定义用户ID，作为一个用户的唯一标识，需和行为数据上报接口中的UserId一致，否则影响特征关联
        # @type UserId: String
        # @param UserIdList: 用户设备ID数组，可传入用户的多个类型ID，用于关联画像信息
        # @type UserIdList: Array
        # @param GoodsCnt: 推荐返回数量，默认10个，最多支持50个的内容返回。如果有更多数量要求，<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决
        # @type GoodsCnt: Integer
        # @param CurrentGoodsId: 当场景是相关推荐时该值必填，场景是非相关推荐时该值无效
        # @type CurrentGoodsId: String
        # @param UserPortraitInfo: 用户的实时特征信息，用作特征
        # @type UserPortraitInfo: :class:`Tencentcloud::Irp.v20220805.models.UserPortraitInfo`
        # @param BlackGoodsList: 本次请求针对该用户需要过滤的物品列表(不超过100个)
        # @type BlackGoodsList: Array
        # @param Extension: json字符串，扩展字段
        # @type Extension: String

        attr_accessor :InstanceId, :SceneId, :UserId, :UserIdList, :GoodsCnt, :CurrentGoodsId, :UserPortraitInfo, :BlackGoodsList, :Extension

        def initialize(instanceid=nil, sceneid=nil, userid=nil, useridlist=nil, goodscnt=nil, currentgoodsid=nil, userportraitinfo=nil, blackgoodslist=nil, extension=nil)
          @InstanceId = instanceid
          @SceneId = sceneid
          @UserId = userid
          @UserIdList = useridlist
          @GoodsCnt = goodscnt
          @CurrentGoodsId = currentgoodsid
          @UserPortraitInfo = userportraitinfo
          @BlackGoodsList = blackgoodslist
          @Extension = extension
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SceneId = params['SceneId']
          @UserId = params['UserId']
          unless params['UserIdList'].nil?
            @UserIdList = []
            params['UserIdList'].each do |i|
              struseridinfo_tmp = StrUserIdInfo.new
              struseridinfo_tmp.deserialize(i)
              @UserIdList << struseridinfo_tmp
            end
          end
          @GoodsCnt = params['GoodsCnt']
          @CurrentGoodsId = params['CurrentGoodsId']
          unless params['UserPortraitInfo'].nil?
            @UserPortraitInfo = UserPortraitInfo.new
            @UserPortraitInfo.deserialize(params['UserPortraitInfo'])
          end
          @BlackGoodsList = params['BlackGoodsList']
          @Extension = params['Extension']
        end
      end

      # DescribeGoodsRecommend返回参数结构体
      class DescribeGoodsRecommendResponse < TencentCloud::Common::AbstractModel
        # @param DataList: 推荐返回的商品信息列表
        # @type DataList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataList, :RequestId

        def initialize(datalist=nil, requestid=nil)
          @DataList = datalist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              recgoodsdata_tmp = RecGoodsData.new
              recgoodsdata_tmp.deserialize(i)
              @DataList << recgoodsdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 不喜欢信息
      class DislikeInfo < TencentCloud::Common::AbstractModel
        # @param Type: 过滤的类别：<br>● author 作者名<br/>（如当前类型不满足，请<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决方案）
        # @type Type: String
        # @param Value: Type对应字段名的值，如：需要过滤的作者名
        # @type Value: String

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

      # 信息流内容
      class DocItem < TencentCloud::Common::AbstractModel
        # @param ItemId: 内容唯一id，建议限制在128字符以内
        # @type ItemId: String
        # @param ItemType: 内容类型：<br/>● article -图文<br>● text -纯文本<br/>● video -视频<br/>● short_video -时长15秒以内的视频<br/>● mini_video -竖屏视频<br/>● image -纯图片<br/>（如当前类型不满足，请登录控制台进入对应项目，在<b>物料管理->物料类型管理</b>中添加）
        # @type ItemType: String
        # @param Status: 内容状态：
        # ● 1 - 上架
        # ● 2 - 下架
        # Status=2的内容不会在推荐结果中出现
        # 需要下架内容时，把Status的值修改为2即可
        # @type Status: Integer
        # @param PublishTimestamp: 内容生成时间，秒级时间戳（1639624786），需大于0，<b>用作特征和物料管理</b>
        # @type PublishTimestamp: Integer
        # @param ExpireTimestamp: 内容过期时间，秒级时间戳（1639624786），如未填，则默认PublishTimestamp往后延一年，用作特征，过期则不会被推荐，<b>强烈建议</b>
        # @type ExpireTimestamp: Integer
        # @param CategoryLevel: 类目层级数，例如3级类目，则填3，和CategoryPath字段的类数据匹配，<b>强烈建议</b>
        # @type CategoryLevel: Integer
        # @param CategoryPath: 类目路径，一级二级三级等依次用英文冒号联接，和CategoryLevel字段值匹配，如体育：“足球:巴塞罗那”。<b>用于物料池管理，强烈建议</b>
        # @type CategoryPath: String
        # @param Tags: 内容标签，多个标签用英文冒号联接，<b>用作特征，强烈建议</b>
        # @type Tags: String
        # @param Author: 作者名，需保证作者名唯一，若有重名需要加编号区分。<b>用于召回过滤、规则打散，强烈建议</b>
        # @type Author: String
        # @param SourceId: 内容来源类型，客户自定义，<b>用于物料池管理</b>
        # @type SourceId: String
        # @param Title: 内容标题，<b>主要用于语义分析</b>
        # @type Title: String
        # @param Content: 正文关键片段，建议控制在500字符以内，<b>主要用于语义分析</b>
        # @type Content: String
        # @param ContentUrl: 正文详情，主要用于语义分析，当内容过大时建议用ContentUrl传递，<b>与Content可二选一</b>
        # @type ContentUrl: String
        # @param VideoDuration: 视频时长，时间秒，大于等于0，小于 3600 * 10。<b>视频内容必填，其它内容非必填，用作特征</b>
        # @type VideoDuration: Integer
        # @param Country: 国家，ISO 3166-1 alpha-2编码，参考<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" target="_blank">ISO 3166-1 alpha-2</a>，中国：“CN”，<b>用作特征</b>
        # @type Country: String
        # @param Province: 省份，ISO 3166-2行政区编码，如中国参考<a href="https://zh.wikipedia.org/wiki/ISO_3166-2:CN" target="_blank">ISO_3166-2:CN</a>，广东省：“CN-GD”，<b>用作特征</b>
        # @type Province: String
        # @param City: 城市地区，统一用国家最新标准地区行政编码，如：<a href="https://www.mca.gov.cn/article/sj/xzqh/2020/" target="_blank">2020年行政区编码</a>，其他国家统一用国际公认城市简称或者城市编码，<b>用作特征</b>
        # @type City: String
        # @param AuthorFans: 作者粉丝数，<b>用作特征</b>
        # @type AuthorFans: Integer
        # @param AuthorLevel: 作者评级，<b>用作特征</b>
        # @type AuthorLevel: String
        # @param CollectCnt: 内容累计收藏次数，<b>用作特征</b>
        # @type CollectCnt: Integer
        # @param PraiseCnt: 内容累积点赞次数，<b>用作特征</b>
        # @type PraiseCnt: Integer
        # @param CommentCnt: 内容累计评论次数，<b>用作特征</b>
        # @type CommentCnt: Integer
        # @param ShareCnt: 内容累计分享次数，<b>用作特征</b>
        # @type ShareCnt: Integer
        # @param RewardCnt: 内容累积打赏数，<b>用作特征</b>
        # @type RewardCnt: Integer
        # @param Score: 内容质量评分，<b>用作特征</b>
        # @type Score: Float
        # @param Extension: json字符串，<b>用于物料池管理的自定义扩展</b>，需要base64加密
        # @type Extension: String

        attr_accessor :ItemId, :ItemType, :Status, :PublishTimestamp, :ExpireTimestamp, :CategoryLevel, :CategoryPath, :Tags, :Author, :SourceId, :Title, :Content, :ContentUrl, :VideoDuration, :Country, :Province, :City, :AuthorFans, :AuthorLevel, :CollectCnt, :PraiseCnt, :CommentCnt, :ShareCnt, :RewardCnt, :Score, :Extension

        def initialize(itemid=nil, itemtype=nil, status=nil, publishtimestamp=nil, expiretimestamp=nil, categorylevel=nil, categorypath=nil, tags=nil, author=nil, sourceid=nil, title=nil, content=nil, contenturl=nil, videoduration=nil, country=nil, province=nil, city=nil, authorfans=nil, authorlevel=nil, collectcnt=nil, praisecnt=nil, commentcnt=nil, sharecnt=nil, rewardcnt=nil, score=nil, extension=nil)
          @ItemId = itemid
          @ItemType = itemtype
          @Status = status
          @PublishTimestamp = publishtimestamp
          @ExpireTimestamp = expiretimestamp
          @CategoryLevel = categorylevel
          @CategoryPath = categorypath
          @Tags = tags
          @Author = author
          @SourceId = sourceid
          @Title = title
          @Content = content
          @ContentUrl = contenturl
          @VideoDuration = videoduration
          @Country = country
          @Province = province
          @City = city
          @AuthorFans = authorfans
          @AuthorLevel = authorlevel
          @CollectCnt = collectcnt
          @PraiseCnt = praisecnt
          @CommentCnt = commentcnt
          @ShareCnt = sharecnt
          @RewardCnt = rewardcnt
          @Score = score
          @Extension = extension
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @ItemType = params['ItemType']
          @Status = params['Status']
          @PublishTimestamp = params['PublishTimestamp']
          @ExpireTimestamp = params['ExpireTimestamp']
          @CategoryLevel = params['CategoryLevel']
          @CategoryPath = params['CategoryPath']
          @Tags = params['Tags']
          @Author = params['Author']
          @SourceId = params['SourceId']
          @Title = params['Title']
          @Content = params['Content']
          @ContentUrl = params['ContentUrl']
          @VideoDuration = params['VideoDuration']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @AuthorFans = params['AuthorFans']
          @AuthorLevel = params['AuthorLevel']
          @CollectCnt = params['CollectCnt']
          @PraiseCnt = params['PraiseCnt']
          @CommentCnt = params['CommentCnt']
          @ShareCnt = params['ShareCnt']
          @RewardCnt = params['RewardCnt']
          @Score = params['Score']
          @Extension = params['Extension']
        end
      end

      # 信息流行为
      class FeedBehaviorInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户唯一ID，客户自定义用户ID，作为一个用户的唯一标识
        # @type UserId: String
        # @param ItemId: 内容唯一id
        # @type ItemId: String
        # @param BehaviorType: 行为类型：<br> ● expose - 曝光，<b>必须</b><br> ● click - 点击，<b>必须</b><br/>  ● stay - 详情页停留时长，<b>强烈建议</b><br/>  ● videoover - 视频播放时长，<b>强烈建议</b><br/> ●  like - 点赞&喜欢，<b>正效果</b><br/> ● collect - 收藏，<b>正效果</b><br/> ●  share - 转发&分享，<b>正效果</b><br/> ● reward - 打赏，<b>正效果</b><br/> ● unlike - 踩&不喜欢，<b>负效果</b><br/> ●  comment - 评论<br/> 不支持的行为类型，可以映射到未被使用的其他行为类型。如实际业务数据中有私信行为，没有收藏行为，可以将私信行为映射到收藏行为
        # @type BehaviorType: String
        # @param BehaviorValue: 行为类型对应的行为值：<br/> ● expose - 曝光，固定填1<br/> ● click - 点击，固定填1<br/>  ● stay - 详情页停留时长，填停留秒数，取值[1-86400]<br/>  ● videoover - 视频播放时长，填播放结束的秒数，取值[1-86400]<br/> ●  like - 点赞&喜欢，固定填1<br/> ● collect - 收藏，固定填1<br/> ●  share - 转发&分享，固定填1<br/> ● reward - 打赏，填打赏金额，没有则填1<br/> ● unlike - 踩&不喜欢，填不喜欢的原因，没有则填1<br/> ●  comment - 评论，填评论内容，如“上海加油”
        # @type BehaviorValue: String
        # @param BehaviorTimestamp: 行为发生的时间戳： 秒级时间戳，尽量实时上报，最长不超过半小时否则会影响推荐结果的准确性
        # @type BehaviorTimestamp: Integer
        # @param SceneId: 行为发生的场景ID，在控制台创建场景后获取
        # @type SceneId: String
        # @param ItemTraceId: 推荐追踪ID，使用推荐结果中返回的ItemTraceId填入。
        # 注意：如果和推荐结果中的ItemTraceId不同，会影响行为特征归因，影响推荐算法效果
        # @type ItemTraceId: String
        # @param ItemType: 内容类型，跟内容上报类型一致，用于效果分析，不做内容校验，<b>强烈建议</b>
        # @type ItemType: String
        # @param ReferrerItemId: 相关推荐场景点击进入详情页的内容id，该字段用来注明行为发生于哪个内容的详情页推荐中，<b>相关推荐场景强烈建议</b>
        # @type ReferrerItemId: String
        # @param UserIdList: 用户设备ID数组，可传入用户的多个类型ID，详见UserIdInfo结构体，建议补齐，<b>用于构建用户画像信息</b>
        # @type UserIdList: Array
        # @param Source: 算法来源： <br>● business 业务自己的算法对照组<br/> ● tencent 腾讯算法<br/> ● other 其他算法<br/>默认为tencent，区分行为来源于哪个算法，<b>用于Poc阶段的效果对比验证</b>
        # @type Source: String
        # @param Country: 行为发生时的国家，ISO 3166-1 alpha-2编码，参考<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" target="_blank">ISO 3166-1 alpha-2</a>，中国：“CN”，<b>用作特征</b>
        # @type Country: String
        # @param Province: 行为发生时的省份，ISO 3166-2行政区编码，如中国参考<a href="https://zh.wikipedia.org/wiki/ISO_3166-2:CN" target="_blank">ISO_3166-2:CN</a>，广东省：“CN-GD”，<b>用作特征</b>
        # @type Province: String
        # @param City: 行为发生时的城市地区，统一用国家最新标准地区行政编码，如：<a href="https://www.mca.gov.cn/article/sj/xzqh/2020/" target="_blank">2020年行政区编码</a>，其他国家统一用国际公认城市简称或者城市编码，<b>用作特征</b>
        # @type City: String
        # @param IP: 行为发生时的客户端ip，<b>用作特征</b>
        # @type IP: String
        # @param Network: 行为发生时的客户端网络类型，<b>用作特征</b>
        # @type Network: String
        # @param Platform: 行为发生时的客户端平台，ios/android/h5，<b>用作特征</b>
        # @type Platform: String
        # @param AppVersion: 行为发生时的客户端app版本，<b>用作特征</b>
        # @type AppVersion: String
        # @param OsVersion: 行为发生时的操作系统版本，<b>用作特征</b>
        # @type OsVersion: String
        # @param DeviceModel: 行为发生时的机型，<b>用作特征</b>
        # @type DeviceModel: String
        # @param Extension: json字符串，<b>用于行为数据的扩展</b>，需要base64加密
        # @type Extension: String

        attr_accessor :UserId, :ItemId, :BehaviorType, :BehaviorValue, :BehaviorTimestamp, :SceneId, :ItemTraceId, :ItemType, :ReferrerItemId, :UserIdList, :Source, :Country, :Province, :City, :IP, :Network, :Platform, :AppVersion, :OsVersion, :DeviceModel, :Extension

        def initialize(userid=nil, itemid=nil, behaviortype=nil, behaviorvalue=nil, behaviortimestamp=nil, sceneid=nil, itemtraceid=nil, itemtype=nil, referreritemid=nil, useridlist=nil, source=nil, country=nil, province=nil, city=nil, ip=nil, network=nil, platform=nil, appversion=nil, osversion=nil, devicemodel=nil, extension=nil)
          @UserId = userid
          @ItemId = itemid
          @BehaviorType = behaviortype
          @BehaviorValue = behaviorvalue
          @BehaviorTimestamp = behaviortimestamp
          @SceneId = sceneid
          @ItemTraceId = itemtraceid
          @ItemType = itemtype
          @ReferrerItemId = referreritemid
          @UserIdList = useridlist
          @Source = source
          @Country = country
          @Province = province
          @City = city
          @IP = ip
          @Network = network
          @Platform = platform
          @AppVersion = appversion
          @OsVersion = osversion
          @DeviceModel = devicemodel
          @Extension = extension
        end

        def deserialize(params)
          @UserId = params['UserId']
          @ItemId = params['ItemId']
          @BehaviorType = params['BehaviorType']
          @BehaviorValue = params['BehaviorValue']
          @BehaviorTimestamp = params['BehaviorTimestamp']
          @SceneId = params['SceneId']
          @ItemTraceId = params['ItemTraceId']
          @ItemType = params['ItemType']
          @ReferrerItemId = params['ReferrerItemId']
          unless params['UserIdList'].nil?
            @UserIdList = []
            params['UserIdList'].each do |i|
              useridinfo_tmp = UserIdInfo.new
              useridinfo_tmp.deserialize(i)
              @UserIdList << useridinfo_tmp
            end
          end
          @Source = params['Source']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @IP = params['IP']
          @Network = params['Network']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @OsVersion = params['OsVersion']
          @DeviceModel = params['DeviceModel']
          @Extension = params['Extension']
        end
      end

      # FeedRecommend请求参数结构体
      class FeedRecommendRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，在控制台获取
        # @type InstanceId: String
        # @param SceneId: 场景ID，在控制台创建场景后获取
        # @type SceneId: String
        # @param UserId: 用户唯一ID，客户自定义用户ID，作为一个用户的唯一标识
        # @type UserId: String
        # @param UserIdList: 用户设备ID数组，可传入用户的多个类型ID，用于关联画像信息
        # @type UserIdList: Array
        # @param ItemCnt: 推荐返回数量，默认10个，最多支持50个的内容返回。如果有更多数量要求，<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决
        # @type ItemCnt: Integer
        # @param CurrentItemId: 当场景是相关推荐时该值必填，场景是非相关推荐时该值无效
        # @type CurrentItemId: String

        attr_accessor :InstanceId, :SceneId, :UserId, :UserIdList, :ItemCnt, :CurrentItemId

        def initialize(instanceid=nil, sceneid=nil, userid=nil, useridlist=nil, itemcnt=nil, currentitemid=nil)
          @InstanceId = instanceid
          @SceneId = sceneid
          @UserId = userid
          @UserIdList = useridlist
          @ItemCnt = itemcnt
          @CurrentItemId = currentitemid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SceneId = params['SceneId']
          @UserId = params['UserId']
          unless params['UserIdList'].nil?
            @UserIdList = []
            params['UserIdList'].each do |i|
              useridinfo_tmp = UserIdInfo.new
              useridinfo_tmp.deserialize(i)
              @UserIdList << useridinfo_tmp
            end
          end
          @ItemCnt = params['ItemCnt']
          @CurrentItemId = params['CurrentItemId']
        end
      end

      # FeedRecommend返回参数结构体
      class FeedRecommendResponse < TencentCloud::Common::AbstractModel
        # @param DataList: 推荐返回的内容信息列表
        # @type DataList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataList, :RequestId

        def initialize(datalist=nil, requestid=nil)
          @DataList = datalist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              recitemdata_tmp = RecItemData.new
              recitemdata_tmp.deserialize(i)
              @DataList << recitemdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 信息流用户信息
      class FeedUserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户唯一ID，客户自定义用户ID，作为一个用户的唯一标识
        # @type UserId: String
        # @param UserIdList: 用户设备ID数组，可传入用户的多个类型ID，详见UserIdInfo结构体，建议补齐，<b>用于构建用户画像信息</b>
        # @type UserIdList: Array
        # @param Tags: 用户标签，多个标签用英文冒号联接，<b>用作特征，强烈建议</b>
        # @type Tags: String
        # @param DislikeInfoList: 过滤列表，<b>会在推荐结果里过滤掉这类内容</b>
        # @type DislikeInfoList: Array
        # @param Age: 用户年龄
        # @type Age: Integer
        # @param Gender: 用户性别： 0 - 未知 1 - 男 2 - 女
        # @type Gender: Integer
        # @param Degree: 用户学历 ：小学，初中，高中，大专，本科，硕士，博士
        # @type Degree: String
        # @param School: 用户毕业学校全称
        # @type School: String
        # @param Occupation: 用户职业
        # @type Occupation: String
        # @param Industry: 用户所属行业
        # @type Industry: String
        # @param ResidentCountry: 用户常驻国家，ISO 3166-1 alpha-2编码，参考<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" target="_blank">ISO 3166-1 alpha-2</a>，中国：“CN”
        # @type ResidentCountry: String
        # @param ResidentProvince: 用户常驻省份，ISO 3166-2行政区编码，如中国参考<a href="https://zh.wikipedia.org/wiki/ISO_3166-2:CN" target="_blank">ISO_3166-2:CN</a>，广东省：“CN-GD”
        # @type ResidentProvince: String
        # @param ResidentCity: 用户常驻城市，统一用国家最新标准地区行政编码，如：<a href="https://www.mca.gov.cn/article/sj/xzqh/2020/" target="_blank">2020年行政区编码</a>，
        # @type ResidentCity: String
        # @param RegisterTimestamp: 用户注册时间，秒级时间戳（1639624786）
        # @type RegisterTimestamp: Integer
        # @param MembershipLevel: 用户会员等级
        # @type MembershipLevel: String
        # @param LastLoginTimestamp: 用户上一次登录时间，秒级时间戳（1639624786）
        # @type LastLoginTimestamp: Integer
        # @param LastLoginIp: 用户上一次登录的ip
        # @type LastLoginIp: String
        # @param LastModifyTimestamp: 用户信息的最后修改时间戳，秒级时间戳（1639624786）
        # @type LastModifyTimestamp: Integer
        # @param Extension: json字符串，用于画像数据的扩展，需要base64加密
        # @type Extension: String

        attr_accessor :UserId, :UserIdList, :Tags, :DislikeInfoList, :Age, :Gender, :Degree, :School, :Occupation, :Industry, :ResidentCountry, :ResidentProvince, :ResidentCity, :RegisterTimestamp, :MembershipLevel, :LastLoginTimestamp, :LastLoginIp, :LastModifyTimestamp, :Extension

        def initialize(userid=nil, useridlist=nil, tags=nil, dislikeinfolist=nil, age=nil, gender=nil, degree=nil, school=nil, occupation=nil, industry=nil, residentcountry=nil, residentprovince=nil, residentcity=nil, registertimestamp=nil, membershiplevel=nil, lastlogintimestamp=nil, lastloginip=nil, lastmodifytimestamp=nil, extension=nil)
          @UserId = userid
          @UserIdList = useridlist
          @Tags = tags
          @DislikeInfoList = dislikeinfolist
          @Age = age
          @Gender = gender
          @Degree = degree
          @School = school
          @Occupation = occupation
          @Industry = industry
          @ResidentCountry = residentcountry
          @ResidentProvince = residentprovince
          @ResidentCity = residentcity
          @RegisterTimestamp = registertimestamp
          @MembershipLevel = membershiplevel
          @LastLoginTimestamp = lastlogintimestamp
          @LastLoginIp = lastloginip
          @LastModifyTimestamp = lastmodifytimestamp
          @Extension = extension
        end

        def deserialize(params)
          @UserId = params['UserId']
          unless params['UserIdList'].nil?
            @UserIdList = []
            params['UserIdList'].each do |i|
              useridinfo_tmp = UserIdInfo.new
              useridinfo_tmp.deserialize(i)
              @UserIdList << useridinfo_tmp
            end
          end
          @Tags = params['Tags']
          unless params['DislikeInfoList'].nil?
            @DislikeInfoList = []
            params['DislikeInfoList'].each do |i|
              dislikeinfo_tmp = DislikeInfo.new
              dislikeinfo_tmp.deserialize(i)
              @DislikeInfoList << dislikeinfo_tmp
            end
          end
          @Age = params['Age']
          @Gender = params['Gender']
          @Degree = params['Degree']
          @School = params['School']
          @Occupation = params['Occupation']
          @Industry = params['Industry']
          @ResidentCountry = params['ResidentCountry']
          @ResidentProvince = params['ResidentProvince']
          @ResidentCity = params['ResidentCity']
          @RegisterTimestamp = params['RegisterTimestamp']
          @MembershipLevel = params['MembershipLevel']
          @LastLoginTimestamp = params['LastLoginTimestamp']
          @LastLoginIp = params['LastLoginIp']
          @LastModifyTimestamp = params['LastModifyTimestamp']
          @Extension = params['Extension']
        end
      end

      # 电商行为
      class GoodsBehaviorInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户唯一ID，客户自定义用户ID，作为一个用户的唯一标识
        # @type UserId: String
        # @param GoodsId: 商品唯一ID，skuId或spuId，客户根据需求自行决定商品主键粒度
        # @type GoodsId: String
        # @param BehaviorType: 行为类型：<br> ● expose - 曝光，<b>必须</b><br> ● click - 点击，<b>必须</b><br/>  ● stay - 详情页停留时长，<b>强烈建议</b><br/>  ● videoover - 视频播放时长，<b>强烈建议</b><br/> ●  like - 点赞&喜欢，<b>正效果</b><br/> ● collect - 收藏，<b>正效果</b><br/> ●  share - 转发&分享，<b>正效果</b><br/> ● reward - 打赏，<b>正效果</b><br/> ● unlike - 踩&不喜欢，<b>负效果</b><br/> ●  comment - 评论<br/> ●  order - 下单<br/> ●  buy - 购买成功<br/> ●  addcart - 加入购物车<br/>
        # 不支持的行为类型，可以映射到未被使用的其他行为类型。如实际业务数据中有私信行为，没有收藏行为，可以将私信行为映射到收藏行为
        # @type BehaviorType: String
        # @param BehaviorValue: 行为类型对应的行为值：<br/> ● expose - 曝光，固定填1<br/> ● click - 点击，固定填1<br/>  ● stay - 详情页停留时长，填停留秒数，取值[1-86400]<br/>  ● videoover - 视频播放时长，填播放结束的秒数，取值[1-86400]<br/> ●  like - 点赞&喜欢，固定填1<br/> ● collect - 收藏，固定填1<br/> ●  share - 转发&分享，固定填1<br/> ● reward - 打赏，填打赏金额，没有则填1<br/> ● unlike - 踩&不喜欢，填不喜欢的原因，没有则填1<br/> ●  comment - 评论，填评论内容，如“上海加油”<br/> ●  order - 下单，固定填1<br/> ●  buy - 购买成功，固定填1<br/> ●  addcart - 加入购物车，固定填1
        # @type BehaviorValue: String
        # @param BehaviorTimestamp: 行为发生的时间戳： 秒级时间戳，尽量实时上报，最长不超过半小时否则会影响推荐结果的准确性
        # @type BehaviorTimestamp: Integer
        # @param SceneId: 行为发生的场景ID，在控制台创建场景后获取
        # @type SceneId: String
        # @param Source: 算法来源： <br>● business 业务自己的算法对照组<br/> ● tencent 腾讯算法<br/> ● other 其他算法<br/>默认为tencent，区分行为来源于哪个算法，<b>用于Poc阶段的效果对比验证</b>
        # @type Source: String
        # @param Page: 标识行为发生在app内哪个页面，取值客户自定，可以是明文或id，建议传明文便于理解、分析，如首页，发现页，用户中心等
        # <b>用作上下文特征，刻画不同场景用户行为分布的差异</b>
        # @type Page: String
        # @param Module: 标识行为发生在页面的哪一区块，取值客户自定，可以是明文或id，建议传明文便于理解、分析，如横幅、广告位、猜你喜欢等
        # <b>用作上下文特征，刻画不同模块用户行为分布的差异</b>
        # @type Module: String
        # @param GoodsTraceId: 推荐追踪ID，使用推荐结果中返回的GoodsTraceId填入。
        # 注意：如果和推荐结果中的GoodsTraceId不同，会影响行为特征归因，影响推荐算法效果。<b>强烈建议</b>
        # @type GoodsTraceId: String
        # @param ReferrerGoodsId: 相关推荐场景点击进入详情页的内容id，该字段用来注明行为发生于哪个内容的详情页推荐中，<b>相关推荐场景强烈建议</b>
        # @type ReferrerGoodsId: String
        # @param OrderGoodsCnt: 订单商品购买个数，当behaviorType=order，buy或addcart时有值，<b>用作特征</b>
        # @type OrderGoodsCnt: Integer
        # @param OrderAmount: 订单总金额，当behaviorType=order或buy时有值（单位：元，统一货币体系，如统一为RMB，美元等），<b>用作特征</b>
        # @type OrderAmount: Float
        # @param UserIdList: 用户设备ID数组，可传入用户的多个类型ID，详见UserIdInfo结构体，建议补齐，<b>用于构建用户画像信息</b>
        # @type UserIdList: Array
        # @param UserPortraitInfo: 行为发生时用户基础特征信息，<b>用作特征</b>
        # @type UserPortraitInfo: :class:`Tencentcloud::Irp.v20220805.models.UserPortraitInfo`
        # @param Position: 标识行为发生在模块内的具体位置，如1、2、...
        # <b>用作上下文特征，刻画不同位置用户行为分布的差异</b>
        # @type Position: Integer
        # @param Extension: json字符串，<b>用于行为数据的扩展</b>
        # @type Extension: String

        attr_accessor :UserId, :GoodsId, :BehaviorType, :BehaviorValue, :BehaviorTimestamp, :SceneId, :Source, :Page, :Module, :GoodsTraceId, :ReferrerGoodsId, :OrderGoodsCnt, :OrderAmount, :UserIdList, :UserPortraitInfo, :Position, :Extension

        def initialize(userid=nil, goodsid=nil, behaviortype=nil, behaviorvalue=nil, behaviortimestamp=nil, sceneid=nil, source=nil, page=nil, _module=nil, goodstraceid=nil, referrergoodsid=nil, ordergoodscnt=nil, orderamount=nil, useridlist=nil, userportraitinfo=nil, position=nil, extension=nil)
          @UserId = userid
          @GoodsId = goodsid
          @BehaviorType = behaviortype
          @BehaviorValue = behaviorvalue
          @BehaviorTimestamp = behaviortimestamp
          @SceneId = sceneid
          @Source = source
          @Page = page
          @Module = _module
          @GoodsTraceId = goodstraceid
          @ReferrerGoodsId = referrergoodsid
          @OrderGoodsCnt = ordergoodscnt
          @OrderAmount = orderamount
          @UserIdList = useridlist
          @UserPortraitInfo = userportraitinfo
          @Position = position
          @Extension = extension
        end

        def deserialize(params)
          @UserId = params['UserId']
          @GoodsId = params['GoodsId']
          @BehaviorType = params['BehaviorType']
          @BehaviorValue = params['BehaviorValue']
          @BehaviorTimestamp = params['BehaviorTimestamp']
          @SceneId = params['SceneId']
          @Source = params['Source']
          @Page = params['Page']
          @Module = params['Module']
          @GoodsTraceId = params['GoodsTraceId']
          @ReferrerGoodsId = params['ReferrerGoodsId']
          @OrderGoodsCnt = params['OrderGoodsCnt']
          @OrderAmount = params['OrderAmount']
          unless params['UserIdList'].nil?
            @UserIdList = []
            params['UserIdList'].each do |i|
              struseridinfo_tmp = StrUserIdInfo.new
              struseridinfo_tmp.deserialize(i)
              @UserIdList << struseridinfo_tmp
            end
          end
          unless params['UserPortraitInfo'].nil?
            @UserPortraitInfo = UserPortraitInfo.new
            @UserPortraitInfo.deserialize(params['UserPortraitInfo'])
          end
          @Position = params['Position']
          @Extension = params['Extension']
        end
      end

      # 电商物料内容
      class GoodsInfo < TencentCloud::Common::AbstractModel
        # @param GoodsId: 商品唯一ID，skuId或spuId，客户根据需求自行决定商品主键粒度。建议限制在128字符以内
        # @type GoodsId: String
        # @param GoodsType: 商品物料展示类型：<br/>● article -图文<br>● text -纯文本<br/>● video -视频<br/>● short_video -时长15秒以内的视频<br/>● mini_video -竖屏视频<br/>● image -纯图片<br/>（如当前类型不满足，请<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决方案）
        # @type GoodsType: String
        # @param Status: 商品状态：
        # ● 1 - 上架
        # ● 2 - 下架
        # Status=2的内容不会在推荐结果中出现
        # 需要下架内容时，把Status的值修改为2即可
        # @type Status: Integer
        # @param PublishTimestamp: 商品生成时间，秒级时间戳（1639624786），需大于0，<b>用作特征和物料管理</b>
        # @type PublishTimestamp: Integer
        # @param ExpireTimestamp: 商品过期时间，秒级时间戳（1639624786），如未填，则默认PublishTimestamp往后延一年，<b>用作特征</b>，过期则不会被推荐，<b>强烈建议</b>
        # @type ExpireTimestamp: Integer
        # @param SpuId: spu((Standard Product Unit))维度id，商品聚合信息的最小单位，<b>强烈建议</b>
        # @type SpuId: String
        # @param CategoryLevel: 类目层级数，例如3级类目，则填3，和CategoryPath字段的类数据匹配，<b>强烈建议</b>
        # @type CategoryLevel: Integer
        # @param CategoryPath: 类目路径，一级二级三级等依次用英文冒号联接，和CategoryLevel字段值匹配，如体育：“女装:裙子:半身裙”。<b>用于物料池管理，强烈建议</b>
        # @type CategoryPath: String
        # @param Title: 商品标题，<b>主要用于语义分析</b>，<b>强烈建议</b>
        # @type Title: String
        # @param Tags: 商品标签，多个标签用英文冒号联接，<b>用作特征，强烈建议</b>
        # @type Tags: String
        # @param Brand: 商品对应的品牌，取值用户自定义，可以是品牌id或品牌明文，<b>用作特征以及打散/过滤规则，强烈建议</b>
        # @type Brand: String
        # @param ShopId: 商品所属店铺ID，取值客户自定义，<b>用作特征，强烈建议</b>
        # @type ShopId: String
        # @param OrgPrice: 商品原始价格（单位：元，统一货币体系，如统一为RMB或美元等），<b>用作特征，强烈建议</b>
        # @type OrgPrice: Float
        # @param CurPrice: 商品当前价格（单位：元，统一货币体系，如统一为RMB或美元等），<b>用作特征，强烈建议</b>
        # @type CurPrice: Float
        # @param SourceId: 商品来源类型，客户自定义，<b>用于物料池管理</b>
        # @type SourceId: String
        # @param Content: 商品正文关键片段，建议控制在500字符以内，<b>主要用于语义分析</b>
        # @type Content: String
        # @param ContentUrl: 商品正文详情，主要用于语义分析，当内容过大时建议用ContentUrl传递，<b>与Content可二选一</b>
        # @type ContentUrl: String
        # @param PicUrlList: 商品封面url，不超过10个，<b>用作特征</b>
        # @type PicUrlList: Array
        # @param Country: 卖家所在国家，ISO 3166-1 alpha-2编码，参考<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" target="_blank">ISO 3166-1 alpha-2</a>，中国：“CN”，<b>用作特征</b>
        # @type Country: String
        # @param Province: 卖家所在省份，ISO 3166-2行政区编码，如中国参考<a href="https://zh.wikipedia.org/wiki/ISO_3166-2:CN" target="_blank">ISO_3166-2:CN</a>，广东省：“CN-GD”，<b>用作特征</b>
        # @type Province: String
        # @param City: 卖家所在城市地区，统一用国家最新标准地区行政编码，如：<a href="https://www.mca.gov.cn/article/sj/xzqh/2020/" target="_blank">2020年行政区编码</a>，其他国家统一用国际公认城市简称或者城市编码，<b>用作特征</b>
        # @type City: String
        # @param FreeShipping: 商品是否包邮；1:包邮；2:不包邮；3:满足条件包邮，<b>用作特征</b>
        # @type FreeShipping: Integer
        # @param ShippingPrice: 商品邮费（单位：元，统一货币体系，如统一为RMB或美元等），<b>用作特征</b>
        # @type ShippingPrice: Float
        # @param PraiseCnt: 商品累计好评次数，<b>用作特征</b>
        # @type PraiseCnt: Integer
        # @param CommentCnt: 商品累计评论次数，<b>用作特征</b>
        # @type CommentCnt: Integer
        # @param ShareCnt: 商品累计分享次数，<b>用作特征</b>
        # @type ShareCnt: Integer
        # @param CollectCnt: 商品累计收藏次数，<b>用作特征</b>
        # @type CollectCnt: Integer
        # @param OrderCnt: 商品累积成交次数，<b>用作特征</b>
        # @type OrderCnt: Integer
        # @param Score: 商品平均客户评分，取值范围用户自定，<b>用作特征</b>
        # @type Score: Float
        # @param Extension: json字符串，<b>用于物料池管理的自定义扩展</b>
        # @type Extension: String

        attr_accessor :GoodsId, :GoodsType, :Status, :PublishTimestamp, :ExpireTimestamp, :SpuId, :CategoryLevel, :CategoryPath, :Title, :Tags, :Brand, :ShopId, :OrgPrice, :CurPrice, :SourceId, :Content, :ContentUrl, :PicUrlList, :Country, :Province, :City, :FreeShipping, :ShippingPrice, :PraiseCnt, :CommentCnt, :ShareCnt, :CollectCnt, :OrderCnt, :Score, :Extension

        def initialize(goodsid=nil, goodstype=nil, status=nil, publishtimestamp=nil, expiretimestamp=nil, spuid=nil, categorylevel=nil, categorypath=nil, title=nil, tags=nil, brand=nil, shopid=nil, orgprice=nil, curprice=nil, sourceid=nil, content=nil, contenturl=nil, picurllist=nil, country=nil, province=nil, city=nil, freeshipping=nil, shippingprice=nil, praisecnt=nil, commentcnt=nil, sharecnt=nil, collectcnt=nil, ordercnt=nil, score=nil, extension=nil)
          @GoodsId = goodsid
          @GoodsType = goodstype
          @Status = status
          @PublishTimestamp = publishtimestamp
          @ExpireTimestamp = expiretimestamp
          @SpuId = spuid
          @CategoryLevel = categorylevel
          @CategoryPath = categorypath
          @Title = title
          @Tags = tags
          @Brand = brand
          @ShopId = shopid
          @OrgPrice = orgprice
          @CurPrice = curprice
          @SourceId = sourceid
          @Content = content
          @ContentUrl = contenturl
          @PicUrlList = picurllist
          @Country = country
          @Province = province
          @City = city
          @FreeShipping = freeshipping
          @ShippingPrice = shippingprice
          @PraiseCnt = praisecnt
          @CommentCnt = commentcnt
          @ShareCnt = sharecnt
          @CollectCnt = collectcnt
          @OrderCnt = ordercnt
          @Score = score
          @Extension = extension
        end

        def deserialize(params)
          @GoodsId = params['GoodsId']
          @GoodsType = params['GoodsType']
          @Status = params['Status']
          @PublishTimestamp = params['PublishTimestamp']
          @ExpireTimestamp = params['ExpireTimestamp']
          @SpuId = params['SpuId']
          @CategoryLevel = params['CategoryLevel']
          @CategoryPath = params['CategoryPath']
          @Title = params['Title']
          @Tags = params['Tags']
          @Brand = params['Brand']
          @ShopId = params['ShopId']
          @OrgPrice = params['OrgPrice']
          @CurPrice = params['CurPrice']
          @SourceId = params['SourceId']
          @Content = params['Content']
          @ContentUrl = params['ContentUrl']
          @PicUrlList = params['PicUrlList']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @FreeShipping = params['FreeShipping']
          @ShippingPrice = params['ShippingPrice']
          @PraiseCnt = params['PraiseCnt']
          @CommentCnt = params['CommentCnt']
          @ShareCnt = params['ShareCnt']
          @CollectCnt = params['CollectCnt']
          @OrderCnt = params['OrderCnt']
          @Score = params['Score']
          @Extension = params['Extension']
        end
      end

      # 推荐返回的内容信息
      class RecGoodsData < TencentCloud::Common::AbstractModel
        # @param GoodsId: 推荐返回的商品ID
        # @type GoodsId: String
        # @param Score: 推荐结果分，取值范围[0,1000000]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Float
        # @param GoodsTraceId: 推荐追踪id，本次推荐内容产生的后续行为上报均要用该GoodsTraceId上报。每次接口调用返回的GoodsTraceId不同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsTraceId: String
        # @param Position: 商品所在位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: Integer

        attr_accessor :GoodsId, :Score, :GoodsTraceId, :Position

        def initialize(goodsid=nil, score=nil, goodstraceid=nil, position=nil)
          @GoodsId = goodsid
          @Score = score
          @GoodsTraceId = goodstraceid
          @Position = position
        end

        def deserialize(params)
          @GoodsId = params['GoodsId']
          @Score = params['Score']
          @GoodsTraceId = params['GoodsTraceId']
          @Position = params['Position']
        end
      end

      # 推荐返回的内容信息
      class RecItemData < TencentCloud::Common::AbstractModel
        # @param ItemId: 推荐的内容ID
        # @type ItemId: String
        # @param ItemType: 内容类型，同内容上报类型一致
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemType: String
        # @param ItemTraceId: 推荐追踪id，本次推荐内容产生的后续行为上报均要用该ItemTraceId上报。每次接口调用返回的ItemTraceId不同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemTraceId: String
        # @param Score: 推荐预测分，分值越高被推荐的理由越充分，取值范围[0,1000000]，用于做二次排序的参考
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Float

        attr_accessor :ItemId, :ItemType, :ItemTraceId, :Score

        def initialize(itemid=nil, itemtype=nil, itemtraceid=nil, score=nil)
          @ItemId = itemid
          @ItemType = itemtype
          @ItemTraceId = itemtraceid
          @Score = score
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @ItemType = params['ItemType']
          @ItemTraceId = params['ItemTraceId']
          @Score = params['Score']
        end
      end

      # ReportFeedBehavior请求参数结构体
      class ReportFeedBehaviorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，在控制台获取
        # @type InstanceId: String
        # @param FeedBehaviorList: 上报的行为数据数组，数量不超过50
        # @type FeedBehaviorList: Array

        attr_accessor :InstanceId, :FeedBehaviorList

        def initialize(instanceid=nil, feedbehaviorlist=nil)
          @InstanceId = instanceid
          @FeedBehaviorList = feedbehaviorlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['FeedBehaviorList'].nil?
            @FeedBehaviorList = []
            params['FeedBehaviorList'].each do |i|
              feedbehaviorinfo_tmp = FeedBehaviorInfo.new
              feedbehaviorinfo_tmp.deserialize(i)
              @FeedBehaviorList << feedbehaviorinfo_tmp
            end
          end
        end
      end

      # ReportFeedBehavior返回参数结构体
      class ReportFeedBehaviorResponse < TencentCloud::Common::AbstractModel
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

      # ReportFeedItem请求参数结构体
      class ReportFeedItemRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，在控制台获取
        # @type InstanceId: String
        # @param FeedItemList: 上报的信息流内容数组，一次数量不超过50
        # @type FeedItemList: Array

        attr_accessor :InstanceId, :FeedItemList

        def initialize(instanceid=nil, feeditemlist=nil)
          @InstanceId = instanceid
          @FeedItemList = feeditemlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['FeedItemList'].nil?
            @FeedItemList = []
            params['FeedItemList'].each do |i|
              docitem_tmp = DocItem.new
              docitem_tmp.deserialize(i)
              @FeedItemList << docitem_tmp
            end
          end
        end
      end

      # ReportFeedItem返回参数结构体
      class ReportFeedItemResponse < TencentCloud::Common::AbstractModel
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

      # ReportFeedUser请求参数结构体
      class ReportFeedUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，在控制台获取
        # @type InstanceId: String
        # @param FeedUserList: 上报的用户信息数组，数量不超过50
        # @type FeedUserList: Array

        attr_accessor :InstanceId, :FeedUserList

        def initialize(instanceid=nil, feeduserlist=nil)
          @InstanceId = instanceid
          @FeedUserList = feeduserlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['FeedUserList'].nil?
            @FeedUserList = []
            params['FeedUserList'].each do |i|
              feeduserinfo_tmp = FeedUserInfo.new
              feeduserinfo_tmp.deserialize(i)
              @FeedUserList << feeduserinfo_tmp
            end
          end
        end
      end

      # ReportFeedUser返回参数结构体
      class ReportFeedUserResponse < TencentCloud::Common::AbstractModel
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

      # ReportGoodsBehavior请求参数结构体
      class ReportGoodsBehaviorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，在控制台获取
        # @type InstanceId: String
        # @param GoodsBehaviorList: 上报的商品对应的用户行为数据数组，数量不超过50
        # @type GoodsBehaviorList: Array

        attr_accessor :InstanceId, :GoodsBehaviorList

        def initialize(instanceid=nil, goodsbehaviorlist=nil)
          @InstanceId = instanceid
          @GoodsBehaviorList = goodsbehaviorlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GoodsBehaviorList'].nil?
            @GoodsBehaviorList = []
            params['GoodsBehaviorList'].each do |i|
              goodsbehaviorinfo_tmp = GoodsBehaviorInfo.new
              goodsbehaviorinfo_tmp.deserialize(i)
              @GoodsBehaviorList << goodsbehaviorinfo_tmp
            end
          end
        end
      end

      # ReportGoodsBehavior返回参数结构体
      class ReportGoodsBehaviorResponse < TencentCloud::Common::AbstractModel
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

      # ReportGoodsInfo请求参数结构体
      class ReportGoodsInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，在控制台获取
        # @type InstanceId: String
        # @param GoodsList: 上报的商品数组，一次数量不超过50
        # @type GoodsList: Array

        attr_accessor :InstanceId, :GoodsList

        def initialize(instanceid=nil, goodslist=nil)
          @InstanceId = instanceid
          @GoodsList = goodslist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['GoodsList'].nil?
            @GoodsList = []
            params['GoodsList'].each do |i|
              goodsinfo_tmp = GoodsInfo.new
              goodsinfo_tmp.deserialize(i)
              @GoodsList << goodsinfo_tmp
            end
          end
        end
      end

      # ReportGoodsInfo返回参数结构体
      class ReportGoodsInfoResponse < TencentCloud::Common::AbstractModel
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

      # 用户信息
      class StrUserIdInfo < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # 用户ID信息
      class UserIdInfo < TencentCloud::Common::AbstractModel
        # @param Type: 用户ID类型： <br/>● qq: qq号码 <br/>● qq_md5：qq的md5值 <br/>● imei：设备imei <br/>● imei_md5：imei的md5值 <br/>● idfa: Apple 向用户设备随机分配的设备标识符 <br/>● idfa_md5：idfa的md5值 <br/>● oaid：安卓10之后一种非永久性设备标识符 <br/>● oaid_md5：md5后的oaid <br/>● wx_openid：微信openid <br/>● qq_openid：QQ的openid <br/>● phone：电话号码 <br/>● phone_md5：md5后的电话号码 <br/>● phone_sha256：SHA256加密的手机号 <br/>● phone_sm3：国密SM3加密的手机号 <br/>（如当前类型不满足，请<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决方案）
        # @type Type: String
        # @param Value: 用户ID值
        # @type Value: String

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

      # 用户基础画像
      class UserPortraitInfo < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

    end
  end
end

