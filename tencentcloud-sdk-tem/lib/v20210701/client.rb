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
  module Tem
    module V20210701
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-07-01'
            api_endpoint = 'tem.tencentcloudapi.com'
            sdk_version = 'TEM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取分批发布详情

        # @param request: Request instance for DescribeDeployApplicationDetail.
        # @type request: :class:`Tencentcloud::tem::V20210701::DescribeDeployApplicationDetailRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DescribeDeployApplicationDetailResponse`
        def DescribeDeployApplicationDetail(request)
          body = send_request('DescribeDeployApplicationDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeployApplicationDetailResponse.new
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

        # 开始下一批次发布

        # @param request: Request instance for ResumeDeployApplication.
        # @type request: :class:`Tencentcloud::tem::V20210701::ResumeDeployApplicationRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::ResumeDeployApplicationResponse`
        def ResumeDeployApplication(request)
          body = send_request('ResumeDeployApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeDeployApplicationResponse.new
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

        # 回滚分批发布

        # @param request: Request instance for RevertDeployApplication.
        # @type request: :class:`Tencentcloud::tem::V20210701::RevertDeployApplicationRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::RevertDeployApplicationResponse`
        def RevertDeployApplication(request)
          body = send_request('RevertDeployApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevertDeployApplicationResponse.new
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