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


        # 申请合唱相关信息，用于标记用户的演唱是在合唱场景下。

        # @param request: Request instance for ApplyChorus.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::ApplyChorusRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::ApplyChorusResponse`
        def ApplyChorus(request)
          body = send_request('ApplyChorus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyChorusResponse.new
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

        # 创建机器人，支持进入 RTC 房间，播放曲库歌曲。

        # @param request: Request instance for CreateKTVRobot.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::CreateKTVRobotRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::CreateKTVRobotResponse`
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

        # 根据输入的规则匹配曲库中的歌曲。

        # @param request: Request instance for DescribeKTVMatchMusics.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVMatchMusicsRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVMatchMusicsResponse`
        def DescribeKTVMatchMusics(request)
          body = send_request('DescribeKTVMatchMusics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVMatchMusicsResponse.new
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

        # 获取歌曲伴奏片段链接，可用于抢唱

        # @param request: Request instance for DescribeKTVMusicAccompanySegmentUrl.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVMusicAccompanySegmentUrlRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVMusicAccompanySegmentUrlResponse`
        def DescribeKTVMusicAccompanySegmentUrl(request)
          body = send_request('DescribeKTVMusicAccompanySegmentUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVMusicAccompanySegmentUrlResponse.new
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

        # 获取歌曲伴奏高潮的开始、结束时间，可用于抢唱

        # @param request: Request instance for DescribeKTVMusicAccompanySegmentUrlVip.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVMusicAccompanySegmentUrlVipRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVMusicAccompanySegmentUrlVipResponse`
        def DescribeKTVMusicAccompanySegmentUrlVip(request)
          body = send_request('DescribeKTVMusicAccompanySegmentUrlVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVMusicAccompanySegmentUrlVipResponse.new
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

        # 通过标签过滤歌曲列表。

        # @param request: Request instance for DescribeKTVMusicsByTag.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVMusicsByTagRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVMusicsByTagResponse`
        def DescribeKTVMusicsByTag(request)
          body = send_request('DescribeKTVMusicsByTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVMusicsByTagResponse.new
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

        # 获取歌单列表。

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

        # 获取机器人列表，支持 Id、状态等过滤条件。

        # @param request: Request instance for DescribeKTVRobots.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVRobotsRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVRobotsResponse`
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

        # 获取标签分组及分组下的标签列表信息。

        # @param request: Request instance for DescribeKTVTags.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVTagsRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeKTVTagsResponse`
        def DescribeKTVTags(request)
          body = send_request('DescribeKTVTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKTVTagsResponse.new
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

        # 批量获取直播会员充值流水详细信息，包括：流水号，订单状态，下订单时间等

        # @param request: Request instance for DescribeLiveVipTradeInfos.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeLiveVipTradeInfosRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeLiveVipTradeInfosResponse`
        def DescribeLiveVipTradeInfos(request)
          body = send_request('DescribeLiveVipTradeInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveVipTradeInfosResponse.new
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

        # 获取用户信息，包括是否为直播会员，及直播会员信息等

        # @param request: Request instance for DescribeUserInfo.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeUserInfoRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeUserInfoResponse`
        def DescribeUserInfo(request)
          body = send_request('DescribeUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserInfoResponse.new
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

        # 获取会员信息：获取用户是否开通会员

        # @param request: Request instance for DescribeVipUserInfo.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DescribeVipUserInfoRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DescribeVipUserInfoResponse`
        def DescribeVipUserInfo(request)
          body = send_request('DescribeVipUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVipUserInfoResponse.new
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
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::DestroyKTVRobotRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::DestroyKTVRobotResponse`
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

        # 充值直播会员，使该用户可以在直播场景使用

        # @param request: Request instance for RechargeLiveVip.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::RechargeLiveVipRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::RechargeLiveVipResponse`
        def RechargeLiveVip(request)
          body = send_request('RechargeLiveVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RechargeLiveVipResponse.new
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

        # 充值会员

        # @param request: Request instance for RechargeVip.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::RechargeVipRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::RechargeVipResponse`
        def RechargeVip(request)
          body = send_request('RechargeVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RechargeVipResponse.new
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

        # 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。

        # @param request: Request instance for SyncKTVRobotCommand.
        # @type request: :class:`Tencentcloud::yinsuda::V20220527::SyncKTVRobotCommandRequest`
        # @rtype: :class:`Tencentcloud::yinsuda::V20220527::SyncKTVRobotCommandResponse`
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


      end
    end
  end
end