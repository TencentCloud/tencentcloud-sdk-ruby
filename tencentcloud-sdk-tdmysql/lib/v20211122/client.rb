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
  module Tdmysql
    module V20211122
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-11-22'
            api_endpoint = 'tdmysql.tencentcloudapi.com'
            sdk_version = 'TDMYSQL_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（CancelIsolateDBInstances）提供批量解除隔离实例功能

        # @param request: Request instance for CancelIsolateDBInstances.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::CancelIsolateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::CancelIsolateDBInstancesResponse`
        def CancelIsolateDBInstances(request)
          body = send_request('CancelIsolateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelIsolateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateCloneInstance）提供创建克隆实例功能

        # @param request: Request instance for CreateCloneInstance.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::CreateCloneInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::CreateCloneInstanceResponse`
        def CreateCloneInstance(request)
          body = send_request('CreateCloneInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloneInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDBInstances）提供批量创建实例功能

        # @param request: Request instance for CreateDBInstances.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::CreateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::CreateDBInstancesResponse`
        def CreateDBInstances(request)
          body = send_request('CreateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建实例手工备份  CreateDBSBackup

        # @param request: Request instance for CreateDBSBackup.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::CreateDBSBackupRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::CreateDBSBackupResponse`
        def CreateDBSBackup(request)
          body = send_request('CreateDBSBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBSBackupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateUsers）用于批量创建用户

        # @param request: Request instance for CreateUsers.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::CreateUsersRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::CreateUsersResponse`
        def CreateUsers(request)
          body = send_request('CreateUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除实例手工备份 DeleteDBSBackupSets

        # @param request: Request instance for DeleteDBSBackupSets.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DeleteDBSBackupSetsRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DeleteDBSBackupSetsResponse`
        def DeleteDBSBackupSets(request)
          body = send_request('DeleteDBSBackupSets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDBSBackupSetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteUsers）用于批量删除用户

        # @param request: Request instance for DeleteUsers.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DeleteUsersRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DeleteUsersResponse`
        def DeleteUsers(request)
          body = send_request('DeleteUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBInstanceDetail）提供查询实例详情功能

        # @param request: Request instance for DescribeDBInstanceDetail.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBInstanceDetailResponse`
        def DescribeDBInstanceDetail(request)
          body = send_request('DescribeDBInstanceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBInstances）提供查询实例列表功能

        # @param request: Request instance for DescribeDBInstances.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBInstancesResponse`
        def DescribeDBInstances(request)
          body = send_request('DescribeDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBParameters）用于获取实例的当前参数设置。

        # @param request: Request instance for DescribeDBParameters.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBParametersRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBParametersResponse`
        def DescribeDBParameters(request)
          body = send_request('DescribeDBParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例归档日志列表 DescribeDBSArchiveLogs

        # @param request: Request instance for DescribeDBSArchiveLogs.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSArchiveLogsRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSArchiveLogsResponse`
        def DescribeDBSArchiveLogs(request)
          body = send_request('DescribeDBSArchiveLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSArchiveLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取可恢复时间 DescribeDBSAvailableRecoveryTime

        # @param request: Request instance for DescribeDBSAvailableRecoveryTime.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSAvailableRecoveryTimeRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSAvailableRecoveryTimeResponse`
        def DescribeDBSAvailableRecoveryTime(request)
          body = send_request('DescribeDBSAvailableRecoveryTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSAvailableRecoveryTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例备份策略 DescribeDBSBackupPolicy

        # @param request: Request instance for DescribeDBSBackupPolicy.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSBackupPolicyRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSBackupPolicyResponse`
        def DescribeDBSBackupPolicy(request)
          body = send_request('DescribeDBSBackupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSBackupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例备份集信息 DescribeDBSBackupSets

        # @param request: Request instance for DescribeDBSBackupSets.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSBackupSetsRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSBackupSetsResponse`
        def DescribeDBSBackupSets(request)
          body = send_request('DescribeDBSBackupSets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSBackupSetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例备份空间概览 DescribeDBSBackupStatistics

        # @param request: Request instance for DescribeDBSBackupStatistics.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSBackupStatisticsRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSBackupStatisticsResponse`
        def DescribeDBSBackupStatistics(request)
          body = send_request('DescribeDBSBackupStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSBackupStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份集统计详情 DescribeDBSBackupStatisticsDetail

        # @param request: Request instance for DescribeDBSBackupStatisticsDetail.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSBackupStatisticsDetailRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSBackupStatisticsDetailResponse`
        def DescribeDBSBackupStatisticsDetail(request)
          body = send_request('DescribeDBSBackupStatisticsDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSBackupStatisticsDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例克隆列表 DescribeDBSCloneInstances

        # @param request: Request instance for DescribeDBSCloneInstances.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSCloneInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSCloneInstancesResponse`
        def DescribeDBSCloneInstances(request)
          body = send_request('DescribeDBSCloneInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSCloneInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBSecurityGroups）用于查询实例安全组信息

        # @param request: Request instance for DescribeDBSecurityGroups.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDBSecurityGroupsResponse`
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

        # 本接口（DescribeDatabaseObjects）用于查询云数据库实例的数据库中的对象列表，包含表、存储过程、视图和函数。

        # @param request: Request instance for DescribeDatabaseObjects.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDatabaseObjectsRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDatabaseObjectsResponse`
        def DescribeDatabaseObjects(request)
          body = send_request('DescribeDatabaseObjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseObjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDatabases）用于查询云数据库实例的数据库列表。

        # @param request: Request instance for DescribeDatabases.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDatabasesRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDatabasesResponse`
        def DescribeDatabases(request)
          body = send_request('DescribeDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeFlow）用于查询异步任务流程状态

        # @param request: Request instance for DescribeFlow.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeFlowRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeFlowResponse`
        def DescribeFlow(request)
          body = send_request('DescribeFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceSSLStatus）提供实例SSL状态查询

        # @param request: Request instance for DescribeInstanceSSLStatus.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeInstanceSSLStatusRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeInstanceSSLStatusResponse`
        def DescribeInstanceSSLStatus(request)
          body = send_request('DescribeInstanceSSLStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceSSLStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询维护时间窗口配置

        # @param request: Request instance for DescribeMaintenanceWindow.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeMaintenanceWindowRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeMaintenanceWindowResponse`
        def DescribeMaintenanceWindow(request)
          body = send_request('DescribeMaintenanceWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaintenanceWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSaleInfo）提供查询可用售卖地域功能

        # @param request: Request instance for DescribeSaleInfo.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeSaleInfoRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeSaleInfoResponse`
        def DescribeSaleInfo(request)
          body = send_request('DescribeSaleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSaleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口提供查询慢日志功能

        # @param request: Request instance for DescribeSlowLogs.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeSlowLogsRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeSlowLogsResponse`
        def DescribeSlowLogs(request)
          body = send_request('DescribeSlowLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSpecs）提供查询售卖规格功能

        # @param request: Request instance for DescribeSpecs.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeSpecsRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeSpecsResponse`
        def DescribeSpecs(request)
          body = send_request('DescribeSpecs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpecsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUserPrivileges）提供查询用户的权限功能

        # @param request: Request instance for DescribeUserPrivileges.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeUserPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeUserPrivilegesResponse`
        def DescribeUserPrivileges(request)
          body = send_request('DescribeUserPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUsers）提供查询用户列表功能

        # @param request: Request instance for DescribeUsers.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeUsersRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeUsersResponse`
        def DescribeUsers(request)
          body = send_request('DescribeUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DestroyInstances）提供批量销毁实例功能

        # @param request: Request instance for DestroyInstances.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DestroyInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DestroyInstancesResponse`
        def DestroyInstances(request)
          body = send_request('DestroyInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ExpandInstance）提供横向扩容实例功能

        # @param request: Request instance for ExpandInstance.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ExpandInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ExpandInstanceResponse`
        def ExpandInstance(request)
          body = send_request('ExpandInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExpandInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（IsolateDBInstance）提供批量隔离实例功能

        # @param request: Request instance for IsolateDBInstance.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::IsolateDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::IsolateDBInstanceResponse`
        def IsolateDBInstance(request)
          body = send_request('IsolateDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyAutoRenewFlag）用于修改自动续费标志

        # @param request: Request instance for ModifyAutoRenewFlag.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyAutoRenewFlagResponse`
        def ModifyAutoRenewFlag(request)
          body = send_request('ModifyAutoRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceSecurityGroups）用于修改云数据库安全组

        # @param request: Request instance for ModifyDBInstanceSecurityGroups.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBInstanceSecurityGroupsResponse`
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

        # 本接口(ModifyDBInstanceVPort)修改实例VPC端口

        # @param request: Request instance for ModifyDBInstanceVPort.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBInstanceVPortRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBInstanceVPortResponse`
        def ModifyDBInstanceVPort(request)
          body = send_request('ModifyDBInstanceVPort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceVPortResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBParameters）用于修改实例参数。

        # @param request: Request instance for ModifyDBParameters.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBParametersRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBParametersResponse`
        def ModifyDBParameters(request)
          body = send_request('ModifyDBParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例备份策略 ModifyDBSBackupPolicy

        # @param request: Request instance for ModifyDBSBackupPolicy.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBSBackupPolicyRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBSBackupPolicyResponse`
        def ModifyDBSBackupPolicy(request)
          body = send_request('ModifyDBSBackupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBSBackupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例备份备注 ModifyDBSBackupSetComment

        # @param request: Request instance for ModifyDBSBackupSetComment.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBSBackupSetCommentRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyDBSBackupSetCommentResponse`
        def ModifyDBSBackupSetComment(request)
          body = send_request('ModifyDBSBackupSetComment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBSBackupSetCommentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceName）提供修改实例名称功能

        # @param request: Request instance for ModifyInstanceName.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyInstanceNameResponse`
        def ModifyInstanceName(request)
          body = send_request('ModifyInstanceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceNetwork）用于修改实例所属网络

        # @param request: Request instance for ModifyInstanceNetwork.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyInstanceNetworkRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyInstanceNetworkResponse`
        def ModifyInstanceNetwork(request)
          body = send_request('ModifyInstanceNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceSSLStatus）提供开关实例SSL的功能

        # @param request: Request instance for ModifyInstanceSSLStatus.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyInstanceSSLStatusRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyInstanceSSLStatusResponse`
        def ModifyInstanceSSLStatus(request)
          body = send_request('ModifyInstanceSSLStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceSSLStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增/修改实例维护时间窗口配置

        # @param request: Request instance for ModifyMaintenanceWindow.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyMaintenanceWindowRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyMaintenanceWindowResponse`
        def ModifyMaintenanceWindow(request)
          body = send_request('ModifyMaintenanceWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMaintenanceWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyPrivileges)修改用户权限

        # @param request: Request instance for ModifyUserPrivileges.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyUserPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyUserPrivilegesResponse`
        def ModifyUserPrivileges(request)
          body = send_request('ModifyUserPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ResetUsersPassword）用于批量重置用户密码

        # @param request: Request instance for ResetUsersPassword.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ResetUsersPasswordRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ResetUsersPasswordResponse`
        def ResetUsersPassword(request)
          body = send_request('ResetUsersPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetUsersPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RestartDBInstances）用于重启数据库实例

        # @param request: Request instance for RestartDBInstances.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::RestartDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::RestartDBInstancesResponse`
        def RestartDBInstances(request)
          body = send_request('RestartDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeInstance）提供纵向扩容实例功能

        # @param request: Request instance for UpgradeInstance.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::UpgradeInstanceRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::UpgradeInstanceResponse`
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