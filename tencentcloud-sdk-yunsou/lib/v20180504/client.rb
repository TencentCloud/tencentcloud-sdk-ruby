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
  module Yunsou
    module V20180504
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-05-04'
            api_endpoint = 'yunsou.tencentcloudapi.com'
            sdk_version = 'YUNSOU_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 上传云搜数据的API接口

        # @param request: Request instance for DataManipulation.
        # @type request: :class:`Tencentcloud::yunsou::V20180504::DataManipulationRequest`
        # @rtype: :class:`Tencentcloud::yunsou::V20180504::DataManipulationResponse`
        def DataManipulation(request)
          body = send_request('DataManipulation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DataManipulationResponse.new
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

        # 用于检索云搜中的数据

        # @param request: Request instance for DataSearch.
        # @type request: :class:`Tencentcloud::yunsou::V20180504::DataSearchRequest`
        # @rtype: :class:`Tencentcloud::yunsou::V20180504::DataSearchResponse`
        def DataSearch(request)
          body = send_request('DataSearch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DataSearchResponse.new
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