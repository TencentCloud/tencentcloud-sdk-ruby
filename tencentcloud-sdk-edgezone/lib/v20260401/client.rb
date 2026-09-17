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
  module Edgezone
    module V20260401
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2026-04-01'
            api_endpoint = 'edgezone.tencentcloudapi.com'
            sdk_version = 'EDGEZONE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 从静态 IP 池为指定公网实例批量申请多个 Ip 地址（随机分配）。申请前需检查用户配额。
        # 此接口仅适用于 `RouteMode=static` 的公网实例。BGP/OSPF 实例调用此接口将返回错误。

        # @param request: Request instance for ApplyPublicIps.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::ApplyPublicIpsRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::ApplyPublicIpsResponse`
        def ApplyPublicIps(request)
          body = send_request('ApplyPublicIps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyPublicIpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通边缘节点计费服务。

        # @param request: Request instance for CreateEdgeNodeService.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::CreateEdgeNodeServiceRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::CreateEdgeNodeServiceResponse`
        def CreateEdgeNodeService(request)
          body = send_request('CreateEdgeNodeService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeNodeServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建物理机实例，系统自动分配物理机资源并完成装机。如果用户未在当前可用区开通计费，系统自动开通。支持并发分配物理机资源，异步执行网络分配和装机任务。

        # @param request: Request instance for CreateInstances.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::CreateInstancesRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::CreateInstancesResponse`
        def CreateInstances(request)
          body = send_request('CreateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建私网实例，一个用户在一个可用区仅支持创建一个私网实例，网络地址由 Network（网络号）和 Mask（掩码位数）两个参数共同决定子网范围。Network 必须是三个 RFC 1918 私有地址段之一的合法网络地址：10.0.0.0/8、172.16.0.0/12 或 192.168.0.0/16，且 host 位必须全为 0（即Network 与 Mask 组合后不能有主机位被置位，例如 10.0.0.1/24 是非法的，应填 10.0.0.0/24）。Mask 的上限统一为 28，下限由所属地址段决定：10.x.x.x 段允许 8～28，172.16.x.x 段允许 12～28，192.168.x.x 段允许 16～28。

        # @param request: Request instance for CreatePrivateNetworkInstance.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::CreatePrivateNetworkInstanceRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::CreatePrivateNetworkInstanceResponse`
        def CreatePrivateNetworkInstance(request)
          body = send_request('CreatePrivateNetworkInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivateNetworkInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户输入可用区ID、公网实例名称、网络线路、路由模式以创建公网实例，一个用户在一个可用区仅支持创建一个公网实例
        # 路由模式为 **静态** 的公网实例需要用户主动申请和释放公网IP
        # 路由模式为 **OSPF、BGP** 的公网实例在创建时自动分配公网IP段，销毁时自动释放公网IP段

        # @param request: Request instance for CreatePublicNetworkInstance.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::CreatePublicNetworkInstanceRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::CreatePublicNetworkInstanceResponse`
        def CreatePublicNetworkInstance(request)
          body = send_request('CreatePublicNetworkInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePublicNetworkInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除私网实例

        # @param request: Request instance for DeletePrivateNetworkInstance.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::DeletePrivateNetworkInstanceRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::DeletePrivateNetworkInstanceResponse`
        def DeletePrivateNetworkInstance(request)
          body = send_request('DeletePrivateNetworkInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivateNetworkInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改公网实例信息

        # @param request: Request instance for DeletePublicNetworkInstance.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::DeletePublicNetworkInstanceRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::DeletePublicNetworkInstanceResponse`
        def DeletePublicNetworkInstance(request)
          body = send_request('DeletePublicNetworkInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePublicNetworkInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据 AppId 查询账号下可用区维度的机型配额列表；若传入 Zone，则仅返回指定可用区下的机型配额；若不传，则返回账号下所有可用区的机型配额。

        # @param request: Request instance for DescribeInstanceTypes.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::DescribeInstanceTypesRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::DescribeInstanceTypesResponse`
        def DescribeInstanceTypes(request)
          body = send_request('DescribeInstanceTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询物理机实例列表，支持按实例ID、实例名称、可用区、实例状态等条件筛选，并支持分页查询。

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询私网实例，支持通过私网实例ID、私网实例名称、可用区ID等参数进行查询

        # @param request: Request instance for DescribePrivateNetworkInstances.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::DescribePrivateNetworkInstancesRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::DescribePrivateNetworkInstancesResponse`
        def DescribePrivateNetworkInstances(request)
          body = send_request('DescribePrivateNetworkInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateNetworkInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户的公网Ip信息，对于路由模式为Static的公网实例，会返回所有已申请的公网Ip信息，对于路由模式为Ospf和Bgp的公网实例，会直接返回网段信息

        # @param request: Request instance for DescribePublicIps.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::DescribePublicIpsRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::DescribePublicIpsResponse`
        def DescribePublicIps(request)
          body = send_request('DescribePublicIps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicIpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询公网实例列表，支持按实例ID、实例名称、可用区等条件筛选，并支持分页查询。

        # @param request: Request instance for DescribePublicNetworkInstances.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::DescribePublicNetworkInstancesRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::DescribePublicNetworkInstancesResponse`
        def DescribePublicNetworkInstances(request)
          body = send_request('DescribePublicNetworkInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicNetworkInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按指标名，查询统计数据。数据按1分钟间隔统计

        # @param request: Request instance for DescribeZoneData.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::DescribeZoneDataRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::DescribeZoneDataResponse`
        def DescribeZoneData(request)
          body = send_request('DescribeZoneData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨地域聚合查询所有已配置 region 下的可用区列表。支持通过 FilterByAppId 参数控制是否按账号过滤：默认仅返回账号关联的可用区，设为 False 时返回所有可用区。本地域直查数据库，远程地域并发 HTTP 请求后合并返回。

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::DescribeZonesResponse`
        def DescribeZones(request)
          body = send_request('DescribeZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZonesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改物理机实例的属性，支持修改实例名称、变更公网IP（IPv4/IPv6）。InstanceName 和 NewPublicIp 至少传入一个。

        # @param request: Request instance for ModifyInstanceAttribute.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::ModifyInstanceAttributeRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::ModifyInstanceAttributeResponse`
        def ModifyInstanceAttribute(request)
          body = send_request('ModifyInstanceAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改私网实例信息

        # @param request: Request instance for ModifyPrivateNetworkInstance.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::ModifyPrivateNetworkInstanceRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::ModifyPrivateNetworkInstanceResponse`
        def ModifyPrivateNetworkInstance(request)
          body = send_request('ModifyPrivateNetworkInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrivateNetworkInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改公网实例信息

        # @param request: Request instance for ModifyPublicNetworkInstance.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::ModifyPublicNetworkInstanceRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::ModifyPublicNetworkInstanceResponse`
        def ModifyPublicNetworkInstance(request)
          body = send_request('ModifyPublicNetworkInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPublicNetworkInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量释放已分配给 STATIC 公网实例但**未绑定物理服务器**的 IPv4 地址
        # 此接口仅适用于 STATIC 模式实例。BGP/OSPF 实例的 CIDR 在实例删除时自动归还，无需手动释放单个 IP。

        # @param request: Request instance for ReleasePublicIp.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::ReleasePublicIpRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::ReleasePublicIpResponse`
        def ReleasePublicIp(request)
          body = send_request('ReleasePublicIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleasePublicIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁物理机实例，释放资源。接口同步释放网络资源（IP回收）并更新状态为 terminating，后台异步执行磁盘清理。支持部分成功。

        # @param request: Request instance for TerminateInstances.
        # @type request: :class:`Tencentcloud::edgezone::V20260401::TerminateInstancesRequest`
        # @rtype: :class:`Tencentcloud::edgezone::V20260401::TerminateInstancesResponse`
        def TerminateInstances(request)
          body = send_request('TerminateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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