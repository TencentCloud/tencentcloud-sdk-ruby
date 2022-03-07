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
  module Casb
    module V20200507
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-05-07'
            api_endpoint = 'casb.tencentcloudapi.com'
            sdk_version = 'CASB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 同region下 根据用户输入的CasbId,MetaDataId 复制策略到DstCasbId,MetaDataId中。
        # 场景1：
        # 相同CasbId，不同MetadataId 下策略复制
        # 场景2：
        # 不同Casbid,不同MetaDataId 下策略复制
        # 场景3:
        # 相同CasbId,相同MetaDataId 且 DatabaseName不同 策略复制

        # @param request: Request instance for CopyCryptoColumnPolicy.
        # @type request: :class:`Tencentcloud::casb::V20200507::CopyCryptoColumnPolicyRequest`
        # @rtype: :class:`Tencentcloud::casb::V20200507::CopyCryptoColumnPolicyResponse`
        def CopyCryptoColumnPolicy(request)
          body = send_request('CopyCryptoColumnPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyCryptoColumnPolicyResponse.new
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