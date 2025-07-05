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
  module Dcdb
    module V20180411
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-11'
            api_endpoint = 'dcdb.tencentcloudapi.com'
            sdk_version = 'DCDB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 解隔离TDSQL按量计费实例

        # @param request: Request instance for ActiveHourDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ActiveHourDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ActiveHourDCDBInstanceResponse`
        def ActiveHourDCDBInstance(request)
          body = send_request('ActiveHourDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActiveHourDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (AssociateSecurityGroups) 用于安全组批量绑定云资源。

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::AssociateSecurityGroupsResponse`
        def AssociateSecurityGroups(request)
          body = send_request('AssociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CancelDcnJob）用于取消DCN同步

        # @param request: Request instance for CancelDcnJob.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CancelDcnJobRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CancelDcnJobResponse`
        def CancelDcnJob(request)
          body = send_request('CancelDcnJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelDcnJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消 Online DDL 任务

        # @param request: Request instance for CancelOnlineDDLJob.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CancelOnlineDDLJobRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CancelOnlineDDLJobResponse`
        def CancelOnlineDDLJob(request)
          body = send_request('CancelOnlineDDLJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelOnlineDDLJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CloneAccount）用于克隆实例账户。

        # @param request: Request instance for CloneAccount.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CloneAccountRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CloneAccountResponse`
        def CloneAccount(request)
          body = send_request('CloneAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloneAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CloseDBExtranetAccess)用于关闭云数据库实例的外网访问。关闭外网访问后，外网地址将不可访问，查询实例列表接口将不返回对应实例的外网域名和端口信息。

        # @param request: Request instance for CloseDBExtranetAccess.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CloseDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CloseDBExtranetAccessResponse`
        def CloseDBExtranetAccess(request)
          body = send_request('CloseDBExtranetAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseDBExtranetAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CopyAccountPrivileges）用于复制云数据库账号的权限。
        # 注意：相同用户名，不同Host是不同的账号，Readonly属性相同的账号之间才能复制权限。

        # @param request: Request instance for CopyAccountPrivileges.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CopyAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CopyAccountPrivilegesResponse`
        def CopyAccountPrivileges(request)
          body = send_request('CopyAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateAccount）用于创建云数据库账号。一个实例可以创建多个不同的账号，相同的用户名+不同的host是不同的账号。

        # @param request: Request instance for CreateAccount.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CreateAccountRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CreateAccountResponse`
        def CreateAccount(request)
          body = send_request('CreateAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDCDBInstance）用于创建包年包月的TDSQL实例，可通过传入实例规格、数据库版本号、购买时长等信息创建云数据库实例。

        # @param request: Request instance for CreateDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CreateDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CreateDCDBInstanceResponse`
        def CreateDCDBInstance(request)
          body = send_request('CreateDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建TDSQL独享集群实例

        # @param request: Request instance for CreateDedicatedClusterDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CreateDedicatedClusterDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CreateDedicatedClusterDCDBInstanceResponse`
        def CreateDedicatedClusterDCDBInstance(request)
          body = send_request('CreateDedicatedClusterDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDedicatedClusterDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建TDSQL按量计费实例

        # @param request: Request instance for CreateHourDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CreateHourDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CreateHourDCDBInstanceResponse`
        def CreateHourDCDBInstance(request)
          body = send_request('CreateHourDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHourDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建在线DDL任务

        # @param request: Request instance for CreateOnlineDDLJob.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CreateOnlineDDLJobRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CreateOnlineDDLJobResponse`
        def CreateOnlineDDLJob(request)
          body = send_request('CreateOnlineDDLJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOnlineDDLJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回档TDSQL实例

        # @param request: Request instance for CreateTmpDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CreateTmpDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CreateTmpDCDBInstanceResponse`
        def CreateTmpDCDBInstance(request)
          body = send_request('CreateTmpDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTmpDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteAccount）用于删除云数据库账号。用户名+host唯一确定一个账号。

        # @param request: Request instance for DeleteAccount.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DeleteAccountRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DeleteAccountResponse`
        def DeleteAccount(request)
          body = send_request('DeleteAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAccountPrivileges）用于查询云数据库账号权限。
        # 注意：注意：相同用户名，不同Host是不同的账号。

        # @param request: Request instance for DescribeAccountPrivileges.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeAccountPrivilegesResponse`
        def DescribeAccountPrivileges(request)
          body = send_request('DescribeAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAccounts）用于查询指定云数据库实例的账号列表。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeAccountsResponse`
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

        # 本接口(DescribeBackupConfigs)用于查询数据库备份配置信息。

        # @param request: Request instance for DescribeBackupConfigs.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeBackupConfigsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeBackupConfigsResponse`
        def DescribeBackupConfigs(request)
          body = send_request('DescribeBackupConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeBackupFiles)用于查看备份文件列表。

        # @param request: Request instance for DescribeBackupFiles.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeBackupFilesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeBackupFilesResponse`
        def DescribeBackupFiles(request)
          body = send_request('DescribeBackupFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBEncryptAttributes)用于查询实例数据加密状态。

        # @param request: Request instance for DescribeDBEncryptAttributes.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBEncryptAttributesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBEncryptAttributesResponse`
        def DescribeDBEncryptAttributes(request)
          body = send_request('DescribeDBEncryptAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBEncryptAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBLogFiles)用于获取数据库的各种日志列表，包括冷备、binlog、errlog和slowlog。

        # @param request: Request instance for DescribeDBLogFiles.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBLogFilesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBLogFilesResponse`
        def DescribeDBLogFiles(request)
          body = send_request('DescribeDBLogFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBLogFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBParameters)用于获取数据库的当前参数设置。

        # @param request: Request instance for DescribeDBParameters.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBParametersRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBParametersResponse`
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

        # 本接口（DescribeDBSecurityGroups）用于查询实例安全组信息

        # @param request: Request instance for DescribeDBSecurityGroups.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSecurityGroupsResponse`
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

        # 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。

        # @param request: Request instance for DescribeDBSlowLogs.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSlowLogsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSlowLogsResponse`
        def DescribeDBSlowLogs(request)
          body = send_request('DescribeDBSlowLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSlowLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBSyncMode）用于查询云数据库实例的同步模式。

        # @param request: Request instance for DescribeDBSyncMode.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSyncModeRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSyncModeResponse`
        def DescribeDBSyncMode(request)
          body = send_request('DescribeDBSyncMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSyncModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBTmpInstances）用于获取实例回档生成的临时实例

        # @param request: Request instance for DescribeDBTmpInstances.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBTmpInstancesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBTmpInstancesResponse`
        def DescribeDBTmpInstances(request)
          body = send_request('DescribeDBTmpInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBTmpInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例回档时可选的时间范围

        # @param request: Request instance for DescribeDCDBBinlogTime.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBBinlogTimeRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBBinlogTimeResponse`
        def DescribeDCDBBinlogTime(request)
          body = send_request('DescribeDCDBBinlogTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBBinlogTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBInstanceDetail）用于获取TDSQL实例详情

        # @param request: Request instance for DescribeDCDBInstanceDetail.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstanceDetailResponse`
        def DescribeDCDBInstanceDetail(request)
          body = send_request('DescribeDCDBInstanceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBInstanceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息

        # @param request: Request instance for DescribeDCDBInstanceNodeInfo.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstanceNodeInfoRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstanceNodeInfoResponse`
        def DescribeDCDBInstanceNodeInfo(request)
          body = send_request('DescribeDCDBInstanceNodeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBInstanceNodeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
        # 如果不指定任何筛选条件，则默认返回10条实例记录，单次请求最多支持返回100条实例记录。

        # @param request: Request instance for DescribeDCDBInstances.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstancesResponse`
        def DescribeDCDBInstances(request)
          body = send_request('DescribeDCDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBPrice）用于在购买实例前，查询实例的价格。

        # @param request: Request instance for DescribeDCDBPrice.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBPriceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBPriceResponse`
        def DescribeDCDBPrice(request)
          body = send_request('DescribeDCDBPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBPriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBRenewalPrice）用于在续费分布式数据库实例时，查询续费的价格。

        # @param request: Request instance for DescribeDCDBRenewalPrice.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBRenewalPriceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBRenewalPriceResponse`
        def DescribeDCDBRenewalPrice(request)
          body = send_request('DescribeDCDBRenewalPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBRenewalPriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDCDBSaleInfo)用于查询分布式数据库可售卖的地域和可用区信息。

        # @param request: Request instance for DescribeDCDBSaleInfo.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBSaleInfoRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBSaleInfoResponse`
        def DescribeDCDBSaleInfo(request)
          body = send_request('DescribeDCDBSaleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBSaleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。

        # @param request: Request instance for DescribeDCDBShards.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBShardsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBShardsResponse`
        def DescribeDCDBShards(request)
          body = send_request('DescribeDCDBShards', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBShardsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBUpgradePrice）用于查询变配分布式数据库实例价格。

        # @param request: Request instance for DescribeDCDBUpgradePrice.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBUpgradePriceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBUpgradePriceResponse`
        def DescribeDCDBUpgradePrice(request)
          body = send_request('DescribeDCDBUpgradePrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBUpgradePriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabaseObjectsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabaseObjectsResponse`
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

        # 本接口（DescribeDatabaseTable）用于查询云数据库实例的表信息。

        # @param request: Request instance for DescribeDatabaseTable.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabaseTableRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabaseTableResponse`
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

        # 本接口（DescribeDatabases）用于查询云数据库实例的数据库列表。

        # @param request: Request instance for DescribeDatabases.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabasesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabasesResponse`
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

        # 获取实例灾备详情

        # @param request: Request instance for DescribeDcnDetail.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDcnDetailRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDcnDetailResponse`
        def DescribeDcnDetail(request)
          body = send_request('DescribeDcnDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDcnDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeFileDownloadUrl)用于获取数据库指定备份或日志文件的下载连接。

        # @param request: Request instance for DescribeFileDownloadUrl.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeFileDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeFileDownloadUrlResponse`
        def DescribeFileDownloadUrl(request)
          body = send_request('DescribeFileDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeFlow）用于查询流程状态

        # @param request: Request instance for DescribeFlow.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeFlowRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeFlowResponse`
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

        # 本接口(DescribeLogFileRetentionPeriod)用于查看数据库备份日志的备份天数的设置情况。

        # @param request: Request instance for DescribeLogFileRetentionPeriod.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeLogFileRetentionPeriodRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeLogFileRetentionPeriodResponse`
        def DescribeLogFileRetentionPeriod(request)
          body = send_request('DescribeLogFileRetentionPeriod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogFileRetentionPeriodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Online DDL 任务详情

        # @param request: Request instance for DescribeOnlineDDLJob.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeOnlineDDLJobRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeOnlineDDLJobResponse`
        def DescribeOnlineDDLJob(request)
          body = send_request('DescribeOnlineDDLJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOnlineDDLJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeOrders）用于查询分布式数据库订单信息。传入订单ID来查询订单关联的分布式数据库实例，和对应的任务流程ID。

        # @param request: Request instance for DescribeOrders.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeOrdersRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeOrdersResponse`
        def DescribeOrders(request)
          body = send_request('DescribeOrders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrdersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProjectSecurityGroups）用于查询项目安全组信息

        # @param request: Request instance for DescribeProjectSecurityGroups.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeProjectSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeProjectSecurityGroupsResponse`
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

        # 本接口（DescribeProjects）用于查询项目列表

        # @param request: Request instance for DescribeProjects.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeProjectsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeProjectsResponse`
        def DescribeProjects(request)
          body = send_request('DescribeProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可创建的分布式数据库可售卖的分片规格配置。

        # @param request: Request instance for DescribeShardSpec.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeShardSpecRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeShardSpecResponse`
        def DescribeShardSpec(request)
          body = send_request('DescribeShardSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShardSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUserTasks）用于拉取用户任务列表

        # @param request: Request instance for DescribeUserTasks.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeUserTasksRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeUserTasksResponse`
        def DescribeUserTasks(request)
          body = send_request('DescribeUserTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DestroyDCDBInstance)用于销毁已隔离的TDSQL包年包月实例。

        # @param request: Request instance for DestroyDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DestroyDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DestroyDCDBInstanceResponse`
        def DestroyDCDBInstance(request)
          body = send_request('DestroyDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DestroyHourDCDBInstance）用于TDSQL销毁按量计费实例。

        # @param request: Request instance for DestroyHourDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DestroyHourDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DestroyHourDCDBInstanceResponse`
        def DestroyHourDCDBInstance(request)
          body = send_request('DestroyHourDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyHourDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DisassociateSecurityGroups)用于安全组批量解绑实例。

        # @param request: Request instance for DisassociateSecurityGroups.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DisassociateSecurityGroupsResponse`
        def DisassociateSecurityGroups(request)
          body = send_request('DisassociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 相当于在所有分片的mysqld中执行flush logs，完成切分的binlog将展示在各个分片控制台binlog列表里。

        # @param request: Request instance for FlushBinlog.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::FlushBinlogRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::FlushBinlogResponse`
        def FlushBinlog(request)
          body = send_request('FlushBinlog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FlushBinlogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（GrantAccountPrivileges）用于给云数据库账号赋权。
        # 注意：相同用户名，不同Host是不同的账号。

        # @param request: Request instance for GrantAccountPrivileges.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::GrantAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::GrantAccountPrivilegesResponse`
        def GrantAccountPrivileges(request)
          body = send_request('GrantAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GrantAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(InitDCDBInstances)用于初始化云数据库实例，包括设置默认字符集、表名大小写敏感等。

        # @param request: Request instance for InitDCDBInstances.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::InitDCDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::InitDCDBInstancesResponse`
        def InitDCDBInstances(request)
          body = send_request('InitDCDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InitDCDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(IsolateDCDBInstance)用于隔离分布式数据库TDSQL实例（包年包月），隔离后不能通过IP和端口访问数据库。隔离的实例可在回收站中进行开机。若为欠费隔离，请尽快进行充值。

        # @param request: Request instance for IsolateDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::IsolateDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::IsolateDCDBInstanceResponse`
        def IsolateDCDBInstance(request)
          body = send_request('IsolateDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（IsolateDedicatedDBInstance）用于隔离独享云数据库实例。

        # @param request: Request instance for IsolateDedicatedDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::IsolateDedicatedDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::IsolateDedicatedDBInstanceResponse`
        def IsolateDedicatedDBInstance(request)
          body = send_request('IsolateDedicatedDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateDedicatedDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 隔离TDSQL按量计费实例

        # @param request: Request instance for IsolateHourDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::IsolateHourDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::IsolateHourDCDBInstanceResponse`
        def IsolateHourDCDBInstance(request)
          body = send_request('IsolateHourDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateHourDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（KillSession）用于杀死指定会话。

        # @param request: Request instance for KillSession.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::KillSessionRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::KillSessionResponse`
        def KillSession(request)
          body = send_request('KillSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改账号的一些配置，比如 max_user_connections

        # @param request: Request instance for ModifyAccountConfig.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyAccountConfigRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyAccountConfigResponse`
        def ModifyAccountConfig(request)
          body = send_request('ModifyAccountConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyAccountDescription）用于修改云数据库账号备注。
        # 注意：相同用户名，不同Host是不同的账号。

        # @param request: Request instance for ModifyAccountDescription.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyAccountDescriptionRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyAccountDescriptionResponse`
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

        # 本接口(ModifyAccountPrivileges)用于修改云数据库的账户的权限信息。

        # **注意**
        # - 系统保留库："mysql"，只开放["SELECT"]权限
        # - 只读账号授予读写权限会报错
        # - 不传权限参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组

        # @param request: Request instance for ModifyAccountPrivileges.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyAccountPrivilegesResponse`
        def ModifyAccountPrivileges(request)
          body = send_request('ModifyAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyBackupConfigs)用于修改数据库备份配置信息。

        # 1. 修改数据库超期备份配置，目前按年、按月、按日只支持一种，存在互斥关系，如当前策略按年备份，如果传入按月备份策略将会覆盖当前的按年备份策略，务必注意。

        # @param request: Request instance for ModifyBackupConfigs.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyBackupConfigsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyBackupConfigsResponse`
        def ModifyBackupConfigs(request)
          body = send_request('ModifyBackupConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDBEncryptAttributes)用于修改实例数据加密。

        # @param request: Request instance for ModifyDBEncryptAttributes.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBEncryptAttributesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBEncryptAttributesResponse`
        def ModifyDBEncryptAttributes(request)
          body = send_request('ModifyDBEncryptAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBEncryptAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceName）用于修改实例名字

        # @param request: Request instance for ModifyDBInstanceName.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstanceNameResponse`
        def ModifyDBInstanceName(request)
          body = send_request('ModifyDBInstanceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstanceSecurityGroupsResponse`
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

        # 本接口（ModifyDBInstancesProject）用于修改云数据库实例所属项目。

        # @param request: Request instance for ModifyDBInstancesProject.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstancesProjectRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstancesProjectResponse`
        def ModifyDBInstancesProject(request)
          body = send_request('ModifyDBInstancesProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstancesProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDBParameters)用于修改数据库参数。

        # @param request: Request instance for ModifyDBParameters.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBParametersRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBParametersResponse`
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

        # 本接口（ModifyDBSyncMode）用于修改云数据库实例的同步模式。

        # @param request: Request instance for ModifyDBSyncMode.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBSyncModeRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBSyncModeResponse`
        def ModifyDBSyncMode(request)
          body = send_request('ModifyDBSyncMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBSyncModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceNetwork）用于修改实例所属网络。

        # @param request: Request instance for ModifyInstanceNetwork.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyInstanceNetworkRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyInstanceNetworkResponse`
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

        # 本接口（ModifyInstanceVip）用于修改实例Vip

        # @param request: Request instance for ModifyInstanceVip.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyInstanceVipRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyInstanceVipResponse`
        def ModifyInstanceVip(request)
          body = send_request('ModifyInstanceVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceVipResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceVport）用于修改实例VPORT

        # @param request: Request instance for ModifyInstanceVport.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyInstanceVportRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyInstanceVportResponse`
        def ModifyInstanceVport(request)
          body = send_request('ModifyInstanceVport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceVportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyRealServerAccessStrategy)用于修改云数据库的VPCGW到RS的访问策略。

        # **注意**
        # - 修改策略后只对新建立的连接生效，老连接不受影响
        # - 就近访问只针对实例是跨可用区部署有用，单可用区部署实例就近与否并无作用
        # - DB每个Node对应一个proxy，如果开启就近访问，将会把连接集中到对应可用区的proxy上，可能造成热点问题，这种情况下如果是线上业务，请务必根据自己的业务请求量测试符合预期后再进行就近策略变更

        # @param request: Request instance for ModifyRealServerAccessStrategy.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyRealServerAccessStrategyRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyRealServerAccessStrategyResponse`
        def ModifyRealServerAccessStrategy(request)
          body = send_request('ModifyRealServerAccessStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRealServerAccessStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（OpenDBExtranetAccess）用于开通云数据库实例的外网访问。开通外网访问后，您可通过外网域名和端口访问实例，可使用查询实例列表接口获取外网域名和端口信息。

        # @param request: Request instance for OpenDBExtranetAccess.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::OpenDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::OpenDBExtranetAccessResponse`
        def OpenDBExtranetAccess(request)
          body = send_request('OpenDBExtranetAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenDBExtranetAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RenewDCDBInstance）用于续费分布式数据库实例。

        # @param request: Request instance for RenewDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::RenewDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::RenewDCDBInstanceResponse`
        def RenewDCDBInstance(request)
          body = send_request('RenewDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ResetAccountPassword）用于重置云数据库账号的密码。
        # 注意：相同用户名，不同Host是不同的账号。

        # @param request: Request instance for ResetAccountPassword.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ResetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ResetAccountPasswordResponse`
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

        # 本接口(SwitchDBInstanceHA)用于实例主备切换。

        # @param request: Request instance for SwitchDBInstanceHA.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::SwitchDBInstanceHARequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::SwitchDBInstanceHAResponse`
        def SwitchDBInstanceHA(request)
          body = send_request('SwitchDBInstanceHA', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchDBInstanceHAResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（TerminateDedicatedDBInstance）用于销毁已隔离的独享分布式数据库实例。

        # @param request: Request instance for TerminateDedicatedDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::TerminateDedicatedDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::TerminateDedicatedDBInstanceResponse`
        def TerminateDedicatedDBInstance(request)
          body = send_request('TerminateDedicatedDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateDedicatedDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeDCDBInstance）用于升级分布式数据库实例。本接口完成下单和支付两个动作，如果发生支付失败的错误，调用用户账户相关接口中的支付订单接口（PayDeals）重新支付即可。

        # @param request: Request instance for UpgradeDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::UpgradeDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::UpgradeDCDBInstanceResponse`
        def UpgradeDCDBInstance(request)
          body = send_request('UpgradeDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeDedicatedDCDBInstance）用于升级TDSQL独享集群实例

        # @param request: Request instance for UpgradeDedicatedDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::UpgradeDedicatedDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::UpgradeDedicatedDCDBInstanceResponse`
        def UpgradeDedicatedDCDBInstance(request)
          body = send_request('UpgradeDedicatedDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDedicatedDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeHourDCDBInstance）用于升级分布式数据库TDSQL按量计费实例。

        # @param request: Request instance for UpgradeHourDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::UpgradeHourDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::UpgradeHourDCDBInstanceResponse`
        def UpgradeHourDCDBInstance(request)
          body = send_request('UpgradeHourDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeHourDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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