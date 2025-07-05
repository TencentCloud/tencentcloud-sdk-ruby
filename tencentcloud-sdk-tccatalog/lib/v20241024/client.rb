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
  module Tccatalog
    module V20241024
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-10-24'
            api_endpoint = 'tccatalog.tencentcloudapi.com'
            sdk_version = 'TCCATALOG_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 接受终端节点连接

        # @param request: Request instance for AcceptTccVpcEndPointConnect.
        # @type request: :class:`Tencentcloud::tccatalog::V20241024::AcceptTccVpcEndPointConnectRequest`
        # @rtype: :class:`Tencentcloud::tccatalog::V20241024::AcceptTccVpcEndPointConnectResponse`
        def AcceptTccVpcEndPointConnect(request)
          body = send_request('AcceptTccVpcEndPointConnect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcceptTccVpcEndPointConnectResponse.new
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

        # 绑定终端节点服务白名单用户

        # @param request: Request instance for BindTccVpcEndPointServiceWhiteList.
        # @type request: :class:`Tencentcloud::tccatalog::V20241024::BindTccVpcEndPointServiceWhiteListRequest`
        # @rtype: :class:`Tencentcloud::tccatalog::V20241024::BindTccVpcEndPointServiceWhiteListResponse`
        def BindTccVpcEndPointServiceWhiteList(request)
          body = send_request('BindTccVpcEndPointServiceWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindTccVpcEndPointServiceWhiteListResponse.new
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

        # 获取Tcc数据目录详情

        # @param request: Request instance for DescribeTccCatalog.
        # @type request: :class:`Tencentcloud::tccatalog::V20241024::DescribeTccCatalogRequest`
        # @rtype: :class:`Tencentcloud::tccatalog::V20241024::DescribeTccCatalogResponse`
        def DescribeTccCatalog(request)
          body = send_request('DescribeTccCatalog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTccCatalogResponse.new
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

        # 获取Tcc数据目录列表

        # @param request: Request instance for DescribeTccCatalogs.
        # @type request: :class:`Tencentcloud::tccatalog::V20241024::DescribeTccCatalogsRequest`
        # @rtype: :class:`Tencentcloud::tccatalog::V20241024::DescribeTccCatalogsResponse`
        def DescribeTccCatalogs(request)
          body = send_request('DescribeTccCatalogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTccCatalogsResponse.new
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