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
  module Ga2
    module V20250115
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-01-15'
            api_endpoint = 'ga2.tencentcloudapi.com'
            sdk_version = 'GA2_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建加速地域

        # @param request: Request instance for CreateAccelerateAreas.
        # @type request: :class:`Tencentcloud::ga2::V20250115::CreateAccelerateAreasRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::CreateAccelerateAreasResponse`
        def CreateAccelerateAreas(request)
          body = send_request('CreateAccelerateAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccelerateAreasResponse.new
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

        # 创建终端节点组。

        # @param request: Request instance for CreateEndpointGroup.
        # @type request: :class:`Tencentcloud::ga2::V20250115::CreateEndpointGroupRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::CreateEndpointGroupResponse`
        def CreateEndpointGroup(request)
          body = send_request('CreateEndpointGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEndpointGroupResponse.new
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

        # 创建七层转发规则

        # @param request: Request instance for CreateForwardingRule.
        # @type request: :class:`Tencentcloud::ga2::V20250115::CreateForwardingRuleRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::CreateForwardingRuleResponse`
        def CreateForwardingRule(request)
          body = send_request('CreateForwardingRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateForwardingRuleResponse.new
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

        # 创建全球加速实例

        # @param request: Request instance for CreateGlobalAccelerator.
        # @type request: :class:`Tencentcloud::ga2::V20250115::CreateGlobalAcceleratorRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::CreateGlobalAcceleratorResponse`
        def CreateGlobalAccelerator(request)
          body = send_request('CreateGlobalAccelerator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGlobalAcceleratorResponse.new
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

        # 创建监听器

        # @param request: Request instance for CreateListener.
        # @type request: :class:`Tencentcloud::ga2::V20250115::CreateListenerRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::CreateListenerResponse`
        def CreateListener(request)
          body = send_request('CreateListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateListenerResponse.new
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

        # 删除加速地域

        # @param request: Request instance for DeleteAccelerateAreas.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DeleteAccelerateAreasRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DeleteAccelerateAreasResponse`
        def DeleteAccelerateAreas(request)
          body = send_request('DeleteAccelerateAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccelerateAreasResponse.new
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

        # 删除终端节点组。

        # @param request: Request instance for DeleteEndpointGroups.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DeleteEndpointGroupsRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DeleteEndpointGroupsResponse`
        def DeleteEndpointGroups(request)
          body = send_request('DeleteEndpointGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEndpointGroupsResponse.new
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

        # 删除七层转发规则

        # @param request: Request instance for DeleteForwardingRule.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DeleteForwardingRuleRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DeleteForwardingRuleResponse`
        def DeleteForwardingRule(request)
          body = send_request('DeleteForwardingRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteForwardingRuleResponse.new
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

        # 删除全球加速实例

        # @param request: Request instance for DeleteGlobalAccelerator.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DeleteGlobalAcceleratorRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DeleteGlobalAcceleratorResponse`
        def DeleteGlobalAccelerator(request)
          body = send_request('DeleteGlobalAccelerator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGlobalAcceleratorResponse.new
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

        # 删除监听器

        # @param request: Request instance for DeleteListener.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DeleteListenerRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DeleteListenerResponse`
        def DeleteListener(request)
          body = send_request('DeleteListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteListenerResponse.new
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

        # 查询加速地域

        # @param request: Request instance for DescribeAccelerateAreas.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DescribeAccelerateAreasRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DescribeAccelerateAreasResponse`
        def DescribeAccelerateAreas(request)
          body = send_request('DescribeAccelerateAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccelerateAreasResponse.new
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

        # 查询可选加速区域

        # @param request: Request instance for DescribeAccelerateRegions.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DescribeAccelerateRegionsRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DescribeAccelerateRegionsResponse`
        def DescribeAccelerateRegions(request)
          body = send_request('DescribeAccelerateRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccelerateRegionsResponse.new
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

        # 查询跨境账单

        # @param request: Request instance for DescribeCrossBorderSettlement.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DescribeCrossBorderSettlementRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DescribeCrossBorderSettlementResponse`
        def DescribeCrossBorderSettlement(request)
          body = send_request('DescribeCrossBorderSettlement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCrossBorderSettlementResponse.new
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

        # 查询终端节点组。

        # @param request: Request instance for DescribeEndpointGroups.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DescribeEndpointGroupsRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DescribeEndpointGroupsResponse`
        def DescribeEndpointGroups(request)
          body = send_request('DescribeEndpointGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEndpointGroupsResponse.new
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

        # 查看七层转发规则

        # @param request: Request instance for DescribeForwardingRule.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DescribeForwardingRuleRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DescribeForwardingRuleResponse`
        def DescribeForwardingRule(request)
          body = send_request('DescribeForwardingRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeForwardingRuleResponse.new
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

        # 修改全球加速实例

        # @param request: Request instance for DescribeGlobalAccelerators.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DescribeGlobalAcceleratorsRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DescribeGlobalAcceleratorsResponse`
        def DescribeGlobalAccelerators(request)
          body = send_request('DescribeGlobalAccelerators', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGlobalAcceleratorsResponse.new
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

        # 查询监听器

        # @param request: Request instance for DescribeListeners.
        # @type request: :class:`Tencentcloud::ga2::V20250115::DescribeListenersRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::DescribeListenersResponse`
        def DescribeListeners(request)
          body = send_request('DescribeListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenersResponse.new
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

        # 修改加速地域

        # @param request: Request instance for ModifyAccelerateAreas.
        # @type request: :class:`Tencentcloud::ga2::V20250115::ModifyAccelerateAreasRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::ModifyAccelerateAreasResponse`
        def ModifyAccelerateAreas(request)
          body = send_request('ModifyAccelerateAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccelerateAreasResponse.new
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

        # 修改终端节点组。

        # @param request: Request instance for ModifyEndpointGroup.
        # @type request: :class:`Tencentcloud::ga2::V20250115::ModifyEndpointGroupRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::ModifyEndpointGroupResponse`
        def ModifyEndpointGroup(request)
          body = send_request('ModifyEndpointGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEndpointGroupResponse.new
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

        # 修改七层转发规则

        # @param request: Request instance for ModifyForwardingRule.
        # @type request: :class:`Tencentcloud::ga2::V20250115::ModifyForwardingRuleRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::ModifyForwardingRuleResponse`
        def ModifyForwardingRule(request)
          body = send_request('ModifyForwardingRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyForwardingRuleResponse.new
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

        # 修改全球加速实例

        # @param request: Request instance for ModifyGlobalAccelerator.
        # @type request: :class:`Tencentcloud::ga2::V20250115::ModifyGlobalAcceleratorRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::ModifyGlobalAcceleratorResponse`
        def ModifyGlobalAccelerator(request)
          body = send_request('ModifyGlobalAccelerator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGlobalAcceleratorResponse.new
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

        # 修改监听器

        # @param request: Request instance for ModifyListener.
        # @type request: :class:`Tencentcloud::ga2::V20250115::ModifyListenerRequest`
        # @rtype: :class:`Tencentcloud::ga2::V20250115::ModifyListenerResponse`
        def ModifyListener(request)
          body = send_request('ModifyListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyListenerResponse.new
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