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
  module Yinsuda
    module V20220527
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-05-27'
            api_endpoint = 'yinsuda.tencentcloudapi.com'
            sdk_version = 'YINSUDA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 批量获取歌曲详细信息，包括：歌词下载链接、播放凭证、音高数据下载链接信息等。

        # @param request: Request instance for BatchDescribeKTVMusicDetails.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::BatchDescribeKTVMusicDetailsRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::BatchDescribeKTVMusicDetailsResponse`
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

        # 根据歌单 Id 获取歌单详情。

        # @param request: Request instance for DescribeKTVPlaylistDetail.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVPlaylistDetailRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVPlaylistDetailResponse`
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

        # 获取推荐歌单列表。

        # @param request: Request instance for DescribeKTVPlaylists.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVPlaylistsRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVPlaylistsResponse`
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

        # 根据关键词获取联想词列表。

        # @param request: Request instance for DescribeKTVSuggestions.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVSuggestionsRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVSuggestionsResponse`
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

        # 根据关键词搜索歌曲，返回相关歌曲列表。

        # @param request: Request instance for SearchKTVMusics.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::SearchKTVMusicsRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::SearchKTVMusicsResponse`
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


      end
    end
  end
end