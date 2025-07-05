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
  module Gwlb
    module V20240906
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-09-06'
            api_endpoint = 'gwlb.tencentcloudapi.com'
            sdk_version = 'GWLB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口(AssociateTargetGroups)用来将目标组绑定到负载均衡。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for AssociateTargetGroups.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::AssociateTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::AssociateTargetGroupsResponse`
        def AssociateTargetGroups(request)
          body = send_request('AssociateTargetGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateTargetGroupsResponse.new
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

        # 本接口(CreateGatewayLoadBalancer)用来创建网关负载均衡实例。为了使用网关负载均衡服务，您必须购买一个或多个网关负载均衡实例。成功调用该接口后，会返回网关负载均衡实例的唯一 ID。
        # 注意：单个账号在每个地域的默认购买配额为：10个。
        # 本接口为异步接口，接口成功返回后，可使用 [DescribeTaskStatus](https://cloud.tencent.com/document/api/1782/111700) 接口查询负载均衡实例的状态。

        # @param request: Request instance for CreateGatewayLoadBalancer.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::CreateGatewayLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::CreateGatewayLoadBalancerResponse`
        def CreateGatewayLoadBalancer(request)
          body = send_request('CreateGatewayLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGatewayLoadBalancerResponse.new
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

        # 创建目标组。

        # @param request: Request instance for CreateTargetGroup.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::CreateTargetGroupRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::CreateTargetGroupResponse`
        def CreateTargetGroup(request)
          body = send_request('CreateTargetGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTargetGroupResponse.new
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

        # DeleteGatewayLoadBalancer 接口用以删除指定的一个或多个网关负载均衡实例。成功删除后，会把网关负载均衡实例与后端服务解绑。
        # 本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/api/1782/111700) 接口查询本次任务是否成功。

        # @param request: Request instance for DeleteGatewayLoadBalancer.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DeleteGatewayLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DeleteGatewayLoadBalancerResponse`
        def DeleteGatewayLoadBalancer(request)
          body = send_request('DeleteGatewayLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGatewayLoadBalancerResponse.new
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

        # 删除目标组

        # @param request: Request instance for DeleteTargetGroups.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DeleteTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DeleteTargetGroupsResponse`
        def DeleteTargetGroups(request)
          body = send_request('DeleteTargetGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTargetGroupsResponse.new
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

        # 从目标组中解绑服务器。

        # @param request: Request instance for DeregisterTargetGroupInstances.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DeregisterTargetGroupInstancesRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DeregisterTargetGroupInstancesResponse`
        def DeregisterTargetGroupInstances(request)
          body = send_request('DeregisterTargetGroupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeregisterTargetGroupInstancesResponse.new
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

        # 查询一个地域的网关负载均衡实例列表。

        # @param request: Request instance for DescribeGatewayLoadBalancers.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DescribeGatewayLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DescribeGatewayLoadBalancersResponse`
        def DescribeGatewayLoadBalancers(request)
          body = send_request('DescribeGatewayLoadBalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayLoadBalancersResponse.new
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

        # 查询目标组后端服务状态。目前仅支持网关负载均衡类型的目标组支持查询后端服务状态。

        # @param request: Request instance for DescribeTargetGroupInstanceStatus.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DescribeTargetGroupInstanceStatusRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DescribeTargetGroupInstanceStatusResponse`
        def DescribeTargetGroupInstanceStatus(request)
          body = send_request('DescribeTargetGroupInstanceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetGroupInstanceStatusResponse.new
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

        # 获取目标组绑定的服务器信息。

        # @param request: Request instance for DescribeTargetGroupInstances.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DescribeTargetGroupInstancesRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DescribeTargetGroupInstancesResponse`
        def DescribeTargetGroupInstances(request)
          body = send_request('DescribeTargetGroupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetGroupInstancesResponse.new
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

        # 获取目标组列表

        # @param request: Request instance for DescribeTargetGroupList.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DescribeTargetGroupListRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DescribeTargetGroupListResponse`
        def DescribeTargetGroupList(request)
          body = send_request('DescribeTargetGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetGroupListResponse.new
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

        # 查询目标组信息

        # @param request: Request instance for DescribeTargetGroups.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DescribeTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DescribeTargetGroupsResponse`
        def DescribeTargetGroups(request)
          body = send_request('DescribeTargetGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetGroupsResponse.new
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

        # 本接口用于查询异步任务的执行状态，对于非查询类的接口（创建/删除负载均衡实例等），在接口调用成功后，都需要使用本接口查询任务最终是否执行成功。

        # @param request: Request instance for DescribeTaskStatus.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DescribeTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DescribeTaskStatusResponse`
        def DescribeTaskStatus(request)
          body = send_request('DescribeTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskStatusResponse.new
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

        # 解除负载均衡和目标组的关联关系。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for DisassociateTargetGroups.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::DisassociateTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::DisassociateTargetGroupsResponse`
        def DisassociateTargetGroups(request)
          body = send_request('DisassociateTargetGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateTargetGroupsResponse.new
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

        # InquirePriceCreateGatewayLoadBalancer接口查询创建网关负载均衡的价格。

        # @param request: Request instance for InquirePriceCreateGatewayLoadBalancer.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::InquirePriceCreateGatewayLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::InquirePriceCreateGatewayLoadBalancerResponse`
        def InquirePriceCreateGatewayLoadBalancer(request)
          body = send_request('InquirePriceCreateGatewayLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceCreateGatewayLoadBalancerResponse.new
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

        # ModifyGatewayLoadBalancerAttribute 接口用于修改负载均衡实例的属性。支持修改负载均衡实例的名称、带宽上限。

        # @param request: Request instance for ModifyGatewayLoadBalancerAttribute.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::ModifyGatewayLoadBalancerAttributeRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::ModifyGatewayLoadBalancerAttributeResponse`
        def ModifyGatewayLoadBalancerAttribute(request)
          body = send_request('ModifyGatewayLoadBalancerAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGatewayLoadBalancerAttributeResponse.new
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

        # 修改目标组的名称、健康探测等属性。

        # @param request: Request instance for ModifyTargetGroupAttribute.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::ModifyTargetGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::ModifyTargetGroupAttributeResponse`
        def ModifyTargetGroupAttribute(request)
          body = send_request('ModifyTargetGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetGroupAttributeResponse.new
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

        # 修改目标组的服务器权重。

        # @param request: Request instance for ModifyTargetGroupInstancesWeight.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::ModifyTargetGroupInstancesWeightRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::ModifyTargetGroupInstancesWeightResponse`
        def ModifyTargetGroupInstancesWeight(request)
          body = send_request('ModifyTargetGroupInstancesWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetGroupInstancesWeightResponse.new
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

        # 注册服务器到目标组。

        # @param request: Request instance for RegisterTargetGroupInstances.
        # @type request: :class:`Tencentcloud::gwlb::V20240906::RegisterTargetGroupInstancesRequest`
        # @rtype: :class:`Tencentcloud::gwlb::V20240906::RegisterTargetGroupInstancesResponse`
        def RegisterTargetGroupInstances(request)
          body = send_request('RegisterTargetGroupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterTargetGroupInstancesResponse.new
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