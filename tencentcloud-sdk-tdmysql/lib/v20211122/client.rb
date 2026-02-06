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

        # 创建实例备份集

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

        # 删除实例备份集

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

        # 已无地方调用

        # 本接口（DescribeBillingEnable）用于查询计费是否开启

        # @param request: Request instance for DescribeBillingEnable.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeBillingEnableRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeBillingEnableResponse`
        def DescribeBillingEnable(request)
          body = send_request('DescribeBillingEnable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingEnableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 可恢复时间查询

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

        # 查询实例克隆列表

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

        # 冗余接口，无人调用

        # 本接口（DescribeDatabaseTable）用于查询云数据库实例的表信息。

        # @param request: Request instance for DescribeDatabaseTable.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::DescribeDatabaseTableRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::DescribeDatabaseTableResponse`
        def DescribeDatabaseTable(request)
          body = send_request('DescribeDatabaseTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 接口功能已被 ModifyInstanceCdc 完全覆盖

        # 修改binlog状态

        # @param request: Request instance for ModifyBinlogStatus.
        # @type request: :class:`Tencentcloud::tdmysql::V20211122::ModifyBinlogStatusRequest`
        # @rtype: :class:`Tencentcloud::tdmysql::V20211122::ModifyBinlogStatusResponse`
        def ModifyBinlogStatus(request)
          body = send_request('ModifyBinlogStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBinlogStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改实例备份策略

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

        # 修改备份集备注

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


      end
    end
  end
end