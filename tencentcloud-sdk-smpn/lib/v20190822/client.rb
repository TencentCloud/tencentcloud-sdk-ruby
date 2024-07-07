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
  module Smpn
    module V20190822
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-08-22'
            api_endpoint = 'smpn.tencentcloudapi.com'
            sdk_version = 'SMPN_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 不在使用的API

        # 企业号码认证

        # @param request: Request instance for CreateSmpnEpa.
        # @type request: :class:`Tencentcloud::smpn::V20190822::CreateSmpnEpaRequest`
        # @rtype: :class:`Tencentcloud::smpn::V20190822::CreateSmpnEpaResponse`
        def CreateSmpnEpa(request)
          body = send_request('CreateSmpnEpa', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSmpnEpaResponse.new
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

        # 不在使用的API

        # 查询号码的标记和标记次数

        # @param request: Request instance for DescribeSmpnChp.
        # @type request: :class:`Tencentcloud::smpn::V20190822::DescribeSmpnChpRequest`
        # @rtype: :class:`Tencentcloud::smpn::V20190822::DescribeSmpnChpResponse`
        def DescribeSmpnChp(request)
          body = send_request('DescribeSmpnChp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSmpnChpResponse.new
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

        # 不在使用的API

        # 虚假号码识别

        # @param request: Request instance for DescribeSmpnFnr.
        # @type request: :class:`Tencentcloud::smpn::V20190822::DescribeSmpnFnrRequest`
        # @rtype: :class:`Tencentcloud::smpn::V20190822::DescribeSmpnFnrResponse`
        def DescribeSmpnFnr(request)
          body = send_request('DescribeSmpnFnr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSmpnFnrResponse.new
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

        # 不在使用的API

        # 号码营销监控

        # @param request: Request instance for DescribeSmpnMhm.
        # @type request: :class:`Tencentcloud::smpn::V20190822::DescribeSmpnMhmRequest`
        # @rtype: :class:`Tencentcloud::smpn::V20190822::DescribeSmpnMhmResponse`
        def DescribeSmpnMhm(request)
          body = send_request('DescribeSmpnMhm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSmpnMhmResponse.new
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

        # 不在使用的API

        # 查询号码恶意标记等级

        # @param request: Request instance for DescribeSmpnMrl.
        # @type request: :class:`Tencentcloud::smpn::V20190822::DescribeSmpnMrlRequest`
        # @rtype: :class:`Tencentcloud::smpn::V20190822::DescribeSmpnMrlResponse`
        def DescribeSmpnMrl(request)
          body = send_request('DescribeSmpnMrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSmpnMrlResponse.new
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