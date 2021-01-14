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
  module Cynosdb
    module V20190107
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-01-07'
        @@endpoint = 'cynosdb.tencentcloudapi.com'
        @@sdk_version = 'CYNOSDB_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口（AddInstances）用于集群添加实例

        # @param request: Request instance for AddInstances.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::AddInstancesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::AddInstancesResponse`
        def AddInstances(request)
          body = send_request('AddInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for CreateClusters.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateClustersRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateClustersResponse`
        def CreateClusters(request)
          body = send_request('CreateClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAccounts)用于查询数据库管理账号。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountsResponse`
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

        # 获取指定集群的备份配置信息，包括全量备份时间段，备份文件保留时间

        # @param request: Request instance for DescribeBackupConfig.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupConfigResponse`
        def DescribeBackupConfig(request)
          body = send_request('DescribeBackupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份文件列表

        # @param request: Request instance for DescribeBackupList.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupListRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupListResponse`
        def DescribeBackupList(request)
          body = send_request('DescribeBackupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 显示集群详情

        # @param request: Request instance for DescribeClusterDetail.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterDetailRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterDetailResponse`
        def DescribeClusterDetail(request)
          body = send_request('DescribeClusterDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeClusterInstanceGrps）用于查询实例组

        # @param request: Request instance for DescribeClusterInstanceGrps.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterInstanceGrpsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterInstanceGrpsResponse`
        def DescribeClusterInstanceGrps(request)
          body = send_request('DescribeClusterInstanceGrps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterInstanceGrpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClustersRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClustersResponse`
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

        # 查询实例安全组信息

        # @param request: Request instance for DescribeDBSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeDBSecurityGroupsResponse`
        def DescribeDBSecurityGroups(request)
          body = send_request('DescribeDBSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeInstanceDetail)用于查询实例详情。

        # @param request: Request instance for DescribeInstanceDetail.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceDetailResponse`
        def DescribeInstanceDetail(request)
          body = send_request('DescribeInstanceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceSpecs）用于查询实例规格

        # @param request: Request instance for DescribeInstanceSpecs.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceSpecsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceSpecsResponse`
        def DescribeInstanceSpecs(request)
          body = send_request('DescribeInstanceSpecs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceSpecsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeInstances)用于查询实例列表。

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstancesResponse`
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

        # 查询实例维护时间窗

        # @param request: Request instance for DescribeMaintainPeriod.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeMaintainPeriodRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeMaintainPeriodResponse`
        def DescribeMaintainPeriod(request)
          body = send_request('DescribeMaintainPeriod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaintainPeriodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询项目安全组信息

        # @param request: Request instance for DescribeProjectSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeProjectSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeProjectSecurityGroupsResponse`
        def DescribeProjectSecurityGroups(request)
          body = send_request('DescribeProjectSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定集群有效回滚时间范围

        # @param request: Request instance for DescribeRollbackTimeRange.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeRollbackTimeRangeRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeRollbackTimeRangeResponse`
        def DescribeRollbackTimeRange(request)
          body = send_request('DescribeRollbackTimeRange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRollbackTimeRangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 指定时间和集群查询是否可回滚

        # @param request: Request instance for DescribeRollbackTimeValidity.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeRollbackTimeValidityRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeRollbackTimeValidityResponse`
        def DescribeRollbackTimeValidity(request)
          body = send_request('DescribeRollbackTimeValidity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRollbackTimeValidityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 隔离集群

        # @param request: Request instance for IsolateCluster.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::IsolateClusterRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::IsolateClusterResponse`
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

        # 本接口(IsolateInstance)用于隔离实例。

        # @param request: Request instance for IsolateInstance.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::IsolateInstanceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::IsolateInstanceResponse`
        def IsolateInstance(request)
          body = send_request('IsolateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改指定集群的备份配置

        # @param request: Request instance for ModifyBackupConfig.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyBackupConfigResponse`
        def ModifyBackupConfig(request)
          body = send_request('ModifyBackupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDBInstanceSecurityGroups)用于修改实例绑定的安全组。

        # @param request: Request instance for ModifyDBInstanceSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyDBInstanceSecurityGroupsResponse`
        def ModifyDBInstanceSecurityGroups(request)
          body = send_request('ModifyDBInstanceSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改维护时间配置

        # @param request: Request instance for ModifyMaintainPeriodConfig.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyMaintainPeriodConfigRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyMaintainPeriodConfigResponse`
        def ModifyMaintainPeriodConfig(request)
          body = send_request('ModifyMaintainPeriodConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMaintainPeriodConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线集群

        # @param request: Request instance for OfflineCluster.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::OfflineClusterRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::OfflineClusterResponse`
        def OfflineCluster(request)
          body = send_request('OfflineCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OfflineClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线实例

        # @param request: Request instance for OfflineInstance.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::OfflineInstanceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::OfflineInstanceResponse`
        def OfflineInstance(request)
          body = send_request('OfflineInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OfflineInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # SetRenewFlag设置实例的自动续费功能

        # @param request: Request instance for SetRenewFlag.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::SetRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::SetRenewFlagResponse`
        def SetRenewFlag(request)
          body = send_request('SetRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 升级实例

        # @param request: Request instance for UpgradeInstance.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::UpgradeInstanceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::UpgradeInstanceResponse`
        def UpgradeInstance(request)
          body = send_request('UpgradeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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