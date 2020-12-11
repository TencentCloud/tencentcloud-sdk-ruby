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
  module Wss
    module V20180426
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-04-26'
        @@endpoint = 'wss.tencentcloudapi.com'
        @@sdk_version = 'WSS_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口（DeleteCert）用于删除证书。

        # @param request: Request instance for DeleteCert.
        # @type request: :class:`Tencentcloud::wss::V20180426::DeleteCertRequest`
        # @rtype: :class:`Tencentcloud::wss::V20180426::DeleteCertResponse`
        def DeleteCert(request)
          body = send_request('DeleteCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCertResponse.new
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

        # 本接口(DescribeCertList)用于获取证书列表。

        # @param request: Request instance for DescribeCertList.
        # @type request: :class:`Tencentcloud::wss::V20180426::DescribeCertListRequest`
        # @rtype: :class:`Tencentcloud::wss::V20180426::DescribeCertListResponse`
        def DescribeCertList(request)
          body = send_request('DescribeCertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertListResponse.new
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

        # 本接口（UploadCert）用于上传证书。

        # @param request: Request instance for UploadCert.
        # @type request: :class:`Tencentcloud::wss::V20180426::UploadCertRequest`
        # @rtype: :class:`Tencentcloud::wss::V20180426::UploadCertResponse`
        def UploadCert(request)
          body = send_request('UploadCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadCertResponse.new
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