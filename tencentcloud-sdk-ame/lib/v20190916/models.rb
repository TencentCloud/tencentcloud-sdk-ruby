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
          @ImagePathMap = params['ImagePathMap']
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
          @Items = params['Items']
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
          @Items = params['Items']
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
            @Lyric = Lyric.new.deserialize(params[Lyric])
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
        # @param SubItemType: 填 MP3-64K-FTD-P 获取歌曲热门片段
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
            @Music = Music.new.deserialize(params[Music])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStations请求参数结构体
      class DescribeStationsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 条数，必须大于0
        # @type Limit: Integer
        # @param Offset: offset (Default = 0)，(当前页-1) * Limit
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
          @Stations = params['Stations']
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

      # Item
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

        attr_accessor :ItemID, :DataInfo, :Album, :Artists
        
        def initialize(itemid=nil, datainfo=nil, album=nil, artists=nil)
          @ItemID = itemid
          @DataInfo = datainfo
          @Album = album
          @Artists = artists
        end

        def deserialize(params)
          @ItemID = params['ItemID']
          unless params['DataInfo'].nil?
            @DataInfo = DataInfo.new.deserialize(params[DataInfo])
          end
          unless params['Album'].nil?
            @Album = Album.new.deserialize(params[Album])
          end
          @Artists = params['Artists']
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
          @ImagePathMap = params['ImagePathMap']
        end
      end

    end
  end
end

