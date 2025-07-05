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
  module Irp
    module V20220324
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-03-24'
            api_endpoint = 'irp.tencentcloudapi.com'
            sdk_version = 'IRP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取推荐结果

        # @param request: Request instance for RecommendContent.
        # @type request: :class:`Tencentcloud::irp::V20220324::RecommendContentRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220324::RecommendContentResponse`
        def RecommendContent(request)
          body = send_request('RecommendContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecommendContentResponse.new
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

        # 上报行为

        # @param request: Request instance for ReportAction.
        # @type request: :class:`Tencentcloud::irp::V20220324::ReportActionRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220324::ReportActionResponse`
        def ReportAction(request)
          body = send_request('ReportAction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportActionResponse.new
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

        # 上报物料

        # @param request: Request instance for ReportMaterial.
        # @type request: :class:`Tencentcloud::irp::V20220324::ReportMaterialRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220324::ReportMaterialResponse`
        def ReportMaterial(request)
          body = send_request('ReportMaterial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportMaterialResponse.new
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

        # 上报用户画像

        # @param request: Request instance for ReportPortrait.
        # @type request: :class:`Tencentcloud::irp::V20220324::ReportPortraitRequest`
        # @rtype: :class:`Tencentcloud::irp::V20220324::ReportPortraitResponse`
        def ReportPortrait(request)
          body = send_request('ReportPortrait', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportPortraitResponse.new
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