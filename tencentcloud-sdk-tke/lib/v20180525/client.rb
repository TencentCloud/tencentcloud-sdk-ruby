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
        @@api_version = '2018-05-25'
        @@endpoint = 'tke.tencentcloudapi.com'
        @@sdk_version = 'TKE_' + File.read(File.expand_path('../VERSION', __dir__)).strip


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


      end
    end
  end
end