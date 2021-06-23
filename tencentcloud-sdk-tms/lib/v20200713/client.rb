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
  module Tms
    module V20200713
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-07-13'
            api_endpoint = 'tms.tencentcloudapi.com'
            sdk_version = 'TMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 举报恶意账号

        # @param request: Request instance for AccountTipoffAccess.
        # @type request: :class:`Tencentcloud::tms::V20200713::AccountTipoffAccessRequest`
        # @rtype: :class:`Tencentcloud::tms::V20200713::AccountTipoffAccessResponse`
        def AccountTipoffAccess(request)
          body = send_request('AccountTipoffAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AccountTipoffAccessResponse.new
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

        # 控制台获取用户词库列表

        # @param request: Request instance for DescribeTextLib.
        # @type request: :class:`Tencentcloud::tms::V20200713::DescribeTextLibRequest`
        # @rtype: :class:`Tencentcloud::tms::V20200713::DescribeTextLibResponse`
        def DescribeTextLib(request)
          body = send_request('DescribeTextLib', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTextLibResponse.new
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

        # 控制台识别统计

        # @param request: Request instance for DescribeTextStat.
        # @type request: :class:`Tencentcloud::tms::V20200713::DescribeTextStatRequest`
        # @rtype: :class:`Tencentcloud::tms::V20200713::DescribeTextStatResponse`
        def DescribeTextStat(request)
          body = send_request('DescribeTextStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTextStatResponse.new
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

        # 文本内容检测（Text Moderation）服务使用了深度学习技术，识别可能令人反感、不安全或不适宜的文本内容，同时支持用户配置词库黑白名单，打击自定义识别类型的图片。

        # @param request: Request instance for TextModeration.
        # @type request: :class:`Tencentcloud::tms::V20200713::TextModerationRequest`
        # @rtype: :class:`Tencentcloud::tms::V20200713::TextModerationResponse`
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