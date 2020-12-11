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
        @@api_version = '2019-09-16'
        @@endpoint = 'ame.tencentcloudapi.com'
        @@sdk_version = 'AME_' + File.read(File.expand_path('../VERSION', __dir__)).strip


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

        # 分类内容下歌曲列表获取，根据CategoryID或CategoryCode

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

        # 根据接口的模式及歌曲ID来取得歌词信息。

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

        # 根据接口的模式及歌曲ID来取得对应权限的歌曲播放地址等信息。

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

        # 获取素材库列表时使用

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

        # 客户上报用户数据功能，为了更好的为用户提供优质服务

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


      end
    end
  end
end