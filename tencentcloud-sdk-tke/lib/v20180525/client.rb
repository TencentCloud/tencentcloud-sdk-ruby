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

        # 在应用市场中取消安装失败的应用

        # @param request: Request instance for CancelClusterRelease.
        # @type request: :class:`Tencentcloud::tke::V20180525::CancelClusterReleaseRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CancelClusterReleaseResponse`
        def CancelClusterRelease(request)
          body = send_request('CancelClusterRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelClusterReleaseResponse.new
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

        # 检查边缘计算集群的CIDR是否冲突

        # @param request: Request instance for CheckEdgeClusterCIDR.
        # @type request: :class:`Tencentcloud::tke::V20180525::CheckEdgeClusterCIDRRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CheckEdgeClusterCIDRResponse`
        def CheckEdgeClusterCIDR(request)
          body = send_request('CheckEdgeClusterCIDR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckEdgeClusterCIDRResponse.new
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

        # 创建备份仓库，指定了存储仓库类型（如COS）、COS桶地区、名称等信息，当前最多允许创建100个仓库， 注意此接口当前是全局接口，多个地域的TKE集群如果要备份到相同的备份仓库中，不需要重复创建备份仓库

        # @param request: Request instance for CreateBackupStorageLocation.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateBackupStorageLocationRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateBackupStorageLocationResponse`
        def CreateBackupStorageLocation(request)
          body = send_request('CreateBackupStorageLocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupStorageLocationResponse.new
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

        # 创建集群访问端口

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

        # 集群创建应用

        # @param request: Request instance for CreateClusterRelease.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterReleaseRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterReleaseResponse`
        def CreateClusterRelease(request)
          body = send_request('CreateClusterRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterReleaseResponse.new
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

        # 创建虚拟节点

        # @param request: Request instance for CreateClusterVirtualNode.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterVirtualNodeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterVirtualNodeResponse`
        def CreateClusterVirtualNode(request)
          body = send_request('CreateClusterVirtualNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterVirtualNodeResponse.new
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

        # 创建虚拟节点池

        # @param request: Request instance for CreateClusterVirtualNodePool.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateClusterVirtualNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateClusterVirtualNodePoolResponse`
        def CreateClusterVirtualNodePool(request)
          body = send_request('CreateClusterVirtualNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterVirtualNodePoolResponse.new
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

        # 创建边缘计算ECM机器

        # @param request: Request instance for CreateECMInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateECMInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateECMInstancesResponse`
        def CreateECMInstances(request)
          body = send_request('CreateECMInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateECMInstancesResponse.new
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

        # 创建容器实例

        # @param request: Request instance for CreateEKSContainerInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateEKSContainerInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateEKSContainerInstancesResponse`
        def CreateEKSContainerInstances(request)
          body = send_request('CreateEKSContainerInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEKSContainerInstancesResponse.new
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

        # 创建边缘容器CVM机器

        # @param request: Request instance for CreateEdgeCVMInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateEdgeCVMInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateEdgeCVMInstancesResponse`
        def CreateEdgeCVMInstances(request)
          body = send_request('CreateEdgeCVMInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeCVMInstancesResponse.new
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

        # 创建边缘集群日志采集配置

        # @param request: Request instance for CreateEdgeLogConfig.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateEdgeLogConfigRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateEdgeLogConfigResponse`
        def CreateEdgeLogConfig(request)
          body = send_request('CreateEdgeLogConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeLogConfigResponse.new
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

        # 创建镜像缓存的接口。创建过程中，请勿删除EKSCI实例和云盘，否则镜像缓存将创建失败。

        # @param request: Request instance for CreateImageCache.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateImageCacheRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateImageCacheResponse`
        def CreateImageCache(request)
          body = send_request('CreateImageCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageCacheResponse.new
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

        # 创建告警策略

        # @param request: Request instance for CreatePrometheusAlertPolicy.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreatePrometheusAlertPolicyRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreatePrometheusAlertPolicyResponse`
        def CreatePrometheusAlertPolicy(request)
          body = send_request('CreatePrometheusAlertPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusAlertPolicyResponse.new
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

        # 与云监控融合的2.0实例关联集群

        # @param request: Request instance for CreatePrometheusClusterAgent.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreatePrometheusClusterAgentRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreatePrometheusClusterAgentResponse`
        def CreatePrometheusClusterAgent(request)
          body = send_request('CreatePrometheusClusterAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusClusterAgentResponse.new
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

        # 创建prometheus配置

        # @param request: Request instance for CreatePrometheusConfig.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreatePrometheusConfigRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreatePrometheusConfigResponse`
        def CreatePrometheusConfig(request)
          body = send_request('CreatePrometheusConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusConfigResponse.new
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

        # 创建全局告警通知渠道

        # @param request: Request instance for CreatePrometheusGlobalNotification.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreatePrometheusGlobalNotificationRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreatePrometheusGlobalNotificationResponse`
        def CreatePrometheusGlobalNotification(request)
          body = send_request('CreatePrometheusGlobalNotification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusGlobalNotificationResponse.new
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

        # 以Yaml的方式创建聚合规则

        # @param request: Request instance for CreatePrometheusRecordRuleYaml.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreatePrometheusRecordRuleYamlRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreatePrometheusRecordRuleYamlResponse`
        def CreatePrometheusRecordRuleYaml(request)
          body = send_request('CreatePrometheusRecordRuleYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusRecordRuleYamlResponse.new
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

        # 创建一个云原生Prometheus模板

        # @param request: Request instance for CreatePrometheusTemp.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreatePrometheusTempRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreatePrometheusTempResponse`
        def CreatePrometheusTemp(request)
          body = send_request('CreatePrometheusTemp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusTempResponse.new
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

        # 创建边缘计算集群

        # @param request: Request instance for CreateTKEEdgeCluster.
        # @type request: :class:`Tencentcloud::tke::V20180525::CreateTKEEdgeClusterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::CreateTKEEdgeClusterResponse`
        def CreateTKEEdgeCluster(request)
          body = send_request('CreateTKEEdgeCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTKEEdgeClusterResponse.new
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

        # 删除备份仓库

        # @param request: Request instance for DeleteBackupStorageLocation.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteBackupStorageLocationRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteBackupStorageLocationResponse`
        def DeleteBackupStorageLocation(request)
          body = send_request('DeleteBackupStorageLocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBackupStorageLocationResponse.new
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

        # 删除集群访问端口

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

        # 删除虚拟节点

        # @param request: Request instance for DeleteClusterVirtualNode.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterVirtualNodeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterVirtualNodeResponse`
        def DeleteClusterVirtualNode(request)
          body = send_request('DeleteClusterVirtualNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterVirtualNodeResponse.new
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

        # 删除虚拟节点池

        # @param request: Request instance for DeleteClusterVirtualNodePool.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteClusterVirtualNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteClusterVirtualNodePoolResponse`
        def DeleteClusterVirtualNodePool(request)
          body = send_request('DeleteClusterVirtualNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterVirtualNodePoolResponse.new
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

        # 删除ECM实例

        # @param request: Request instance for DeleteECMInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteECMInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteECMInstancesResponse`
        def DeleteECMInstances(request)
          body = send_request('DeleteECMInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteECMInstancesResponse.new
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

        # 删除容器实例，可批量删除

        # @param request: Request instance for DeleteEKSContainerInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteEKSContainerInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteEKSContainerInstancesResponse`
        def DeleteEKSContainerInstances(request)
          body = send_request('DeleteEKSContainerInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEKSContainerInstancesResponse.new
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

        # 删除边缘容器CVM实例

        # @param request: Request instance for DeleteEdgeCVMInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteEdgeCVMInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteEdgeCVMInstancesResponse`
        def DeleteEdgeCVMInstances(request)
          body = send_request('DeleteEdgeCVMInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeCVMInstancesResponse.new
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

        # 删除边缘计算实例

        # @param request: Request instance for DeleteEdgeClusterInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteEdgeClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteEdgeClusterInstancesResponse`
        def DeleteEdgeClusterInstances(request)
          body = send_request('DeleteEdgeClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeClusterInstancesResponse.new
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

        # 批量删除镜像缓存

        # @param request: Request instance for DeleteImageCaches.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteImageCachesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteImageCachesResponse`
        def DeleteImageCaches(request)
          body = send_request('DeleteImageCaches', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageCachesResponse.new
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

        # 删除2.0实例告警策略

        # @param request: Request instance for DeletePrometheusAlertPolicy.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeletePrometheusAlertPolicyRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeletePrometheusAlertPolicyResponse`
        def DeletePrometheusAlertPolicy(request)
          body = send_request('DeletePrometheusAlertPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusAlertPolicyResponse.new
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

        # 解除TMP实例的集群关联

        # @param request: Request instance for DeletePrometheusClusterAgent.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeletePrometheusClusterAgentRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeletePrometheusClusterAgentResponse`
        def DeletePrometheusClusterAgent(request)
          body = send_request('DeletePrometheusClusterAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusClusterAgentResponse.new
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

        # 删除Prometheus配置，如果目标不存在，将返回成功

        # @param request: Request instance for DeletePrometheusConfig.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeletePrometheusConfigRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeletePrometheusConfigResponse`
        def DeletePrometheusConfig(request)
          body = send_request('DeletePrometheusConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusConfigResponse.new
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

        # 删除聚合实例

        # @param request: Request instance for DeletePrometheusRecordRuleYaml.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeletePrometheusRecordRuleYamlRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeletePrometheusRecordRuleYamlResponse`
        def DeletePrometheusRecordRuleYaml(request)
          body = send_request('DeletePrometheusRecordRuleYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusRecordRuleYamlResponse.new
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

        # @param request: Request instance for DeletePrometheusTemp.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeletePrometheusTempRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeletePrometheusTempResponse`
        def DeletePrometheusTemp(request)
          body = send_request('DeletePrometheusTemp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusTempResponse.new
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

        # 解除模板同步，这将会删除目标中该模板所生产的配置，针对V2版本实例

        # @param request: Request instance for DeletePrometheusTempSync.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeletePrometheusTempSyncRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeletePrometheusTempSyncResponse`
        def DeletePrometheusTempSync(request)
          body = send_request('DeletePrometheusTempSync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusTempSyncResponse.new
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

        # 删除边缘计算集群

        # @param request: Request instance for DeleteTKEEdgeCluster.
        # @type request: :class:`Tencentcloud::tke::V20180525::DeleteTKEEdgeClusterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DeleteTKEEdgeClusterResponse`
        def DeleteTKEEdgeCluster(request)
          body = send_request('DeleteTKEEdgeCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTKEEdgeClusterResponse.new
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

        # 边缘计算支持版本和k8s版本

        # @param request: Request instance for DescribeAvailableTKEEdgeVersion.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeAvailableTKEEdgeVersionRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeAvailableTKEEdgeVersionResponse`
        def DescribeAvailableTKEEdgeVersion(request)
          body = send_request('DescribeAvailableTKEEdgeVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableTKEEdgeVersionResponse.new
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

        # 查询备份仓库信息

        # @param request: Request instance for DescribeBackupStorageLocations.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeBackupStorageLocationsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeBackupStorageLocationsResponse`
        def DescribeBackupStorageLocations(request)
          body = send_request('DescribeBackupStorageLocations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupStorageLocationsResponse.new
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

        # 查看集群认证配置

        # @param request: Request instance for DescribeClusterAuthenticationOptions.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterAuthenticationOptionsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterAuthenticationOptionsResponse`
        def DescribeClusterAuthenticationOptions(request)
          body = send_request('DescribeClusterAuthenticationOptions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterAuthenticationOptionsResponse.new
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

        # 获取集群的访问地址，包括内网地址，外网地址，外网域名，外网访问安全策略

        # @param request: Request instance for DescribeClusterEndpoints.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterEndpointsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterEndpointsResponse`
        def DescribeClusterEndpoints(request)
          body = send_request('DescribeClusterEndpoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterEndpointsResponse.new
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

        # 查询集群下节点实例信息

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

        # 获取集群规模

        # @param request: Request instance for DescribeClusterLevelAttribute.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterLevelAttributeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterLevelAttributeResponse`
        def DescribeClusterLevelAttribute(request)
          body = send_request('DescribeClusterLevelAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterLevelAttributeResponse.new
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

        # 查询集群变配记录

        # @param request: Request instance for DescribeClusterLevelChangeRecords.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterLevelChangeRecordsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterLevelChangeRecordsResponse`
        def DescribeClusterLevelChangeRecords(request)
          body = send_request('DescribeClusterLevelChangeRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterLevelChangeRecordsResponse.new
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

        # 在应用市场中查询正在安装中的应用列表

        # @param request: Request instance for DescribeClusterPendingReleases.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterPendingReleasesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterPendingReleasesResponse`
        def DescribeClusterPendingReleases(request)
          body = send_request('DescribeClusterPendingReleases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterPendingReleasesResponse.new
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

        # 查询通过应用市场安装的某个应用详情

        # @param request: Request instance for DescribeClusterReleaseDetails.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterReleaseDetailsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterReleaseDetailsResponse`
        def DescribeClusterReleaseDetails(request)
          body = send_request('DescribeClusterReleaseDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterReleaseDetailsResponse.new
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

        # 查询集群在应用市场中某个已安装应用的版本历史

        # @param request: Request instance for DescribeClusterReleaseHistory.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterReleaseHistoryRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterReleaseHistoryResponse`
        def DescribeClusterReleaseHistory(request)
          body = send_request('DescribeClusterReleaseHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterReleaseHistoryResponse.new
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

        # 查询集群在应用市场中已安装应用列表

        # @param request: Request instance for DescribeClusterReleases.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterReleasesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterReleasesResponse`
        def DescribeClusterReleases(request)
          body = send_request('DescribeClusterReleases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterReleasesResponse.new
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

        # 查看集群状态列表

        # @param request: Request instance for DescribeClusterStatus.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterStatusRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterStatusResponse`
        def DescribeClusterStatus(request)
          body = send_request('DescribeClusterStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterStatusResponse.new
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

        # 查看虚拟节点列表

        # @param request: Request instance for DescribeClusterVirtualNode.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterVirtualNodeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterVirtualNodeResponse`
        def DescribeClusterVirtualNode(request)
          body = send_request('DescribeClusterVirtualNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterVirtualNodeResponse.new
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

        # 查看虚拟节点池列表

        # @param request: Request instance for DescribeClusterVirtualNodePools.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeClusterVirtualNodePoolsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeClusterVirtualNodePoolsResponse`
        def DescribeClusterVirtualNodePools(request)
          body = send_request('DescribeClusterVirtualNodePools', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterVirtualNodePoolsResponse.new
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

        # 获取ECM实例相关信息

        # @param request: Request instance for DescribeECMInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeECMInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeECMInstancesResponse`
        def DescribeECMInstances(request)
          body = send_request('DescribeECMInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeECMInstancesResponse.new
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

        # 查询容器实例的事件

        # @param request: Request instance for DescribeEKSContainerInstanceEvent.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEKSContainerInstanceEventRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEKSContainerInstanceEventResponse`
        def DescribeEKSContainerInstanceEvent(request)
          body = send_request('DescribeEKSContainerInstanceEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEKSContainerInstanceEventResponse.new
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

        # 查询容器实例支持的地域

        # @param request: Request instance for DescribeEKSContainerInstanceRegions.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEKSContainerInstanceRegionsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEKSContainerInstanceRegionsResponse`
        def DescribeEKSContainerInstanceRegions(request)
          body = send_request('DescribeEKSContainerInstanceRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEKSContainerInstanceRegionsResponse.new
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

        # 查询容器实例

        # @param request: Request instance for DescribeEKSContainerInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEKSContainerInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEKSContainerInstancesResponse`
        def DescribeEKSContainerInstances(request)
          body = send_request('DescribeEKSContainerInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEKSContainerInstancesResponse.new
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

        # 查询边缘容器集群可用的自定义参数

        # @param request: Request instance for DescribeEdgeAvailableExtraArgs.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEdgeAvailableExtraArgsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEdgeAvailableExtraArgsResponse`
        def DescribeEdgeAvailableExtraArgs(request)
          body = send_request('DescribeEdgeAvailableExtraArgs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeAvailableExtraArgsResponse.new
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

        # 获取边缘容器CVM实例相关信息

        # @param request: Request instance for DescribeEdgeCVMInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEdgeCVMInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEdgeCVMInstancesResponse`
        def DescribeEdgeCVMInstances(request)
          body = send_request('DescribeEdgeCVMInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeCVMInstancesResponse.new
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

        # 查询边缘集群自定义参数

        # @param request: Request instance for DescribeEdgeClusterExtraArgs.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEdgeClusterExtraArgsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEdgeClusterExtraArgsResponse`
        def DescribeEdgeClusterExtraArgs(request)
          body = send_request('DescribeEdgeClusterExtraArgs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeClusterExtraArgsResponse.new
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

        # 查询边缘计算集群的节点信息

        # @param request: Request instance for DescribeEdgeClusterInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEdgeClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEdgeClusterInstancesResponse`
        def DescribeEdgeClusterInstances(request)
          body = send_request('DescribeEdgeClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeClusterInstancesResponse.new
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

        # 可以查询边缘集群升级信息，包含可以升级的组件，当前升级状态和升级错误信息

        # @param request: Request instance for DescribeEdgeClusterUpgradeInfo.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEdgeClusterUpgradeInfoRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEdgeClusterUpgradeInfoResponse`
        def DescribeEdgeClusterUpgradeInfo(request)
          body = send_request('DescribeEdgeClusterUpgradeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeClusterUpgradeInfoResponse.new
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

        # 获取事件、审计和日志的状态

        # @param request: Request instance for DescribeEdgeLogSwitches.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEdgeLogSwitchesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEdgeLogSwitchesResponse`
        def DescribeEdgeLogSwitches(request)
          body = send_request('DescribeEdgeLogSwitches', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeLogSwitchesResponse.new
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

        # 查询容器实例中容器日志

        # @param request: Request instance for DescribeEksContainerInstanceLog.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeEksContainerInstanceLogRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeEksContainerInstanceLogResponse`
        def DescribeEksContainerInstanceLog(request)
          body = send_request('DescribeEksContainerInstanceLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEksContainerInstanceLogResponse.new
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

        # 获取导入第三方集群YAML定义

        # @param request: Request instance for DescribeExternalClusterSpec.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeExternalClusterSpecRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeExternalClusterSpecResponse`
        def DescribeExternalClusterSpec(request)
          body = send_request('DescribeExternalClusterSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExternalClusterSpecResponse.new
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

        # 查询镜像缓存信息接口

        # @param request: Request instance for DescribeImageCaches.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeImageCachesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeImageCachesResponse`
        def DescribeImageCaches(request)
          body = send_request('DescribeImageCaches', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageCachesResponse.new
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

        # 获取2.0实例告警策略列表

        # @param request: Request instance for DescribePrometheusAlertPolicy.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAlertPolicyRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusAlertPolicyResponse`
        def DescribePrometheusAlertPolicy(request)
          body = send_request('DescribePrometheusAlertPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusAlertPolicyResponse.new
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

        # 获取TMP实例关联集群列表

        # @param request: Request instance for DescribePrometheusClusterAgents.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusClusterAgentsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusClusterAgentsResponse`
        def DescribePrometheusClusterAgents(request)
          body = send_request('DescribePrometheusClusterAgents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusClusterAgentsResponse.new
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

        # 拉取Prometheus配置

        # @param request: Request instance for DescribePrometheusConfig.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusConfigRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusConfigResponse`
        def DescribePrometheusConfig(request)
          body = send_request('DescribePrometheusConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusConfigResponse.new
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

        # 获得实例级别抓取配置

        # @param request: Request instance for DescribePrometheusGlobalConfig.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusGlobalConfigRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusGlobalConfigResponse`
        def DescribePrometheusGlobalConfig(request)
          body = send_request('DescribePrometheusGlobalConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusGlobalConfigResponse.new
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

        # 查询全局告警通知渠道

        # @param request: Request instance for DescribePrometheusGlobalNotification.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusGlobalNotificationRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusGlobalNotificationResponse`
        def DescribePrometheusGlobalNotification(request)
          body = send_request('DescribePrometheusGlobalNotification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusGlobalNotificationResponse.new
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

        # 获取2.0实例初始化任务状态

        # @param request: Request instance for DescribePrometheusInstanceInitStatus.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusInstanceInitStatusRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusInstanceInitStatusResponse`
        def DescribePrometheusInstanceInitStatus(request)
          body = send_request('DescribePrometheusInstanceInitStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusInstanceInitStatusResponse.new
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

        # 获取与云监控融合实例列表

        # @param request: Request instance for DescribePrometheusInstancesOverview.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusInstancesOverviewRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusInstancesOverviewResponse`
        def DescribePrometheusInstancesOverview(request)
          body = send_request('DescribePrometheusInstancesOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusInstancesOverviewResponse.new
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

        # 获取聚合规则列表，包含关联集群内crd资源创建的record rule

        # @param request: Request instance for DescribePrometheusRecordRules.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusRecordRulesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusRecordRulesResponse`
        def DescribePrometheusRecordRules(request)
          body = send_request('DescribePrometheusRecordRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusRecordRulesResponse.new
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

        # 拉取模板列表，默认模板将总是在最前面

        # @param request: Request instance for DescribePrometheusTemp.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTempRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTempResponse`
        def DescribePrometheusTemp(request)
          body = send_request('DescribePrometheusTemp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusTempResponse.new
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

        # 获取模板关联实例信息，针对V2版本实例

        # @param request: Request instance for DescribePrometheusTempSync.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTempSyncRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribePrometheusTempSyncResponse`
        def DescribePrometheusTempSync(request)
          body = send_request('DescribePrometheusTempSync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusTempSyncResponse.new
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

        # 获取集群资源使用量

        # @param request: Request instance for DescribeResourceUsage.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeResourceUsageRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeResourceUsageResponse`
        def DescribeResourceUsage(request)
          body = send_request('DescribeResourceUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceUsageResponse.new
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

        # 获取边缘计算集群的认证信息

        # @param request: Request instance for DescribeTKEEdgeClusterCredential.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeClusterCredentialRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeClusterCredentialResponse`
        def DescribeTKEEdgeClusterCredential(request)
          body = send_request('DescribeTKEEdgeClusterCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTKEEdgeClusterCredentialResponse.new
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

        # 获取边缘计算集群的当前状态以及过程信息

        # @param request: Request instance for DescribeTKEEdgeClusterStatus.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeClusterStatusRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeClusterStatusResponse`
        def DescribeTKEEdgeClusterStatus(request)
          body = send_request('DescribeTKEEdgeClusterStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTKEEdgeClusterStatusResponse.new
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

        # 查询边缘集群列表

        # @param request: Request instance for DescribeTKEEdgeClusters.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeClustersRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeClustersResponse`
        def DescribeTKEEdgeClusters(request)
          body = send_request('DescribeTKEEdgeClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTKEEdgeClustersResponse.new
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

        # 获取边缘计算外部访问的kubeconfig

        # @param request: Request instance for DescribeTKEEdgeExternalKubeconfig.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeExternalKubeconfigRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeExternalKubeconfigResponse`
        def DescribeTKEEdgeExternalKubeconfig(request)
          body = send_request('DescribeTKEEdgeExternalKubeconfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTKEEdgeExternalKubeconfigResponse.new
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

        # 获取边缘脚本链接，此接口用于添加第三方节点，通过下载脚本从而将节点添加到边缘集群。

        # @param request: Request instance for DescribeTKEEdgeScript.
        # @type request: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeScriptRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DescribeTKEEdgeScriptResponse`
        def DescribeTKEEdgeScript(request)
          body = send_request('DescribeTKEEdgeScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTKEEdgeScriptResponse.new
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

        # 关闭集群审计

        # @param request: Request instance for DisableClusterAudit.
        # @type request: :class:`Tencentcloud::tke::V20180525::DisableClusterAuditRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DisableClusterAuditResponse`
        def DisableClusterAudit(request)
          body = send_request('DisableClusterAudit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableClusterAuditResponse.new
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

        # 关闭集群删除保护

        # @param request: Request instance for DisableClusterDeletionProtection.
        # @type request: :class:`Tencentcloud::tke::V20180525::DisableClusterDeletionProtectionRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DisableClusterDeletionProtectionResponse`
        def DisableClusterDeletionProtection(request)
          body = send_request('DisableClusterDeletionProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableClusterDeletionProtectionResponse.new
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

        # 关闭事件持久化功能

        # @param request: Request instance for DisableEventPersistence.
        # @type request: :class:`Tencentcloud::tke::V20180525::DisableEventPersistenceRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DisableEventPersistenceResponse`
        def DisableEventPersistence(request)
          body = send_request('DisableEventPersistence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableEventPersistenceResponse.new
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

        # 驱逐虚拟节点

        # @param request: Request instance for DrainClusterVirtualNode.
        # @type request: :class:`Tencentcloud::tke::V20180525::DrainClusterVirtualNodeRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::DrainClusterVirtualNodeResponse`
        def DrainClusterVirtualNode(request)
          body = send_request('DrainClusterVirtualNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DrainClusterVirtualNodeResponse.new
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

        # 开启集群审计

        # @param request: Request instance for EnableClusterAudit.
        # @type request: :class:`Tencentcloud::tke::V20180525::EnableClusterAuditRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::EnableClusterAuditResponse`
        def EnableClusterAudit(request)
          body = send_request('EnableClusterAudit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableClusterAuditResponse.new
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

        # 启用集群删除保护

        # @param request: Request instance for EnableClusterDeletionProtection.
        # @type request: :class:`Tencentcloud::tke::V20180525::EnableClusterDeletionProtectionRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::EnableClusterDeletionProtectionResponse`
        def EnableClusterDeletionProtection(request)
          body = send_request('EnableClusterDeletionProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableClusterDeletionProtectionResponse.new
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

        # 开启事件持久化功能

        # @param request: Request instance for EnableEventPersistence.
        # @type request: :class:`Tencentcloud::tke::V20180525::EnableEventPersistenceRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::EnableEventPersistenceResponse`
        def EnableEventPersistence(request)
          body = send_request('EnableEventPersistence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableEventPersistenceResponse.new
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

        # 操作TKE集群的addon

        # @param request: Request instance for ForwardApplicationRequestV3.
        # @type request: :class:`Tencentcloud::tke::V20180525::ForwardApplicationRequestV3Request`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ForwardApplicationRequestV3Response`
        def ForwardApplicationRequestV3(request)
          body = send_request('ForwardApplicationRequestV3', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForwardApplicationRequestV3Response.new
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

        # 操作TKEEdge集群的addon

        # @param request: Request instance for ForwardTKEEdgeApplicationRequestV3.
        # @type request: :class:`Tencentcloud::tke::V20180525::ForwardTKEEdgeApplicationRequestV3Request`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ForwardTKEEdgeApplicationRequestV3Response`
        def ForwardTKEEdgeApplicationRequestV3(request)
          body = send_request('ForwardTKEEdgeApplicationRequestV3', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForwardTKEEdgeApplicationRequestV3Response.new
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

        # 获取集群规模价格

        # @param request: Request instance for GetClusterLevelPrice.
        # @type request: :class:`Tencentcloud::tke::V20180525::GetClusterLevelPriceRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::GetClusterLevelPriceResponse`
        def GetClusterLevelPrice(request)
          body = send_request('GetClusterLevelPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetClusterLevelPriceResponse.new
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

        # 根据镜像列表，查询匹配的镜像缓存

        # @param request: Request instance for GetMostSuitableImageCache.
        # @type request: :class:`Tencentcloud::tke::V20180525::GetMostSuitableImageCacheRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::GetMostSuitableImageCacheResponse`
        def GetMostSuitableImageCache(request)
          body = send_request('GetMostSuitableImageCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetMostSuitableImageCacheResponse.new
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

        # 获取TKE支持的App列表

        # @param request: Request instance for GetTkeAppChartList.
        # @type request: :class:`Tencentcloud::tke::V20180525::GetTkeAppChartListRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::GetTkeAppChartListResponse`
        def GetTkeAppChartList(request)
          body = send_request('GetTkeAppChartList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTkeAppChartListResponse.new
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

        # 在tke@edge集群的边缘节点上安装日志采集组件

        # @param request: Request instance for InstallEdgeLogAgent.
        # @type request: :class:`Tencentcloud::tke::V20180525::InstallEdgeLogAgentRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::InstallEdgeLogAgentResponse`
        def InstallEdgeLogAgent(request)
          body = send_request('InstallEdgeLogAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstallEdgeLogAgentResponse.new
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

        # 在TKE集群中安装CLS日志采集组件

        # @param request: Request instance for InstallLogAgent.
        # @type request: :class:`Tencentcloud::tke::V20180525::InstallLogAgentRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::InstallLogAgentResponse`
        def InstallLogAgent(request)
          body = send_request('InstallLogAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstallLogAgentResponse.new
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

        # 修改集群认证配置

        # @param request: Request instance for ModifyClusterAuthenticationOptions.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyClusterAuthenticationOptionsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyClusterAuthenticationOptionsResponse`
        def ModifyClusterAuthenticationOptions(request)
          body = send_request('ModifyClusterAuthenticationOptions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterAuthenticationOptionsResponse.new
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

        # 修改虚拟节点池

        # @param request: Request instance for ModifyClusterVirtualNodePool.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyClusterVirtualNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyClusterVirtualNodePoolResponse`
        def ModifyClusterVirtualNodePool(request)
          body = send_request('ModifyClusterVirtualNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterVirtualNodePoolResponse.new
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

        # 修改被关联集群的external labels

        # @param request: Request instance for ModifyPrometheusAgentExternalLabels.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusAgentExternalLabelsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusAgentExternalLabelsResponse`
        def ModifyPrometheusAgentExternalLabels(request)
          body = send_request('ModifyPrometheusAgentExternalLabels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrometheusAgentExternalLabelsResponse.new
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

        # 修改2.0实例告警策略

        # @param request: Request instance for ModifyPrometheusAlertPolicy.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusAlertPolicyRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusAlertPolicyResponse`
        def ModifyPrometheusAlertPolicy(request)
          body = send_request('ModifyPrometheusAlertPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrometheusAlertPolicyResponse.new
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

        # 修改prometheus配置，如果配置项不存在，则会新增

        # @param request: Request instance for ModifyPrometheusConfig.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusConfigRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusConfigResponse`
        def ModifyPrometheusConfig(request)
          body = send_request('ModifyPrometheusConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrometheusConfigResponse.new
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

        # 修改全局告警通知渠道

        # @param request: Request instance for ModifyPrometheusGlobalNotification.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusGlobalNotificationRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusGlobalNotificationResponse`
        def ModifyPrometheusGlobalNotification(request)
          body = send_request('ModifyPrometheusGlobalNotification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrometheusGlobalNotificationResponse.new
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

        # 通过yaml的方式修改Prometheus聚合实例

        # @param request: Request instance for ModifyPrometheusRecordRuleYaml.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusRecordRuleYamlRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusRecordRuleYamlResponse`
        def ModifyPrometheusRecordRuleYaml(request)
          body = send_request('ModifyPrometheusRecordRuleYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrometheusRecordRuleYamlResponse.new
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

        # @param request: Request instance for ModifyPrometheusTemp.
        # @type request: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusTempRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ModifyPrometheusTempResponse`
        def ModifyPrometheusTemp(request)
          body = send_request('ModifyPrometheusTemp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrometheusTempResponse.new
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

        # 重启弹性容器实例，支持批量操作

        # @param request: Request instance for RestartEKSContainerInstances.
        # @type request: :class:`Tencentcloud::tke::V20180525::RestartEKSContainerInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::RestartEKSContainerInstancesResponse`
        def RestartEKSContainerInstances(request)
          body = send_request('RestartEKSContainerInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartEKSContainerInstancesResponse.new
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

        # 在应用市场中集群回滚应用至某个历史版本

        # @param request: Request instance for RollbackClusterRelease.
        # @type request: :class:`Tencentcloud::tke::V20180525::RollbackClusterReleaseRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::RollbackClusterReleaseResponse`
        def RollbackClusterRelease(request)
          body = send_request('RollbackClusterRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackClusterReleaseResponse.new
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

        # 初始化TMP实例，开启集成中心时调用

        # @param request: Request instance for RunPrometheusInstance.
        # @type request: :class:`Tencentcloud::tke::V20180525::RunPrometheusInstanceRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::RunPrometheusInstanceResponse`
        def RunPrometheusInstance(request)
          body = send_request('RunPrometheusInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunPrometheusInstanceResponse.new
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

        # 缩容独立集群master节点

        # @param request: Request instance for ScaleInClusterMaster.
        # @type request: :class:`Tencentcloud::tke::V20180525::ScaleInClusterMasterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ScaleInClusterMasterResponse`
        def ScaleInClusterMaster(request)
          body = send_request('ScaleInClusterMaster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScaleInClusterMasterResponse.new
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

        # 扩容独立集群master节点

        # @param request: Request instance for ScaleOutClusterMaster.
        # @type request: :class:`Tencentcloud::tke::V20180525::ScaleOutClusterMasterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::ScaleOutClusterMasterResponse`
        def ScaleOutClusterMaster(request)
          body = send_request('ScaleOutClusterMaster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScaleOutClusterMasterResponse.new
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

        # 同步模板到实例或者集群，针对V2版本实例

        # @param request: Request instance for SyncPrometheusTemp.
        # @type request: :class:`Tencentcloud::tke::V20180525::SyncPrometheusTempRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::SyncPrometheusTempResponse`
        def SyncPrometheusTemp(request)
          body = send_request('SyncPrometheusTemp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncPrometheusTempResponse.new
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

        # 在应用市场中集群删除某个应用

        # @param request: Request instance for UninstallClusterRelease.
        # @type request: :class:`Tencentcloud::tke::V20180525::UninstallClusterReleaseRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UninstallClusterReleaseResponse`
        def UninstallClusterRelease(request)
          body = send_request('UninstallClusterRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UninstallClusterReleaseResponse.new
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

        # 从tke@edge集群边缘节点上卸载日志采集组件

        # @param request: Request instance for UninstallEdgeLogAgent.
        # @type request: :class:`Tencentcloud::tke::V20180525::UninstallEdgeLogAgentRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UninstallEdgeLogAgentResponse`
        def UninstallEdgeLogAgent(request)
          body = send_request('UninstallEdgeLogAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UninstallEdgeLogAgentResponse.new
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

        # 从TKE集群中卸载CLS日志采集组件

        # @param request: Request instance for UninstallLogAgent.
        # @type request: :class:`Tencentcloud::tke::V20180525::UninstallLogAgentRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UninstallLogAgentResponse`
        def UninstallLogAgent(request)
          body = send_request('UninstallLogAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UninstallLogAgentResponse.new
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

        # 对集群的Kubeconfig信息进行更新

        # @param request: Request instance for UpdateClusterKubeconfig.
        # @type request: :class:`Tencentcloud::tke::V20180525::UpdateClusterKubeconfigRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UpdateClusterKubeconfigResponse`
        def UpdateClusterKubeconfig(request)
          body = send_request('UpdateClusterKubeconfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateClusterKubeconfigResponse.new
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

        # 更新容器实例

        # @param request: Request instance for UpdateEKSContainerInstance.
        # @type request: :class:`Tencentcloud::tke::V20180525::UpdateEKSContainerInstanceRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UpdateEKSContainerInstanceResponse`
        def UpdateEKSContainerInstance(request)
          body = send_request('UpdateEKSContainerInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEKSContainerInstanceResponse.new
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

        # 升级边缘集群组件到指定版本，此版本为TKEEdge专用版本。

        # @param request: Request instance for UpdateEdgeClusterVersion.
        # @type request: :class:`Tencentcloud::tke::V20180525::UpdateEdgeClusterVersionRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UpdateEdgeClusterVersionResponse`
        def UpdateEdgeClusterVersion(request)
          body = send_request('UpdateEdgeClusterVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEdgeClusterVersionResponse.new
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

        # 更新镜像缓存接口

        # @param request: Request instance for UpdateImageCache.
        # @type request: :class:`Tencentcloud::tke::V20180525::UpdateImageCacheRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UpdateImageCacheResponse`
        def UpdateImageCache(request)
          body = send_request('UpdateImageCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateImageCacheResponse.new
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

        # 修改边缘计算集群名称等属性

        # @param request: Request instance for UpdateTKEEdgeCluster.
        # @type request: :class:`Tencentcloud::tke::V20180525::UpdateTKEEdgeClusterRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UpdateTKEEdgeClusterResponse`
        def UpdateTKEEdgeCluster(request)
          body = send_request('UpdateTKEEdgeCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTKEEdgeClusterResponse.new
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

        # 升级集群中已安装的应用

        # @param request: Request instance for UpgradeClusterRelease.
        # @type request: :class:`Tencentcloud::tke::V20180525::UpgradeClusterReleaseRequest`
        # @rtype: :class:`Tencentcloud::tke::V20180525::UpgradeClusterReleaseResponse`
        def UpgradeClusterRelease(request)
          body = send_request('UpgradeClusterRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeClusterReleaseResponse.new
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