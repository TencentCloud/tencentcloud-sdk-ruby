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
  module Wsa
    module V20250508
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-05-08'
            api_endpoint = 'wsa.tencentcloudapi.com'
            sdk_version = 'WSA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 元宝搜索（Tencent Yuanbao Search，wsa）以互联网全网公开资源为基础，叠加腾讯优质内容生态，结合元宝 App 联网搜索应用实践，从数据收录到智能检索召回，全链路构建 AI 友好搜索引擎。合作伙伴通过检索词发起请求，接口以 JSON 形式返回搜索结果对应的排序信息、数据字段，合作伙伴可在业务场景中结合搜索结果的内容，扩充信息内容源，丰富展现效果，提升用户的查询满意度。

        # @param request: Request instance for SearchPro.
        # @type request: :class:`Tencentcloud::wsa::V20250508::SearchProRequest`
        # @rtype: :class:`Tencentcloud::wsa::V20250508::SearchProResponse`
        def SearchPro(request)
          body = send_request('SearchPro', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchProResponse.new
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