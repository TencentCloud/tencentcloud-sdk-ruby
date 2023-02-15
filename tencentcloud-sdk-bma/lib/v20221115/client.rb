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
  module Bma
    module V20221115
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-11-15'
            api_endpoint = 'bma.tencentcloudapi.com'
            sdk_version = 'BMA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 仿冒应用举报

        # @param request: Request instance for CreateBPFakeAPP.
        # @type request: :class:`Tencentcloud::bma::V20221115::CreateBPFakeAPPRequest`
        # @rtype: :class:`Tencentcloud::bma::V20221115::CreateBPFakeAPPResponse`
        def CreateBPFakeAPP(request)
          body = send_request('CreateBPFakeAPP', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBPFakeAPPResponse.new
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

        # 批量仿冒应用举报

        # @param request: Request instance for CreateBPFakeAPPList.
        # @type request: :class:`Tencentcloud::bma::V20221115::CreateBPFakeAPPListRequest`
        # @rtype: :class:`Tencentcloud::bma::V20221115::CreateBPFakeAPPListResponse`
        def CreateBPFakeAPPList(request)
          body = send_request('CreateBPFakeAPPList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBPFakeAPPListResponse.new
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

        # 仿冒网址举报

        # @param request: Request instance for CreateBPFakeURL.
        # @type request: :class:`Tencentcloud::bma::V20221115::CreateBPFakeURLRequest`
        # @rtype: :class:`Tencentcloud::bma::V20221115::CreateBPFakeURLResponse`
        def CreateBPFakeURL(request)
          body = send_request('CreateBPFakeURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBPFakeURLResponse.new
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

        # 批量仿冒网址举报

        # @param request: Request instance for CreateBPFakeURLs.
        # @type request: :class:`Tencentcloud::bma::V20221115::CreateBPFakeURLsRequest`
        # @rtype: :class:`Tencentcloud::bma::V20221115::CreateBPFakeURLsResponse`
        def CreateBPFakeURLs(request)
          body = send_request('CreateBPFakeURLs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBPFakeURLsResponse.new
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