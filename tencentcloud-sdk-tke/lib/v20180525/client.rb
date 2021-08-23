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
  module Tke
    module V20180525
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-05-25'
            api_endpoint = 'tke.tencentcloudapi.com'
            sdk_version = 'TKE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 通过此接口，可以获取集群的tke:admin的ClusterRole，即管理员角色，可以用于CAM侧高权限的用户，通过CAM策略给予子账户此接口权限，进而可以通过此接口直接获取到kubernetes集群内的管理员角色。

        # @param request: Request instance for AcquireClusterAdminRole.
        # @type request: :class:`Tencentcloud::tke::V20180525::AcquireClusterAdminRoleRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::AcquireClusterAdminRoleResponse`
        def AcquireClusterAdminRole(request)
          body = send_request('AcquireClusterAdminRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcquireClusterAdminRoleResponse.new
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

        # 给GR集群增加可用的ClusterCIDR

        # @param request: Request instance for AddClusterCIDR.
        # @type request: :class:`Tencentcloud::tke::V20180525::AddClusterCIDRRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::AddClusterCIDRResponse`
        def AddClusterCIDR(request)
          body = send_request('AddClusterCIDR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddClusterCIDRResponse.new
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

        # 添加已经存在的实例到集群

        # @param request: Request instance for AddExistedInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::AddExistedInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::AddExistedInstancesResponse`
        def AddExistedInstances(request)
          body = send_request('AddExistedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddExistedInstancesResponse.new
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

        # 将集群内节点移入节点池

        # @param request: Request instance for AddNodeToNodePool.
        # @type request: :class:`Tencentcloud::tke::V20180525::AddNodeToNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::AddNodeToNodePoolResponse`
        def AddNodeToNodePool(request)
          body = send_request('AddNodeToNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddNodeToNodePoolResponse.new
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

        # 针对VPC-CNI模式的集群，增加集群容器网络可使用的子网

        # @param request: Request instance for AddVpcCniSubnets.
        # @type request: :class:`Tencentcloud::tke::V20180525::AddVpcCniSubnetsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::AddVpcCniSubnetsResponse`
        def AddVpcCniSubnets(request)
          body = send_request('AddVpcCniSubnets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddVpcCniSubnetsResponse.new
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

        # 检查给定节点列表中哪些是可升级的

        # @param request: Request instance for CheckInstancesUpgradeAble.
        # @type request: :class:`Tencentcloud::tke::V20180525::CheckInstancesUpgradeAbleRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CheckInstancesUpgradeAbleResponse`
        def CheckInstancesUpgradeAble(request)
          body = send_request('CheckInstancesUpgradeAble', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckInstancesUpgradeAbleResponse.new
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

        # 创建集群

        # @param request: Request instance for CreateCluster.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterResponse`
        def CreateCluster(request)
          body = send_request('CreateCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterResponse.new
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

        # 为已经存在的集群创建伸缩组

        # @param request: Request instance for CreateClusterAsGroup.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterAsGroupRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterAsGroupResponse`
        def CreateClusterAsGroup(request)
          body = send_request('CreateClusterAsGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterAsGroupResponse.new
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

        # 创建集群访问端口(独立集群开启内网/外网访问，托管集群支持开启内网访问)

        # @param request: Request instance for CreateClusterEndpoint.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterEndpointRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterEndpointResponse`
        def CreateClusterEndpoint(request)
          body = send_request('CreateClusterEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterEndpointResponse.new
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

        # 创建托管集群外网访问端口（老的方式，仅支持托管集群外网端口）

        # @param request: Request instance for CreateClusterEndpointVip.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterEndpointVipRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterEndpointVipResponse`
        def CreateClusterEndpointVip(request)
          body = send_request('CreateClusterEndpointVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterEndpointVipResponse.new
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

        # 扩展(新建)集群节点

        # @param request: Request instance for CreateClusterInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterInstancesResponse`
        def CreateClusterInstances(request)
          body = send_request('CreateClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterInstancesResponse.new
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

        # 创建节点池

        # @param request: Request instance for CreateClusterNodePool.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterNodePoolResponse`
        def CreateClusterNodePool(request)
          body = send_request('CreateClusterNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterNodePoolResponse.new
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

        # 从伸缩组创建节点池

        # @param request: Request instance for CreateClusterNodePoolFromExistingAsg.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterNodePoolFromExistingAsgRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterNodePoolFromExistingAsgResponse`
        def CreateClusterNodePoolFromExistingAsg(request)
          body = send_request('CreateClusterNodePoolFromExistingAsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterNodePoolFromExistingAsgResponse.new
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

        # 创建集群路由

        # @param request: Request instance for CreateClusterRoute.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterRouteRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterRouteResponse`
        def CreateClusterRoute(request)
          body = send_request('CreateClusterRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterRouteResponse.new
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

        # 创建集群路由表

        # @param request: Request instance for CreateClusterRouteTable.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterRouteTableRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterRouteTableResponse`
        def CreateClusterRouteTable(request)
          body = send_request('CreateClusterRouteTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterRouteTableResponse.new
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

        # 创建弹性集群

        # @param request: Request instance for CreateEKSCluster.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateEKSClusterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateEKSClusterResponse`
        def CreateEKSCluster(request)
          body = send_request('CreateEKSCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEKSClusterResponse.new
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

        # 创建告警规则

        # @param request: Request instance for CreatePrometheusAlertRule.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreatePrometheusAlertRuleRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreatePrometheusAlertRuleResponse`
        def CreatePrometheusAlertRule(request)
          body = send_request('CreatePrometheusAlertRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusAlertRuleResponse.new
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

        # 创建grafana监控面板

        # @param request: Request instance for CreatePrometheusDashboard.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreatePrometheusDashboardRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreatePrometheusDashboardResponse`
        def CreatePrometheusDashboard(request)
          body = send_request('CreatePrometheusDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusDashboardResponse.new
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

        # 创建一个云原生Prometheus模板实例

        # @param request: Request instance for CreatePrometheusTemplate.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreatePrometheusTemplateRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreatePrometheusTemplateResponse`
        def CreatePrometheusTemplate(request)
          body = send_request('CreatePrometheusTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusTemplateResponse.new
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

        # 删除集群(YUNAPI V3版本)

        # @param request: Request instance for DeleteCluster.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterResponse`
        def DeleteCluster(request)
          body = send_request('DeleteCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterResponse.new
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

        # 删除集群伸缩组

        # @param request: Request instance for DeleteClusterAsGroups.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterAsGroupsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterAsGroupsResponse`
        def DeleteClusterAsGroups(request)
          body = send_request('DeleteClusterAsGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterAsGroupsResponse.new
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

        # 删除集群访问端口(独立集群开启内网/外网访问，托管集群支持开启内网访问)

        # @param request: Request instance for DeleteClusterEndpoint.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterEndpointRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterEndpointResponse`
        def DeleteClusterEndpoint(request)
          body = send_request('DeleteClusterEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterEndpointResponse.new
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

        # 删除托管集群外网访问端口（老的方式，仅支持托管集群外网端口）

        # @param request: Request instance for DeleteClusterEndpointVip.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterEndpointVipRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterEndpointVipResponse`
        def DeleteClusterEndpointVip(request)
          body = send_request('DeleteClusterEndpointVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterEndpointVipResponse.new
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

        # 删除集群中的实例

        # @param request: Request instance for DeleteClusterInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterInstancesResponse`
        def DeleteClusterInstances(request)
          body = send_request('DeleteClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterInstancesResponse.new
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

        # 删除节点池

        # @param request: Request instance for DeleteClusterNodePool.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterNodePoolResponse`
        def DeleteClusterNodePool(request)
          body = send_request('DeleteClusterNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterNodePoolResponse.new
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

        # 删除集群路由

        # @param request: Request instance for DeleteClusterRoute.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterRouteRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterRouteResponse`
        def DeleteClusterRoute(request)
          body = send_request('DeleteClusterRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterRouteResponse.new
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

        # 删除集群路由表

        # @param request: Request instance for DeleteClusterRouteTable.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterRouteTableRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterRouteTableResponse`
        def DeleteClusterRouteTable(request)
          body = send_request('DeleteClusterRouteTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterRouteTableResponse.new
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

        # 删除弹性集群(yunapiv3)

        # @param request: Request instance for DeleteEKSCluster.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteEKSClusterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteEKSClusterResponse`
        def DeleteEKSCluster(request)
          body = send_request('DeleteEKSCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEKSClusterResponse.new
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

        # 删除告警规则

        # @param request: Request instance for DeletePrometheusAlertRule.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeletePrometheusAlertRuleRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeletePrometheusAlertRuleResponse`
        def DeletePrometheusAlertRule(request)
          body = send_request('DeletePrometheusAlertRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusAlertRuleResponse.new
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

        # 删除一个云原生Prometheus配置模板

        # @param request: Request instance for DeletePrometheusTemplate.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeletePrometheusTemplateRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeletePrometheusTemplateResponse`
        def DeletePrometheusTemplate(request)
          body = send_request('DeletePrometheusTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusTemplateResponse.new
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

        # 取消模板同步，这将会删除目标中该模板所生产的配置

        # @param request: Request instance for DeletePrometheusTemplateSync.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeletePrometheusTemplateSyncRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeletePrometheusTemplateSyncResponse`
        def DeletePrometheusTemplateSync(request)
          body = send_request('DeletePrometheusTemplateSync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusTemplateSyncResponse.new
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

        # 获取集群可以升级的所有版本

        # @param request: Request instance for DescribeAvailableClusterVersion.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeAvailableClusterVersionRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeAvailableClusterVersionResponse`
        def DescribeAvailableClusterVersion(request)
          body = send_request('DescribeAvailableClusterVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableClusterVersionResponse.new
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

        # 集群弹性伸缩配置

        # @param request: Request instance for DescribeClusterAsGroupOption.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterAsGroupOptionRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterAsGroupOptionResponse`
        def DescribeClusterAsGroupOption(request)
          body = send_request('DescribeClusterAsGroupOption', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterAsGroupOptionResponse.new
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

        # 集群关联的伸缩组列表

        # @param request: Request instance for DescribeClusterAsGroups.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterAsGroupsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterAsGroupsResponse`
        def DescribeClusterAsGroups(request)
          body = send_request('DescribeClusterAsGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterAsGroupsResponse.new
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

        # 获取指定子账户在RBAC授权模式中对应kube-apiserver客户端证书的CommonName字段，如果没有客户端证书，将会签发一个，此接口有最大传入子账户数量上限，当前为50

        # @param request: Request instance for DescribeClusterCommonNames.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterCommonNamesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterCommonNamesResponse`
        def DescribeClusterCommonNames(request)
          body = send_request('DescribeClusterCommonNames', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterCommonNamesResponse.new
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

        # 用于查询Kubernetes的各个原生控制器是否开启

        # @param request: Request instance for DescribeClusterControllers.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterControllersRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterControllersResponse`
        def DescribeClusterControllers(request)
          body = send_request('DescribeClusterControllers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterControllersResponse.new
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

        # 查询集群访问端口状态(独立集群开启内网/外网访问，托管集群支持开启内网访问)

        # @param request: Request instance for DescribeClusterEndpointStatus.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterEndpointStatusRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterEndpointStatusResponse`
        def DescribeClusterEndpointStatus(request)
          body = send_request('DescribeClusterEndpointStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterEndpointStatusResponse.new
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

        # 查询集群开启端口流程状态(仅支持托管集群外网端口)

        # @param request: Request instance for DescribeClusterEndpointVipStatus.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterEndpointVipStatusRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterEndpointVipStatusResponse`
        def DescribeClusterEndpointVipStatus(request)
          body = send_request('DescribeClusterEndpointVipStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterEndpointVipStatusResponse.new
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

        #  查询集群下节点实例信息

        # @param request: Request instance for DescribeClusterInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterInstancesResponse`
        def DescribeClusterInstances(request)
          body = send_request('DescribeClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterInstancesResponse.new
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

        # 获取集群的kubeconfig文件，不同子账户获取自己的kubeconfig文件，该文件中有每个子账户自己的kube-apiserver的客户端证书，默认首次调此接口时候创建客户端证书，时效20年，未授予任何权限，如果是集群所有者或者主账户，则默认是cluster-admin权限。

        # @param request: Request instance for DescribeClusterKubeconfig.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterKubeconfigRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterKubeconfigResponse`
        def DescribeClusterKubeconfig(request)
          body = send_request('DescribeClusterKubeconfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterKubeconfigResponse.new
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

        # 查询节点池详情

        # @param request: Request instance for DescribeClusterNodePoolDetail.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterNodePoolDetailRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterNodePoolDetailResponse`
        def DescribeClusterNodePoolDetail(request)
          body = send_request('DescribeClusterNodePoolDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterNodePoolDetailResponse.new
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

        # 查询节点池列表

        # @param request: Request instance for DescribeClusterNodePools.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterNodePoolsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterNodePoolsResponse`
        def DescribeClusterNodePools(request)
          body = send_request('DescribeClusterNodePools', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterNodePoolsResponse.new
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

        # 查询集群路由表

        # @param request: Request instance for DescribeClusterRouteTables.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterRouteTablesResponse`
        def DescribeClusterRouteTables(request)
          body = send_request('DescribeClusterRouteTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterRouteTablesResponse.new
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

        # 查询集群路由

        # @param request: Request instance for DescribeClusterRoutes.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterRoutesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterRoutesResponse`
        def DescribeClusterRoutes(request)
          body = send_request('DescribeClusterRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterRoutesResponse.new
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

        # 集群的密钥信息

        # @param request: Request instance for DescribeClusterSecurity.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterSecurityRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterSecurityResponse`
        def DescribeClusterSecurity(request)
          body = send_request('DescribeClusterSecurity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterSecurityResponse.new
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

        # 查询集群列表

        # @param request: Request instance for DescribeClusters.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClustersRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClustersResponse`
        def DescribeClusters(request)
          body = send_request('DescribeClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClustersResponse.new
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

        # 获取弹性容器集群的接入认证信息

        # @param request: Request instance for DescribeEKSClusterCredential.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEKSClusterCredentialRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEKSClusterCredentialResponse`
        def DescribeEKSClusterCredential(request)
          body = send_request('DescribeEKSClusterCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEKSClusterCredentialResponse.new
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

        # 查询弹性集群列表

        # @param request: Request instance for DescribeEKSClusters.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEKSClustersRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEKSClustersResponse`
        def DescribeEKSClusters(request)
          body = send_request('DescribeEKSClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEKSClustersResponse.new
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

        # 本接口用于查询开启vpc-cni模式的任务进度

        # @param request: Request instance for DescribeEnableVpcCniProgress.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEnableVpcCniProgressRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEnableVpcCniProgressResponse`
        def DescribeEnableVpcCniProgress(request)
          body = send_request('DescribeEnableVpcCniProgress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnableVpcCniProgressResponse.new
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

        # 查询已经存在的节点，判断是否可以加入集群

        # @param request: Request instance for DescribeExistedInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeExistedInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeExistedInstancesResponse`
        def DescribeExistedInstances(request)
          body = send_request('DescribeExistedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExistedInstancesResponse.new
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

        # 获取镜像信息

        # @param request: Request instance for DescribeImages.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeImagesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeImagesResponse`
        def DescribeImages(request)
          body = send_request('DescribeImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImagesResponse.new
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

        # 获取关联目标集群的实例列表

        # @param request: Request instance for DescribePrometheusAgentInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAgentInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAgentInstancesResponse`
        def DescribePrometheusAgentInstances(request)
          body = send_request('DescribePrometheusAgentInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusAgentInstancesResponse.new
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

        # 获取被关联集群列表

        # @param request: Request instance for DescribePrometheusAgents.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAgentsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAgentsResponse`
        def DescribePrometheusAgents(request)
          body = send_request('DescribePrometheusAgents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusAgentsResponse.new
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

        # 获取告警历史

        # @param request: Request instance for DescribePrometheusAlertHistory.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAlertHistoryRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAlertHistoryResponse`
        def DescribePrometheusAlertHistory(request)
          body = send_request('DescribePrometheusAlertHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusAlertHistoryResponse.new
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

        # 获取告警规则列表

        # @param request: Request instance for DescribePrometheusAlertRule.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAlertRuleRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAlertRuleResponse`
        def DescribePrometheusAlertRule(request)
          body = send_request('DescribePrometheusAlertRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusAlertRuleResponse.new
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

        # 获取实例详细信息

        # @param request: Request instance for DescribePrometheusInstance.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusInstanceRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusInstanceResponse`
        def DescribePrometheusInstance(request)
          body = send_request('DescribePrometheusInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusInstanceResponse.new
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

        # 获取实例列表

        # @param request: Request instance for DescribePrometheusOverviews.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusOverviewsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusOverviewsResponse`
        def DescribePrometheusOverviews(request)
          body = send_request('DescribePrometheusOverviews', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusOverviewsResponse.new
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

        # 获取targets信息

        # @param request: Request instance for DescribePrometheusTargets.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTargetsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTargetsResponse`
        def DescribePrometheusTargets(request)
          body = send_request('DescribePrometheusTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusTargetsResponse.new
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

        # 获取模板同步信息

        # @param request: Request instance for DescribePrometheusTemplateSync.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTemplateSyncRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTemplateSyncResponse`
        def DescribePrometheusTemplateSync(request)
          body = send_request('DescribePrometheusTemplateSync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusTemplateSyncResponse.new
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

        # 拉取模板列表，默认模板将总是在最前面

        # @param request: Request instance for DescribePrometheusTemplates.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTemplatesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTemplatesResponse`
        def DescribePrometheusTemplates(request)
          body = send_request('DescribePrometheusTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusTemplatesResponse.new
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

        # 获取容器服务支持的所有地域

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeRegionsResponse`
        def DescribeRegions(request)
          body = send_request('DescribeRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionsResponse.new
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

        # 查询路由表冲突列表

        # @param request: Request instance for DescribeRouteTableConflicts.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeRouteTableConflictsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeRouteTableConflictsResponse`
        def DescribeRouteTableConflicts(request)
          body = send_request('DescribeRouteTableConflicts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRouteTableConflictsResponse.new
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

        # 获取集群版本信息

        # @param request: Request instance for DescribeVersions.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeVersionsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeVersionsResponse`
        def DescribeVersions(request)
          body = send_request('DescribeVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVersionsResponse.new
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

        # 本接口查询当前用户和地域在指定可用区下的机型可支持的最大 TKE VPC-CNI 网络模式的 Pod 数量

        # @param request: Request instance for DescribeVpcCniPodLimits.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeVpcCniPodLimitsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeVpcCniPodLimitsResponse`
        def DescribeVpcCniPodLimits(request)
          body = send_request('DescribeVpcCniPodLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcCniPodLimitsResponse.new
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

        # 提供给附加了VPC-CNI能力的Global-Route集群关闭VPC-CNI

        # @param request: Request instance for DisableVpcCniNetworkType.
        # @type request: :class:`Tencentcloud::tke::V20180525::DisableVpcCniNetworkTypeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DisableVpcCniNetworkTypeResponse`
        def DisableVpcCniNetworkType(request)
          body = send_request('DisableVpcCniNetworkType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableVpcCniNetworkTypeResponse.new
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

        # GR集群可以通过本接口附加vpc-cni容器网络插件，开启vpc-cni容器网络能力

        # @param request: Request instance for EnableVpcCniNetworkType.
        # @type request: :class:`Tencentcloud::tke::V20180525::EnableVpcCniNetworkTypeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::EnableVpcCniNetworkTypeResponse`
        def EnableVpcCniNetworkType(request)
          body = send_request('EnableVpcCniNetworkType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableVpcCniNetworkTypeResponse.new
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

        # 获得节点升级当前的进度

        # @param request: Request instance for GetUpgradeInstanceProgress.
        # @type request: :class:`Tencentcloud::tke::V20180525::GetUpgradeInstanceProgressRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::GetUpgradeInstanceProgressResponse`
        def GetUpgradeInstanceProgress(request)
          body = send_request('GetUpgradeInstanceProgress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUpgradeInstanceProgressResponse.new
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

        # 修改集群伸缩组属性

        # @param request: Request instance for ModifyClusterAsGroupAttribute.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyClusterAsGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyClusterAsGroupAttributeResponse`
        def ModifyClusterAsGroupAttribute(request)
          body = send_request('ModifyClusterAsGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterAsGroupAttributeResponse.new
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

        # 修改集群弹性伸缩属性

        # @param request: Request instance for ModifyClusterAsGroupOptionAttribute.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyClusterAsGroupOptionAttributeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyClusterAsGroupOptionAttributeResponse`
        def ModifyClusterAsGroupOptionAttribute(request)
          body = send_request('ModifyClusterAsGroupOptionAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterAsGroupOptionAttributeResponse.new
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

        # 修改集群属性

        # @param request: Request instance for ModifyClusterAttribute.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyClusterAttributeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyClusterAttributeResponse`
        def ModifyClusterAttribute(request)
          body = send_request('ModifyClusterAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterAttributeResponse.new
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

        # 修改托管集群外网端口的安全策略（老的方式，仅支持托管集群外网端口）

        # @param request: Request instance for ModifyClusterEndpointSP.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyClusterEndpointSPRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyClusterEndpointSPResponse`
        def ModifyClusterEndpointSP(request)
          body = send_request('ModifyClusterEndpointSP', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterEndpointSPResponse.new
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

        # 编辑节点池

        # @param request: Request instance for ModifyClusterNodePool.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyClusterNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyClusterNodePoolResponse`
        def ModifyClusterNodePool(request)
          body = send_request('ModifyClusterNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterNodePoolResponse.new
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

        # 修改节点池关联伸缩组的期望实例数

        # @param request: Request instance for ModifyNodePoolDesiredCapacityAboutAsg.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyNodePoolDesiredCapacityAboutAsgRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyNodePoolDesiredCapacityAboutAsgResponse`
        def ModifyNodePoolDesiredCapacityAboutAsg(request)
          body = send_request('ModifyNodePoolDesiredCapacityAboutAsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNodePoolDesiredCapacityAboutAsgResponse.new
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

        # 修改节点池的机型配置

        # @param request: Request instance for ModifyNodePoolInstanceTypes.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyNodePoolInstanceTypesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyNodePoolInstanceTypesResponse`
        def ModifyNodePoolInstanceTypes(request)
          body = send_request('ModifyNodePoolInstanceTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNodePoolInstanceTypesResponse.new
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

        # 修改告警规则

        # @param request: Request instance for ModifyPrometheusAlertRule.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusAlertRuleRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusAlertRuleResponse`
        def ModifyPrometheusAlertRule(request)
          body = send_request('ModifyPrometheusAlertRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrometheusAlertRuleResponse.new
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

        # 修改模板内容

        # @param request: Request instance for ModifyPrometheusTemplate.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusTemplateRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusTemplateResponse`
        def ModifyPrometheusTemplate(request)
          body = send_request('ModifyPrometheusTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrometheusTemplateResponse.new
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

        # 移出节点池节点，但保留在集群内

        # @param request: Request instance for RemoveNodeFromNodePool.
        # @type request: :class:`Tencentcloud::tke::V20180525::RemoveNodeFromNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::RemoveNodeFromNodePoolResponse`
        def RemoveNodeFromNodePool(request)
          body = send_request('RemoveNodeFromNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveNodeFromNodePoolResponse.new
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

        # 仅能设置节点池中处于伸缩组的节点

        # @param request: Request instance for SetNodePoolNodeProtection.
        # @type request: :class:`Tencentcloud::tke::V20180525::SetNodePoolNodeProtectionRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::SetNodePoolNodeProtectionResponse`
        def SetNodePoolNodeProtection(request)
          body = send_request('SetNodePoolNodeProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetNodePoolNodeProtectionResponse.new
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

        # 同步模板到实例或者集群

        # @param request: Request instance for SyncPrometheusTemplate.
        # @type request: :class:`Tencentcloud::tke::V20180525::SyncPrometheusTemplateRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::SyncPrometheusTemplateResponse`
        def SyncPrometheusTemplate(request)
          body = send_request('SyncPrometheusTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncPrometheusTemplateResponse.new
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

        # 升级集群 Master 组件到指定版本

        # @param request: Request instance for UpdateClusterVersion.
        # @type request: :class:`Tencentcloud::tke::V20180525::UpdateClusterVersionRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UpdateClusterVersionResponse`
        def UpdateClusterVersion(request)
          body = send_request('UpdateClusterVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateClusterVersionResponse.new
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

        # 修改弹性集群名称等属性

        # @param request: Request instance for UpdateEKSCluster.
        # @type request: :class:`Tencentcloud::tke::V20180525::UpdateEKSClusterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UpdateEKSClusterResponse`
        def UpdateEKSCluster(request)
          body = send_request('UpdateEKSCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEKSClusterResponse.new
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

        # 给集群的一批work节点进行升级

        # @param request: Request instance for UpgradeClusterInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::UpgradeClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UpgradeClusterInstancesResponse`
        def UpgradeClusterInstances(request)
          body = send_request('UpgradeClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeClusterInstancesResponse.new
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