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
  module Ame
    module V20190916
      # Album
      class Album < TencentCloud::Common::AbstractModel
        # @param AlbumName: 专辑名
        # @type AlbumName: String
        # @param ImagePathMap: 专辑图片大小及类别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImagePathMap: Array

        attr_accessor :AlbumName, :ImagePathMap
        
        def initialize(albumname=nil, imagepathmap=nil)
          @AlbumName = albumname
          @ImagePathMap = imagepathmap
        end

        def deserialize(params)
          @AlbumName = params['AlbumName']
          unless params['ImagePathMap'].nil?
            @ImagePathMap = []
            params['ImagePathMap'].each do |i|
              imagepath_tmp = ImagePath.new
              imagepath_tmp.deserialize(i)
              @ImagePathMap << imagepath_tmp
            end
          end
        end
      end

      # 用户license基础信息
      class ApplicationLicenseInput < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称，注：后面三个字段AndroidPackageName、IOSBundleId、PcIdentifier，三者选填一个
        # @type AppName: String
        # @param AndroidPackageName: app的安卓包名
        # @type AndroidPackageName: String
        # @param IOSBundleId: app的IOS的BundleId名
        # @type IOSBundleId: String
        # @param PcIdentifier: PC标识名
        # @type PcIdentifier: String

        attr_accessor :AppName, :AndroidPackageName, :IOSBundleId, :PcIdentifier
        
        def initialize(appname=nil, androidpackagename=nil, iosbundleid=nil, pcidentifier=nil)
          @AppName = appname
          @AndroidPackageName = androidpackagename
          @IOSBundleId = iosbundleid
          @PcIdentifier = pcidentifier
        end

        def deserialize(params)
          @AppName = params['AppName']
          @AndroidPackageName = params['AndroidPackageName']
          @IOSBundleId = params['IOSBundleId']
          @PcIdentifier = params['PcIdentifier']
        end
      end

      # Artist
      class Artist < TencentCloud::Common::AbstractModel
        # @param ArtistName: 歌手名
        # @type ArtistName: String

        attr_accessor :ArtistName
        
        def initialize(artistname=nil)
          @ArtistName = artistname
        end

        def deserialize(params)
          @ArtistName = params['ArtistName']
        end
      end

      # AuthInfo集合
      class AuthInfo < TencentCloud::Common::AbstractModel
        # @param SubjectName: 主体名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectName: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param AppScene: 应用场景
        # @type AppScene: Integer
        # @param AppRegion: 应用地域
        # @type AppRegion: Integer
        # @param AuthPeriod: 授权时间
        # @type AuthPeriod: Integer
        # @param Commercialization: 是否可商业化
        # @type Commercialization: Integer
        # @param Platform: 是否可跨平台
        # @type Platform: Integer
        # @param Id: 加密后Id
        # @type Id: String

        attr_accessor :SubjectName, :ProjectName, :AppScene, :AppRegion, :AuthPeriod, :Commercialization, :Platform, :Id
        
        def initialize(subjectname=nil, projectname=nil, appscene=nil, appregion=nil, authperiod=nil, commercialization=nil, platform=nil, id=nil)
          @SubjectName = subjectname
          @ProjectName = projectname
          @AppScene = appscene
          @AppRegion = appregion
          @AuthPeriod = authperiod
          @Commercialization = commercialization
          @Platform = platform
          @Id = id
        end

        def deserialize(params)
          @SubjectName = params['SubjectName']
          @ProjectName = params['ProjectName']
          @AppScene = params['AppScene']
          @AppRegion = params['AppRegion']
          @AuthPeriod = params['AuthPeriod']
          @Commercialization = params['Commercialization']
          @Platform = params['Platform']
          @Id = params['Id']
        end
      end

      # BatchDescribeKTVMusicDetails请求参数结构体
      class BatchDescribeKTVMusicDetailsRequest < TencentCloud::Common::AbstractModel
        # @param MusicIds: 歌曲Id列表，注：列表最大长度为50
        # @type MusicIds: Array

        attr_accessor :MusicIds
        
        def initialize(musicids=nil)
          @MusicIds = musicids
        end

        def deserialize(params)
          @MusicIds = params['MusicIds']
        end
      end

      # BatchDescribeKTVMusicDetails返回参数结构体
      class BatchDescribeKTVMusicDetailsResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicDetailInfoSet: 歌曲详情列表信息
        # @type KTVMusicDetailInfoSet: Array
        # @param NotExistMusicIdSet: 不存在的歌曲 ID 列表。
        # @type NotExistMusicIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicDetailInfoSet, :NotExistMusicIdSet, :RequestId
        
        def initialize(ktvmusicdetailinfoset=nil, notexistmusicidset=nil, requestid=nil)
          @KTVMusicDetailInfoSet = ktvmusicdetailinfoset
          @NotExistMusicIdSet = notexistmusicidset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVMusicDetailInfoSet'].nil?
            @KTVMusicDetailInfoSet = []
            params['KTVMusicDetailInfoSet'].each do |i|
              ktvmusicdetailinfo_tmp = KTVMusicDetailInfo.new
              ktvmusicdetailinfo_tmp.deserialize(i)
              @KTVMusicDetailInfoSet << ktvmusicdetailinfo_tmp
            end
          end
          @NotExistMusicIdSet = params['NotExistMusicIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 副歌片段信息
      class ChorusClip < TencentCloud::Common::AbstractModel
        # @param StartTime: 副歌时间，单位：毫秒
        # @type StartTime: Integer
        # @param EndTime: 副歌结束时间，单位：毫秒
        # @type EndTime: Integer

        attr_accessor :StartTime, :EndTime
        
        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # CreateKTVRobot请求参数结构体
      class CreateKTVRobotRequest < TencentCloud::Common::AbstractModel
        # @param RTCSystem: RTC厂商类型，取值有：
        # <li>TRTC</li>
        # @type RTCSystem: String
        # @param JoinRoomInput: 进房参数。
        # @type JoinRoomInput: :class:`Tencentcloud::Ame.v20190916.models.JoinRoomInput`
        # @param ApplicationLicenseInput: license基础信息
        # @type ApplicationLicenseInput: :class:`Tencentcloud::Ame.v20190916.models.ApplicationLicenseInput`

        attr_accessor :RTCSystem, :JoinRoomInput, :ApplicationLicenseInput
        
        def initialize(rtcsystem=nil, joinroominput=nil, applicationlicenseinput=nil)
          @RTCSystem = rtcsystem
          @JoinRoomInput = joinroominput
          @ApplicationLicenseInput = applicationlicenseinput
        end

        def deserialize(params)
          @RTCSystem = params['RTCSystem']
          unless params['JoinRoomInput'].nil?
            @JoinRoomInput = JoinRoomInput.new
            @JoinRoomInput.deserialize(params['JoinRoomInput'])
          end
          unless params['ApplicationLicenseInput'].nil?
            @ApplicationLicenseInput = ApplicationLicenseInput.new
            @ApplicationLicenseInput.deserialize(params['ApplicationLicenseInput'])
          end
        end
      end

      # CreateKTVRobot返回参数结构体
      class CreateKTVRobotResponse < TencentCloud::Common::AbstractModel
        # @param RobotId: 机器人Id。
        # @type RobotId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RobotId, :RequestId
        
        def initialize(robotid=nil, requestid=nil)
          @RobotId = robotid
          @RequestId = requestid
        end

        def deserialize(params)
          @RobotId = params['RobotId']
          @RequestId = params['RequestId']
        end
      end

      # 数据信息
      class DataInfo < TencentCloud::Common::AbstractModel
        # @param Name: Song Name
        # @type Name: String
        # @param Version: 歌曲版本
        # @type Version: String
        # @param Duration: 歌曲总时长（非试听时长）
        # @type Duration: String
        # @param AuditionBegin: 试听开始时间
        # @type AuditionBegin: Integer
        # @param AuditionEnd: 试听结束时间
        # @type AuditionEnd: Integer
        # @param TagNames: 标签名称
        # @type TagNames: Array

        attr_accessor :Name, :Version, :Duration, :AuditionBegin, :AuditionEnd, :TagNames
        
        def initialize(name=nil, version=nil, duration=nil, auditionbegin=nil, auditionend=nil, tagnames=nil)
          @Name = name
          @Version = version
          @Duration = duration
          @AuditionBegin = auditionbegin
          @AuditionEnd = auditionend
          @TagNames = tagnames
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
          @Duration = params['Duration']
          @AuditionBegin = params['AuditionBegin']
          @AuditionEnd = params['AuditionEnd']
          @TagNames = params['TagNames']
        end
      end

      # DescribeAuthInfo请求参数结构体
      class DescribeAuthInfoRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量：Offset=Offset+Limit
        # @type Offset: Integer
        # @param Limit: 数据条数
        # @type Limit: Integer
        # @param Key: 搜索关键字
        # @type Key: String

        attr_accessor :Offset, :Limit, :Key
        
        def initialize(offset=nil, limit=nil, key=nil)
          @Offset = offset
          @Limit = limit
          @Key = key
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Key = params['Key']
        end
      end

      # DescribeAuthInfo返回参数结构体
      class DescribeAuthInfoResponse < TencentCloud::Common::AbstractModel
        # @param AuthInfo: 授权项目列表
        # @type AuthInfo: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthInfo, :TotalCount, :RequestId
        
        def initialize(authinfo=nil, totalcount=nil, requestid=nil)
          @AuthInfo = authinfo
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AuthInfo'].nil?
            @AuthInfo = []
            params['AuthInfo'].each do |i|
              authinfo_tmp = AuthInfo.new
              authinfo_tmp.deserialize(i)
              @AuthInfo << authinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudMusicPurchased请求参数结构体
      class DescribeCloudMusicPurchasedRequest < TencentCloud::Common::AbstractModel
        # @param AuthInfoId: 授权项目Id
        # @type AuthInfoId: String

        attr_accessor :AuthInfoId
        
        def initialize(authinfoid=nil)
          @AuthInfoId = authinfoid
        end

        def deserialize(params)
          @AuthInfoId = params['AuthInfoId']
        end
      end

      # DescribeCloudMusicPurchased返回参数结构体
      class DescribeCloudMusicPurchasedResponse < TencentCloud::Common::AbstractModel
        # @param MusicOpenDetail: 云音乐列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MusicOpenDetail: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MusicOpenDetail, :RequestId
        
        def initialize(musicopendetail=nil, requestid=nil)
          @MusicOpenDetail = musicopendetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MusicOpenDetail'].nil?
            @MusicOpenDetail = []
            params['MusicOpenDetail'].each do |i|
              musicopendetail_tmp = MusicOpenDetail.new
              musicopendetail_tmp.deserialize(i)
              @MusicOpenDetail << musicopendetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudMusic请求参数结构体
      class DescribeCloudMusicRequest < TencentCloud::Common::AbstractModel
        # @param MusicId: 歌曲Id
        # @type MusicId: String
        # @param MusicType: 歌曲类型，可选值有：
        # <li>MP3-128K-FTW：含有水印的试听资源；</li>
        # <li>MP3-320K-FTD-P：320kbps歌曲热门片段；</li>
        # <li>MP3-320K-FTD：320kbps已核验歌曲完整资源。</li>
        # 默认为：MP3-128K-FTW
        # @type MusicType: String

        attr_accessor :MusicId, :MusicType
        
        def initialize(musicid=nil, musictype=nil)
          @MusicId = musicid
          @MusicType = musictype
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @MusicType = params['MusicType']
        end
      end

      # DescribeCloudMusic返回参数结构体
      class DescribeCloudMusicResponse < TencentCloud::Common::AbstractModel
        # @param MusicId: 歌曲Id
        # @type MusicId: String
        # @param MusicName: 歌曲名称
        # @type MusicName: String
        # @param Duration: 歌曲时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param MusicUrl: 歌曲链接
        # @type MusicUrl: String
        # @param MusicImageUrl: 歌曲图片
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MusicImageUrl: String
        # @param Singers: 歌手列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Singers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MusicId, :MusicName, :Duration, :MusicUrl, :MusicImageUrl, :Singers, :RequestId
        
        def initialize(musicid=nil, musicname=nil, duration=nil, musicurl=nil, musicimageurl=nil, singers=nil, requestid=nil)
          @MusicId = musicid
          @MusicName = musicname
          @Duration = duration
          @MusicUrl = musicurl
          @MusicImageUrl = musicimageurl
          @Singers = singers
          @RequestId = requestid
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @MusicName = params['MusicName']
          @Duration = params['Duration']
          @MusicUrl = params['MusicUrl']
          @MusicImageUrl = params['MusicImageUrl']
          @Singers = params['Singers']
          @RequestId = params['RequestId']
        end
      end

      # DescribeItemById请求参数结构体
      class DescribeItemByIdRequest < TencentCloud::Common::AbstractModel
        # @param ItemIDs: 歌曲ID，目前暂不支持批量查询
        # @type ItemIDs: String

        attr_accessor :ItemIDs
        
        def initialize(itemids=nil)
          @ItemIDs = itemids
        end

        def deserialize(params)
          @ItemIDs = params['ItemIDs']
        end
      end

      # DescribeItemById返回参数结构体
      class DescribeItemByIdResponse < TencentCloud::Common::AbstractModel
        # @param Items: 歌曲信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId
        
        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              item_tmp = Item.new
              item_tmp.deserialize(i)
              @Items << item_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeItems请求参数结构体
      class DescribeItemsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: offset (Default = 0)，(当前页-1) * Limit
        # @type Offset: Integer
        # @param Limit: 条数，必须大于0，最大值为30
        # @type Limit: Integer
        # @param CategoryId: （电台/歌单）ID，CategoryId和CategoryCode两个必传1个，可以从<a href="https://cloud.tencent.com/document/product/1155/40109">获取分类内容（Station）列表接口</a>中获取。
        # @type CategoryId: String
        # @param CategoryCode: （电台/歌单）ID，CategoryId和CategoryCode两个必传1个，可以从<a href="https://cloud.tencent.com/document/product/1155/40109">获取分类内容（Station）列表接口</a>中获取。
        # @type CategoryCode: String

        attr_accessor :Offset, :Limit, :CategoryId, :CategoryCode
        
        def initialize(offset=nil, limit=nil, categoryid=nil, categorycode=nil)
          @Offset = offset
          @Limit = limit
          @CategoryId = categoryid
          @CategoryCode = categorycode
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CategoryId = params['CategoryId']
          @CategoryCode = params['CategoryCode']
        end
      end

      # DescribeItems返回参数结构体
      class DescribeItemsResponse < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Size: 当前页歌曲数量
        # @type Size: Integer
        # @param Total: 总数据条数
        # @type Total: Integer
        # @param HaveMore: 剩余数量（total-offset-size），通过这个值判断是否
        # 还有下一页
        # @type HaveMore: Integer
        # @param Items: Items 歌曲列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Offset, :Size, :Total, :HaveMore, :Items, :RequestId
        
        def initialize(offset=nil, size=nil, total=nil, havemore=nil, items=nil, requestid=nil)
          @Offset = offset
          @Size = size
          @Total = total
          @HaveMore = havemore
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Size = params['Size']
          @Total = params['Total']
          @HaveMore = params['HaveMore']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              item_tmp = Item.new
              item_tmp.deserialize(i)
              @Items << item_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVMusicDetail请求参数结构体
      class DescribeKTVMusicDetailRequest < TencentCloud::Common::AbstractModel
        # @param MusicId: 曲目 Id
        # @type MusicId: String

        attr_accessor :MusicId
        
        def initialize(musicid=nil)
          @MusicId = musicid
        end

        def deserialize(params)
          @MusicId = params['MusicId']
        end
      end

      # DescribeKTVMusicDetail返回参数结构体
      class DescribeKTVMusicDetailResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicBaseInfo: 歌曲基础信息
        # @type KTVMusicBaseInfo: :class:`Tencentcloud::Ame.v20190916.models.KTVMusicBaseInfo`
        # @param PlayToken: 播放凭证
        # @type PlayToken: String
        # @param LyricsUrl: 歌词下载地址
        # @type LyricsUrl: String
        # @param DefinitionInfoSet: 歌曲规格信息列表
        # @type DefinitionInfoSet: Array
        # @param MidiJsonUrl: 音高数据文件下载地址
        # @type MidiJsonUrl: String
        # @param ChorusClipSet: 副歌片段数据列表
        # @type ChorusClipSet: Array
        # @param PreludeInterval: 前奏间隔，单位：毫秒；注：若参数返回为0则无人声部分
        # @type PreludeInterval: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicBaseInfo, :PlayToken, :LyricsUrl, :DefinitionInfoSet, :MidiJsonUrl, :ChorusClipSet, :PreludeInterval, :RequestId
        
        def initialize(ktvmusicbaseinfo=nil, playtoken=nil, lyricsurl=nil, definitioninfoset=nil, midijsonurl=nil, chorusclipset=nil, preludeinterval=nil, requestid=nil)
          @KTVMusicBaseInfo = ktvmusicbaseinfo
          @PlayToken = playtoken
          @LyricsUrl = lyricsurl
          @DefinitionInfoSet = definitioninfoset
          @MidiJsonUrl = midijsonurl
          @ChorusClipSet = chorusclipset
          @PreludeInterval = preludeinterval
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVMusicBaseInfo'].nil?
            @KTVMusicBaseInfo = KTVMusicBaseInfo.new
            @KTVMusicBaseInfo.deserialize(params['KTVMusicBaseInfo'])
          end
          @PlayToken = params['PlayToken']
          @LyricsUrl = params['LyricsUrl']
          unless params['DefinitionInfoSet'].nil?
            @DefinitionInfoSet = []
            params['DefinitionInfoSet'].each do |i|
              ktvmusicdefinitioninfo_tmp = KTVMusicDefinitionInfo.new
              ktvmusicdefinitioninfo_tmp.deserialize(i)
              @DefinitionInfoSet << ktvmusicdefinitioninfo_tmp
            end
          end
          @MidiJsonUrl = params['MidiJsonUrl']
          unless params['ChorusClipSet'].nil?
            @ChorusClipSet = []
            params['ChorusClipSet'].each do |i|
              chorusclip_tmp = ChorusClip.new
              chorusclip_tmp.deserialize(i)
              @ChorusClipSet << chorusclip_tmp
            end
          end
          @PreludeInterval = params['PreludeInterval']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVMusicTags请求参数结构体
      class DescribeKTVMusicTagsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeKTVMusicTags返回参数结构体
      class DescribeKTVMusicTagsResponse < TencentCloud::Common::AbstractModel
        # @param TagGroupSet: 标签分组列表
        # @type TagGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TagGroupSet, :RequestId
        
        def initialize(taggroupset=nil, requestid=nil)
          @TagGroupSet = taggroupset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TagGroupSet'].nil?
            @TagGroupSet = []
            params['TagGroupSet'].each do |i|
              ktvmusictaggroup_tmp = KTVMusicTagGroup.new
              ktvmusictaggroup_tmp.deserialize(i)
              @TagGroupSet << ktvmusictaggroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVPlaylistDetail请求参数结构体
      class DescribeKTVPlaylistDetailRequest < TencentCloud::Common::AbstractModel
        # @param PlaylistId: 歌单Id
        # @type PlaylistId: String
        # @param Offset: 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Limit: Integer

        attr_accessor :PlaylistId, :Offset, :Limit
        
        def initialize(playlistid=nil, offset=nil, limit=nil)
          @PlaylistId = playlistid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @PlaylistId = params['PlaylistId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeKTVPlaylistDetail返回参数结构体
      class DescribeKTVPlaylistDetailResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicInfoSet: 歌曲基础信息列表
        # @type KTVMusicInfoSet: Array
        # @param PlaylistBaseInfo: 歌单基础信息
        # @type PlaylistBaseInfo: :class:`Tencentcloud::Ame.v20190916.models.KTVPlaylistBaseInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicInfoSet, :PlaylistBaseInfo, :RequestId
        
        def initialize(ktvmusicinfoset=nil, playlistbaseinfo=nil, requestid=nil)
          @KTVMusicInfoSet = ktvmusicinfoset
          @PlaylistBaseInfo = playlistbaseinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVMusicInfoSet'].nil?
            @KTVMusicInfoSet = []
            params['KTVMusicInfoSet'].each do |i|
              ktvmusicbaseinfo_tmp = KTVMusicBaseInfo.new
              ktvmusicbaseinfo_tmp.deserialize(i)
              @KTVMusicInfoSet << ktvmusicbaseinfo_tmp
            end
          end
          unless params['PlaylistBaseInfo'].nil?
            @PlaylistBaseInfo = KTVPlaylistBaseInfo.new
            @PlaylistBaseInfo.deserialize(params['PlaylistBaseInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVPlaylists请求参数结构体
      class DescribeKTVPlaylistsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeKTVPlaylists返回参数结构体
      class DescribeKTVPlaylistsResponse < TencentCloud::Common::AbstractModel
        # @param PlaylistBaseInfoSet: 推荐歌单列表
        # @type PlaylistBaseInfoSet: Array
        # @param TotalCount: 推荐歌单列表总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlaylistBaseInfoSet, :TotalCount, :RequestId
        
        def initialize(playlistbaseinfoset=nil, totalcount=nil, requestid=nil)
          @PlaylistBaseInfoSet = playlistbaseinfoset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlaylistBaseInfoSet'].nil?
            @PlaylistBaseInfoSet = []
            params['PlaylistBaseInfoSet'].each do |i|
              ktvplaylistbaseinfo_tmp = KTVPlaylistBaseInfo.new
              ktvplaylistbaseinfo_tmp.deserialize(i)
              @PlaylistBaseInfoSet << ktvplaylistbaseinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVRobots请求参数结构体
      class DescribeKTVRobotsRequest < TencentCloud::Common::AbstractModel
        # @param RobotIds: 机器人Id列表。
        # @type RobotIds: Array
        # @param Statuses: 机器人状态，取值有：
        # <li>Play：播放</li>
        # <li>Pause：暂停</li>
        # <li>Destroy：销毁</li>
        # @type Statuses: Array
        # @param CreateTime: 匹配创建时间在此时间段内的机器人。
        # <li>包含所指定的头尾时间点。</li>
        # @type CreateTime: :class:`Tencentcloud::Ame.v20190916.models.TimeRange`
        # @param Offset: 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Offset: Integer
        # @param Limit: 分页返回的起始偏移量，默认值：10。
        # @type Limit: Integer

        attr_accessor :RobotIds, :Statuses, :CreateTime, :Offset, :Limit
        
        def initialize(robotids=nil, statuses=nil, createtime=nil, offset=nil, limit=nil)
          @RobotIds = robotids
          @Statuses = statuses
          @CreateTime = createtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RobotIds = params['RobotIds']
          @Statuses = params['Statuses']
          unless params['CreateTime'].nil?
            @CreateTime = TimeRange.new
            @CreateTime.deserialize(params['CreateTime'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeKTVRobots返回参数结构体
      class DescribeKTVRobotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 机器人总数。
        # @type TotalCount: Integer
        # @param KTVRobotInfoSet: 机器人信息集合。
        # @type KTVRobotInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KTVRobotInfoSet, :RequestId
        
        def initialize(totalcount=nil, ktvrobotinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @KTVRobotInfoSet = ktvrobotinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KTVRobotInfoSet'].nil?
            @KTVRobotInfoSet = []
            params['KTVRobotInfoSet'].each do |i|
              ktvrobotinfo_tmp = KTVRobotInfo.new
              ktvrobotinfo_tmp.deserialize(i)
              @KTVRobotInfoSet << ktvrobotinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVSingerCategories请求参数结构体
      class DescribeKTVSingerCategoriesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeKTVSingerCategories返回参数结构体
      class DescribeKTVSingerCategoriesResponse < TencentCloud::Common::AbstractModel
        # @param GenderSet: 歌手性别分类列表
        # @type GenderSet: Array
        # @param AreaSet: 歌手区域分类列表
        # @type AreaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GenderSet, :AreaSet, :RequestId
        
        def initialize(genderset=nil, areaset=nil, requestid=nil)
          @GenderSet = genderset
          @AreaSet = areaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GenderSet'].nil?
            @GenderSet = []
            params['GenderSet'].each do |i|
              ktvsingercategoryinfo_tmp = KTVSingerCategoryInfo.new
              ktvsingercategoryinfo_tmp.deserialize(i)
              @GenderSet << ktvsingercategoryinfo_tmp
            end
          end
          unless params['AreaSet'].nil?
            @AreaSet = []
            params['AreaSet'].each do |i|
              ktvsingercategoryinfo_tmp = KTVSingerCategoryInfo.new
              ktvsingercategoryinfo_tmp.deserialize(i)
              @AreaSet << ktvsingercategoryinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVSingerMusics请求参数结构体
      class DescribeKTVSingerMusicsRequest < TencentCloud::Common::AbstractModel
        # @param SingerId: 歌手id
        # @type SingerId: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Limit: Integer

        attr_accessor :SingerId, :Offset, :Limit
        
        def initialize(singerid=nil, offset=nil, limit=nil)
          @SingerId = singerid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SingerId = params['SingerId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeKTVSingerMusics返回参数结构体
      class DescribeKTVSingerMusicsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总曲目数
        # @type TotalCount: Integer
        # @param KTVMusicInfoSet: KTV 曲目列表
        # @type KTVMusicInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KTVMusicInfoSet, :RequestId
        
        def initialize(totalcount=nil, ktvmusicinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @KTVMusicInfoSet = ktvmusicinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KTVMusicInfoSet'].nil?
            @KTVMusicInfoSet = []
            params['KTVMusicInfoSet'].each do |i|
              ktvmusicbaseinfo_tmp = KTVMusicBaseInfo.new
              ktvmusicbaseinfo_tmp.deserialize(i)
              @KTVMusicInfoSet << ktvmusicbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVSingers请求参数结构体
      class DescribeKTVSingersRequest < TencentCloud::Common::AbstractModel
        # @param SingerIds: 歌手id集合，精确匹配歌手id
        # <li> 数组长度限制10</li>
        # @type SingerIds: Array
        # @param Genders: 歌手性别集合，不传为全部，精确匹配歌手性别类型，
        # <li>数组长度限制1</li>
        # <li>取值范围：直播互动曲库歌手分类信息接口，返回性别分类信息列表中，分类英文名</li>
        # @type Genders: Array
        # @param Areas: 歌手区域集合，不传为全部，精确匹配歌手区域
        # <li>数组长度限制10</li>
        # <li>取值范围：直播互动曲库歌手分类信息接口，返回的区域分类信息列表中，分类英文名</li>
        # @type Areas: Array
        # @param Sort: 排序方式。默认按照播放数倒序
        # <li> Sort.Field 可选 PlayCount。</li>
        # @type Sort: :class:`Tencentcloud::Ame.v20190916.models.SortBy`
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页返回的记录条数，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Limit: Integer

        attr_accessor :SingerIds, :Genders, :Areas, :Sort, :Offset, :Limit
        
        def initialize(singerids=nil, genders=nil, areas=nil, sort=nil, offset=nil, limit=nil)
          @SingerIds = singerids
          @Genders = genders
          @Areas = areas
          @Sort = sort
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SingerIds = params['SingerIds']
          @Genders = params['Genders']
          @Areas = params['Areas']
          unless params['Sort'].nil?
            @Sort = SortBy.new
            @Sort.deserialize(params['Sort'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeKTVSingers返回参数结构体
      class DescribeKTVSingersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总歌手数
        # @type TotalCount: Integer
        # @param KTVSingerInfoSet: KTV歌手列表
        # @type KTVSingerInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KTVSingerInfoSet, :RequestId
        
        def initialize(totalcount=nil, ktvsingerinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @KTVSingerInfoSet = ktvsingerinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KTVSingerInfoSet'].nil?
            @KTVSingerInfoSet = []
            params['KTVSingerInfoSet'].each do |i|
              ktvsingerinfo_tmp = KTVSingerInfo.new
              ktvsingerinfo_tmp.deserialize(i)
              @KTVSingerInfoSet << ktvsingerinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVSuggestions请求参数结构体
      class DescribeKTVSuggestionsRequest < TencentCloud::Common::AbstractModel
        # @param KeyWord: 联想关键词
        # @type KeyWord: String

        attr_accessor :KeyWord
        
        def initialize(keyword=nil)
          @KeyWord = keyword
        end

        def deserialize(params)
          @KeyWord = params['KeyWord']
        end
      end

      # DescribeKTVSuggestions返回参数结构体
      class DescribeKTVSuggestionsResponse < TencentCloud::Common::AbstractModel
        # @param KTVSuggestionInfoSet: 联想词信息列表。返回总数最大为10。
        # @type KTVSuggestionInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVSuggestionInfoSet, :RequestId
        
        def initialize(ktvsuggestioninfoset=nil, requestid=nil)
          @KTVSuggestionInfoSet = ktvsuggestioninfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVSuggestionInfoSet'].nil?
            @KTVSuggestionInfoSet = []
            params['KTVSuggestionInfoSet'].each do |i|
              ktvsuggestioninfo_tmp = KTVSuggestionInfo.new
              ktvsuggestioninfo_tmp.deserialize(i)
              @KTVSuggestionInfoSet << ktvsuggestioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVTopList请求参数结构体
      class DescribeKTVTopListRequest < TencentCloud::Common::AbstractModel
        # @param Type: 榜单类型。默认Hot
        # <li> Hot, 热歌榜。</li>
        # @type Type: String
        # @param Period: 榜单周期 默认为Week
        # <li> Week, 周榜。</li>
        # <li> Month, 月榜。</li>
        # @type Period: String

        attr_accessor :Type, :Period
        
        def initialize(type=nil, period=nil)
          @Type = type
          @Period = period
        end

        def deserialize(params)
          @Type = params['Type']
          @Period = params['Period']
        end
      end

      # DescribeKTVTopList返回参数结构体
      class DescribeKTVTopListResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicTopInfoSet: 歌曲基础信息列表
        # @type KTVMusicTopInfoSet: Array
        # @param TotalCount: 返回总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicTopInfoSet, :TotalCount, :RequestId
        
        def initialize(ktvmusictopinfoset=nil, totalcount=nil, requestid=nil)
          @KTVMusicTopInfoSet = ktvmusictopinfoset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KTVMusicTopInfoSet'].nil?
            @KTVMusicTopInfoSet = []
            params['KTVMusicTopInfoSet'].each do |i|
              ktvmusictopinfo_tmp = KTVMusicTopInfo.new
              ktvmusictopinfo_tmp.deserialize(i)
              @KTVMusicTopInfoSet << ktvmusictopinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLyric请求参数结构体
      class DescribeLyricRequest < TencentCloud::Common::AbstractModel
        # @param ItemId: 歌曲ID
        # @type ItemId: String
        # @param SubItemType: 格式，可选项，可不填写，默认值为：LRC-LRC。
        # <li>LRC-LRC：歌词；</li>
        # <li>JSON-ST：波形图。</li>
        # @type SubItemType: String

        attr_accessor :ItemId, :SubItemType
        
        def initialize(itemid=nil, subitemtype=nil)
          @ItemId = itemid
          @SubItemType = subitemtype
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @SubItemType = params['SubItemType']
        end
      end

      # DescribeLyric返回参数结构体
      class DescribeLyricResponse < TencentCloud::Common::AbstractModel
        # @param Lyric: 歌词或者波形图详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Lyric: :class:`Tencentcloud::Ame.v20190916.models.Lyric`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Lyric, :RequestId
        
        def initialize(lyric=nil, requestid=nil)
          @Lyric = lyric
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Lyric'].nil?
            @Lyric = Lyric.new
            @Lyric.deserialize(params['Lyric'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMusic请求参数结构体
      class DescribeMusicRequest < TencentCloud::Common::AbstractModel
        # @param ItemId: 歌曲ID
        # @type ItemId: String
        # @param IdentityId: 在应用前端播放音乐C端用户的唯一标识。无需是账户信息，用户唯一标识即可。
        # @type IdentityId: String
        # @param SubItemType: MP3-320K-FTD-P  为获取320kbps歌曲热门片段。
        # MP3-320K-FTD 为获取320kbps已核验歌曲完整资源。
        # @type SubItemType: String
        # @param Ssl: CDN URL Protocol:HTTP or HTTPS/SSL
        # Values:Y , N(default)
        # @type Ssl: String

        attr_accessor :ItemId, :IdentityId, :SubItemType, :Ssl
        
        def initialize(itemid=nil, identityid=nil, subitemtype=nil, ssl=nil)
          @ItemId = itemid
          @IdentityId = identityid
          @SubItemType = subitemtype
          @Ssl = ssl
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @IdentityId = params['IdentityId']
          @SubItemType = params['SubItemType']
          @Ssl = params['Ssl']
        end
      end

      # DescribeMusic返回参数结构体
      class DescribeMusicResponse < TencentCloud::Common::AbstractModel
        # @param Music: 音乐相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Music: :class:`Tencentcloud::Ame.v20190916.models.Music`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Music, :RequestId
        
        def initialize(music=nil, requestid=nil)
          @Music = music
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Music'].nil?
            @Music = Music.new
            @Music.deserialize(params['Music'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMusicSaleStatus请求参数结构体
      class DescribeMusicSaleStatusRequest < TencentCloud::Common::AbstractModel
        # @param MusicIds: 歌曲Id集合，可传单个，也可传多个，上线查询单次50个
        # @type MusicIds: Array
        # @param PurchaseType: 查询哪个渠道的数据，1为曲库包，2为单曲
        # @type PurchaseType: Integer

        attr_accessor :MusicIds, :PurchaseType
        
        def initialize(musicids=nil, purchasetype=nil)
          @MusicIds = musicids
          @PurchaseType = purchasetype
        end

        def deserialize(params)
          @MusicIds = params['MusicIds']
          @PurchaseType = params['PurchaseType']
        end
      end

      # DescribeMusicSaleStatus返回参数结构体
      class DescribeMusicSaleStatusResponse < TencentCloud::Common::AbstractModel
        # @param MusicStatusSet: musicId对应歌曲状态
        # @type MusicStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MusicStatusSet, :RequestId
        
        def initialize(musicstatusset=nil, requestid=nil)
          @MusicStatusSet = musicstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MusicStatusSet'].nil?
            @MusicStatusSet = []
            params['MusicStatusSet'].each do |i|
              musicstatus_tmp = MusicStatus.new
              musicstatus_tmp.deserialize(i)
              @MusicStatusSet << musicstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePackageItems请求参数结构体
      class DescribePackageItemsRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单id，从获取已购曲库包列表中获取
        # @type OrderId: String
        # @param Offset: 默认0，Offset=Offset+Length
        # @type Offset: Integer
        # @param Length: 默认20
        # @type Length: Integer

        attr_accessor :OrderId, :Offset, :Length
        
        def initialize(orderid=nil, offset=nil, length=nil)
          @OrderId = orderid
          @Offset = offset
          @Length = length
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Offset = params['Offset']
          @Length = params['Length']
        end
      end

      # DescribePackageItems返回参数结构体
      class DescribePackageItemsResponse < TencentCloud::Common::AbstractModel
        # @param PackageItems: 已核销歌曲信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PackageItems, :RequestId
        
        def initialize(packageitems=nil, requestid=nil)
          @PackageItems = packageitems
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PackageItems'].nil?
            @PackageItems = []
            params['PackageItems'].each do |i|
              packageitem_tmp = PackageItem.new
              packageitem_tmp.deserialize(i)
              @PackageItems << packageitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePackages请求参数结构体
      class DescribePackagesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 默认0，Offset=Offset+Length
        # @type Offset: Integer
        # @param Length: 默认20
        # @type Length: Integer

        attr_accessor :Offset, :Length
        
        def initialize(offset=nil, length=nil)
          @Offset = offset
          @Length = length
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Length = params['Length']
        end
      end

      # DescribePackages返回参数结构体
      class DescribePackagesResponse < TencentCloud::Common::AbstractModel
        # @param Packages: 已购曲库包列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Packages: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Packages, :RequestId
        
        def initialize(packages=nil, requestid=nil)
          @Packages = packages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Packages'].nil?
            @Packages = []
            params['Packages'].each do |i|
              package_tmp = Package.new
              package_tmp.deserialize(i)
              @Packages << package_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePkgOfflineMusic请求参数结构体
      class DescribePkgOfflineMusicRequest < TencentCloud::Common::AbstractModel
        # @param PackageOrderId: 订单id
        # @type PackageOrderId: String
        # @param Limit: 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条(注：单次上限为100)。
        # @type Limit: Integer
        # @param Offset: 分页返回的记录条数，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Offset: Integer

        attr_accessor :PackageOrderId, :Limit, :Offset
        
        def initialize(packageorderid=nil, limit=nil, offset=nil)
          @PackageOrderId = packageorderid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @PackageOrderId = params['PackageOrderId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribePkgOfflineMusic返回参数结构体
      class DescribePkgOfflineMusicResponse < TencentCloud::Common::AbstractModel
        # @param OfflineMusicSet: 曲库包中不可用歌曲信息
        # @type OfflineMusicSet: Array
        # @param TotalCount: 返回总量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OfflineMusicSet, :TotalCount, :RequestId
        
        def initialize(offlinemusicset=nil, totalcount=nil, requestid=nil)
          @OfflineMusicSet = offlinemusicset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OfflineMusicSet'].nil?
            @OfflineMusicSet = []
            params['OfflineMusicSet'].each do |i|
              offlinemusicdetail_tmp = OfflineMusicDetail.new
              offlinemusicdetail_tmp.deserialize(i)
              @OfflineMusicSet << offlinemusicdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStations请求参数结构体
      class DescribeStationsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 条数，必须大于0
        # @type Limit: Integer
        # @param Offset: offset (Default = 0)，Offset=Offset+Limit
        # @type Offset: Integer

        attr_accessor :Limit, :Offset
        
        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeStations返回参数结构体
      class DescribeStationsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数量
        # @type Total: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Size: 当前页station数量
        # @type Size: Integer
        # @param HaveMore: 剩余数量（total-offset-size），通过这个值判断是否还有下一页
        # @type HaveMore: Integer
        # @param Stations: Stations 素材库列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stations: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Offset, :Size, :HaveMore, :Stations, :RequestId
        
        def initialize(total=nil, offset=nil, size=nil, havemore=nil, stations=nil, requestid=nil)
          @Total = total
          @Offset = offset
          @Size = size
          @HaveMore = havemore
          @Stations = stations
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Offset = params['Offset']
          @Size = params['Size']
          @HaveMore = params['HaveMore']
          unless params['Stations'].nil?
            @Stations = []
            params['Stations'].each do |i|
              station_tmp = Station.new
              station_tmp.deserialize(i)
              @Stations << station_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyKTVRobot请求参数结构体
      class DestroyKTVRobotRequest < TencentCloud::Common::AbstractModel
        # @param RobotId: 机器人Id。
        # @type RobotId: String

        attr_accessor :RobotId
        
        def initialize(robotid=nil)
          @RobotId = robotid
        end

        def deserialize(params)
          @RobotId = params['RobotId']
        end
      end

      # DestroyKTVRobot返回参数结构体
      class DestroyKTVRobotResponse < TencentCloud::Common::AbstractModel
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

      # 图片路径
      class ImagePath < TencentCloud::Common::AbstractModel
        # @param Key: station图片大小及类别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: station图片地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 歌曲信息
      class Item < TencentCloud::Common::AbstractModel
        # @param ItemID: Song ID
        # @type ItemID: String
        # @param DataInfo: Song info
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataInfo: :class:`Tencentcloud::Ame.v20190916.models.DataInfo`
        # @param Album: 专辑信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Album: :class:`Tencentcloud::Ame.v20190916.models.Album`
        # @param Artists: 多个歌手集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Artists: Array
        # @param Status: 歌曲状态，1:添加进购物车；2:核销进曲库包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :ItemID, :DataInfo, :Album, :Artists, :Status
        
        def initialize(itemid=nil, datainfo=nil, album=nil, artists=nil, status=nil)
          @ItemID = itemid
          @DataInfo = datainfo
          @Album = album
          @Artists = artists
          @Status = status
        end

        def deserialize(params)
          @ItemID = params['ItemID']
          unless params['DataInfo'].nil?
            @DataInfo = DataInfo.new
            @DataInfo.deserialize(params['DataInfo'])
          end
          unless params['Album'].nil?
            @Album = Album.new
            @Album.deserialize(params['Album'])
          end
          unless params['Artists'].nil?
            @Artists = []
            params['Artists'].each do |i|
              artist_tmp = Artist.new
              artist_tmp.deserialize(i)
              @Artists << artist_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # 直播进房输入参数
      class JoinRoomInput < TencentCloud::Common::AbstractModel
        # @param TRTCJoinRoomInput: TRTC进房参数
        # @type TRTCJoinRoomInput: :class:`Tencentcloud::Ame.v20190916.models.TRTCJoinRoomInput`

        attr_accessor :TRTCJoinRoomInput
        
        def initialize(trtcjoinroominput=nil)
          @TRTCJoinRoomInput = trtcjoinroominput
        end

        def deserialize(params)
          unless params['TRTCJoinRoomInput'].nil?
            @TRTCJoinRoomInput = TRTCJoinRoomInput.new
            @TRTCJoinRoomInput.deserialize(params['TRTCJoinRoomInput'])
          end
        end
      end

      # KTV 曲目基础信息
      class KTVMusicBaseInfo < TencentCloud::Common::AbstractModel
        # @param MusicId: 歌曲 Id
        # @type MusicId: String
        # @param Name: 歌曲名称
        # @type Name: String
        # @param SingerInfoSet: 演唱者基础信息列表
        # @type SingerInfoSet: Array
        # @param SingerSet: 已弃用，请使用SingerInfoSet
        # @type SingerSet: Array
        # @param LyricistSet: 作词者列表
        # @type LyricistSet: Array
        # @param ComposerSet: 作曲者列表
        # @type ComposerSet: Array
        # @param TagSet: 标签列表
        # @type TagSet: Array
        # @param Duration: 歌曲时长
        # @type Duration: Integer

        attr_accessor :MusicId, :Name, :SingerInfoSet, :SingerSet, :LyricistSet, :ComposerSet, :TagSet, :Duration
        
        def initialize(musicid=nil, name=nil, singerinfoset=nil, singerset=nil, lyricistset=nil, composerset=nil, tagset=nil, duration=nil)
          @MusicId = musicid
          @Name = name
          @SingerInfoSet = singerinfoset
          @SingerSet = singerset
          @LyricistSet = lyricistset
          @ComposerSet = composerset
          @TagSet = tagset
          @Duration = duration
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @Name = params['Name']
          unless params['SingerInfoSet'].nil?
            @SingerInfoSet = []
            params['SingerInfoSet'].each do |i|
              ktvsingerbaseinfo_tmp = KTVSingerBaseInfo.new
              ktvsingerbaseinfo_tmp.deserialize(i)
              @SingerInfoSet << ktvsingerbaseinfo_tmp
            end
          end
          @SingerSet = params['SingerSet']
          @LyricistSet = params['LyricistSet']
          @ComposerSet = params['ComposerSet']
          @TagSet = params['TagSet']
          @Duration = params['Duration']
        end
      end

      # 直播互动歌曲规格信息。
      class KTVMusicDefinitionInfo < TencentCloud::Common::AbstractModel
        # @param Definition: 规格，取值有：
        # <li>audio/mi：低规格；</li>
        # <li>audio/lo：中规格；</li>
        # <li>audio/hi：高规格。</li>
        # @type Definition: String
        # @param Bitrate: 码率，单位为 bps。
        # @type Bitrate: Integer
        # @param Size: 文件大小，单位为字节。
        # @type Size: Integer

        attr_accessor :Definition, :Bitrate, :Size
        
        def initialize(definition=nil, bitrate=nil, size=nil)
          @Definition = definition
          @Bitrate = bitrate
          @Size = size
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Bitrate = params['Bitrate']
          @Size = params['Size']
        end
      end

      # 即使广播曲库歌曲信息详情列表
      class KTVMusicDetailInfo < TencentCloud::Common::AbstractModel
        # @param KTVMusicBaseInfo: 即使广播曲库歌曲基础信息
        # @type KTVMusicBaseInfo: :class:`Tencentcloud::Ame.v20190916.models.KTVMusicBaseInfo`
        # @param PlayToken: 播放凭证
        # @type PlayToken: String
        # @param LyricsUrl: 歌词下载地址
        # @type LyricsUrl: String
        # @param DefinitionInfoSet: 歌曲规格信息列表
        # @type DefinitionInfoSet: Array
        # @param MidiJsonUrl: 音高数据文件下载地址
        # @type MidiJsonUrl: String
        # @param ChorusClipSet: 副歌片段数据列表
        # @type ChorusClipSet: Array
        # @param PreludeInterval: 前奏间隔，单位：毫秒；注：若参数返回为0则无人声部分
        # @type PreludeInterval: Integer

        attr_accessor :KTVMusicBaseInfo, :PlayToken, :LyricsUrl, :DefinitionInfoSet, :MidiJsonUrl, :ChorusClipSet, :PreludeInterval
        
        def initialize(ktvmusicbaseinfo=nil, playtoken=nil, lyricsurl=nil, definitioninfoset=nil, midijsonurl=nil, chorusclipset=nil, preludeinterval=nil)
          @KTVMusicBaseInfo = ktvmusicbaseinfo
          @PlayToken = playtoken
          @LyricsUrl = lyricsurl
          @DefinitionInfoSet = definitioninfoset
          @MidiJsonUrl = midijsonurl
          @ChorusClipSet = chorusclipset
          @PreludeInterval = preludeinterval
        end

        def deserialize(params)
          unless params['KTVMusicBaseInfo'].nil?
            @KTVMusicBaseInfo = KTVMusicBaseInfo.new
            @KTVMusicBaseInfo.deserialize(params['KTVMusicBaseInfo'])
          end
          @PlayToken = params['PlayToken']
          @LyricsUrl = params['LyricsUrl']
          unless params['DefinitionInfoSet'].nil?
            @DefinitionInfoSet = []
            params['DefinitionInfoSet'].each do |i|
              ktvmusicdefinitioninfo_tmp = KTVMusicDefinitionInfo.new
              ktvmusicdefinitioninfo_tmp.deserialize(i)
              @DefinitionInfoSet << ktvmusicdefinitioninfo_tmp
            end
          end
          @MidiJsonUrl = params['MidiJsonUrl']
          unless params['ChorusClipSet'].nil?
            @ChorusClipSet = []
            params['ChorusClipSet'].each do |i|
              chorusclip_tmp = ChorusClip.new
              chorusclip_tmp.deserialize(i)
              @ChorusClipSet << chorusclip_tmp
            end
          end
          @PreludeInterval = params['PreludeInterval']
        end
      end

      # 即使广播曲库歌曲标签分组信息
      class KTVMusicTagGroup < TencentCloud::Common::AbstractModel
        # @param EnglishGroupName: 标签分组英文名
        # @type EnglishGroupName: String
        # @param ChineseGroupName: 标签分组中文名
        # @type ChineseGroupName: String
        # @param TagSet: 标签分类下标签列表
        # @type TagSet: Array

        attr_accessor :EnglishGroupName, :ChineseGroupName, :TagSet
        
        def initialize(englishgroupname=nil, chinesegroupname=nil, tagset=nil)
          @EnglishGroupName = englishgroupname
          @ChineseGroupName = chinesegroupname
          @TagSet = tagset
        end

        def deserialize(params)
          @EnglishGroupName = params['EnglishGroupName']
          @ChineseGroupName = params['ChineseGroupName']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              ktvmusictaginfo_tmp = KTVMusicTagInfo.new
              ktvmusictaginfo_tmp.deserialize(i)
              @TagSet << ktvmusictaginfo_tmp
            end
          end
        end
      end

      # 即使广播曲库歌曲标签信息
      class KTVMusicTagInfo < TencentCloud::Common::AbstractModel
        # @param TagId: 标签Id
        # @type TagId: String
        # @param TagName: 标签
        # @type TagName: String

        attr_accessor :TagId, :TagName
        
        def initialize(tagid=nil, tagname=nil)
          @TagId = tagid
          @TagName = tagname
        end

        def deserialize(params)
          @TagId = params['TagId']
          @TagName = params['TagName']
        end
      end

      # 排行榜结构
      class KTVMusicTopInfo < TencentCloud::Common::AbstractModel
        # @param MusicId: 歌曲Id
        # @type MusicId: String
        # @param Name: 歌曲名称
        # @type Name: String
        # @param SingerInfoSet: 歌手名称列表
        # @type SingerInfoSet: Array
        # @param LyricistSet: 歌词名称列表
        # @type LyricistSet: Array
        # @param ComposerSet: 作曲列表
        # @type ComposerSet: Array
        # @param TagSet: 标签列表
        # @type TagSet: Array
        # @param Duration: 播放时长
        # @type Duration: Integer

        attr_accessor :MusicId, :Name, :SingerInfoSet, :LyricistSet, :ComposerSet, :TagSet, :Duration
        
        def initialize(musicid=nil, name=nil, singerinfoset=nil, lyricistset=nil, composerset=nil, tagset=nil, duration=nil)
          @MusicId = musicid
          @Name = name
          @SingerInfoSet = singerinfoset
          @LyricistSet = lyricistset
          @ComposerSet = composerset
          @TagSet = tagset
          @Duration = duration
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @Name = params['Name']
          unless params['SingerInfoSet'].nil?
            @SingerInfoSet = []
            params['SingerInfoSet'].each do |i|
              ktvsingerbaseinfo_tmp = KTVSingerBaseInfo.new
              ktvsingerbaseinfo_tmp.deserialize(i)
              @SingerInfoSet << ktvsingerbaseinfo_tmp
            end
          end
          @LyricistSet = params['LyricistSet']
          @ComposerSet = params['ComposerSet']
          @TagSet = params['TagSet']
          @Duration = params['Duration']
        end
      end

      # 推荐歌单基础信息
      class KTVPlaylistBaseInfo < TencentCloud::Common::AbstractModel
        # @param PlaylistId: 歌单Id
        # @type PlaylistId: String
        # @param Title: 歌单标题
        # @type Title: String
        # @param Description: 歌单介绍
        # @type Description: String
        # @param MusicNum: 歌曲数量
        # @type MusicNum: Integer

        attr_accessor :PlaylistId, :Title, :Description, :MusicNum
        
        def initialize(playlistid=nil, title=nil, description=nil, musicnum=nil)
          @PlaylistId = playlistid
          @Title = title
          @Description = description
          @MusicNum = musicnum
        end

        def deserialize(params)
          @PlaylistId = params['PlaylistId']
          @Title = params['Title']
          @Description = params['Description']
          @MusicNum = params['MusicNum']
        end
      end

      # 机器人信息
      class KTVRobotInfo < TencentCloud::Common::AbstractModel
        # @param RobotId: 机器人Id。
        # @type RobotId: String
        # @param Status: 状态，取值有：
        # <li>Play：播放</li>
        # <li>Pause：暂停</li>
        # <li>Destroy：销毁</li>
        # @type Status: String
        # @param Playlists: 播放列表。
        # @type Playlists: Array
        # @param CurIndex: 当前歌单索引位置。
        # @type CurIndex: Integer
        # @param Position: 播放进度，单位：毫秒。
        # @type Position: Integer
        # @param SetAudioParamInput: 音频参数
        # @type SetAudioParamInput: :class:`Tencentcloud::Ame.v20190916.models.SetAudioParamCommandInput`
        # @param JoinRoomInput: 进房信息
        # @type JoinRoomInput: :class:`Tencentcloud::Ame.v20190916.models.JoinRoomInput`
        # @param RTCSystem: RTC厂商类型，取值有：
        # <li>TRTC</li>
        # @type RTCSystem: String
        # @param SetPlayModeInput: 播放模式，PlayMode取值有：
        # <li>RepeatPlaylist：列表循环</li>
        # <li>Order：顺序播放</li>
        # <li>RepeatSingle：单曲循环</li>
        # <li>Shuffle：随机播放</li>
        # @type SetPlayModeInput: :class:`Tencentcloud::Ame.v20190916.models.SetPlayModeCommandInput`

        attr_accessor :RobotId, :Status, :Playlists, :CurIndex, :Position, :SetAudioParamInput, :JoinRoomInput, :RTCSystem, :SetPlayModeInput
        
        def initialize(robotid=nil, status=nil, playlists=nil, curindex=nil, position=nil, setaudioparaminput=nil, joinroominput=nil, rtcsystem=nil, setplaymodeinput=nil)
          @RobotId = robotid
          @Status = status
          @Playlists = playlists
          @CurIndex = curindex
          @Position = position
          @SetAudioParamInput = setaudioparaminput
          @JoinRoomInput = joinroominput
          @RTCSystem = rtcsystem
          @SetPlayModeInput = setplaymodeinput
        end

        def deserialize(params)
          @RobotId = params['RobotId']
          @Status = params['Status']
          @Playlists = params['Playlists']
          @CurIndex = params['CurIndex']
          @Position = params['Position']
          unless params['SetAudioParamInput'].nil?
            @SetAudioParamInput = SetAudioParamCommandInput.new
            @SetAudioParamInput.deserialize(params['SetAudioParamInput'])
          end
          unless params['JoinRoomInput'].nil?
            @JoinRoomInput = JoinRoomInput.new
            @JoinRoomInput.deserialize(params['JoinRoomInput'])
          end
          @RTCSystem = params['RTCSystem']
          unless params['SetPlayModeInput'].nil?
            @SetPlayModeInput = SetPlayModeCommandInput.new
            @SetPlayModeInput.deserialize(params['SetPlayModeInput'])
          end
        end
      end

      # KTV 歌手基础信息
      class KTVSingerBaseInfo < TencentCloud::Common::AbstractModel
        # @param SingerId: 歌手id
        # @type SingerId: String
        # @param Name: 歌手名
        # @type Name: String

        attr_accessor :SingerId, :Name
        
        def initialize(singerid=nil, name=nil)
          @SingerId = singerid
          @Name = name
        end

        def deserialize(params)
          @SingerId = params['SingerId']
          @Name = params['Name']
        end
      end

      # KTV歌手分类信息
      class KTVSingerCategoryInfo < TencentCloud::Common::AbstractModel
        # @param ChineseName: 分类中文名
        # @type ChineseName: String
        # @param EnglishName: 分类英文名
        # @type EnglishName: String

        attr_accessor :ChineseName, :EnglishName
        
        def initialize(chinesename=nil, englishname=nil)
          @ChineseName = chinesename
          @EnglishName = englishname
        end

        def deserialize(params)
          @ChineseName = params['ChineseName']
          @EnglishName = params['EnglishName']
        end
      end

      # 直播互动歌曲的歌手信息。
      class KTVSingerInfo < TencentCloud::Common::AbstractModel
        # @param SingerId: 歌手id
        # @type SingerId: String
        # @param Name: 歌手名
        # @type Name: String
        # @param Gender: 歌手性别: 男，女，组合
        # @type Gender: String
        # @param Area: 地区: 大陆，港台，欧美，日本
        # @type Area: String
        # @param MusicCount: 歌曲数
        # @type MusicCount: Integer
        # @param PlayCount: 歌曲总播放次数
        # @type PlayCount: Integer

        attr_accessor :SingerId, :Name, :Gender, :Area, :MusicCount, :PlayCount
        
        def initialize(singerid=nil, name=nil, gender=nil, area=nil, musiccount=nil, playcount=nil)
          @SingerId = singerid
          @Name = name
          @Gender = gender
          @Area = area
          @MusicCount = musiccount
          @PlayCount = playcount
        end

        def deserialize(params)
          @SingerId = params['SingerId']
          @Name = params['Name']
          @Gender = params['Gender']
          @Area = params['Area']
          @MusicCount = params['MusicCount']
          @PlayCount = params['PlayCount']
        end
      end

      # 即使广播曲库联想词信息
      class KTVSuggestionInfo < TencentCloud::Common::AbstractModel
        # @param Suggestion: 联想词
        # @type Suggestion: String

        attr_accessor :Suggestion
        
        def initialize(suggestion=nil)
          @Suggestion = suggestion
        end

        def deserialize(params)
          @Suggestion = params['Suggestion']
        end
      end

      # 歌词信息
      class Lyric < TencentCloud::Common::AbstractModel
        # @param Url: 歌词cdn地址
        # @type Url: String
        # @param FileNameExt: 歌词后缀名
        # @type FileNameExt: String
        # @param SubItemType: 歌词类型
        # @type SubItemType: String

        attr_accessor :Url, :FileNameExt, :SubItemType
        
        def initialize(url=nil, filenameext=nil, subitemtype=nil)
          @Url = url
          @FileNameExt = filenameext
          @SubItemType = subitemtype
        end

        def deserialize(params)
          @Url = params['Url']
          @FileNameExt = params['FileNameExt']
          @SubItemType = params['SubItemType']
        end
      end

      # ModifyMusicOnShelves请求参数结构体
      class ModifyMusicOnShelvesRequest < TencentCloud::Common::AbstractModel
        # @param MusicDetailInfos: 歌曲变更信息
        # @type MusicDetailInfos: :class:`Tencentcloud::Ame.v20190916.models.MusicDetailInfo`
        # @param AmeKey: ame对接资源方密钥
        # @type AmeKey: String

        attr_accessor :MusicDetailInfos, :AmeKey
        
        def initialize(musicdetailinfos=nil, amekey=nil)
          @MusicDetailInfos = musicdetailinfos
          @AmeKey = amekey
        end

        def deserialize(params)
          unless params['MusicDetailInfos'].nil?
            @MusicDetailInfos = MusicDetailInfo.new
            @MusicDetailInfos.deserialize(params['MusicDetailInfos'])
          end
          @AmeKey = params['AmeKey']
        end
      end

      # ModifyMusicOnShelves返回参数结构体
      class ModifyMusicOnShelvesResponse < TencentCloud::Common::AbstractModel
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

      # 音乐详情
      class Music < TencentCloud::Common::AbstractModel
        # @param Url: 音乐播放链接相对路径，必须通过在正版曲库直通车控制台上登记的域名进行拼接。
        # @type Url: String
        # @param FileSize: 音频文件大小
        # @type FileSize: Integer
        # @param FileExtension: 音频文件类型
        # @type FileExtension: String
        # @param AuditionBegin: Song fragment start.试听片段开始时间，试听时长为auditionEnd-auditionBegin
        # Unit :ms
        # @type AuditionBegin: Integer
        # @param AuditionEnd: Song fragment end.试听片段结束时间, 试听时长为auditionEnd-auditionBegin
        # Unit :ms
        # @type AuditionEnd: Integer
        # @param FullUrl: 音乐播放链接全路径，前提是在正版曲库直通车控制台添加过域名，否则返回空字符。
        # 如果添加过多个域名只返回第一个添加域名的播放全路径。
        # @type FullUrl: String

        attr_accessor :Url, :FileSize, :FileExtension, :AuditionBegin, :AuditionEnd, :FullUrl
        
        def initialize(url=nil, filesize=nil, fileextension=nil, auditionbegin=nil, auditionend=nil, fullurl=nil)
          @Url = url
          @FileSize = filesize
          @FileExtension = fileextension
          @AuditionBegin = auditionbegin
          @AuditionEnd = auditionend
          @FullUrl = fullurl
        end

        def deserialize(params)
          @Url = params['Url']
          @FileSize = params['FileSize']
          @FileExtension = params['FileExtension']
          @AuditionBegin = params['AuditionBegin']
          @AuditionEnd = params['AuditionEnd']
          @FullUrl = params['FullUrl']
        end
      end

      # 歌曲变更细节
      class MusicDetailInfo < TencentCloud::Common::AbstractModel
        # @param MusicId: 资源方音乐Id
        # @type MusicId: String
        # @param AmeId: 资源方识别信息
        # @type AmeId: String
        # @param Tags: 分类标签
        # @type Tags: Array
        # @param HitWords: 关键词
        # @type HitWords: Array
        # @param Bpm: 节奏信息
        # @type Bpm: Integer
        # @param Score: 商业化权益
        # @type Score: Float
        # @param Scene: 应用歌曲信息,1.图文/短视频,2.网络直播,3.网络电台FM,4.免费游戏,5.商业游戏,6.网店网站设计,7.广告营销,8.网络长视频
        # @type Scene: Array
        # @param Region: 应用地域,1. 中国大陆,2. 中国含港澳台,3. 全球
        # @type Region: Array
        # @param AuthPeriod: 授权时间,1. 1年, 5. 随片永久
        # @type AuthPeriod: String
        # @param Commercialization: 商业化授权，1. 支持商业化 ,2. 不支持商业化
        # @type Commercialization: String
        # @param Platform: 跨平台传播，1. 支持跨平台传播 ,2. 不支持跨平台传播
        # @type Platform: String
        # @param Channel: 传播渠道
        # @type Channel: String

        attr_accessor :MusicId, :AmeId, :Tags, :HitWords, :Bpm, :Score, :Scene, :Region, :AuthPeriod, :Commercialization, :Platform, :Channel
        
        def initialize(musicid=nil, ameid=nil, tags=nil, hitwords=nil, bpm=nil, score=nil, scene=nil, region=nil, authperiod=nil, commercialization=nil, platform=nil, channel=nil)
          @MusicId = musicid
          @AmeId = ameid
          @Tags = tags
          @HitWords = hitwords
          @Bpm = bpm
          @Score = score
          @Scene = scene
          @Region = region
          @AuthPeriod = authperiod
          @Commercialization = commercialization
          @Platform = platform
          @Channel = channel
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @AmeId = params['AmeId']
          @Tags = params['Tags']
          @HitWords = params['HitWords']
          @Bpm = params['Bpm']
          @Score = params['Score']
          @Scene = params['Scene']
          @Region = params['Region']
          @AuthPeriod = params['AuthPeriod']
          @Commercialization = params['Commercialization']
          @Platform = params['Platform']
          @Channel = params['Channel']
        end
      end

      # 对外开放信息
      class MusicOpenDetail < TencentCloud::Common::AbstractModel
        # @param MusicId: 音乐Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MusicId: String
        # @param AlbumName: 专辑名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlbumName: String
        # @param AlbumImageUrl: 专辑图片路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlbumImageUrl: String
        # @param MusicName: 音乐名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MusicName: String
        # @param MusicImageUrl: 音乐图片路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MusicImageUrl: String
        # @param Singers: 歌手
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Singers: Array
        # @param Duration: 播放时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param LyricUrl: 歌词url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LyricUrl: String
        # @param WaveformUrl: 波形图url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaveformUrl: String

        attr_accessor :MusicId, :AlbumName, :AlbumImageUrl, :MusicName, :MusicImageUrl, :Singers, :Duration, :Tags, :LyricUrl, :WaveformUrl
        
        def initialize(musicid=nil, albumname=nil, albumimageurl=nil, musicname=nil, musicimageurl=nil, singers=nil, duration=nil, tags=nil, lyricurl=nil, waveformurl=nil)
          @MusicId = musicid
          @AlbumName = albumname
          @AlbumImageUrl = albumimageurl
          @MusicName = musicname
          @MusicImageUrl = musicimageurl
          @Singers = singers
          @Duration = duration
          @Tags = tags
          @LyricUrl = lyricurl
          @WaveformUrl = waveformurl
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @AlbumName = params['AlbumName']
          @AlbumImageUrl = params['AlbumImageUrl']
          @MusicName = params['MusicName']
          @MusicImageUrl = params['MusicImageUrl']
          @Singers = params['Singers']
          @Duration = params['Duration']
          @Tags = params['Tags']
          @LyricUrl = params['LyricUrl']
          @WaveformUrl = params['WaveformUrl']
        end
      end

      # 返回单曲页面歌曲是否在售状态
      class MusicStatus < TencentCloud::Common::AbstractModel
        # @param MusicId: 歌曲Id
        # @type MusicId: String
        # @param SaleStatus: 在售状态,0为在售，1为临时下架，2为永久下架
        # @type SaleStatus: Integer

        attr_accessor :MusicId, :SaleStatus
        
        def initialize(musicid=nil, salestatus=nil)
          @MusicId = musicid
          @SaleStatus = salestatus
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @SaleStatus = params['SaleStatus']
        end
      end

      # 曲库包已下架歌曲详细信息
      class OfflineMusicDetail < TencentCloud::Common::AbstractModel
        # @param ItemId: 歌曲Id
        # @type ItemId: String
        # @param MusicName: 歌曲名称
        # @type MusicName: String
        # @param OffRemark: 不可用原因
        # @type OffRemark: String
        # @param OffTime: 不可用时间
        # @type OffTime: String

        attr_accessor :ItemId, :MusicName, :OffRemark, :OffTime
        
        def initialize(itemid=nil, musicname=nil, offremark=nil, offtime=nil)
          @ItemId = itemid
          @MusicName = musicname
          @OffRemark = offremark
          @OffTime = offtime
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @MusicName = params['MusicName']
          @OffRemark = params['OffRemark']
          @OffTime = params['OffTime']
        end
      end

      # 曲库包信息
      class Package < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单id
        # @type OrderId: String
        # @param Name: 曲库包名称
        # @type Name: String
        # @param AuthorizedArea: 授权地区-global: 全球  CN: 中国
        # @type AuthorizedArea: String
        # @param AuthorizedLimit: 授权次数
        # @type AuthorizedLimit: Integer
        # @param TermOfValidity: 套餐有效期，单位:天
        # @type TermOfValidity: Integer
        # @param Commercial: 0:不可商业化；1:可商业化
        # @type Commercial: Integer
        # @param PackagePrice: 套餐价格，单位：元
        # @type PackagePrice: Float
        # @param EffectTime: 生效开始时间,格式yyyy-MM-dd HH:mm:ss
        # @type EffectTime: String
        # @param ExpireTime: 生效结束时间,格式yyyy-MM-dd HH:mm:ss
        # @type ExpireTime: String
        # @param UsedCount: 剩余授权次数
        # @type UsedCount: Integer
        # @param UseRanges: 曲库包用途信息
        # @type UseRanges: Array

        attr_accessor :OrderId, :Name, :AuthorizedArea, :AuthorizedLimit, :TermOfValidity, :Commercial, :PackagePrice, :EffectTime, :ExpireTime, :UsedCount, :UseRanges
        
        def initialize(orderid=nil, name=nil, authorizedarea=nil, authorizedlimit=nil, termofvalidity=nil, commercial=nil, packageprice=nil, effecttime=nil, expiretime=nil, usedcount=nil, useranges=nil)
          @OrderId = orderid
          @Name = name
          @AuthorizedArea = authorizedarea
          @AuthorizedLimit = authorizedlimit
          @TermOfValidity = termofvalidity
          @Commercial = commercial
          @PackagePrice = packageprice
          @EffectTime = effecttime
          @ExpireTime = expiretime
          @UsedCount = usedcount
          @UseRanges = useranges
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Name = params['Name']
          @AuthorizedArea = params['AuthorizedArea']
          @AuthorizedLimit = params['AuthorizedLimit']
          @TermOfValidity = params['TermOfValidity']
          @Commercial = params['Commercial']
          @PackagePrice = params['PackagePrice']
          @EffectTime = params['EffectTime']
          @ExpireTime = params['ExpireTime']
          @UsedCount = params['UsedCount']
          unless params['UseRanges'].nil?
            @UseRanges = []
            params['UseRanges'].each do |i|
              userange_tmp = UseRange.new
              userange_tmp.deserialize(i)
              @UseRanges << userange_tmp
            end
          end
        end
      end

      # 曲库包歌曲信息
      class PackageItem < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单id
        # @type OrderId: String
        # @param TrackName: 歌曲名
        # @type TrackName: String
        # @param ItemID: 歌曲ID
        # @type ItemID: String
        # @param Img: 专辑图片
        # @type Img: String
        # @param ArtistName: 歌手名
        # @type ArtistName: String
        # @param Duration: 歌曲时长
        # @type Duration: String
        # @param AuthorizedArea: 授权区域，global: 全球 CN: 中国
        # @type AuthorizedArea: String
        # @param Tags: 标签数组
        # @type Tags: Array

        attr_accessor :OrderId, :TrackName, :ItemID, :Img, :ArtistName, :Duration, :AuthorizedArea, :Tags
        
        def initialize(orderid=nil, trackname=nil, itemid=nil, img=nil, artistname=nil, duration=nil, authorizedarea=nil, tags=nil)
          @OrderId = orderid
          @TrackName = trackname
          @ItemID = itemid
          @Img = img
          @ArtistName = artistname
          @Duration = duration
          @AuthorizedArea = authorizedarea
          @Tags = tags
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @TrackName = params['TrackName']
          @ItemID = params['ItemID']
          @Img = params['Img']
          @ArtistName = params['ArtistName']
          @Duration = params['Duration']
          @AuthorizedArea = params['AuthorizedArea']
          @Tags = params['Tags']
        end
      end

      # 播放指令输入参数
      class PlayCommandInput < TencentCloud::Common::AbstractModel
        # @param Index: 歌曲位置索引。
        # @type Index: Integer

        attr_accessor :Index
        
        def initialize(index=nil)
          @Index = index
        end

        def deserialize(params)
          @Index = params['Index']
        end
      end

      # PutMusicOnTheShelves请求参数结构体
      class PutMusicOnTheShelvesRequest < TencentCloud::Common::AbstractModel
        # @param MusicIds: 资源方歌曲Id
        # @type MusicIds: Array

        attr_accessor :MusicIds
        
        def initialize(musicids=nil)
          @MusicIds = musicids
        end

        def deserialize(params)
          @MusicIds = params['MusicIds']
        end
      end

      # PutMusicOnTheShelves返回参数结构体
      class PutMusicOnTheShelvesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessNum: 操作成功数量
        # @type SuccessNum: Integer
        # @param FailedNum: 操作失败数量
        # @type FailedNum: Integer
        # @param FailedMusicIds: 失败歌曲Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedMusicIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessNum, :FailedNum, :FailedMusicIds, :RequestId
        
        def initialize(successnum=nil, failednum=nil, failedmusicids=nil, requestid=nil)
          @SuccessNum = successnum
          @FailedNum = failednum
          @FailedMusicIds = failedmusicids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessNum = params['SuccessNum']
          @FailedNum = params['FailedNum']
          @FailedMusicIds = params['FailedMusicIds']
          @RequestId = params['RequestId']
        end
      end

      # ReportData请求参数结构体
      class ReportDataRequest < TencentCloud::Common::AbstractModel
        # @param ReportData: 上报数据
        # 注:reportData为客户端压缩后的上报数据进行16进制转换的字符串数据
        # 压缩说明：
        # a) 上报的json格式字符串通过流的转换（ByteArrayInputStream, java.util.zip.GZIPOutputStream），获取到压缩后的字节数组。
        # b) 将压缩后的字节数组转成16进制字符串。

        # reportData由两部分数据组成：
        # 1）report_type（上报类型）
        # 2）data（歌曲上报数据）
        # 不同的report_type对应的data数据结构不一样。

        # 详细说明请参考文档reportdata.docx：
        # https://github.com/tencentyun/ame-documents
        # @type ReportData: String

        attr_accessor :ReportData
        
        def initialize(reportdata=nil)
          @ReportData = reportdata
        end

        def deserialize(params)
          @ReportData = params['ReportData']
        end
      end

      # ReportData返回参数结构体
      class ReportDataResponse < TencentCloud::Common::AbstractModel
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

      # SearchKTVMusics请求参数结构体
      class SearchKTVMusicsRequest < TencentCloud::Common::AbstractModel
        # @param KeyWord: 搜索关键词
        # @type KeyWord: String
        # @param Offset: 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        # 取值范围：Offset + Limit 不超过5000。
        # @type Offset: Integer
        # @param Limit: 分页返回的起始偏移量，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        # @type Limit: Integer
        # @param Sort: 排序方式。默认按照匹配度排序
        # <li> Sort.Field 可选 CreateTime</li>
        # <li> Sort.Order 可选 Desc </li>
        # <li> 当 KeyWord 不为空时，Sort.Field 字段无效， 搜索结果将以匹配度排序。</li>
        # @type Sort: :class:`Tencentcloud::Ame.v20190916.models.SortBy`
        # @param TagIds: 标签 ID 集合，匹配集合指定所有 ID 。
        # <li>数组长度限制：10。</li>
        # @type TagIds: Array

        attr_accessor :KeyWord, :Offset, :Limit, :Sort, :TagIds
        
        def initialize(keyword=nil, offset=nil, limit=nil, sort=nil, tagids=nil)
          @KeyWord = keyword
          @Offset = offset
          @Limit = limit
          @Sort = sort
          @TagIds = tagids
        end

        def deserialize(params)
          @KeyWord = params['KeyWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Sort'].nil?
            @Sort = SortBy.new
            @Sort.deserialize(params['Sort'])
          end
          @TagIds = params['TagIds']
        end
      end

      # SearchKTVMusics返回参数结构体
      class SearchKTVMusicsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param KTVMusicInfoSet: KTV 曲目列表
        # @type KTVMusicInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KTVMusicInfoSet, :RequestId
        
        def initialize(totalcount=nil, ktvmusicinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @KTVMusicInfoSet = ktvmusicinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KTVMusicInfoSet'].nil?
            @KTVMusicInfoSet = []
            params['KTVMusicInfoSet'].each do |i|
              ktvmusicbaseinfo_tmp = KTVMusicBaseInfo.new
              ktvmusicbaseinfo_tmp.deserialize(i)
              @KTVMusicInfoSet << ktvmusicbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 调整播放进度指令参数
      class SeekCommandInput < TencentCloud::Common::AbstractModel
        # @param Position: 播放位置，单位：毫秒。
        # @type Position: Integer

        attr_accessor :Position
        
        def initialize(position=nil)
          @Position = position
        end

        def deserialize(params)
          @Position = params['Position']
        end
      end

      # 发送自定义信息指令参数
      class SendMessageCommandInput < TencentCloud::Common::AbstractModel
        # @param Message: 自定义消息，json格式字符串。
        # @type Message: String
        # @param Repeat: 消息重复次数，默认为 1。
        # @type Repeat: Integer

        attr_accessor :Message, :Repeat
        
        def initialize(message=nil, repeat=nil)
          @Message = message
          @Repeat = repeat
        end

        def deserialize(params)
          @Message = params['Message']
          @Repeat = params['Repeat']
        end
      end

      # 音频参数信息
      class SetAudioParamCommandInput < TencentCloud::Common::AbstractModel
        # @param Definition: 规格，取值有：
        # <li>audio/mi：低规格</li>
        # <li>audio/lo：中规格</li>
        # <li>audio/hi：高规格</li>
        # @type Definition: String
        # @param Type: 音频类型，取值有：
        # <li>Original：原唱</li>
        # <li>Accompaniment：伴奏</li>
        # @type Type: String

        attr_accessor :Definition, :Type
        
        def initialize(definition=nil, type=nil)
          @Definition = definition
          @Type = type
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
        end
      end

      # 设置销毁模式
      class SetDestroyModeCommandInput < TencentCloud::Common::AbstractModel
        # @param DestroyMode: 销毁模式，取值有：
        # <li>Auto：房间没人时自动销毁</li>
        # <li>Expire：房间没人时过期自动销毁</li>
        # <li>Never：不自动销毁，需手动销毁</li>默认为：Auto。
        # @type DestroyMode: String
        # @param DestroyExpireTime: 过期销毁时间，单位：秒，当DestroyMode取Expire时必填。
        # @type DestroyExpireTime: Integer

        attr_accessor :DestroyMode, :DestroyExpireTime
        
        def initialize(destroymode=nil, destroyexpiretime=nil)
          @DestroyMode = destroymode
          @DestroyExpireTime = destroyexpiretime
        end

        def deserialize(params)
          @DestroyMode = params['DestroyMode']
          @DestroyExpireTime = params['DestroyExpireTime']
        end
      end

      # 设置播放模式
      class SetPlayModeCommandInput < TencentCloud::Common::AbstractModel
        # @param PlayMode: 播放模式，取值有：
        # <li>RepeatPlaylist：列表循环</li>
        # <li>Order：顺序播放</li>
        # <li>RepeatSingle：单曲循环</li>
        # <li>Shuffle：随机播放</li>
        # @type PlayMode: String

        attr_accessor :PlayMode
        
        def initialize(playmode=nil)
          @PlayMode = playmode
        end

        def deserialize(params)
          @PlayMode = params['PlayMode']
        end
      end

      # 设置播放列表指令参数
      class SetPlaylistCommandInput < TencentCloud::Common::AbstractModel
        # @param Type: 变更类型，取值有：
        # <li>Add：添加</li>
        # <li>Delete：删除</li>
        # <li>ClearList：清空歌曲列表</li>
        # <li>Move：移动歌曲</li>
        # @type Type: String
        # @param Index: 歌单索引位置，
        # 当 Type 取 Add 时，-1表示添加在列表最后位置，大于-1表示要添加的位置；
        # 当 Type 取 Delete 时，表示待删除歌曲的位置；
        # 当 Type 取 Move 时，表示待调整歌曲的位置。
        # @type Index: Integer
        # @param ChangedIndex: 当 Type 取 Move 时，必填，表示移动歌曲的目标位置。
        # @type ChangedIndex: Integer
        # @param MusicIds: 歌曲 ID 列表，当 Type 取 Add 时，必填。
        # @type MusicIds: Array

        attr_accessor :Type, :Index, :ChangedIndex, :MusicIds
        
        def initialize(type=nil, index=nil, changedindex=nil, musicids=nil)
          @Type = type
          @Index = index
          @ChangedIndex = changedindex
          @MusicIds = musicids
        end

        def deserialize(params)
          @Type = params['Type']
          @Index = params['Index']
          @ChangedIndex = params['ChangedIndex']
          @MusicIds = params['MusicIds']
        end
      end

      # 排序依据
      class SortBy < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段
        # @type Field: String
        # @param Order: 排序方式，可选值：Asc（升序）、Desc（降序）
        # @type Order: String

        attr_accessor :Field, :Order
        
        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

      # 分类内容
      class Station < TencentCloud::Common::AbstractModel
        # @param CategoryID: StationID
        # @type CategoryID: String
        # @param CategoryCode: Station MCCode
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryCode: String
        # @param Name: Category Name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Rank: Station的排序值，供参考（返回结果已按其升序）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rank: Integer
        # @param ImagePathMap: station图片集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImagePathMap: Array

        attr_accessor :CategoryID, :CategoryCode, :Name, :Rank, :ImagePathMap
        
        def initialize(categoryid=nil, categorycode=nil, name=nil, rank=nil, imagepathmap=nil)
          @CategoryID = categoryid
          @CategoryCode = categorycode
          @Name = name
          @Rank = rank
          @ImagePathMap = imagepathmap
        end

        def deserialize(params)
          @CategoryID = params['CategoryID']
          @CategoryCode = params['CategoryCode']
          @Name = params['Name']
          @Rank = params['Rank']
          unless params['ImagePathMap'].nil?
            @ImagePathMap = []
            params['ImagePathMap'].each do |i|
              imagepath_tmp = ImagePath.new
              imagepath_tmp.deserialize(i)
              @ImagePathMap << imagepath_tmp
            end
          end
        end
      end

      # SyncKTVRobotCommand请求参数结构体
      class SyncKTVRobotCommandRequest < TencentCloud::Common::AbstractModel
        # @param RobotId: 机器人Id。
        # @type RobotId: String
        # @param Command: 指令，取值有：
        # <li>Play：播放</li>
        # <li>Pause：暂停</li>
        # <li>SwitchPrevious：上一首</li>
        # <li>SwitchNext：下一首</li>
        # <li>SetPlayMode：设置播放模式</li>
        # <li>Seek：调整播放进度</li>
        # <li>SetPlaylist：歌单变更</li>
        # <li>SetAudioParam：音频参数变更</li>
        # <li>SendMessage：发送自定义消息</li>
        # <li>SetDestroyMode：设置销毁模式</li>
        # @type Command: String
        # @param PlayCommandInput: 播放参数。
        # @type PlayCommandInput: :class:`Tencentcloud::Ame.v20190916.models.PlayCommandInput`
        # @param SetPlaylistCommandInput: 播放列表变更信息，当Command取SetPlaylist时，必填。
        # @type SetPlaylistCommandInput: :class:`Tencentcloud::Ame.v20190916.models.SetPlaylistCommandInput`
        # @param SeekCommandInput: 播放进度，当Command取Seek时，必填。
        # @type SeekCommandInput: :class:`Tencentcloud::Ame.v20190916.models.SeekCommandInput`
        # @param SetAudioParamCommandInput: 音频参数，当Command取SetAudioParam时，必填。
        # @type SetAudioParamCommandInput: :class:`Tencentcloud::Ame.v20190916.models.SetAudioParamCommandInput`
        # @param SendMessageCommandInput: 自定义消息，当Command取SendMessage时，必填。
        # @type SendMessageCommandInput: :class:`Tencentcloud::Ame.v20190916.models.SendMessageCommandInput`
        # @param SetPlayModeCommandInput: 播放模式，当Command取SetPlayMode时，必填。
        # @type SetPlayModeCommandInput: :class:`Tencentcloud::Ame.v20190916.models.SetPlayModeCommandInput`
        # @param SetDestroyModeCommandInput: 销毁模式，当Command取SetDestroyMode时，必填。
        # @type SetDestroyModeCommandInput: :class:`Tencentcloud::Ame.v20190916.models.SetDestroyModeCommandInput`

        attr_accessor :RobotId, :Command, :PlayCommandInput, :SetPlaylistCommandInput, :SeekCommandInput, :SetAudioParamCommandInput, :SendMessageCommandInput, :SetPlayModeCommandInput, :SetDestroyModeCommandInput
        
        def initialize(robotid=nil, command=nil, playcommandinput=nil, setplaylistcommandinput=nil, seekcommandinput=nil, setaudioparamcommandinput=nil, sendmessagecommandinput=nil, setplaymodecommandinput=nil, setdestroymodecommandinput=nil)
          @RobotId = robotid
          @Command = command
          @PlayCommandInput = playcommandinput
          @SetPlaylistCommandInput = setplaylistcommandinput
          @SeekCommandInput = seekcommandinput
          @SetAudioParamCommandInput = setaudioparamcommandinput
          @SendMessageCommandInput = sendmessagecommandinput
          @SetPlayModeCommandInput = setplaymodecommandinput
          @SetDestroyModeCommandInput = setdestroymodecommandinput
        end

        def deserialize(params)
          @RobotId = params['RobotId']
          @Command = params['Command']
          unless params['PlayCommandInput'].nil?
            @PlayCommandInput = PlayCommandInput.new
            @PlayCommandInput.deserialize(params['PlayCommandInput'])
          end
          unless params['SetPlaylistCommandInput'].nil?
            @SetPlaylistCommandInput = SetPlaylistCommandInput.new
            @SetPlaylistCommandInput.deserialize(params['SetPlaylistCommandInput'])
          end
          unless params['SeekCommandInput'].nil?
            @SeekCommandInput = SeekCommandInput.new
            @SeekCommandInput.deserialize(params['SeekCommandInput'])
          end
          unless params['SetAudioParamCommandInput'].nil?
            @SetAudioParamCommandInput = SetAudioParamCommandInput.new
            @SetAudioParamCommandInput.deserialize(params['SetAudioParamCommandInput'])
          end
          unless params['SendMessageCommandInput'].nil?
            @SendMessageCommandInput = SendMessageCommandInput.new
            @SendMessageCommandInput.deserialize(params['SendMessageCommandInput'])
          end
          unless params['SetPlayModeCommandInput'].nil?
            @SetPlayModeCommandInput = SetPlayModeCommandInput.new
            @SetPlayModeCommandInput.deserialize(params['SetPlayModeCommandInput'])
          end
          unless params['SetDestroyModeCommandInput'].nil?
            @SetDestroyModeCommandInput = SetDestroyModeCommandInput.new
            @SetDestroyModeCommandInput.deserialize(params['SetDestroyModeCommandInput'])
          end
        end
      end

      # SyncKTVRobotCommand返回参数结构体
      class SyncKTVRobotCommandResponse < TencentCloud::Common::AbstractModel
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

      # TRTC推流进房信息
      class TRTCJoinRoomInput < TencentCloud::Common::AbstractModel
        # @param Sign: 签名。
        # @type Sign: String
        # @param RoomId: 房间号。
        # @type RoomId: String
        # @param SdkAppId: 推流应用ID。
        # @type SdkAppId: String
        # @param UserId: 用户唯一标识。
        # @type UserId: String

        attr_accessor :Sign, :RoomId, :SdkAppId, :UserId
        
        def initialize(sign=nil, roomid=nil, sdkappid=nil, userid=nil)
          @Sign = sign
          @RoomId = roomid
          @SdkAppId = sdkappid
          @UserId = userid
        end

        def deserialize(params)
          @Sign = params['Sign']
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
        end
      end

      # 下架歌曲复合结构
      class TakeMusicOffShelves < TencentCloud::Common::AbstractModel
        # @param MusicIds: 资源方对应音乐Id
        # @type MusicIds: String
        # @param SaleStatus: 当曲目临时下架时：已订购客户无影响，无需消息通知。当曲目封杀下架后，推送消息至已订购老客户，枚举值，判断是否上/下架
        # 在售状态，0在售，1临时下架，2永久下架
        # @type SaleStatus: String

        attr_accessor :MusicIds, :SaleStatus
        
        def initialize(musicids=nil, salestatus=nil)
          @MusicIds = musicids
          @SaleStatus = salestatus
        end

        def deserialize(params)
          @MusicIds = params['MusicIds']
          @SaleStatus = params['SaleStatus']
        end
      end

      # TakeMusicOffShelves请求参数结构体
      class TakeMusicOffShelvesRequest < TencentCloud::Common::AbstractModel
        # @param TakeMusicOffShelves: 资源方下架必传结构
        # @type TakeMusicOffShelves: Array

        attr_accessor :TakeMusicOffShelves
        
        def initialize(takemusicoffshelves=nil)
          @TakeMusicOffShelves = takemusicoffshelves
        end

        def deserialize(params)
          unless params['TakeMusicOffShelves'].nil?
            @TakeMusicOffShelves = []
            params['TakeMusicOffShelves'].each do |i|
              takemusicoffshelves_tmp = TakeMusicOffShelves.new
              takemusicoffshelves_tmp.deserialize(i)
              @TakeMusicOffShelves << takemusicoffshelves_tmp
            end
          end
        end
      end

      # TakeMusicOffShelves返回参数结构体
      class TakeMusicOffShelvesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessNum: 返回成功数量
        # @type SuccessNum: Integer
        # @param FailedNum: 返回失败数量
        # @type FailedNum: Integer
        # @param FailedMusicIds: 返回失败歌曲musicId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedMusicIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessNum, :FailedNum, :FailedMusicIds, :RequestId
        
        def initialize(successnum=nil, failednum=nil, failedmusicids=nil, requestid=nil)
          @SuccessNum = successnum
          @FailedNum = failednum
          @FailedMusicIds = failedmusicids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessNum = params['SuccessNum']
          @FailedNum = params['FailedNum']
          @FailedMusicIds = params['FailedMusicIds']
          @RequestId = params['RequestId']
        end
      end

      # 时间范围
      class TimeRange < TencentCloud::Common::AbstractModel
        # @param Before: <li>大于等于此时间（起始时间）。</li>
        # <li>格式按照 ISO 8601标准表示，详见 <a href="https://cloud.tencent.com/document/product/266/11732#I" target="_blank">ISO 日期格式说明</a>。</li>
        # @type Before: String
        # @param After: <li>小于此时间（结束时间）。</li>
        # <li>格式按照 ISO 8601标准表示，详见 <a href="https://cloud.tencent.com/document/product/266/11732#I" target="_blank">ISO 日期格式说明</a>。</li>
        # @type After: String

        attr_accessor :Before, :After
        
        def initialize(before=nil, after=nil)
          @Before = before
          @After = after
        end

        def deserialize(params)
          @Before = params['Before']
          @After = params['After']
        end
      end

      # 曲库包用途信息
      class UseRange < TencentCloud::Common::AbstractModel
        # @param UseRangeId: 用途id
        # @type UseRangeId: Integer
        # @param Name: 用途范围名称
        # @type Name: String

        attr_accessor :UseRangeId, :Name
        
        def initialize(userangeid=nil, name=nil)
          @UseRangeId = userangeid
          @Name = name
        end

        def deserialize(params)
          @UseRangeId = params['UseRangeId']
          @Name = params['Name']
        end
      end

    end
  end
end

