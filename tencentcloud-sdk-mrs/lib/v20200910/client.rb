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
  module Mrs
    module V20200910
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-09-10'
            api_endpoint = 'mrs.tencentcloudapi.com'
            sdk_version = 'MRS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 图片分类

        # @param request: Request instance for ImageToClass.
        # @type request: :class:`Tencentcloud::mrs::V20200910::ImageToClassRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::ImageToClassResponse`
        def ImageToClass(request)
          body = send_request('ImageToClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageToClassResponse.new
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

        # 图片转结构化对象

        # @param request: Request instance for ImageToObject.
        # @type request: :class:`Tencentcloud::mrs::V20200910::ImageToObjectRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::ImageToObjectResponse`
        def ImageToObject(request)
          body = send_request('ImageToObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageToObjectResponse.new
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

        # 文本分类

        # @param request: Request instance for TextToClass.
        # @type request: :class:`Tencentcloud::mrs::V20200910::TextToClassRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::TextToClassResponse`
        def TextToClass(request)
          body = send_request('TextToClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextToClassResponse.new
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

        # 文本转结构化对象

        # @param request: Request instance for TextToObject.
        # @type request: :class:`Tencentcloud::mrs::V20200910::TextToObjectRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::TextToObjectResponse`
        def TextToObject(request)
          body = send_request('TextToObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextToObjectResponse.new
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