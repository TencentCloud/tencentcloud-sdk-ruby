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
  module Tms
    module V20201229
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-29'
            api_endpoint = 'tms.tencentcloudapi.com'
            sdk_version = 'TMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（Text Moderation）用于提交文本内容进行智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通文本内容安全服务](https://console.cloud.tencent.com/cms) 并调整好对应的业务配置。

        # ### 接口使用说明
        # - 前往“[内容安全控制台-文本内容安全](https://console.cloud.tencent.com/cms)”开启使用文本内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**3000条**文本识别额度，有效期为15天。
        # - 该接口为收费接口，计费方式敬请参见 [腾讯云文本内容安全定价](https://cloud.tencent.com/product/tms/pricing)。

        # ### 接口功能说明：
        # - 支持对文本文件进行检测，通过深度学习技术，识别可能令人反感、不安全或不适宜的违规文本内容；
        # - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
        # - 支持根据不同的业务场景配置自定义的审核策略，可在控制台文本内容安全-策略管理中配置；
        # - 支持用户自定义配置词库黑白名单，打击自定义识别类型的违规文本（目前仅支持黑名单配置）；
        # - 支持在审核文本内容时同时关联账号或设备信息，可识别违规风险账号或设备。

        # ### 接口调用说明：
        # - 文本内容大小支持：文本原文长度不能超过unicode编码长度10000个字符；
        # - 文本审核语言支持：目前支持中文、英文、阿拉伯数字的检测；
        # - 默认接口请求频率限制：**1000次/秒**，超过该频率限制则接口会报错。

        # @param request: Request instance for TextModeration.
        # @type request: :class:`Tencentcloud::tms::V20201229::TextModerationRequest`
        # @rtype: :class:`Tencentcloud::tms::V20201229::TextModerationResponse`
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