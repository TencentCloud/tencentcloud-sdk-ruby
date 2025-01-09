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
  module Config
    module V20220802
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-08-02'
            api_endpoint = 'config.tencentcloudapi.com'
            sdk_version = 'CONFIG_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 账号组资源详情

        # @param request: Request instance for DescribeAggregateDiscoveredResource.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeAggregateDiscoveredResourceRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeAggregateDiscoveredResourceResponse`
        def DescribeAggregateDiscoveredResource(request)
          body = send_request('DescribeAggregateDiscoveredResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAggregateDiscoveredResourceResponse.new
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

        # 资源详情

        # @param request: Request instance for DescribeDiscoveredResource.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeDiscoveredResourceRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeDiscoveredResourceResponse`
        def DescribeDiscoveredResource(request)
          body = send_request('DescribeDiscoveredResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDiscoveredResourceResponse.new
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

        # 账号组获取规则列表

        # @param request: Request instance for ListAggregateConfigRules.
        # @type request: :class:`Tencentcloud::config::V20220802::ListAggregateConfigRulesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListAggregateConfigRulesResponse`
        def ListAggregateConfigRules(request)
          body = send_request('ListAggregateConfigRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAggregateConfigRulesResponse.new
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

        # 账号组获取资源列表

        # @param request: Request instance for ListAggregateDiscoveredResources.
        # @type request: :class:`Tencentcloud::config::V20220802::ListAggregateDiscoveredResourcesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListAggregateDiscoveredResourcesResponse`
        def ListAggregateDiscoveredResources(request)
          body = send_request('ListAggregateDiscoveredResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAggregateDiscoveredResourcesResponse.new
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

        # 获取规则列表

        # @param request: Request instance for ListConfigRules.
        # @type request: :class:`Tencentcloud::config::V20220802::ListConfigRulesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListConfigRulesResponse`
        def ListConfigRules(request)
          body = send_request('ListConfigRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListConfigRulesResponse.new
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

        # 获取资源列表

        # @param request: Request instance for ListDiscoveredResources.
        # @type request: :class:`Tencentcloud::config::V20220802::ListDiscoveredResourcesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListDiscoveredResourcesResponse`
        def ListDiscoveredResources(request)
          body = send_request('ListDiscoveredResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDiscoveredResourcesResponse.new
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

        # 上报自定义规则评估结果

        # @param request: Request instance for PutEvaluations.
        # @type request: :class:`Tencentcloud::config::V20220802::PutEvaluationsRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::PutEvaluationsResponse`
        def PutEvaluations(request)
          body = send_request('PutEvaluations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutEvaluationsResponse.new
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