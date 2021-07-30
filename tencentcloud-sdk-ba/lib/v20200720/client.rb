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
  module Ba
    module V20200720
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-07-20'
            api_endpoint = 'ba.tencentcloudapi.com'
            sdk_version = 'BA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建渠道备案小程序二维码

        # @param request: Request instance for CreateWeappQRUrl.
        # @type request: :class:`Tencentcloud::ba::V20200720::CreateWeappQRUrlRequest`
        # @rtype: :class:`Tencentcloud::ba::V20200720::CreateWeappQRUrlResponse`
        def CreateWeappQRUrl(request)
          body = send_request('CreateWeappQRUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWeappQRUrlResponse.new
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

        # 获取实名认证信息

        # @param request: Request instance for DescribeGetAuthInfo.
        # @type request: :class:`Tencentcloud::ba::V20200720::DescribeGetAuthInfoRequest`
        # @rtype: :class:`Tencentcloud::ba::V20200720::DescribeGetAuthInfoResponse`
        def DescribeGetAuthInfo(request)
          body = send_request('DescribeGetAuthInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGetAuthInfoResponse.new
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

        # 将备案ICP订单下的一个网站信息 同步给订单下其他网站，需要被同步的网站被检查通过(isCheck:true)；
        # 只有指定的网站信息字段能被同步

        # @param request: Request instance for SyncIcpOrderWebInfo.
        # @type request: :class:`Tencentcloud::ba::V20200720::SyncIcpOrderWebInfoRequest`
        # @rtype: :class:`Tencentcloud::ba::V20200720::SyncIcpOrderWebInfoResponse`
        def SyncIcpOrderWebInfo(request)
          body = send_request('SyncIcpOrderWebInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncIcpOrderWebInfoResponse.new
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