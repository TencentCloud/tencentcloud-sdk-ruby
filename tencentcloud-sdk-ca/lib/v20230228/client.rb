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
  module Ca
    module V20230228
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-02-28'
            api_endpoint = 'ca.tencentcloudapi.com'
            sdk_version = 'CA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建签名验证报告任务，此接口为异步盖章接口，盖章时效24小时。

        # @param request: Request instance for CreateVerifyReport.
        # @type request: :class:`Tencentcloud::ca::V20230228::CreateVerifyReportRequest`
        # @rtype: :class:`Tencentcloud::ca::V20230228::CreateVerifyReportResponse`
        def CreateVerifyReport(request)
          body = send_request('CreateVerifyReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVerifyReportResponse.new
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

        # 下载验签报告url，url有效期默认12小时

        # @param request: Request instance for DescribeVerifyReport.
        # @type request: :class:`Tencentcloud::ca::V20230228::DescribeVerifyReportRequest`
        # @rtype: :class:`Tencentcloud::ca::V20230228::DescribeVerifyReportResponse`
        def DescribeVerifyReport(request)
          body = send_request('DescribeVerifyReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVerifyReportResponse.new
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

        # 文件上传接口

        # @param request: Request instance for UploadFile.
        # @type request: :class:`Tencentcloud::ca::V20230228::UploadFileRequest`
        # @rtype: :class:`Tencentcloud::ca::V20230228::UploadFileResponse`
        def UploadFile(request)
          body = send_request('UploadFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadFileResponse.new
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