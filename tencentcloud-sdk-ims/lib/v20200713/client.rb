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
  module Ims
    module V20200713
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-07-13'
            api_endpoint = 'ims.tencentcloudapi.com'
            sdk_version = 'IMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 控制台识别统计

        # @param request: Request instance for DescribeImageStat.
        # @type request: :class:`Tencentcloud::ims::V20200713::DescribeImageStatRequest`
        # @rtype: :class:`Tencentcloud::ims::V20200713::DescribeImageStatResponse`
        def DescribeImageStat(request)
          body = send_request('DescribeImageStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageStatResponse.new
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

        # 图片机器审核明细

        # @param request: Request instance for DescribeImsList.
        # @type request: :class:`Tencentcloud::ims::V20200713::DescribeImsListRequest`
        # @rtype: :class:`Tencentcloud::ims::V20200713::DescribeImsListResponse`
        def DescribeImsList(request)
          body = send_request('DescribeImsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImsListResponse.new
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

        # 图片内容检测服务（Image Moderation, IM）能自动扫描图片，识别可能令人反感、不安全或不适宜的内容，同时支持用户配置图片黑名单，打击自定义识别类型的图片。

        # <div class="rno-api-explorer" style="margin-bottom:20px">
        #     <div class="rno-api-explorer-inner">
        #         <div class="rno-api-explorer-hd">
        #             <div class="rno-api-explorer-title">
        #                 关于版本迭代的描述
        #             </div>
        #         </div>
        #         <div class="rno-api-explorer-body">
        #             <div class="rno-api-explorer-cont">
        #                 <p>当前页面版本为图片内容安全2020版本，2020.11.3日前接入的图片内容安全接口为2019版本，在此时间前接入的用户可直接访问以下链接进行维护操作：<a href="https://cloud.tencent.com/document/product/1125/38206" target="_blank">图片内容安全-2019版本</a></p>
        #                 <p>2020版本相对2019版本进行了升级，支持更灵活的多场景业务策略配置以及更丰富的识别回调信息，满足不同业务的识别需求，建议按照2020版本接入指引进行接口升级；同时，2019版本也会持续维护直至用户不再使用为止。</p>
        #             </div>
        #         </div>
        #     </div>
        # </div>

        # @param request: Request instance for ImageModeration.
        # @type request: :class:`Tencentcloud::ims::V20200713::ImageModerationRequest`
        # @rtype: :class:`Tencentcloud::ims::V20200713::ImageModerationResponse`
        def ImageModeration(request)
          body = send_request('ImageModeration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageModerationResponse.new
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