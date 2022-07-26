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
    module V20210624
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-06-24'
            api_endpoint = 'bma.tencentcloudapi.com'
            sdk_version = 'BMA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 版权保护-新建拦截接口

        # @param request: Request instance for CreateCRBlock.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRBlockRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRBlockResponse`
        def CreateCRBlock(request)
          body = send_request('CreateCRBlock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRBlockResponse.new
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

        # 品牌经营管家-版权保护模块企业认证接口

        # @param request: Request instance for CreateCRCompanyVerify.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRCompanyVerifyRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRCompanyVerifyResponse`
        def CreateCRCompanyVerify(request)
          body = send_request('CreateCRCompanyVerify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRCompanyVerifyResponse.new
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

        # 版权保护-新建发函接口

        # @param request: Request instance for CreateCRRight.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRRightRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRRightResponse`
        def CreateCRRight(request)
          body = send_request('CreateCRRight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRRightResponse.new
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

        # 查询作品基本信息

        # @param request: Request instance for DescribeCRWorkInfo.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeCRWorkInfoRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeCRWorkInfoResponse`
        def DescribeCRWorkInfo(request)
          body = send_request('DescribeCRWorkInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCRWorkInfoResponse.new
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