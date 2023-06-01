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
  module Cms
    module V20190321
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-03-21'
            api_endpoint = 'cms.tencentcloudapi.com'
            sdk_version = 'CMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建关键词接口

        # @param request: Request instance for CreateKeywordsSamples.
        # @type request: :class:`Tencentcloud::cms::V20190321::CreateKeywordsSamplesRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::CreateKeywordsSamplesResponse`
        def CreateKeywordsSamples(request)
          body = send_request('CreateKeywordsSamples', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateKeywordsSamplesResponse.new
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

        # 删除关键词接口

        # @param request: Request instance for DeleteLibSamples.
        # @type request: :class:`Tencentcloud::cms::V20190321::DeleteLibSamplesRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::DeleteLibSamplesResponse`
        def DeleteLibSamples(request)
          body = send_request('DeleteLibSamples', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLibSamplesResponse.new
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

        # 获取用户词库列表

        # @param request: Request instance for DescribeKeywordsLibs.
        # @type request: :class:`Tencentcloud::cms::V20190321::DescribeKeywordsLibsRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::DescribeKeywordsLibsResponse`
        def DescribeKeywordsLibs(request)
          body = send_request('DescribeKeywordsLibs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKeywordsLibsResponse.new
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

        # 获取关键词接口

        # @param request: Request instance for DescribeLibSamples.
        # @type request: :class:`Tencentcloud::cms::V20190321::DescribeLibSamplesRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::DescribeLibSamplesResponse`
        def DescribeLibSamples(request)
          body = send_request('DescribeLibSamples', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLibSamplesResponse.new
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

        # 图片内容检测服务（Image Moderation, IM）能自动扫描图片，识别涉黄、涉恐、涉政、涉毒等有害内容，同时支持用户配置图片黑名单，打击自定义的违规图片。

        # @param request: Request instance for ImageModeration.
        # @type request: :class:`Tencentcloud::cms::V20190321::ImageModerationRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::ImageModerationResponse`
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

        # 文本内容检测（Text Moderation）服务使用了深度学习技术，识别涉黄、涉政、涉恐等有害内容，同时支持用户配置词库，打击自定义的违规文本。

        # @param request: Request instance for TextModeration.
        # @type request: :class:`Tencentcloud::cms::V20190321::TextModerationRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::TextModerationResponse`
        def TextModeration(request)
          body = send_request('TextModeration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextModerationResponse.new
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