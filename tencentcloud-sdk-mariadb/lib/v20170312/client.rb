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
  module Mariadb
    module V20170312
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2017-03-12'
            api_endpoint = 'mariadb.tencentcloudapi.com'
            sdk_version = 'MARIADB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 解隔离后付费实例

        # @param request: Request instance for ActivateHourDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ActivateHourDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ActivateHourDBInstanceResponse`
        def ActivateHourDBInstance(request)
          body = send_request('ActivateHourDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActivateHourDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::AssociateSecurityGroupsResponse`
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

        # 取消DCN同步

        # @param request: Request instance for CancelDcnJob.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::CancelDcnJobRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::CancelDcnJobResponse`
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

        # 本接口（CloneAccount）用于克隆实例账户。

        # @param request: Request instance for CloneAccount.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::CloneAccountRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::CloneAccountResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::CloseDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::CloseDBExtranetAccessResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::CopyAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::CopyAccountPrivilegesResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::CreateAccountRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::CreateAccountResponse`
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

        # 本接口（CreateDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长和数量等信息创建云数据库实例。

        # @param request: Request instance for CreateDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::CreateDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::CreateDBInstanceResponse`
        def CreateDBInstance(request)
          body = send_request('CreateDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建独享集群Mariadb实例

        # @param request: Request instance for CreateDedicatedClusterDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::CreateDedicatedClusterDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::CreateDedicatedClusterDBInstanceResponse`
        def CreateDedicatedClusterDBInstance(request)
          body = send_request('CreateDedicatedClusterDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDedicatedClusterDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建后付费实例

        # @param request: Request instance for CreateHourDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::CreateHourDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::CreateHourDBInstanceResponse`
        def CreateHourDBInstance(request)
          body = send_request('CreateHourDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHourDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateTmpInstances）用于创建临时实例。

        # @param request: Request instance for CreateTmpInstances.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::CreateTmpInstancesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::CreateTmpInstancesResponse`
        def CreateTmpInstances(request)
          body = send_request('CreateTmpInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTmpInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DeleteAccountRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DeleteAccountResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeAccountPrivilegesResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeAccountsResponse`
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

        # 本接口（DescribeBackupTime）用于获取云数据库的备份时间。后台系统将根据此配置定期进行实例备份。

        # @param request: Request instance for DescribeBackupTime.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeBackupTimeRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeBackupTimeResponse`
        def DescribeBackupTime(request)
          body = send_request('DescribeBackupTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDBEncryptAttributesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDBEncryptAttributesResponse`
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

        # 本接口(DescribeDBInstanceSpecs)用于查询可创建的云数据库可售卖的规格配置。

        # @param request: Request instance for DescribeDBInstanceSpecs.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDBInstanceSpecsRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDBInstanceSpecsResponse`
        def DescribeDBInstanceSpecs(request)
          body = send_request('DescribeDBInstanceSpecs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceSpecsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBInstances）用于查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
        # 如果不指定任何筛选条件，则默认返回20条实例记录，单次请求最多支持返回100条实例记录。

        # @param request: Request instance for DescribeDBInstances.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDBInstancesResponse`
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

        # 本接口(DescribeDBLogFiles)用于获取数据库的各种日志列表，包括冷备、binlog、errlog和slowlog。

        # @param request: Request instance for DescribeDBLogFiles.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDBLogFilesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDBLogFilesResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDBParametersRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDBParametersResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDBSecurityGroupsResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDBSlowLogsRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDBSlowLogsResponse`
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

        # 本接口（DescribeDatabaseObjects）用于查询云数据库实例的数据库中的对象列表，包含表、存储过程、视图和函数。

        # @param request: Request instance for DescribeDatabaseObjects.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDatabaseObjectsRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDatabaseObjectsResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDatabaseTableRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDatabaseTableResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDatabasesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDatabasesResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeDcnDetailRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeDcnDetailResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeFileDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeFileDownloadUrlResponse`
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

        # 本接口（DescribeFlow）用于查询流程状态。

        # @param request: Request instance for DescribeFlow.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeFlowRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeFlowResponse`
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

        # 本接口（DescribeInstanceNodeInfo）用于获取数据库实例主备节点信息

        # @param request: Request instance for DescribeInstanceNodeInfo.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeInstanceNodeInfoRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeInstanceNodeInfoResponse`
        def DescribeInstanceNodeInfo(request)
          body = send_request('DescribeInstanceNodeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceNodeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeLogFileRetentionPeriodRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeLogFileRetentionPeriodResponse`
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

        # 本接口（DescribeOrders）用于查询云数据库订单信息。传入订单ID来查询订单关联的云数据库实例，和对应的任务流程ID。

        # @param request: Request instance for DescribeOrders.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeOrdersRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeOrdersResponse`
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

        # 本接口（DescribePrice）用于在购买实例前，查询实例的价格。

        # @param request: Request instance for DescribePrice.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribePriceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribePriceResponse`
        def DescribePrice(request)
          body = send_request('DescribePrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeProjectSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeProjectSecurityGroupsResponse`
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

        # 本接口（DescribeRenewalPrice）用于在续费云数据库实例时，查询续费的价格。

        # @param request: Request instance for DescribeRenewalPrice.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeRenewalPriceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeRenewalPriceResponse`
        def DescribeRenewalPrice(request)
          body = send_request('DescribeRenewalPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRenewalPriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeSaleInfo)用于查询云数据库可售卖的地域和可用区信息。

        # @param request: Request instance for DescribeSaleInfo.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeSaleInfoRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeSaleInfoResponse`
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

        # 本接口（DescribeUpgradePrice）用于在扩容云数据库实例时，查询变配的价格。

        # @param request: Request instance for DescribeUpgradePrice.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DescribeUpgradePriceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DescribeUpgradePriceResponse`
        def DescribeUpgradePrice(request)
          body = send_request('DescribeUpgradePrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUpgradePriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DestroyDBInstance)用于销毁已隔离的包年包月实例。

        # @param request: Request instance for DestroyDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DestroyDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DestroyDBInstanceResponse`
        def DestroyDBInstance(request)
          body = send_request('DestroyDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DestroyHourDBInstance）用于销毁按量计费实例。

        # @param request: Request instance for DestroyHourDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DestroyHourDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DestroyHourDBInstanceResponse`
        def DestroyHourDBInstance(request)
          body = send_request('DestroyHourDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyHourDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::DisassociateSecurityGroupsResponse`
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

        # 相当于在mysqld中执行flush logs，完成切分的binlog将展示在实例控制台binlog列表里。

        # @param request: Request instance for FlushBinlog.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::FlushBinlogRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::FlushBinlogResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::GrantAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::GrantAccountPrivilegesResponse`
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

        # 本接口(InitDBInstances)用于初始化云数据库实例，包括设置默认字符集、表名大小写敏感等。

        # @param request: Request instance for InitDBInstances.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::InitDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::InitDBInstancesResponse`
        def InitDBInstances(request)
          body = send_request('InitDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InitDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(IsolateDBInstance)用于隔离云数据库实例（包年包月），隔离后不能通过IP和端口访问数据库。隔离的实例可在回收站中进行开机。若为欠费隔离，请尽快进行充值。

        # @param request: Request instance for IsolateDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::IsolateDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::IsolateDBInstanceResponse`
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

        # 本接口（IsolateDedicatedDBInstance）用于隔离独享云数据库实例。

        # @param request: Request instance for IsolateDedicatedDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::IsolateDedicatedDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::IsolateDedicatedDBInstanceResponse`
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

        # 隔离后付费实例

        # @param request: Request instance for IsolateHourDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::IsolateHourDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::IsolateHourDBInstanceResponse`
        def IsolateHourDBInstance(request)
          body = send_request('IsolateHourDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateHourDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::KillSessionRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::KillSessionResponse`
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

        # 本接口（ModifyAccountDescription）用于修改云数据库账号备注。
        # 注意：相同用户名，不同Host是不同的账号。

        # @param request: Request instance for ModifyAccountDescription.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyAccountDescriptionRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyAccountDescriptionResponse`
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
        # - 不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组

        # @param request: Request instance for ModifyAccountPrivileges.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyAccountPrivilegesResponse`
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

        # 本接口（ModifyBackupTime）用于设置云数据库实例的备份时间。后台系统将根据此配置定期进行实例备份。

        # @param request: Request instance for ModifyBackupTime.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyBackupTimeRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyBackupTimeResponse`
        def ModifyBackupTime(request)
          body = send_request('ModifyBackupTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyDBEncryptAttributesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyDBEncryptAttributesResponse`
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

        # 本接口（ModifyDBInstanceName）用于修改云数据库实例的名称。

        # @param request: Request instance for ModifyDBInstanceName.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyDBInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyDBInstanceNameResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyDBInstanceSecurityGroupsResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyDBInstancesProjectRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyDBInstancesProjectResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyDBParametersRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyDBParametersResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyDBSyncModeRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyDBSyncModeResponse`
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

        # 本接口（ModifyInstanceNetwork）用于修改实例所属网络

        # @param request: Request instance for ModifyInstanceNetwork.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyInstanceNetworkRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyInstanceNetworkResponse`
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

        # 本接口（ModifyInstanceVip）用于修改实例VIP

        # @param request: Request instance for ModifyInstanceVip.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyInstanceVipRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyInstanceVipResponse`
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyInstanceVportRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyInstanceVportResponse`
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

        # 本接口(ModifyLogFileRetentionPeriod)用于修改数据库备份日志保存天数。

        # @param request: Request instance for ModifyLogFileRetentionPeriod.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyLogFileRetentionPeriodRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyLogFileRetentionPeriodResponse`
        def ModifyLogFileRetentionPeriod(request)
          body = send_request('ModifyLogFileRetentionPeriod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLogFileRetentionPeriodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifyRealServerAccessStrategyRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifyRealServerAccessStrategyResponse`
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

        # 本接口 (ModifySyncTaskAttribute) 用于修改同步任务的属性（目前只支持修改任务名称）

        # @param request: Request instance for ModifySyncTaskAttribute.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ModifySyncTaskAttributeRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ModifySyncTaskAttributeResponse`
        def ModifySyncTaskAttribute(request)
          body = send_request('ModifySyncTaskAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySyncTaskAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::OpenDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::OpenDBExtranetAccessResponse`
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

        # 本接口（RenewDBInstance）用于续费云数据库实例。

        # @param request: Request instance for RenewDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::RenewDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::RenewDBInstanceResponse`
        def RenewDBInstance(request)
          body = send_request('RenewDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::mariadb::V20170312::ResetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::ResetAccountPasswordResponse`
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

        # 本接口（RestartDBInstances）用于重启数据库实例

        # @param request: Request instance for RestartDBInstances.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::RestartDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::RestartDBInstancesResponse`
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

        # 本接口（SwitchDBInstanceHA）用于发起实例主备切换。

        # @param request: Request instance for SwitchDBInstanceHA.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::SwitchDBInstanceHARequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::SwitchDBInstanceHAResponse`
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

        # 本接口（TerminateDedicatedDBInstance）用于销毁已隔离的独享云数据库实例。

        # @param request: Request instance for TerminateDedicatedDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::TerminateDedicatedDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::TerminateDedicatedDBInstanceResponse`
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

        # 本接口(UpgradeDBInstance)用于扩容云数据库实例。本接口完成下单和支付两个动作，如果发生支付失败的错误，调用用户账户相关接口中的支付订单接口（PayDeals）重新支付即可。

        # @param request: Request instance for UpgradeDBInstance.
        # @type request: :class:`Tencentcloud::mariadb::V20170312::UpgradeDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mariadb::V20170312::UpgradeDBInstanceResponse`
        def UpgradeDBInstance(request)
          body = send_request('UpgradeDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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