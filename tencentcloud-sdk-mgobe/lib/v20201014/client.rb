# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Mgobe
    module V20201014
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-10-14'
            api_endpoint = 'mgobe.tencentcloudapi.com'
            sdk_version = 'MGOBE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持

        # 修改房间玩家自定义属性

        # @param request: Request instance for ChangeRoomPlayerProfile.
        # @type request: :class:`Tencentcloud::mgobe::V20201014::ChangeRoomPlayerProfileRequest`
        # @rtype: :class:`Tencentcloud::mgobe::V20201014::ChangeRoomPlayerProfileResponse`
        def ChangeRoomPlayerProfile(request)
          body = send_request('ChangeRoomPlayerProfile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeRoomPlayerProfileResponse.new
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

        # 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持

        # 修改玩家自定义状态

        # @param request: Request instance for ChangeRoomPlayerStatus.
        # @type request: :class:`Tencentcloud::mgobe::V20201014::ChangeRoomPlayerStatusRequest`
        # @rtype: :class:`Tencentcloud::mgobe::V20201014::ChangeRoomPlayerStatusResponse`
        def ChangeRoomPlayerStatus(request)
          body = send_request('ChangeRoomPlayerStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeRoomPlayerStatusResponse.new
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

        # 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持

        # 该接口用于查询玩家信息。支持两种用法，当OpenId不传的时候，PlayerId必传，传入PlayerId可以查询当前PlayerId的玩家信息，当OpenId传入的时候，PlayerId可不传，按照OpenId查询玩家信息。

        # @param request: Request instance for DescribePlayer.
        # @type request: :class:`Tencentcloud::mgobe::V20201014::DescribePlayerRequest`
        # @rtype: :class:`Tencentcloud::mgobe::V20201014::DescribePlayerResponse`
        def DescribePlayer(request)
          body = send_request('DescribePlayer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePlayerResponse.new
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

        # 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持

        # 该接口用于查询房间信息。支持两种用法，当房间Id不传的时候，玩家Id必传，传入玩家Id可以查询当前玩家所在的房间信息，当房间Id传入的时候，玩家Id可不传，按照房间Id查询房间信息。

        # @param request: Request instance for DescribeRoom.
        # @type request: :class:`Tencentcloud::mgobe::V20201014::DescribeRoomRequest`
        # @rtype: :class:`Tencentcloud::mgobe::V20201014::DescribeRoomResponse`
        def DescribeRoom(request)
          body = send_request('DescribeRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoomResponse.new
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

        # 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持

        # 通过game_id、room_id解散房间

        # @param request: Request instance for DismissRoom.
        # @type request: :class:`Tencentcloud::mgobe::V20201014::DismissRoomRequest`
        # @rtype: :class:`Tencentcloud::mgobe::V20201014::DismissRoomResponse`
        def DismissRoom(request)
          body = send_request('DismissRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DismissRoomResponse.new
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

        # 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持

        # 修改房间

        # @param request: Request instance for ModifyRoom.
        # @type request: :class:`Tencentcloud::mgobe::V20201014::ModifyRoomRequest`
        # @rtype: :class:`Tencentcloud::mgobe::V20201014::ModifyRoomResponse`
        def ModifyRoom(request)
          body = send_request('ModifyRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRoomResponse.new
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

        # 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持

        # 踢出房间玩家

        # @param request: Request instance for RemoveRoomPlayer.
        # @type request: :class:`Tencentcloud::mgobe::V20201014::RemoveRoomPlayerRequest`
        # @rtype: :class:`Tencentcloud::mgobe::V20201014::RemoveRoomPlayerResponse`
        def RemoveRoomPlayer(request)
          body = send_request('RemoveRoomPlayer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveRoomPlayerResponse.new
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