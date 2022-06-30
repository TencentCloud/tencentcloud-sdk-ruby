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
  module Yinsuda
    module V20220527
      # BatchDescribeKTVMusicDetails请求参数结构体
      class BatchDescribeKTVMusicDetailsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param MusicIds: 歌曲 Id 列表。
        # @type MusicIds: Array

        attr_accessor :AppName, :UserId, :MusicIds
        
        def initialize(appname=nil, userid=nil, musicids=nil)
          @AppName = appname
          @UserId = userid
          @MusicIds = musicids
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @MusicIds = params['MusicIds']
        end
      end

      # BatchDescribeKTVMusicDetails返回参数结构体
      class BatchDescribeKTVMusicDetailsResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicDetailInfoSet: 歌曲详细信息列表。
        # @type KTVMusicDetailInfoSet: Array
        # @param NotExistMusicIdSet: 不存在歌曲Id列表。
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

      # 副歌片段信息。
      class ChorusClip < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，单位：毫秒。
        # @type StartTime: Integer
        # @param EndTime: 结束时间，单位：毫秒。
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

      # DescribeKTVPlaylistDetail请求参数结构体
      class DescribeKTVPlaylistDetailRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param PlaylistId: 歌单 Id。
        # @type PlaylistId: String
        # @param ScrollToken: 滚动标记。
        # @type ScrollToken: String
        # @param Limit: 返回条数，默认：20，最大：50。
        # @type Limit: Integer
        # @param RightFilters: 权益过滤，取值有：
        # <li>Play：可播；</li>
        # <li>Sing：可唱。</li>
        # @type RightFilters: Array

        attr_accessor :AppName, :UserId, :PlaylistId, :ScrollToken, :Limit, :RightFilters
        
        def initialize(appname=nil, userid=nil, playlistid=nil, scrolltoken=nil, limit=nil, rightfilters=nil)
          @AppName = appname
          @UserId = userid
          @PlaylistId = playlistid
          @ScrollToken = scrolltoken
          @Limit = limit
          @RightFilters = rightfilters
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @PlaylistId = params['PlaylistId']
          @ScrollToken = params['ScrollToken']
          @Limit = params['Limit']
          @RightFilters = params['RightFilters']
        end
      end

      # DescribeKTVPlaylistDetail返回参数结构体
      class DescribeKTVPlaylistDetailResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicInfoSet: 歌曲信息列表。
        # @type KTVMusicInfoSet: Array
        # @param ScrollToken: 滚动标记，用于设置下次请求的 ScrollToken 参数。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicInfoSet, :ScrollToken, :RequestId
        
        def initialize(ktvmusicinfoset=nil, scrolltoken=nil, requestid=nil)
          @KTVMusicInfoSet = ktvmusicinfoset
          @ScrollToken = scrolltoken
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
          @ScrollToken = params['ScrollToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVPlaylists请求参数结构体
      class DescribeKTVPlaylistsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String

        attr_accessor :AppName, :UserId
        
        def initialize(appname=nil, userid=nil)
          @AppName = appname
          @UserId = userid
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
        end
      end

      # DescribeKTVPlaylists返回参数结构体
      class DescribeKTVPlaylistsResponse < TencentCloud::Common::AbstractModel
        # @param PlaylistBaseInfoSet: 歌单基础信息。
        # @type PlaylistBaseInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlaylistBaseInfoSet, :RequestId
        
        def initialize(playlistbaseinfoset=nil, requestid=nil)
          @PlaylistBaseInfoSet = playlistbaseinfoset
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeKTVSuggestions请求参数结构体
      class DescribeKTVSuggestionsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param KeyWord: 搜索词。
        # @type KeyWord: String

        attr_accessor :AppName, :UserId, :KeyWord
        
        def initialize(appname=nil, userid=nil, keyword=nil)
          @AppName = appname
          @UserId = userid
          @KeyWord = keyword
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @KeyWord = params['KeyWord']
        end
      end

      # DescribeKTVSuggestions返回参数结构体
      class DescribeKTVSuggestionsResponse < TencentCloud::Common::AbstractModel
        # @param KTVSuggestionInfoSet: 联想词信息列表。
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

      # 歌曲基础信息。
      class KTVMusicBaseInfo < TencentCloud::Common::AbstractModel
        # @param MusicId: 歌曲Id。
        # @type MusicId: String
        # @param Name: 歌曲名称。
        # @type Name: String
        # @param SingerSet: 歌手名称。
        # @type SingerSet: Array
        # @param Duration: 播放时长。
        # @type Duration: Integer
        # @param SingerImageUrl: 歌手图片链接。
        # @type SingerImageUrl: String
        # @param AlbumInfo: 专辑信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlbumInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.MusicAlbumInfo`
        # @param RightSet: 权益列表，取值有：
        # <li>Play：可播；</li>
        # <li>Sing：可唱。</li>
        # @type RightSet: Array

        attr_accessor :MusicId, :Name, :SingerSet, :Duration, :SingerImageUrl, :AlbumInfo, :RightSet
        
        def initialize(musicid=nil, name=nil, singerset=nil, duration=nil, singerimageurl=nil, albuminfo=nil, rightset=nil)
          @MusicId = musicid
          @Name = name
          @SingerSet = singerset
          @Duration = duration
          @SingerImageUrl = singerimageurl
          @AlbumInfo = albuminfo
          @RightSet = rightset
        end

        def deserialize(params)
          @MusicId = params['MusicId']
          @Name = params['Name']
          @SingerSet = params['SingerSet']
          @Duration = params['Duration']
          @SingerImageUrl = params['SingerImageUrl']
          unless params['AlbumInfo'].nil?
            @AlbumInfo = MusicAlbumInfo.new
            @AlbumInfo.deserialize(params['AlbumInfo'])
          end
          @RightSet = params['RightSet']
        end
      end

      # 歌曲详细信息。
      class KTVMusicDetailInfo < TencentCloud::Common::AbstractModel
        # @param KTVMusicBaseInfo: 歌曲基础信息。
        # @type KTVMusicBaseInfo: :class:`Tencentcloud::Yinsuda.v20220527.models.KTVMusicBaseInfo`
        # @param PlayToken: 播放凭证。
        # @type PlayToken: String
        # @param LyricsUrl: 歌词下载链接。
        # @type LyricsUrl: String
        # @param MidiUrl: 音高数据下载链接。
        # @type MidiUrl: String
        # @param ChorusClipSet: 副歌片段信息。
        # @type ChorusClipSet: Array

        attr_accessor :KTVMusicBaseInfo, :PlayToken, :LyricsUrl, :MidiUrl, :ChorusClipSet
        
        def initialize(ktvmusicbaseinfo=nil, playtoken=nil, lyricsurl=nil, midiurl=nil, chorusclipset=nil)
          @KTVMusicBaseInfo = ktvmusicbaseinfo
          @PlayToken = playtoken
          @LyricsUrl = lyricsurl
          @MidiUrl = midiurl
          @ChorusClipSet = chorusclipset
        end

        def deserialize(params)
          unless params['KTVMusicBaseInfo'].nil?
            @KTVMusicBaseInfo = KTVMusicBaseInfo.new
            @KTVMusicBaseInfo.deserialize(params['KTVMusicBaseInfo'])
          end
          @PlayToken = params['PlayToken']
          @LyricsUrl = params['LyricsUrl']
          @MidiUrl = params['MidiUrl']
          unless params['ChorusClipSet'].nil?
            @ChorusClipSet = []
            params['ChorusClipSet'].each do |i|
              chorusclip_tmp = ChorusClip.new
              chorusclip_tmp.deserialize(i)
              @ChorusClipSet << chorusclip_tmp
            end
          end
        end
      end

      # 歌单基础信息。
      class KTVPlaylistBaseInfo < TencentCloud::Common::AbstractModel
        # @param PlaylistId: 歌单Id。
        # @type PlaylistId: String
        # @param Title: 歌单标题。
        # @type Title: String

        attr_accessor :PlaylistId, :Title
        
        def initialize(playlistid=nil, title=nil)
          @PlaylistId = playlistid
          @Title = title
        end

        def deserialize(params)
          @PlaylistId = params['PlaylistId']
          @Title = params['Title']
        end
      end

      # 联想词信息。
      class KTVSuggestionInfo < TencentCloud::Common::AbstractModel
        # @param Suggestion: 联想词。
        # @type Suggestion: String

        attr_accessor :Suggestion
        
        def initialize(suggestion=nil)
          @Suggestion = suggestion
        end

        def deserialize(params)
          @Suggestion = params['Suggestion']
        end
      end

      # 歌曲专辑封面信息。
      class MusicAlbumCoverInfo < TencentCloud::Common::AbstractModel
        # @param Dimension: 尺寸规格，取值有：
        # <li>Mini：150 x 150 尺寸；</li>
        # <li>Small：240 x 240 尺寸；</li>
        # <li>Medium：480 x 480 尺寸。</li>
        # @type Dimension: String
        # @param Url: 下载链接。
        # @type Url: String

        attr_accessor :Dimension, :Url
        
        def initialize(dimension=nil, url=nil)
          @Dimension = dimension
          @Url = url
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          @Url = params['Url']
        end
      end

      # 歌曲专辑信息。
      class MusicAlbumInfo < TencentCloud::Common::AbstractModel
        # @param Name: 专辑名称。
        # @type Name: String
        # @param CoverInfoSet: 封面列表。
        # @type CoverInfoSet: Array

        attr_accessor :Name, :CoverInfoSet
        
        def initialize(name=nil, coverinfoset=nil)
          @Name = name
          @CoverInfoSet = coverinfoset
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['CoverInfoSet'].nil?
            @CoverInfoSet = []
            params['CoverInfoSet'].each do |i|
              musicalbumcoverinfo_tmp = MusicAlbumCoverInfo.new
              musicalbumcoverinfo_tmp.deserialize(i)
              @CoverInfoSet << musicalbumcoverinfo_tmp
            end
          end
        end
      end

      # SearchKTVMusics请求参数结构体
      class SearchKTVMusicsRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param UserId: 用户标识。
        # @type UserId: String
        # @param KeyWord: 关键词。
        # @type KeyWord: String
        # @param ScrollToken: 滚动标记。
        # @type ScrollToken: String
        # @param Limit: 返回条数限制，默认 20，最大 50.
        # @type Limit: Integer
        # @param RightFilters: 权益过滤，取值有：
        # <li>Play：可播；</li>
        # <li>Sing：可唱。</li>
        # @type RightFilters: Array

        attr_accessor :AppName, :UserId, :KeyWord, :ScrollToken, :Limit, :RightFilters
        
        def initialize(appname=nil, userid=nil, keyword=nil, scrolltoken=nil, limit=nil, rightfilters=nil)
          @AppName = appname
          @UserId = userid
          @KeyWord = keyword
          @ScrollToken = scrolltoken
          @Limit = limit
          @RightFilters = rightfilters
        end

        def deserialize(params)
          @AppName = params['AppName']
          @UserId = params['UserId']
          @KeyWord = params['KeyWord']
          @ScrollToken = params['ScrollToken']
          @Limit = params['Limit']
          @RightFilters = params['RightFilters']
        end
      end

      # SearchKTVMusics返回参数结构体
      class SearchKTVMusicsResponse < TencentCloud::Common::AbstractModel
        # @param KTVMusicInfoSet: 歌曲信息列表。
        # @type KTVMusicInfoSet: Array
        # @param ScrollToken: 滚动标记，用于设置下次请求的 ScrollToken 参数。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KTVMusicInfoSet, :ScrollToken, :RequestId
        
        def initialize(ktvmusicinfoset=nil, scrolltoken=nil, requestid=nil)
          @KTVMusicInfoSet = ktvmusicinfoset
          @ScrollToken = scrolltoken
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
          @ScrollToken = params['ScrollToken']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

