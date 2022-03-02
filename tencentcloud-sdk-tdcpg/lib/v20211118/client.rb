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
  module Tdcpg
    module V20211118
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-11-18'
            api_endpoint = 'tdcpg.tencentcloudapi.com'
            sdk_version = 'TDCPG_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 使用指定时间点的备份克隆一个新的集群

        # @param request: Request instance for CloneClusterToPointInTime.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::CloneClusterToPointInTimeRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::CloneClusterToPointInTimeResponse`
        def CloneClusterToPointInTime(request)
          body = send_request('CloneClusterToPointInTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloneClusterToPointInTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::CreateClusterRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::CreateClusterResponse`
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

        # 在集群中新建实例

        # @param request: Request instance for CreateClusterInstances.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::CreateClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::CreateClusterInstancesResponse`
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

        # 删除集群，集群中的实例和数据都将被删除，且无法恢复。只有当集群状态处于isolated(已隔离)时才生效。

        # @param request: Request instance for DeleteCluster.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::DeleteClusterRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::DeleteClusterResponse`
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

        # 删除实例。只有当实例状态处于isolated(已隔离)时才生效。

        # @param request: Request instance for DeleteClusterInstances.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::DeleteClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::DeleteClusterInstancesResponse`
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

        # 查询数据库账号信息

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::DescribeAccountsResponse`
        def DescribeAccounts(request)
          body = send_request('DescribeAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群的备份集

        # @param request: Request instance for DescribeClusterBackups.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::DescribeClusterBackupsRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::DescribeClusterBackupsResponse`
        def DescribeClusterBackups(request)
          body = send_request('DescribeClusterBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群接入点信息

        # @param request: Request instance for DescribeClusterEndpoints.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::DescribeClusterEndpointsRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::DescribeClusterEndpointsResponse`
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

        # 查询实例

        # @param request: Request instance for DescribeClusterInstances.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::DescribeClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::DescribeClusterInstancesResponse`
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

        # 查询集群可回档时间范围

        # @param request: Request instance for DescribeClusterRecoveryTimeRange.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::DescribeClusterRecoveryTimeRangeRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::DescribeClusterRecoveryTimeRangeResponse`
        def DescribeClusterRecoveryTimeRange(request)
          body = send_request('DescribeClusterRecoveryTimeRange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterRecoveryTimeRangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群

        # @param request: Request instance for DescribeClusters.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::DescribeClustersRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::DescribeClustersResponse`
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

        # 根据订单号获取资源信息

        # @param request: Request instance for DescribeResourcesByDealName.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::DescribeResourcesByDealNameRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::DescribeResourcesByDealNameResponse`
        def DescribeResourcesByDealName(request)
          body = send_request('DescribeResourcesByDealName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcesByDealNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 隔离集群，集群的接入点网络将会断掉无法连接使用数据库。只有当集群状态处于running(运行中)时才生效。

        # @param request: Request instance for IsolateCluster.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::IsolateClusterRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::IsolateClusterResponse`
        def IsolateCluster(request)
          body = send_request('IsolateCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 隔离实例。此接口只针对状态为running的实例生效，使用场景包括：
        #  - 批量隔离集群内所有的实例
        #  - 在读写实例为running(运行中)时，单个/批量隔离只读实例
        #  - 集群内所有只读实例为isolated(已隔离)时，单独隔离读写实例

        # @param request: Request instance for IsolateClusterInstances.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::IsolateClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::IsolateClusterInstancesResponse`
        def IsolateClusterInstances(request)
          body = send_request('IsolateClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateClusterInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改数据库账号描述

        # @param request: Request instance for ModifyAccountDescription.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::ModifyAccountDescriptionRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::ModifyAccountDescriptionResponse`
        def ModifyAccountDescription(request)
          body = send_request('ModifyAccountDescription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountDescriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或者关闭接入点外网

        # @param request: Request instance for ModifyClusterEndpointWanStatus.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::ModifyClusterEndpointWanStatusRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::ModifyClusterEndpointWanStatusResponse`
        def ModifyClusterEndpointWanStatus(request)
          body = send_request('ModifyClusterEndpointWanStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterEndpointWanStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例规格，此接口只针对状态为running(运行中)的实例生效

        # @param request: Request instance for ModifyClusterInstancesSpec.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::ModifyClusterInstancesSpecRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::ModifyClusterInstancesSpecResponse`
        def ModifyClusterInstancesSpec(request)
          body = send_request('ModifyClusterInstancesSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterInstancesSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改集群名字

        # @param request: Request instance for ModifyClusterName.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::ModifyClusterNameRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::ModifyClusterNameResponse`
        def ModifyClusterName(request)
          body = send_request('ModifyClusterName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改集群自动续费，只对预付费集群生效。

        # @param request: Request instance for ModifyClustersAutoRenewFlag.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::ModifyClustersAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::ModifyClustersAutoRenewFlagResponse`
        def ModifyClustersAutoRenewFlag(request)
          body = send_request('ModifyClustersAutoRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClustersAutoRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复集群，恢复集群的接入点网络，恢复后继续连接使用数据库。只有当集群状态处于isolated(已隔离)时才生效。

        # @param request: Request instance for RecoverCluster.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::RecoverClusterRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::RecoverClusterResponse`
        def RecoverCluster(request)
          body = send_request('RecoverCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复实例。此接口的使用场景包括：
        #  - 读写实例状态为running(运行中)时，批量恢复状态为isolated(已隔离)的只读实例
        #  - 读写实例状态为isolated(已隔离)时，恢复读写实例
        #  - 读写实例状态为isolated(已隔离)时，批量恢复读写实例以及状态为isolated(已隔离)的只读实例

        # @param request: Request instance for RecoverClusterInstances.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::RecoverClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::RecoverClusterInstancesResponse`
        def RecoverClusterInstances(request)
          body = send_request('RecoverClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverClusterInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 续费集群

        # @param request: Request instance for RenewCluster.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::RenewClusterRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::RenewClusterResponse`
        def RenewCluster(request)
          body = send_request('RenewCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置数据库账号密码

        # @param request: Request instance for ResetAccountPassword.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::ResetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::ResetAccountPasswordResponse`
        def ResetAccountPassword(request)
          body = send_request('ResetAccountPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetAccountPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启实例，此接口只针对状态为running(运行中)的实例生效。

        # @param request: Request instance for RestartClusterInstances.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::RestartClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::RestartClusterInstancesResponse`
        def RestartClusterInstances(request)
          body = send_request('RestartClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartClusterInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 转换集群付费模式，目前只支持从 后付费 转换成 与预付费。

        # @param request: Request instance for TransformClusterPayMode.
        # @type request: :class:`Tencentcloud::tdcpg::V20211118::TransformClusterPayModeRequest`
        # @rtype: :class:`Tencentcloud::tdcpg::V20211118::TransformClusterPayModeResponse`
        def TransformClusterPayMode(request)
          body = send_request('TransformClusterPayMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransformClusterPayModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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