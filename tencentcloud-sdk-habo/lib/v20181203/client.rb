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
  module Habo
    module V20181203
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-12-03'
            api_endpoint = 'habo.tencentcloudapi.com'
            sdk_version = 'HABO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 查询指定md5样本是否分析完成，并获取分析日志下载地址。

        # @param request: Request instance for DescribeStatus.
        # @type request: :class:`Tencentcloud::habo::V20181203::DescribeStatusRequest`
        # @rtype: :class:`Tencentcloud::habo::V20181203::DescribeStatusResponse`
        def DescribeStatus(request)
          body = send_request('DescribeStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStatusResponse.new
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

        # 上传样本到哈勃进行分析，异步生成分析日志。

        # @param request: Request instance for StartAnalyse.
        # @type request: :class:`Tencentcloud::habo::V20181203::StartAnalyseRequest`
        # @rtype: :class:`Tencentcloud::habo::V20181203::StartAnalyseResponse`
        def StartAnalyse(request)
          body = send_request('StartAnalyse', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartAnalyseResponse.new
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