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
  module Bsca
    module V20210811
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-08-11'
            api_endpoint = 'bsca.tencentcloudapi.com'
            sdk_version = 'BSCA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口(DescribeKBComponent)用于在知识库中查询开源组件信息。本接口根据用户输入的PURL在知识库中寻找对应的开源组件，其中Name为必填字段。

        # @param request: Request instance for DescribeKBComponent.
        # @type request: :class:`Tencentcloud::bsca::V20210811::DescribeKBComponentRequest`
        # @rtype: :class:`Tencentcloud::bsca::V20210811::DescribeKBComponentResponse`
        def DescribeKBComponent(request)
          body = send_request('DescribeKBComponent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKBComponentResponse.new
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

        # 查询特定组件的版本列表

        # @param request: Request instance for DescribeKBComponentVersionList.
        # @type request: :class:`Tencentcloud::bsca::V20210811::DescribeKBComponentVersionListRequest`
        # @rtype: :class:`Tencentcloud::bsca::V20210811::DescribeKBComponentVersionListResponse`
        def DescribeKBComponentVersionList(request)
          body = send_request('DescribeKBComponentVersionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKBComponentVersionListResponse.new
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

        # 本接口(DescribeKBComponentVulnerability)用于在知识库中查询开源组件的漏洞信息。

        # @param request: Request instance for DescribeKBComponentVulnerability.
        # @type request: :class:`Tencentcloud::bsca::V20210811::DescribeKBComponentVulnerabilityRequest`
        # @rtype: :class:`Tencentcloud::bsca::V20210811::DescribeKBComponentVulnerabilityResponse`
        def DescribeKBComponentVulnerability(request)
          body = send_request('DescribeKBComponentVulnerability', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKBComponentVulnerabilityResponse.new
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

        # 本接口(DescribeKBLicense)用于在知识库中查询许可证信息。

        # @param request: Request instance for DescribeKBLicense.
        # @type request: :class:`Tencentcloud::bsca::V20210811::DescribeKBLicenseRequest`
        # @rtype: :class:`Tencentcloud::bsca::V20210811::DescribeKBLicenseResponse`
        def DescribeKBLicense(request)
          body = send_request('DescribeKBLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKBLicenseResponse.new
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

        # 本接口(DescribeKBVulnerability)用于在知识库中查询漏洞详细信息，支持根据CVE、Vul ID、CNVD ID、CNNVD ID查询。

        # @param request: Request instance for DescribeKBVulnerability.
        # @type request: :class:`Tencentcloud::bsca::V20210811::DescribeKBVulnerabilityRequest`
        # @rtype: :class:`Tencentcloud::bsca::V20210811::DescribeKBVulnerabilityResponse`
        def DescribeKBVulnerability(request)
          body = send_request('DescribeKBVulnerability', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKBVulnerabilityResponse.new
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

        # 本接口(MatchKBPURLList)用于在知识库中匹配与特征对应的开源组件列表。

        # @param request: Request instance for MatchKBPURLList.
        # @type request: :class:`Tencentcloud::bsca::V20210811::MatchKBPURLListRequest`
        # @rtype: :class:`Tencentcloud::bsca::V20210811::MatchKBPURLListResponse`
        def MatchKBPURLList(request)
          body = send_request('MatchKBPURLList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MatchKBPURLListResponse.new
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

        # 根据输入的组件名、组件类型搜索相应的组件，返回符合条件的组件列表

        # @param request: Request instance for SearchKBComponent.
        # @type request: :class:`Tencentcloud::bsca::V20210811::SearchKBComponentRequest`
        # @rtype: :class:`Tencentcloud::bsca::V20210811::SearchKBComponentResponse`
        def SearchKBComponent(request)
          body = send_request('SearchKBComponent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchKBComponentResponse.new
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