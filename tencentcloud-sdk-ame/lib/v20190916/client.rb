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

require 'json'

module TencentCloud
  module Ame
    module V20190916
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-09-16'
            api_endpoint = 'ame.tencentcloudapi.com'
            sdk_version = 'AME_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 根据 Id 列表查询歌曲的详细信息，包含基础信息及播放信息。

        # @param request: Request instance for BatchDescribeKTVMusicDetails.
        # @type request: :class:`Tencentcloud::ame::V20190916::BatchDescribeKTVMusicDetailsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::BatchDescribeKTVMusicDetailsResponse`
        def BatchDescribeKTVMusicDetails(request)
          body = send_request('BatchDescribeKTVMusicDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDescribeKTVMusicDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建机器人，支持进入 RTC 房间，播放直播互动曲库歌曲。

        # @param request: Request instance for CreateKTVRobot.
        # @type request: :class:`Tencentcloud::ame::V20190916::CreateKTVRobotRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::CreateKTVRobotResponse`
        def CreateKTVRobot(request)
          body = send_request('CreateKTVRobot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateKTVRobotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取授权项目信息列表

        # @param request: Request instance for DescribeAuthInfo.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeAuthInfoRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeAuthInfoResponse`
        def DescribeAuthInfo(request)
          body = send_request('DescribeAuthInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuthInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云音乐播放信息接口

        # @param request: Request instance for DescribeCloudMusic.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeCloudMusicRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeCloudMusicResponse`
        def DescribeCloudMusic(request)
          body = send_request('DescribeCloudMusic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudMusicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取授权项目下已购云音乐列表

        # @param request: Request instance for DescribeCloudMusicPurchased.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeCloudMusicPurchasedRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeCloudMusicPurchasedResponse`
        def DescribeCloudMusicPurchased(request)
          body = send_request('DescribeCloudMusicPurchased', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudMusicPurchasedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据歌曲ID查询歌曲信息

        # @param request: Request instance for DescribeItemById.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeItemByIdRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeItemByIdResponse`
        def DescribeItemById(request)
          body = send_request('DescribeItemById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeItemByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该服务后续会停用，不再建议使用

        # @param request: Request instance for DescribeItems.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeItemsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeItemsResponse`
        def DescribeItems(request)
          body = send_request('DescribeItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeItemsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据 Id 查询歌曲的详细信息，包含基础信息及播放信息。

        # @param request: Request instance for DescribeKTVMusicDetail.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVMusicDetailRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVMusicDetailResponse`
        def DescribeKTVMusicDetail(request)
          body = send_request('DescribeKTVMusicDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVMusicDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取直播互动曲库标签分组信息和标签信息

        # @param request: Request instance for DescribeKTVMusicTags.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVMusicTagsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVMusicTagsResponse`
        def DescribeKTVMusicTags(request)
          body = send_request('DescribeKTVMusicTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVMusicTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据歌单 Id 获取歌单详情，包括歌单的基础信息以及歌曲列表。

        # @param request: Request instance for DescribeKTVPlaylistDetail.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVPlaylistDetailRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVPlaylistDetailResponse`
        def DescribeKTVPlaylistDetail(request)
          body = send_request('DescribeKTVPlaylistDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVPlaylistDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取直播互动曲库推荐歌单列表。

        # @param request: Request instance for DescribeKTVPlaylists.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVPlaylistsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVPlaylistsResponse`
        def DescribeKTVPlaylists(request)
          body = send_request('DescribeKTVPlaylists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVPlaylistsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机器人列表，支持 Id、状态等过滤条件。

        # @param request: Request instance for DescribeKTVRobots.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVRobotsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVRobotsResponse`
        def DescribeKTVRobots(request)
          body = send_request('DescribeKTVRobots', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVRobotsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取直播互动曲库歌手分类信息

        # @param request: Request instance for DescribeKTVSingerCategories.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVSingerCategoriesRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVSingerCategoriesResponse`
        def DescribeKTVSingerCategories(request)
          body = send_request('DescribeKTVSingerCategories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVSingerCategoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据歌手id，返回该歌手下歌曲列表。



        # @param request: Request instance for DescribeKTVSingerMusics.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVSingerMusicsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVSingerMusicsResponse`
        def DescribeKTVSingerMusics(request)
          body = send_request('DescribeKTVSingerMusics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVSingerMusicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据过滤条件，返回匹配的歌手列表。

        # @param request: Request instance for DescribeKTVSingers.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVSingersRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVSingersResponse`
        def DescribeKTVSingers(request)
          body = send_request('DescribeKTVSingers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVSingersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取直播互动曲库联想词

        # @param request: Request instance for DescribeKTVSuggestions.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVSuggestionsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVSuggestionsResponse`
        def DescribeKTVSuggestions(request)
          body = send_request('DescribeKTVSuggestions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVSuggestionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取直播互动曲库歌曲的周榜和月榜

        # @param request: Request instance for DescribeKTVTopList.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeKTVTopListRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeKTVTopListResponse`
        def DescribeKTVTopList(request)
          body = send_request('DescribeKTVTopList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVTopListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据接口的模式及歌曲ID来取得歌词信息或者波形图信息。

        # @param request: Request instance for DescribeLyric.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeLyricRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeLyricResponse`
        def DescribeLyric(request)
          body = send_request('DescribeLyric', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLyricResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取曲库包歌曲播放信息接口

        # @param request: Request instance for DescribeMusic.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeMusicRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeMusicResponse`
        def DescribeMusic(request)
          body = send_request('DescribeMusic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMusicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据音乐信息查询音乐是否在售

        # @param request: Request instance for DescribeMusicSaleStatus.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeMusicSaleStatusRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeMusicSaleStatusResponse`
        def DescribeMusicSaleStatus(request)
          body = send_request('DescribeMusicSaleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMusicSaleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取曲库包下已核销歌曲列表接口

        # @param request: Request instance for DescribePackageItems.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribePackageItemsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribePackageItemsResponse`
        def DescribePackageItems(request)
          body = send_request('DescribePackageItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePackageItemsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取已购曲库包列表接口

        # @param request: Request instance for DescribePackages.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribePackagesRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribePackagesResponse`
        def DescribePackages(request)
          body = send_request('DescribePackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePackagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据购买曲库包用户可查询已回退的歌曲信息

        # @param request: Request instance for DescribePkgOfflineMusic.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribePkgOfflineMusicRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribePkgOfflineMusicResponse`
        def DescribePkgOfflineMusic(request)
          body = send_request('DescribePkgOfflineMusic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePkgOfflineMusicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该服务后续会停用，不再建议使用

        # @param request: Request instance for DescribeStations.
        # @type request: :class:`Tencentcloud::ame::V20190916::DescribeStationsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DescribeStationsResponse`
        def DescribeStations(request)
          body = send_request('DescribeStations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁机器人，机器人退出 RTC 房间。

        # @param request: Request instance for DestroyKTVRobot.
        # @type request: :class:`Tencentcloud::ame::V20190916::DestroyKTVRobotRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::DestroyKTVRobotResponse`
        def DestroyKTVRobot(request)
          body = send_request('DestroyKTVRobot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyKTVRobotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据资源方，需要变更的参数，请求该接口进行变更，为空的参数默认为无变更

        # @param request: Request instance for ModifyMusicOnShelves.
        # @type request: :class:`Tencentcloud::ame::V20190916::ModifyMusicOnShelvesRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::ModifyMusicOnShelvesResponse`
        def ModifyMusicOnShelves(request)
          body = send_request('ModifyMusicOnShelves', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMusicOnShelvesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据资源方所传歌曲信息，进行歌曲上架，多个歌曲同时请求时，需构造复合结构进行请求

        # @param request: Request instance for PutMusicOnTheShelves.
        # @type request: :class:`Tencentcloud::ame::V20190916::PutMusicOnTheShelvesRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::PutMusicOnTheShelvesResponse`
        def PutMusicOnTheShelves(request)
          body = send_request('PutMusicOnTheShelves', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutMusicOnTheShelvesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 客户上报用户数据功能，为了更好地为用户提供优质服务

        # @param request: Request instance for ReportData.
        # @type request: :class:`Tencentcloud::ame::V20190916::ReportDataRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::ReportDataResponse`
        def ReportData(request)
          body = send_request('ReportData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据搜索条件，返回匹配的歌曲列表。

        # @param request: Request instance for SearchKTVMusics.
        # @type request: :class:`Tencentcloud::ame::V20190916::SearchKTVMusicsRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::SearchKTVMusicsResponse`
        def SearchKTVMusics(request)
          body = send_request('SearchKTVMusics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchKTVMusicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。

        # @param request: Request instance for SyncKTVRobotCommand.
        # @type request: :class:`Tencentcloud::ame::V20190916::SyncKTVRobotCommandRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::SyncKTVRobotCommandResponse`
        def SyncKTVRobotCommand(request)
          body = send_request('SyncKTVRobotCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncKTVRobotCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据资源方所传MusicId进行将歌曲进行下架，多个MusicId使用逗号隔开

        # @param request: Request instance for TakeMusicOffShelves.
        # @type request: :class:`Tencentcloud::ame::V20190916::TakeMusicOffShelvesRequest`
        # @rtype: :class:`Tencentcloud::ame::V20190916::TakeMusicOffShelvesResponse`
        def TakeMusicOffShelves(request)
          body = send_request('TakeMusicOffShelves', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TakeMusicOffShelvesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end