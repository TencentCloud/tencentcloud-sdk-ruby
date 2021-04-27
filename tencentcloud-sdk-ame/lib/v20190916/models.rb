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
              @ImagePathMap << ImagePath.new.deserialize(i)
            end
          end
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

        attr_accessor :Name, :Version, :Duration, :AuditionBegin, :AuditionEnd
        
        def initialize(name=nil, version=nil, duration=nil, auditionbegin=nil, auditionend=nil)
          @Name = name
          @Version = version
          @Duration = duration
          @AuditionBegin = auditionbegin
          @AuditionEnd = auditionend
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
          @Duration = params['Duration']
          @AuditionBegin = params['AuditionBegin']
          @AuditionEnd = params['AuditionEnd']
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
              @AuthInfo << AuthInfo.new.deserialize(i)
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
              @MusicOpenDetail << MusicOpenDetail.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudMusic请求参数结构体
      class DescribeCloudMusicRequest < TencentCloud::Common::AbstractModel
        # @param MusicId: 歌曲Id
        # @type MusicId: String
        # @param MusicType: MP3-320K-FTD-P  为获取320kbps歌曲热门片段。
        # MP3-320K-FTD 为获取320kbps已核验歌曲完整资源。
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
              @Items << Item.new.deserialize(i)
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
              @Items << Item.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLyric请求参数结构体
      class DescribeLyricRequest < TencentCloud::Common::AbstractModel
        # @param ItemId: 歌曲ID
        # @type ItemId: String
        # @param SubItemType: 歌词格式，可选项，可不填写，目前填写只能填LRC-LRC。该字段为预留的扩展字段。后续如果不填，会返回歌曲的所有格式的歌词。如果填写某个正确的格式，则只返回该格式的歌词。
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
        # @param Lyric: 歌词详情
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
            @Lyric = Lyric.new.deserialize(params['Lyric'])
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
        # @param SubItemType: MP3-320K-FTD-P  为获取64kbps歌曲热门片段。
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
            @Music = Music.new.deserialize(params['Music'])
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
              @PackageItems << PackageItem.new.deserialize(i)
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
              @Packages << Package.new.deserialize(i)
            end
          end
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
              @Stations << Station.new.deserialize(i)
            end
          end
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
            @DataInfo = DataInfo.new.deserialize(params['DataInfo'])
          end
          unless params['Album'].nil?
            @Album = Album.new.deserialize(params['Album'])
          end
          unless params['Artists'].nil?
            @Artists = []
            params['Artists'].each do |i|
              @Artists << Artist.new.deserialize(i)
            end
          end
          @Status = params['Status']
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
            @MusicDetailInfos = MusicDetailInfo.new.deserialize(params['MusicDetailInfos'])
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

        attr_accessor :MusicId, :AmeId, :Tags, :HitWords, :Bpm, :Score
        
        def initialize(musicid=nil, ameid=nil, tags=nil, hitwords=nil, bpm=nil, score=nil)
          @MusicId = musicid
          @AmeId = ameid
          @Tags = tags
          @HitWords = hitwords
          @Bpm = bpm
          @Score = score
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @AmeId = params['AmeId']
          @Tags = params['Tags']
          @HitWords = params['HitWords']
          @Bpm = params['Bpm']
          @Score = params['Score']
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

        attr_accessor :MusicId, :AlbumName, :AlbumImageUrl, :MusicName, :MusicImageUrl, :Singers, :Duration, :Tags, :LyricUrl
        
        def initialize(musicid=nil, albumname=nil, albumimageurl=nil, musicname=nil, musicimageurl=nil, singers=nil, duration=nil, tags=nil, lyricurl=nil)
          @MusicId = musicid
          @AlbumName = albumname
          @AlbumImageUrl = albumimageurl
          @MusicName = musicname
          @MusicImageUrl = musicimageurl
          @Singers = singers
          @Duration = duration
          @Tags = tags
          @LyricUrl = lyricurl
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
              @UseRanges << UseRange.new.deserialize(i)
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

        attr_accessor :OrderId, :TrackName, :ItemID, :Img, :ArtistName, :Duration, :AuthorizedArea
        
        def initialize(orderid=nil, trackname=nil, itemid=nil, img=nil, artistname=nil, duration=nil, authorizedarea=nil)
          @OrderId = orderid
          @TrackName = trackname
          @ItemID = itemid
          @Img = img
          @ArtistName = artistname
          @Duration = duration
          @AuthorizedArea = authorizedarea
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @TrackName = params['TrackName']
          @ItemID = params['ItemID']
          @Img = params['Img']
          @ArtistName = params['ArtistName']
          @Duration = params['Duration']
          @AuthorizedArea = params['AuthorizedArea']
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
        # https://github.com/ame-demo/doc
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
              @ImagePathMap << ImagePath.new.deserialize(i)
            end
          end
        end
      end

      # 下架歌曲复合结构
      class TakeMusicOffShelves < TencentCloud::Common::AbstractModel
        # @param MusicIds: 资源方对应音乐Id
        # @type MusicIds: String
        # @param SaleStatus: 当曲目临时下架时：已订购客户无影响，无需消息通知。当曲目封杀下架后，推送消息至已订购老客户，枚举值，判断是否上/下架
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
              @TakeMusicOffShelves << TakeMusicOffShelves.new.deserialize(i)
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

