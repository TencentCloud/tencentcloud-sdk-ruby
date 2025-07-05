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
  module Irp
    module V20220805
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-08-05'
            api_endpoint = 'irp.tencentcloudapi.com'
            sdk_version = 'IRP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取电商类推荐结果

        # @param request: Request instance for DescribeGoodsRecommend.
        # @type request: :class:`Tencentcloud::irp::V20220805::DescribeGoodsRecommendRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220805::DescribeGoodsRecommendResponse`
        def DescribeGoodsRecommend(request)
          body = send_request('DescribeGoodsRecommend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGoodsRecommendResponse.new
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

        # 获取信息流推荐结果

        # @param request: Request instance for FeedRecommend.
        # @type request: :class:`Tencentcloud::irp::V20220805::FeedRecommendRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220805::FeedRecommendResponse`
        def FeedRecommend(request)
          body = send_request('FeedRecommend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FeedRecommendResponse.new
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

        # 上报信息流场景内的行为数据，随着数据的积累，模型的效果会逐渐稳定。

        # @param request: Request instance for ReportFeedBehavior.
        # @type request: :class:`Tencentcloud::irp::V20220805::ReportFeedBehaviorRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220805::ReportFeedBehaviorResponse`
        def ReportFeedBehavior(request)
          body = send_request('ReportFeedBehavior', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportFeedBehaviorResponse.new
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

        # 上报被用于推荐的信息流内容信息

        # @param request: Request instance for ReportFeedItem.
        # @type request: :class:`Tencentcloud::irp::V20220805::ReportFeedItemRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220805::ReportFeedItemResponse`
        def ReportFeedItem(request)
          body = send_request('ReportFeedItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportFeedItemResponse.new
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

        # 上报信息流用户信息，请务必确认用户的唯一性，并在请求推荐结果时指定用户的唯一标识信息（UserId），否则将无法进行千人千面的推荐

        # @param request: Request instance for ReportFeedUser.
        # @type request: :class:`Tencentcloud::irp::V20220805::ReportFeedUserRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220805::ReportFeedUserResponse`
        def ReportFeedUser(request)
          body = send_request('ReportFeedUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportFeedUserResponse.new
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

        # 上报电商类行为数据

        # @param request: Request instance for ReportGoodsBehavior.
        # @type request: :class:`Tencentcloud::irp::V20220805::ReportGoodsBehaviorRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220805::ReportGoodsBehaviorResponse`
        def ReportGoodsBehavior(request)
          body = send_request('ReportGoodsBehavior', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportGoodsBehaviorResponse.new
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

        # 上报电商类商品信息

        # @param request: Request instance for ReportGoodsInfo.
        # @type request: :class:`Tencentcloud::irp::V20220805::ReportGoodsInfoRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220805::ReportGoodsInfoResponse`
        def ReportGoodsInfo(request)
          body = send_request('ReportGoodsInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportGoodsInfoResponse.new
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