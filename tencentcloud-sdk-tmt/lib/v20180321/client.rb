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
  module Tmt
    module V20180321
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-21'
            api_endpoint = 'tmt.tencentcloudapi.com'
            sdk_version = 'TMT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 提供18种语言的图片翻译服务，可自动识别图片中的文本内容并翻译成目标语言，识别后的文本按行翻译，后续会提供可按段落翻译的版本。

        # - 输入图片格式：png、jpg、jpeg等常用图片格式，不支持gif动图。
        # - 输出图片格式：jpg。

        # 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。

        # @param request: Request instance for ImageTranslateLLM.
        # @type request: :class:`Tencentcloud::tmt::V20180321::ImageTranslateLLMRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::ImageTranslateLLMResponse`
        def ImageTranslateLLM(request)
          body = send_request('ImageTranslateLLM', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageTranslateLLMResponse.new
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

        # 腾讯翻译为合作伙伴提供文本翻译、文档翻译、交互翻译、AI同传等多种机器翻译服务，具有toB多行业解决方案。作为WMT世界机器翻译大赛冠军，翻译准确度值得信赖，其中，交互翻译能力是业界领先技术；腾讯同传是AI同传业界标杆。<br />
        # 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。

        # @param request: Request instance for TextTranslate.
        # @type request: :class:`Tencentcloud::tmt::V20180321::TextTranslateRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::TextTranslateResponse`
        def TextTranslate(request)
          body = send_request('TextTranslate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextTranslateResponse.new
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