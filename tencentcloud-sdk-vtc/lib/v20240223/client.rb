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
  module Vtc
    module V20240223
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-02-23'
            api_endpoint = 'vtc.tencentcloudapi.com'
            sdk_version = 'VTC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 确认视频翻译结果

        # @param request: Request instance for ConfirmVideoTranslateJob.
        # @type request: :class:`Tencentcloud::vtc::V20240223::ConfirmVideoTranslateJobRequest`
        # @rtype: :class:`Tencentcloud::vtc::V20240223::ConfirmVideoTranslateJobResponse`
        def ConfirmVideoTranslateJob(request)
          body = send_request('ConfirmVideoTranslateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfirmVideoTranslateJobResponse.new
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

        # 查询视频翻译任务

        # @param request: Request instance for DescribeVideoTranslateJob.
        # @type request: :class:`Tencentcloud::vtc::V20240223::DescribeVideoTranslateJobRequest`
        # @rtype: :class:`Tencentcloud::vtc::V20240223::DescribeVideoTranslateJobResponse`
        def DescribeVideoTranslateJob(request)
          body = send_request('DescribeVideoTranslateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoTranslateJobResponse.new
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

        # 提交视频转译任务

        # @param request: Request instance for SubmitVideoTranslateJob.
        # @type request: :class:`Tencentcloud::vtc::V20240223::SubmitVideoTranslateJobRequest`
        # @rtype: :class:`Tencentcloud::vtc::V20240223::SubmitVideoTranslateJobResponse`
        def SubmitVideoTranslateJob(request)
          body = send_request('SubmitVideoTranslateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitVideoTranslateJobResponse.new
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