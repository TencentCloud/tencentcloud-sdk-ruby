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
    module V20220324
      # 作者信息
      class AuthorInfo < TencentCloud::Common::AbstractModel
        # @param Id: 作者id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 作者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param SourceId: 作者来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceId: Integer
        # @param FollowType: 关注类型：1-关注，2-取关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowType: Integer
        # @param IconUrl: 作者头像icon地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IconUrl: String

        attr_accessor :Id, :Name, :SourceId, :FollowType, :IconUrl

        def initialize(id=nil, name=nil, sourceid=nil, followtype=nil, iconurl=nil)
          @Id = id
          @Name = name
          @SourceId = sourceid
          @FollowType = followtype
          @IconUrl = iconurl
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @SourceId = params['SourceId']
          @FollowType = params['FollowType']
          @IconUrl = params['IconUrl']
        end
      end

      # 不喜欢信息
      class DislikeInfo < TencentCloud::Common::AbstractModel
        # @param Type: 不喜欢的物料类别，对应物料上传协议中的字段名，如authorId，keyword，topic等
        # @type Type: String
        # @param Value: type对应字段名的值，如具体的topic名，作者id等
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

      # 行为数据
      class DocBehavior < TencentCloud::Common::AbstractModel
        # @param ItemId: 内容唯一ID，如 2824324234
        # @type ItemId: String
        # @param BehaviorType: 行为类型
        # @type BehaviorType: Integer
        # @param BehaviorValue: 行为值
        # @type BehaviorValue: String
        # @param BehaviorTimestamp: 行为时间戳： 秒级时间戳（默认为当前时间）,不能延迟太久，尽量实时上报，否则会影响推荐结果的准确性。
        # @type BehaviorTimestamp: Integer
        # @param SceneId: 场景id，在控制台创建场景后获取。
        # @type SceneId: String
        # @param UserIdList: 用户id列表
        # @type UserIdList: Array
        # @param RecTraceId: 会话id，使用获取推荐结果中返回的RecTraceId填入。<br>注意：如果和在线推荐请求中的traceId不同，会影响行为特征归因，影响推荐算法效果
        # @type RecTraceId: String
        # @param Source: 算法来源：用来区分行为来源于哪个算法。值为**business，tencent，other** 三者之一<br>● business 表示业务自己的算法对照组<br>● tencent 为腾讯算法<br>● other 为其他算法
        # @type Source: String
        # @param ItemType: 物料类型
        # @type ItemType: Integer
        # @param AppId: 微信开放平台上查看appId
        # @type AppId: String
        # @param VideoPlayDuration: 回传video_over事件的时候，回传的用户播放视频的总时长（真正播放的，拖动不算，单位为秒）
        # @type VideoPlayDuration: Integer
        # @param ReferrerItemId: 来源物料内容：用来标识在指定内容页面产生的行为，如需要统计用户在A内容详情页里，对推荐内容B点击等行为，则ReferrerItemId代表内容A，ItemId代表内容B
        # @type ReferrerItemId: String
        # @param Country: 国家，统一用简写，比如中国则填写CN
        # @type Country: String
        # @param Province: 省
        # @type Province: String
        # @param City: 城市
        # @type City: String
        # @param District: 区县
        # @type District: String
        # @param IP: 客户端ip
        # @type IP: String
        # @param Network: 客户端网络类型
        # @type Network: String
        # @param Platform: 客户端平台，ios/android/h5
        # @type Platform: String
        # @param AppVersion: 客户端app版本
        # @type AppVersion: String
        # @param OsVersion: 操作系统版本
        # @type OsVersion: String
        # @param DeviceModel: 机型
        # @type DeviceModel: String
        # @param Extension: json字符串，用于行为数据的扩展
        # @type Extension: String

        attr_accessor :ItemId, :BehaviorType, :BehaviorValue, :BehaviorTimestamp, :SceneId, :UserIdList, :RecTraceId, :Source, :ItemType, :AppId, :VideoPlayDuration, :ReferrerItemId, :Country, :Province, :City, :District, :IP, :Network, :Platform, :AppVersion, :OsVersion, :DeviceModel, :Extension

        def initialize(itemid=nil, behaviortype=nil, behaviorvalue=nil, behaviortimestamp=nil, sceneid=nil, useridlist=nil, rectraceid=nil, source=nil, itemtype=nil, appid=nil, videoplayduration=nil, referreritemid=nil, country=nil, province=nil, city=nil, district=nil, ip=nil, network=nil, platform=nil, appversion=nil, osversion=nil, devicemodel=nil, extension=nil)
          @ItemId = itemid
          @BehaviorType = behaviortype
          @BehaviorValue = behaviorvalue
          @BehaviorTimestamp = behaviortimestamp
          @SceneId = sceneid
          @UserIdList = useridlist
          @RecTraceId = rectraceid
          @Source = source
          @ItemType = itemtype
          @AppId = appid
          @VideoPlayDuration = videoplayduration
          @ReferrerItemId = referreritemid
          @Country = country
          @Province = province
          @City = city
          @District = district
          @IP = ip
          @Network = network
          @Platform = platform
          @AppVersion = appversion
          @OsVersion = osversion
          @DeviceModel = devicemodel
          @Extension = extension
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @BehaviorType = params['BehaviorType']
          @BehaviorValue = params['BehaviorValue']
          @BehaviorTimestamp = params['BehaviorTimestamp']
          @SceneId = params['SceneId']
          unless params['UserIdList'].nil?
            @UserIdList = []
            params['UserIdList'].each do |i|
              useridinfo_tmp = UserIdInfo.new
              useridinfo_tmp.deserialize(i)
              @UserIdList << useridinfo_tmp
            end
          end
          @RecTraceId = params['RecTraceId']
          @Source = params['Source']
          @ItemType = params['ItemType']
          @AppId = params['AppId']
          @VideoPlayDuration = params['VideoPlayDuration']
          @ReferrerItemId = params['ReferrerItemId']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @District = params['District']
          @IP = params['IP']
          @Network = params['Network']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @OsVersion = params['OsVersion']
          @DeviceModel = params['DeviceModel']
          @Extension = params['Extension']
        end
      end

      # 推荐物料信息
      class DocItem < TencentCloud::Common::AbstractModel
        # @param ItemId: 内容唯一id
        # @type ItemId: String
        # @param ItemType: 内容类型
        # @type ItemType: Integer
        # @param Status: 内容状态：1 - 上架， 2 - 下架
        # @type Status: Integer
        # @param PublishTimestamp: 内容生成时间，秒级时间戳（1639624786），需大于0
        # @type PublishTimestamp: Integer
        # @param SourceId: 物料来源ID
        # @type SourceId: Integer
        # @param Title: 标题名称
        # @type Title: String
        # @param Content: 内容正文
        # @type Content: String
        # @param Author: 作者
        # @type Author: String
        # @param AuthorId: 作者id
        # @type AuthorId: String
        # @param Keyword: 标签关键词，多个用英文分号分割
        # @type Keyword: String
        # @param Desc: 内容物料描述：物料的描述信息，推荐系统会对内容的描述信息，使用否LP技术，进行分词、提取关键词，作为news的特征使用。
        # @type Desc: String
        # @param PicUrlList: 图片url
        # @type PicUrlList: Array
        # @param VideoUrlList: 视频url
        # @type VideoUrlList: Array
        # @param VideoDuration: 视频时长，时间秒
        # @type VideoDuration: Integer
        # @param CategoryLevel: 类目层级数，例如3级类目，则填3，和CategoryPath字段的类数据匹配
        # @type CategoryLevel: Integer
        # @param CategoryPath: 类目路径，一级二级三级等依次用英文冒号联接，如体育：“足球:巴塞罗那”
        # @type CategoryPath: String
        # @param Country: 国家，统一用简写，比如中国则填写CN
        # @type Country: String
        # @param Province: 省
        # @type Province: String
        # @param City: 城市
        # @type City: String
        # @param District: 区县
        # @type District: String
        # @param ExpireTimestamp: 内容过期时间，秒级时间戳（1639624786），如未填，则默认PublishTimestamp往后延一年
        # @type ExpireTimestamp: Integer
        # @param Topic: 所属话题
        # @type Topic: String
        # @param AuthorFans: 作者粉丝数
        # @type AuthorFans: Integer
        # @param AuthorLevel: 作者评级
        # @type AuthorLevel: String
        # @param CollectCnt: 内容累计收藏次数
        # @type CollectCnt: Integer
        # @param PraiseCnt: 内容累积点赞次数
        # @type PraiseCnt: Integer
        # @param CommentCnt: 内容累计评论次数
        # @type CommentCnt: Integer
        # @param ShareCnt: 内容累计分享次数
        # @type ShareCnt: Integer
        # @param RewardCnt: 内容累积打赏数
        # @type RewardCnt: Integer
        # @param Score: 内容质量评分，类似豆瓣电影的评分，这里为100分制，比如97分，满分100分，最低0分，范围外的将会被拦截
        # @type Score: Float
        # @param PoolIdList: 内容池id，用于分内容池召回，一个内容支持指定一个或多个内容池， 内容池id不建议使用0（0表示不区分内容池）
        # @type PoolIdList: Array
        # @param TagInfoList: 描述用户标签
        # @type TagInfoList: Array
        # @param Extension: json字符串，用于物料数据的扩展
        # @type Extension: String

        attr_accessor :ItemId, :ItemType, :Status, :PublishTimestamp, :SourceId, :Title, :Content, :Author, :AuthorId, :Keyword, :Desc, :PicUrlList, :VideoUrlList, :VideoDuration, :CategoryLevel, :CategoryPath, :Country, :Province, :City, :District, :ExpireTimestamp, :Topic, :AuthorFans, :AuthorLevel, :CollectCnt, :PraiseCnt, :CommentCnt, :ShareCnt, :RewardCnt, :Score, :PoolIdList, :TagInfoList, :Extension

        def initialize(itemid=nil, itemtype=nil, status=nil, publishtimestamp=nil, sourceid=nil, title=nil, content=nil, author=nil, authorid=nil, keyword=nil, desc=nil, picurllist=nil, videourllist=nil, videoduration=nil, categorylevel=nil, categorypath=nil, country=nil, province=nil, city=nil, district=nil, expiretimestamp=nil, topic=nil, authorfans=nil, authorlevel=nil, collectcnt=nil, praisecnt=nil, commentcnt=nil, sharecnt=nil, rewardcnt=nil, score=nil, poolidlist=nil, taginfolist=nil, extension=nil)
          @ItemId = itemid
          @ItemType = itemtype
          @Status = status
          @PublishTimestamp = publishtimestamp
          @SourceId = sourceid
          @Title = title
          @Content = content
          @Author = author
          @AuthorId = authorid
          @Keyword = keyword
          @Desc = desc
          @PicUrlList = picurllist
          @VideoUrlList = videourllist
          @VideoDuration = videoduration
          @CategoryLevel = categorylevel
          @CategoryPath = categorypath
          @Country = country
          @Province = province
          @City = city
          @District = district
          @ExpireTimestamp = expiretimestamp
          @Topic = topic
          @AuthorFans = authorfans
          @AuthorLevel = authorlevel
          @CollectCnt = collectcnt
          @PraiseCnt = praisecnt
          @CommentCnt = commentcnt
          @ShareCnt = sharecnt
          @RewardCnt = rewardcnt
          @Score = score
          @PoolIdList = poolidlist
          @TagInfoList = taginfolist
          @Extension = extension
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @ItemType = params['ItemType']
          @Status = params['Status']
          @PublishTimestamp = params['PublishTimestamp']
          @SourceId = params['SourceId']
          @Title = params['Title']
          @Content = params['Content']
          @Author = params['Author']
          @AuthorId = params['AuthorId']
          @Keyword = params['Keyword']
          @Desc = params['Desc']
          @PicUrlList = params['PicUrlList']
          @VideoUrlList = params['VideoUrlList']
          @VideoDuration = params['VideoDuration']
          @CategoryLevel = params['CategoryLevel']
          @CategoryPath = params['CategoryPath']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @District = params['District']
          @ExpireTimestamp = params['ExpireTimestamp']
          @Topic = params['Topic']
          @AuthorFans = params['AuthorFans']
          @AuthorLevel = params['AuthorLevel']
          @CollectCnt = params['CollectCnt']
          @PraiseCnt = params['PraiseCnt']
          @CommentCnt = params['CommentCnt']
          @ShareCnt = params['ShareCnt']
          @RewardCnt = params['RewardCnt']
          @Score = params['Score']
          @PoolIdList = params['PoolIdList']
          unless params['TagInfoList'].nil?
            @TagInfoList = []
            params['TagInfoList'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagInfoList << taginfo_tmp
            end
          end
          @Extension = params['Extension']
        end
      end

      # 画像信息
      class PortraitInfo < TencentCloud::Common::AbstractModel
        # @param UserIdList: 用户id列表
        # @type UserIdList: Array
        # @param AppId: 如果"userIdType"是10则必传，在微信开放平台上查看appId
        # @type AppId: String
        # @param Age: 用户年龄，值域在 0-200
        # @type Age: Integer
        # @param Gender: 用户性别：0-未知，1-男， 2-女
        # @type Gender: Integer
        # @param Degree: 用户学历 ：小学，初中，高中，大专，本科，硕士，博士
        # @type Degree: String
        # @param School: 用户毕业学校全称
        # @type School: String
        # @param Occupation: 用户职业，保证业务的唯一性
        # @type Occupation: String
        # @param Industry: 用户所属行业，保证业务的唯一性
        # @type Industry: String
        # @param ResidentCountry: 用户常驻国家，统一用简写，比如中国则填写CN
        # @type ResidentCountry: String
        # @param ResidentProvince: 用户常驻省份
        # @type ResidentProvince: String
        # @param ResidentCity: 用户常驻城市
        # @type ResidentCity: String
        # @param ResidentDistrict: 用户常驻区县
        # @type ResidentDistrict: String
        # @param PhoneMd5: 用户手机的MD5值
        # @type PhoneMd5: String
        # @param PhoneImei: 用户手机的IMEI号
        # @type PhoneImei: String
        # @param Idfa: 设备idfa信息
        # @type Idfa: String
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
        # @param TagInfoList: 用户标签
        # @type TagInfoList: Array
        # @param AuthorInfoList: 用户关注作者列表
        # @type AuthorInfoList: Array
        # @param DislikeInfoList: 用户不喜欢列表
        # @type DislikeInfoList: Array
        # @param Extension: json字符串，用于画像数据的扩展
        # @type Extension: String
        # @param Oaid: 设备oaid信息
        # @type Oaid: String
        # @param AndroidId: 设备AndroidId信息
        # @type AndroidId: String

        attr_accessor :UserIdList, :AppId, :Age, :Gender, :Degree, :School, :Occupation, :Industry, :ResidentCountry, :ResidentProvince, :ResidentCity, :ResidentDistrict, :PhoneMd5, :PhoneImei, :Idfa, :RegisterTimestamp, :MembershipLevel, :LastLoginTimestamp, :LastLoginIp, :LastModifyTimestamp, :TagInfoList, :AuthorInfoList, :DislikeInfoList, :Extension, :Oaid, :AndroidId

        def initialize(useridlist=nil, appid=nil, age=nil, gender=nil, degree=nil, school=nil, occupation=nil, industry=nil, residentcountry=nil, residentprovince=nil, residentcity=nil, residentdistrict=nil, phonemd5=nil, phoneimei=nil, idfa=nil, registertimestamp=nil, membershiplevel=nil, lastlogintimestamp=nil, lastloginip=nil, lastmodifytimestamp=nil, taginfolist=nil, authorinfolist=nil, dislikeinfolist=nil, extension=nil, oaid=nil, androidid=nil)
          @UserIdList = useridlist
          @AppId = appid
          @Age = age
          @Gender = gender
          @Degree = degree
          @School = school
          @Occupation = occupation
          @Industry = industry
          @ResidentCountry = residentcountry
          @ResidentProvince = residentprovince
          @ResidentCity = residentcity
          @ResidentDistrict = residentdistrict
          @PhoneMd5 = phonemd5
          @PhoneImei = phoneimei
          @Idfa = idfa
          @RegisterTimestamp = registertimestamp
          @MembershipLevel = membershiplevel
          @LastLoginTimestamp = lastlogintimestamp
          @LastLoginIp = lastloginip
          @LastModifyTimestamp = lastmodifytimestamp
          @TagInfoList = taginfolist
          @AuthorInfoList = authorinfolist
          @DislikeInfoList = dislikeinfolist
          @Extension = extension
          @Oaid = oaid
          @AndroidId = androidid
        end

        def deserialize(params)
          unless params['UserIdList'].nil?
            @UserIdList = []
            params['UserIdList'].each do |i|
              useridinfo_tmp = UserIdInfo.new
              useridinfo_tmp.deserialize(i)
              @UserIdList << useridinfo_tmp
            end
          end
          @AppId = params['AppId']
          @Age = params['Age']
          @Gender = params['Gender']
          @Degree = params['Degree']
          @School = params['School']
          @Occupation = params['Occupation']
          @Industry = params['Industry']
          @ResidentCountry = params['ResidentCountry']
          @ResidentProvince = params['ResidentProvince']
          @ResidentCity = params['ResidentCity']
          @ResidentDistrict = params['ResidentDistrict']
          @PhoneMd5 = params['PhoneMd5']
          @PhoneImei = params['PhoneImei']
          @Idfa = params['Idfa']
          @RegisterTimestamp = params['RegisterTimestamp']
          @MembershipLevel = params['MembershipLevel']
          @LastLoginTimestamp = params['LastLoginTimestamp']
          @LastLoginIp = params['LastLoginIp']
          @LastModifyTimestamp = params['LastModifyTimestamp']
          unless params['TagInfoList'].nil?
            @TagInfoList = []
            params['TagInfoList'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagInfoList << taginfo_tmp
            end
          end
          unless params['AuthorInfoList'].nil?
            @AuthorInfoList = []
            params['AuthorInfoList'].each do |i|
              authorinfo_tmp = AuthorInfo.new
              authorinfo_tmp.deserialize(i)
              @AuthorInfoList << authorinfo_tmp
            end
          end
          unless params['DislikeInfoList'].nil?
            @DislikeInfoList = []
            params['DislikeInfoList'].each do |i|
              dislikeinfo_tmp = DislikeInfo.new
              dislikeinfo_tmp.deserialize(i)
              @DislikeInfoList << dislikeinfo_tmp
            end
          end
          @Extension = params['Extension']
          @Oaid = params['Oaid']
          @AndroidId = params['AndroidId']
        end
      end

      # 推荐内容信息
      class RecItemData < TencentCloud::Common::AbstractModel
        # @param ItemId: 推荐的内容id，即用户行为上报中的itemId
        # @type ItemId: String
        # @param ItemType: 物料子类型，包括如下： 1-图文、2-长视频（横视频）、3-短视频（横视频）、4-小说、5-小视频（竖视频）、6-纯文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemType: Integer
        # @param Weight: 推荐内容的权重，取值范围[0,1000000]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param Score: 推荐预测分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Float
        # @param Keyword: 关键词，多个用英文分号分割，和物料上传的keyword一致
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keyword: String

        attr_accessor :ItemId, :ItemType, :Weight, :Score, :Keyword

        def initialize(itemid=nil, itemtype=nil, weight=nil, score=nil, keyword=nil)
          @ItemId = itemid
          @ItemType = itemtype
          @Weight = weight
          @Score = score
          @Keyword = keyword
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @ItemType = params['ItemType']
          @Weight = params['Weight']
          @Score = params['Score']
          @Keyword = params['Keyword']
        end
      end

      # RecommendContent请求参数结构体
      class RecommendContentRequest < TencentCloud::Common::AbstractModel
        # @param Bid: 业务id
        # @type Bid: String
        # @param SceneId: 场景id：比如有“猜你喜欢”，“热门内容”等推荐模块，每一个模块都有一个scene_id来表示。 在控制台创建场景后获取。需要跟行为上报时的id一致
        # @type SceneId: String
        # @param UserIdList: 用户唯一ID数组，每个数组元素详见userId结构体，若不填，则接口返回热门结果
        # @type UserIdList: Array
        # @param RecTraceId: 会话id：必须和行为数据上报时所填写的traceId相同，用于行为数据来自于那次在线推荐请求的归因。**注意：此处如果没传，则响应会返回一个全局唯一ID返回给客户，并需客户透传给行为日志上报接口**
        # @type RecTraceId: String
        # @param ItemCnt: 推荐数量：物料优选的结果， 默认50个，目前最多支持200个的内容返回，如果返回个数更多，会影响性能，容易超时。
        # @type ItemCnt: Integer
        # @param PoolId: 物料池id，用于召回该pool_id下的商品，如果有多个，用英文;分割。**注意：此处poolId需和物料上报时的poolIdList对应上**
        # @type PoolId: String
        # @param CurrentItemId: 来源物料id，即用户当前浏览的物料id，用于在内容详情页获取关联推荐内容
        # @type CurrentItemId: String
        # @param ResponseTimeout: 请求响应超时时间，单位ms，默认300ms，数值设置的过小，会影响推荐效果，最小支持250ms
        # @type ResponseTimeout: Integer
        # @param ItemTypeRatio: 返回结果中不同物料类型的比例，比例顺序需严格按照（图文，长视频，短视频，小视频）进行。只允许传[0,100]数字，多个请用**英文冒号**分割，且加起来不能超过100，以及比例数量不能超过**场景绑定的物料类型**（图文，长视频，短视频，小视频）数。**示例：**图文和短视频比例为40%:60%时，则填40:60图文和短视频比例为0%:100%时，则填0:100图文，长视频和短视频的比例为，图文占20%，剩余80%由长视频和短视频随机返回，则填20:80或仅填20均可
        # @type ItemTypeRatio: String

        attr_accessor :Bid, :SceneId, :UserIdList, :RecTraceId, :ItemCnt, :PoolId, :CurrentItemId, :ResponseTimeout, :ItemTypeRatio

        def initialize(bid=nil, sceneid=nil, useridlist=nil, rectraceid=nil, itemcnt=nil, poolid=nil, currentitemid=nil, responsetimeout=nil, itemtyperatio=nil)
          @Bid = bid
          @SceneId = sceneid
          @UserIdList = useridlist
          @RecTraceId = rectraceid
          @ItemCnt = itemcnt
          @PoolId = poolid
          @CurrentItemId = currentitemid
          @ResponseTimeout = responsetimeout
          @ItemTypeRatio = itemtyperatio
        end

        def deserialize(params)
          @Bid = params['Bid']
          @SceneId = params['SceneId']
          unless params['UserIdList'].nil?
            @UserIdList = []
            params['UserIdList'].each do |i|
              useridinfo_tmp = UserIdInfo.new
              useridinfo_tmp.deserialize(i)
              @UserIdList << useridinfo_tmp
            end
          end
          @RecTraceId = params['RecTraceId']
          @ItemCnt = params['ItemCnt']
          @PoolId = params['PoolId']
          @CurrentItemId = params['CurrentItemId']
          @ResponseTimeout = params['ResponseTimeout']
          @ItemTypeRatio = params['ItemTypeRatio']
        end
      end

      # RecommendContent返回参数结构体
      class RecommendContentResponse < TencentCloud::Common::AbstractModel
        # @param RecTraceId: 推荐追踪id，用于行为上报。每次接口调用返回的traceId不同
        # @type RecTraceId: String
        # @param DataList: 标识具体的物料信息
        # @type DataList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecTraceId, :DataList, :RequestId

        def initialize(rectraceid=nil, datalist=nil, requestid=nil)
          @RecTraceId = rectraceid
          @DataList = datalist
          @RequestId = requestid
        end

        def deserialize(params)
          @RecTraceId = params['RecTraceId']
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

      # ReportAction请求参数结构体
      class ReportActionRequest < TencentCloud::Common::AbstractModel
        # @param Bid: 业务id
        # @type Bid: String
        # @param DocBehaviorList: 上报的行为对象数组，数量不超过50
        # @type DocBehaviorList: Array

        attr_accessor :Bid, :DocBehaviorList

        def initialize(bid=nil, docbehaviorlist=nil)
          @Bid = bid
          @DocBehaviorList = docbehaviorlist
        end

        def deserialize(params)
          @Bid = params['Bid']
          unless params['DocBehaviorList'].nil?
            @DocBehaviorList = []
            params['DocBehaviorList'].each do |i|
              docbehavior_tmp = DocBehavior.new
              docbehavior_tmp.deserialize(i)
              @DocBehaviorList << docbehavior_tmp
            end
          end
        end
      end

      # ReportAction返回参数结构体
      class ReportActionResponse < TencentCloud::Common::AbstractModel
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

      # ReportMaterial请求参数结构体
      class ReportMaterialRequest < TencentCloud::Common::AbstractModel
        # @param Bid: 业务id
        # @type Bid: String
        # @param DocItemList: 上报的信息流数组，一次数量不超过50
        # @type DocItemList: Array

        attr_accessor :Bid, :DocItemList

        def initialize(bid=nil, docitemlist=nil)
          @Bid = bid
          @DocItemList = docitemlist
        end

        def deserialize(params)
          @Bid = params['Bid']
          unless params['DocItemList'].nil?
            @DocItemList = []
            params['DocItemList'].each do |i|
              docitem_tmp = DocItem.new
              docitem_tmp.deserialize(i)
              @DocItemList << docitem_tmp
            end
          end
        end
      end

      # ReportMaterial返回参数结构体
      class ReportMaterialResponse < TencentCloud::Common::AbstractModel
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

      # ReportPortrait请求参数结构体
      class ReportPortraitRequest < TencentCloud::Common::AbstractModel
        # @param Bid: 推荐平台上的业务id
        # @type Bid: String
        # @param PortraitList: 上报的用户画像数组，数量不超过50
        # @type PortraitList: Array

        attr_accessor :Bid, :PortraitList

        def initialize(bid=nil, portraitlist=nil)
          @Bid = bid
          @PortraitList = portraitlist
        end

        def deserialize(params)
          @Bid = params['Bid']
          unless params['PortraitList'].nil?
            @PortraitList = []
            params['PortraitList'].each do |i|
              portraitinfo_tmp = PortraitInfo.new
              portraitinfo_tmp.deserialize(i)
              @PortraitList << portraitinfo_tmp
            end
          end
        end
      end

      # ReportPortrait返回参数结构体
      class ReportPortraitResponse < TencentCloud::Common::AbstractModel
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

      # 标题信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param Id: 标签id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 标签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Weight: 推荐权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Float

        attr_accessor :Id, :Name, :Weight

        def initialize(id=nil, name=nil, weight=nil)
          @Id = id
          @Name = name
          @Weight = weight
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Weight = params['Weight']
        end
      end

      # 用户信息
      class UserIdInfo < TencentCloud::Common::AbstractModel
        # @param UserIdType: 用户ID类型：
        # 1 - qq
        # 2 - qq_md5：md5后的qq
        # 3 - imei：设备imei（安卓10之后不会再授权imei，安卓10之后的imei映射关系可能拿不到，故安卓10之后的设备建议用oaid）
        # 4 - imei_md5：md5后的imei
        # 5 - idfa: Apple 向用户设备随机分配的设备标识符
        # 6 - idfa_md5：md5之后的idfa
        # 7 - gdt_openid：广点通生成的openid
        # 8 - oaid：安卓10之后一种非永久性设备标识符
        # 9 - oaid_md5：md5后的oaid
        # 10 - wx_openid：微信openid
        # 11 - qq_openid：QQ的openid
        # 12 - phone：电话号码
        # 13 - phone_md5：md5后的电话号码
        # 14 - phone_sha256：SHA256加密的手机号
        # 15 - phone_sm3：国密SM3加密的手机号
        # 1000 - 客户自定义id
        # @type UserIdType: Integer
        # @param UserId: 用户id
        # @type UserId: String

        attr_accessor :UserIdType, :UserId

        def initialize(useridtype=nil, userid=nil)
          @UserIdType = useridtype
          @UserId = userid
        end

        def deserialize(params)
          @UserIdType = params['UserIdType']
          @UserId = params['UserId']
        end
      end

    end
  end
end

