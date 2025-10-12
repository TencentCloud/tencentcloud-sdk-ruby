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
  module Postgres
    module V20170312
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2017-03-12'
            api_endpoint = 'postgres.tencentcloudapi.com'
            sdk_version = 'POSTGRES_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（AddDBInstanceToReadOnlyGroup）用于添加只读实例到只读组

        # @param request: Request instance for AddDBInstanceToReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::AddDBInstanceToReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::AddDBInstanceToReadOnlyGroupResponse`
        def AddDBInstanceToReadOnlyGroup(request)
          body = send_request('AddDBInstanceToReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDBInstanceToReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于克隆实例，支持指定备份集、指定时间点进行克隆。

        # @param request: Request instance for CloneDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CloneDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CloneDBInstanceResponse`
        def CloneDBInstance(request)
          body = send_request('CloneDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloneDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CloseDBExtranetAccess）用于关闭实例公网地址。

        # @param request: Request instance for CloseDBExtranetAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CloseDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CloseDBExtranetAccessResponse`
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

        # 此接口用于创建数据账号，返回的Oid为账号唯一标识。与数据库系统表pg_roles中记录的oid一致。

        # @param request: Request instance for CreateAccount.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateAccountRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateAccountResponse`
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

        # 此接口用于创建备份策略。

        # @param request: Request instance for CreateBackupPlan.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateBackupPlanResponse`
        def CreateBackupPlan(request)
          body = send_request('CreateBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateBaseBackup）用于创建实例的数据备份。

        # @param request: Request instance for CreateBaseBackup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateBaseBackupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateBaseBackupResponse`
        def CreateBaseBackup(request)
          body = send_request('CreateBaseBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBaseBackupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDBInstanceNetworkAccess）用于创建实例网络。单个实例允许创建的网络配置最多为2套，最少为1套。

        # @param request: Request instance for CreateDBInstanceNetworkAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateDBInstanceNetworkAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateDBInstanceNetworkAccessResponse`
        def CreateDBInstanceNetworkAccess(request)
          body = send_request('CreateDBInstanceNetworkAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBInstanceNetworkAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于创建数据库，需指定数据库名及所有者。

        # @param request: Request instance for CreateDatabase.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateDatabaseRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateDatabaseResponse`
        def CreateDatabase(request)
          body = send_request('CreateDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。
        # <li>实例创建成功后将自动开机启动，实例状态变为“运行中”。</li>
        # <li>预付费实例的购买会预先扣除本次实例购买所需金额，按小时后付费实例购买会预先冻结本次实例购买一小时内所需金额，在调用本接口前请确保账户余额充足。</li>

        # @param request: Request instance for CreateInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateInstancesResponse`
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

        # 本接口 (CreateParameterTemplate) 用于创建参数模板。

        # @param request: Request instance for CreateParameterTemplate.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateParameterTemplateRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateParameterTemplateResponse`
        def CreateParameterTemplate(request)
          body = send_request('CreateParameterTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateParameterTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateReadOnlyDBInstance)用于创建只读实例

        # @param request: Request instance for CreateReadOnlyDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyDBInstanceResponse`
        def CreateReadOnlyDBInstance(request)
          body = send_request('CreateReadOnlyDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReadOnlyDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateReadOnlyGroup）用于创建只读组

        # @param request: Request instance for CreateReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyGroupResponse`
        def CreateReadOnlyGroup(request)
          body = send_request('CreateReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateReadOnlyGroupNetworkAccess）用于创建RO组的网络。创建网络的数量最多为2个。

        # @param request: Request instance for CreateReadOnlyGroupNetworkAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyGroupNetworkAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyGroupNetworkAccessResponse`
        def CreateReadOnlyGroupNetworkAccess(request)
          body = send_request('CreateReadOnlyGroupNetworkAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReadOnlyGroupNetworkAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于删除数据库账号，需要同时输入Oid与UserName，避免误删。注：该接口可重入，如果账号已经不存在，调用此接口进行删除时不会报错。

        # @param request: Request instance for DeleteAccount.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteAccountRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteAccountResponse`
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

        # 删除备份策略

        # @param request: Request instance for DeleteBackupPlan.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteBackupPlanResponse`
        def DeleteBackupPlan(request)
          body = send_request('DeleteBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteBaseBackup）用于删除实例指定数据备份。

        # @param request: Request instance for DeleteBaseBackup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteBaseBackupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteBaseBackupResponse`
        def DeleteBaseBackup(request)
          body = send_request('DeleteBaseBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBaseBackupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可对实例进行网络的删除操作（实例内至少保留一个网络）。

        # @param request: Request instance for DeleteDBInstanceNetworkAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteDBInstanceNetworkAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteDBInstanceNetworkAccessResponse`
        def DeleteDBInstanceNetworkAccess(request)
          body = send_request('DeleteDBInstanceNetworkAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDBInstanceNetworkAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteLogBackup）用于删除实例指定日志备份。

        # @param request: Request instance for DeleteLogBackup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteLogBackupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteLogBackupResponse`
        def DeleteLogBackup(request)
          body = send_request('DeleteLogBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLogBackupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteParameterTemplate）主要用于删除某个参数模板。

        # @param request: Request instance for DeleteParameterTemplate.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteParameterTemplateRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteParameterTemplateResponse`
        def DeleteParameterTemplate(request)
          body = send_request('DeleteParameterTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteParameterTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteReadOnlyGroup)用于删除指定的只读组

        # @param request: Request instance for DeleteReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteReadOnlyGroupResponse`
        def DeleteReadOnlyGroup(request)
          body = send_request('DeleteReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可对RO组进行网络的删除操作（网络数量至少保留1个）。

        # @param request: Request instance for DeleteReadOnlyGroupNetworkAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteReadOnlyGroupNetworkAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteReadOnlyGroupNetworkAccessResponse`
        def DeleteReadOnlyGroupNetworkAccess(request)
          body = send_request('DeleteReadOnlyGroupNetworkAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReadOnlyGroupNetworkAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据库账号对某数据库对象拥有的权限列表。

        # @param request: Request instance for DescribeAccountPrivileges.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeAccountPrivilegesResponse`
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

        # 本接口（DescribeAccounts）用于查询实例的数据库账号列表。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeAccountsResponse`
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

        # 本接口（DescribeAvailableRecoveryTime）用于查询实例可恢复的时间范围。

        # @param request: Request instance for DescribeAvailableRecoveryTime.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeAvailableRecoveryTimeRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeAvailableRecoveryTimeResponse`
        def DescribeAvailableRecoveryTime(request)
          body = send_request('DescribeAvailableRecoveryTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableRecoveryTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBackupDownloadRestriction）用于查询备份文件下载限制。

        # @param request: Request instance for DescribeBackupDownloadRestriction.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeBackupDownloadRestrictionRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeBackupDownloadRestrictionResponse`
        def DescribeBackupDownloadRestriction(request)
          body = send_request('DescribeBackupDownloadRestriction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupDownloadRestrictionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeBackupDownloadURL) 用于查询指定备份集的下载地址，可包括全量备份集、增量日志备份集。

        # @param request: Request instance for DescribeBackupDownloadURL.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeBackupDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeBackupDownloadURLResponse`
        def DescribeBackupDownloadURL(request)
          body = send_request('DescribeBackupDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupDownloadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBackupOverview）用于查询用户的备份概览信息。返回用户当前备份个数、备份占用容量、免费容量、收费容量等信息（容量单位为字节）。

        # @param request: Request instance for DescribeBackupOverview.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeBackupOverviewRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeBackupOverviewResponse`
        def DescribeBackupOverview(request)
          body = send_request('DescribeBackupOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeBackupPlans) 用于实例所有的备份计划查询

        # @param request: Request instance for DescribeBackupPlans.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeBackupPlansRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeBackupPlansResponse`
        def DescribeBackupPlans(request)
          body = send_request('DescribeBackupPlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupPlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeBackupSummaries)用于查询实例备份的统计信息，返回以实例为维度的备份个数、占用容量等信息（容量单位为字节）。

        # @param request: Request instance for DescribeBackupSummaries.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeBackupSummariesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeBackupSummariesResponse`
        def DescribeBackupSummaries(request)
          body = send_request('DescribeBackupSummaries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupSummariesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBaseBackups）用于查询数据备份列表。

        # @param request: Request instance for DescribeBaseBackups.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeBaseBackupsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeBaseBackupsResponse`
        def DescribeBaseBackups(request)
          body = send_request('DescribeBaseBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaseBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeClasses）用于查询实例售卖规格。

        # @param request: Request instance for DescribeClasses.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeClassesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeClassesResponse`
        def DescribeClasses(request)
          body = send_request('DescribeClasses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClassesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCloneDBInstanceSpec）用于查询克隆实例可选择的最小规格，包括SpecCode和磁盘。

        # @param request: Request instance for DescribeCloneDBInstanceSpec.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeCloneDBInstanceSpecRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeCloneDBInstanceSpecResponse`
        def DescribeCloneDBInstanceSpec(request)
          body = send_request('DescribeCloneDBInstanceSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloneDBInstanceSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBBackups）用于查询实例备份列表。**本接口属于早期接口，已停止功能迭代，推荐使用接口**[DescribeBaseBackups](https://cloud.tencent.com/document/api/409/89022)**替代**。

        # @param request: Request instance for DescribeDBBackups.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBBackupsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBBackupsResponse`
        def DescribeDBBackups(request)
          body = send_request('DescribeDBBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBErrlogs）用于查询错误日志。

        # @param request: Request instance for DescribeDBErrlogs.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBErrlogsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBErrlogsResponse`
        def DescribeDBErrlogs(request)
          body = send_request('DescribeDBErrlogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBErrlogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeDBInstanceAttribute) 用于查询某个实例的详情信息。

        # @param request: Request instance for DescribeDBInstanceAttribute.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceAttributeRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceAttributeResponse`
        def DescribeDBInstanceAttribute(request)
          body = send_request('DescribeDBInstanceAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBInstanceHAConfig）用于查询实例HA配置信息。其中HA配置信息包括：
        # <li>允许备节点切换为主节点的条件配置</li>
        # <li>半同步实例使用同步复制或异步复制的条件配置</li>

        # @param request: Request instance for DescribeDBInstanceHAConfig.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceHAConfigRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceHAConfigResponse`
        def DescribeDBInstanceHAConfig(request)
          body = send_request('DescribeDBInstanceHAConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceHAConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBInstanceAttribute）用于查询实例的参数信息。

        # @param request: Request instance for DescribeDBInstanceParameters.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceParametersRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceParametersResponse`
        def DescribeDBInstanceParameters(request)
          body = send_request('DescribeDBInstanceParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询实例SSL状态

        # @param request: Request instance for DescribeDBInstanceSSLConfig.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceSSLConfigRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceSSLConfigResponse`
        def DescribeDBInstanceSSLConfig(request)
          body = send_request('DescribeDBInstanceSSLConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceSSLConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBInstanceSecurityGroups）用于查询实例安全组。

        # @param request: Request instance for DescribeDBInstanceSecurityGroups.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceSecurityGroupsResponse`
        def DescribeDBInstanceSecurityGroups(request)
          body = send_request('DescribeDBInstanceSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeDBInstances) 用于查询一个或多个实例的详细信息。

        # @param request: Request instance for DescribeDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstancesResponse`
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

        # 本接口（DescribeDBVersions）用于查询支持的数据库版本。

        # @param request: Request instance for DescribeDBVersions.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBVersionsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBVersionsResponse`
        def DescribeDBVersions(request)
          body = send_request('DescribeDBVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBXlogs）用于获取实例Xlog列表。 **本接口属于早期接口，已停止功能迭代，推荐使用接口**[DescribeLogBackups](https://cloud.tencent.com/document/api/409/89021)**替代**。

        # @param request: Request instance for DescribeDBXlogs.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBXlogsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBXlogsResponse`
        def DescribeDBXlogs(request)
          body = send_request('DescribeDBXlogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBXlogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询数据库对象列表。例如查询test数据库下的模式列表。

        # @param request: Request instance for DescribeDatabaseObjects.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDatabaseObjectsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDatabaseObjectsResponse`
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

        # 接口（DescribeDatabases）用来查询实例的数据库列表。

        # @param request: Request instance for DescribeDatabases.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDatabasesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDatabasesResponse`
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

        # 查询专属集群

        # @param request: Request instance for DescribeDedicatedClusters.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDedicatedClustersRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDedicatedClustersResponse`
        def DescribeDedicatedClusters(request)
          body = send_request('DescribeDedicatedClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDefaultParameters）主要用于查询某个数据库版本和引擎支持的所有参数。

        # @param request: Request instance for DescribeDefaultParameters.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDefaultParametersRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDefaultParametersResponse`
        def DescribeDefaultParameters(request)
          body = send_request('DescribeDefaultParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefaultParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 （DescribeEncryptionKeys） 用于查询实例的密钥信息列表。

        # @param request: Request instance for DescribeEncryptionKeys.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeEncryptionKeysRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeEncryptionKeysResponse`
        def DescribeEncryptionKeys(request)
          body = send_request('DescribeEncryptionKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEncryptionKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeLogBackups）用于查询日志备份列表。

        # @param request: Request instance for DescribeLogBackups.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeLogBackupsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeLogBackupsResponse`
        def DescribeLogBackups(request)
          body = send_request('DescribeLogBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeMaintainTimeWindow) 用于查询实例的维护时间窗口

        # @param request: Request instance for DescribeMaintainTimeWindow.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeMaintainTimeWindowRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeMaintainTimeWindowResponse`
        def DescribeMaintainTimeWindow(request)
          body = send_request('DescribeMaintainTimeWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaintainTimeWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeOrders）用于查询订单信息。

        # @param request: Request instance for DescribeOrders.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeOrdersRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeOrdersResponse`
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

        # 本接口（DescribeParameterTemplateAttributes）用于查询某个参数模板的具体内容，包括基本信息和参数信息。

        # @param request: Request instance for DescribeParameterTemplateAttributes.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeParameterTemplateAttributesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeParameterTemplateAttributesResponse`
        def DescribeParameterTemplateAttributes(request)
          body = send_request('DescribeParameterTemplateAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeParameterTemplateAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeParameterTemplates) 用于查询参数模板列表。

        # @param request: Request instance for DescribeParameterTemplates.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeParameterTemplatesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeParameterTemplatesResponse`
        def DescribeParameterTemplates(request)
          body = send_request('DescribeParameterTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeParameterTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeParamsEvent）用于查询参数修改事件。

        # @param request: Request instance for DescribeParamsEvent.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeParamsEventRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeParamsEventResponse`
        def DescribeParamsEvent(request)
          body = send_request('DescribeParamsEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeParamsEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProductConfig）用于查询售卖规格配置。**本接口属于早期接口，已停止功能迭代，推荐使用新接口**[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)**替代**。

        # @param request: Request instance for DescribeProductConfig.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeProductConfigRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeProductConfigResponse`
        def DescribeProductConfig(request)
          body = send_request('DescribeProductConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeReadOnlyGroups）用于查询只读组列表

        # @param request: Request instance for DescribeReadOnlyGroups.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeReadOnlyGroupsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeReadOnlyGroupsResponse`
        def DescribeReadOnlyGroups(request)
          body = send_request('DescribeReadOnlyGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReadOnlyGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeRegions) 用于查询售卖地域信息。

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeRegionsResponse`
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

        # 此接口（DescribeSlowQueryAnalysis）用于统计指定时间范围内的所有慢查询，根据SQL语句抽象参数后，进行聚合分析，并返回同类SQL列表。

        # @param request: Request instance for DescribeSlowQueryAnalysis.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeSlowQueryAnalysisRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeSlowQueryAnalysisResponse`
        def DescribeSlowQueryAnalysis(request)
          body = send_request('DescribeSlowQueryAnalysis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowQueryAnalysisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeSlowQueryList）用于查询指定时间范围内的所有慢查询。

        # @param request: Request instance for DescribeSlowQueryList.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeSlowQueryListRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeSlowQueryListResponse`
        def DescribeSlowQueryList(request)
          body = send_request('DescribeSlowQueryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowQueryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTasks）用于查询任务列表，展示异步任务的执行进度。
        # 注：本接口中展示的步骤为总结性步骤，可能伴随着版本迭代进行调整，不建议作为关键逻辑使用

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeTasksResponse`
        def DescribeTasks(request)
          body = send_request('DescribeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeZones) 用于查询支持的可用区信息。

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeZonesResponse`
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

        # 本接口 (DestroyDBInstance) 用于彻底销毁指定DBInstanceId对应的实例，销毁后实例数据将彻底删除，无法找回，调用前请仔细确认要操作的实例。只能销毁隔离中的实例。

        # @param request: Request instance for DestroyDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DestroyDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DestroyDBInstanceResponse`
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

        # 本接口（DisIsolateDBInstances）用于解隔离实例

        # @param request: Request instance for DisIsolateDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DisIsolateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DisIsolateDBInstancesResponse`
        def DisIsolateDBInstances(request)
          body = send_request('DisIsolateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisIsolateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceCreateDBInstances) 用于查询购买实例的价格信息。

        # @param request: Request instance for InquiryPriceCreateDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::InquiryPriceCreateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::InquiryPriceCreateDBInstancesResponse`
        def InquiryPriceCreateDBInstances(request)
          body = send_request('InquiryPriceCreateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceCreateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquiryPriceRenewDBInstance）用于查询续费实例的价格。

        # @param request: Request instance for InquiryPriceRenewDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::InquiryPriceRenewDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::InquiryPriceRenewDBInstanceResponse`
        def InquiryPriceRenewDBInstance(request)
          body = send_request('InquiryPriceRenewDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRenewDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。只支持按量计费实例。

        # @param request: Request instance for InquiryPriceUpgradeDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::InquiryPriceUpgradeDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::InquiryPriceUpgradeDBInstanceResponse`
        def InquiryPriceUpgradeDBInstance(request)
          body = send_request('InquiryPriceUpgradeDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceUpgradeDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（IsolateDBInstances）用于隔离实例。

        # @param request: Request instance for IsolateDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::IsolateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::IsolateDBInstancesResponse`
        def IsolateDBInstances(request)
          body = send_request('IsolateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于锁定数据库账号，锁定后账号当前连接会断开，并且无法建立新连接。

        # @param request: Request instance for LockAccount.
        # @type request: :class:`Tencentcloud::postgres::V20170312::LockAccountRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::LockAccountResponse`
        def LockAccount(request)
          body = send_request('LockAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LockAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改某账号对某数据库对象的权限、修改账号类型。

        # @param request: Request instance for ModifyAccountPrivileges.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyAccountPrivilegesResponse`
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

        # 本接口（ModifyAccountRemark）用于修改账号备注。

        # @param request: Request instance for ModifyAccountRemark.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyAccountRemarkRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyAccountRemarkResponse`
        def ModifyAccountRemark(request)
          body = send_request('ModifyAccountRemark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountRemarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyBackupDownloadRestriction）用于修改备份文件下载限制。

        # @param request: Request instance for ModifyBackupDownloadRestriction.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyBackupDownloadRestrictionRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyBackupDownloadRestrictionResponse`
        def ModifyBackupDownloadRestriction(request)
          body = send_request('ModifyBackupDownloadRestriction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupDownloadRestrictionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyBackupPlan) 用于实例备份计划的修改，默认是在每天的凌晨开始全量备份，备份保留时长是7天。可以根据此接口指定时间进行实例的备份。

        # @param request: Request instance for ModifyBackupPlan.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyBackupPlanResponse`
        def ModifyBackupPlan(request)
          body = send_request('ModifyBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyBaseBackupExpireTime）用于修改实例指定数据备份的过期时间。

        # @param request: Request instance for ModifyBaseBackupExpireTime.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyBaseBackupExpireTimeRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyBaseBackupExpireTimeResponse`
        def ModifyBaseBackupExpireTime(request)
          body = send_request('ModifyBaseBackupExpireTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaseBackupExpireTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 支持实例的计费类型转换（目前仅支持按量计费转包年包月）

        # @param request: Request instance for ModifyDBInstanceChargeType.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceChargeTypeRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceChargeTypeResponse`
        def ModifyDBInstanceChargeType(request)
          body = send_request('ModifyDBInstanceChargeType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceChargeTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceDeployment）用于修改节点可用区部署方式，仅支持主实例。

        # @param request: Request instance for ModifyDBInstanceDeployment.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceDeploymentRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceDeploymentResponse`
        def ModifyDBInstanceDeployment(request)
          body = send_request('ModifyDBInstanceDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceHAConfig）用于修改实例HA配置信息。其中HA配置信息包括：
        # <li>允许备节点切换为主节点的条件配置</li>
        # <li>半同步实例使用同步复制或异步复制的条件配置</li>

        # @param request: Request instance for ModifyDBInstanceHAConfig.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceHAConfigRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceHAConfigResponse`
        def ModifyDBInstanceHAConfig(request)
          body = send_request('ModifyDBInstanceHAConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceHAConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceName）用于修改postgresql实例名字。

        # @param request: Request instance for ModifyDBInstanceName.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceNameResponse`
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

        # 本接口 (ModifyDBInstanceParameters) 用于修改实例参数。

        # @param request: Request instance for ModifyDBInstanceParameters.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceParametersRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceParametersResponse`
        def ModifyDBInstanceParameters(request)
          body = send_request('ModifyDBInstanceParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceReadOnlyGroup）用于修改实例所属的只读组

        # @param request: Request instance for ModifyDBInstanceReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceReadOnlyGroupResponse`
        def ModifyDBInstanceReadOnlyGroup(request)
          body = send_request('ModifyDBInstanceReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改实例SSL配置，功能包含开启、关闭、修改SSL证书保护的连接地址。

        # @param request: Request instance for ModifyDBInstanceSSLConfig.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceSSLConfigRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceSSLConfigResponse`
        def ModifyDBInstanceSSLConfig(request)
          body = send_request('ModifyDBInstanceSSLConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceSSLConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceSecurityGroups）用于修改实例安全组。

        # @param request: Request instance for ModifyDBInstanceSecurityGroups.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceSecurityGroupsResponse`
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

        # 本接口（ModifyDBInstanceSpec）用于修改实例规格，包括内存、磁盘、Cpu。

        # @param request: Request instance for ModifyDBInstanceSpec.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceSpecRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceSpecResponse`
        def ModifyDBInstanceSpec(request)
          body = send_request('ModifyDBInstanceSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstancesProject）用于修改实例所属项目。

        # @param request: Request instance for ModifyDBInstancesProject.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstancesProjectRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstancesProjectResponse`
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

        # 修改数据库所有者

        # @param request: Request instance for ModifyDatabaseOwner.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDatabaseOwnerRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDatabaseOwnerResponse`
        def ModifyDatabaseOwner(request)
          body = send_request('ModifyDatabaseOwner', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDatabaseOwnerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyMaintainTimeWindow) 用于实例维护时间窗口的修改。

        # @param request: Request instance for ModifyMaintainTimeWindow.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyMaintainTimeWindowRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyMaintainTimeWindowResponse`
        def ModifyMaintainTimeWindow(request)
          body = send_request('ModifyMaintainTimeWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMaintainTimeWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyParameterTemplate）主要用于修改参数模板名称，描述等配置，也可用于管理参数模板中的参数列表。

        # @param request: Request instance for ModifyParameterTemplate.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyParameterTemplateRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyParameterTemplateResponse`
        def ModifyParameterTemplate(request)
          body = send_request('ModifyParameterTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyParameterTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyReadOnlyDBInstanceWeight）用于修改只读实例权重

        # @param request: Request instance for ModifyReadOnlyDBInstanceWeight.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyReadOnlyDBInstanceWeightRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyReadOnlyDBInstanceWeightResponse`
        def ModifyReadOnlyDBInstanceWeight(request)
          body = send_request('ModifyReadOnlyDBInstanceWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReadOnlyDBInstanceWeightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyReadOnlyGroupConfig)用于更新只读组配置信息

        # @param request: Request instance for ModifyReadOnlyGroupConfig.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyReadOnlyGroupConfigRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyReadOnlyGroupConfigResponse`
        def ModifyReadOnlyGroupConfig(request)
          body = send_request('ModifyReadOnlyGroupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReadOnlyGroupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 当升级完成后，对处于等待切换状态下的实例，强制实例立即切换。

        # @param request: Request instance for ModifySwitchTimePeriod.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifySwitchTimePeriodRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifySwitchTimePeriodResponse`
        def ModifySwitchTimePeriod(request)
          body = send_request('ModifySwitchTimePeriod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySwitchTimePeriodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（OpenDBExtranetAccess）用于开通实例公网地址。

        # @param request: Request instance for OpenDBExtranetAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::OpenDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::OpenDBExtranetAccessResponse`
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

        # 本接口(RebalanceReadOnlyGroup)用于重新均衡 RO 组内实例的负载。注意，RO 组内 RO 实例会有一次数据库连接瞬断，请确保应用程序能重连数据库，谨慎操作。

        # @param request: Request instance for RebalanceReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::RebalanceReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::RebalanceReadOnlyGroupResponse`
        def RebalanceReadOnlyGroup(request)
          body = send_request('RebalanceReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebalanceReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RemoveDBInstanceFromReadOnlyGroup）用户将只读实例从只读组中移除

        # @param request: Request instance for RemoveDBInstanceFromReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::RemoveDBInstanceFromReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::RemoveDBInstanceFromReadOnlyGroupResponse`
        def RemoveDBInstanceFromReadOnlyGroup(request)
          body = send_request('RemoveDBInstanceFromReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveDBInstanceFromReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RenewInstance）用于续费实例。

        # @param request: Request instance for RenewInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::RenewInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::RenewInstanceResponse`
        def RenewInstance(request)
          body = send_request('RenewInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ResetAccountPassword）用于重置实例的账户密码。

        # @param request: Request instance for ResetAccountPassword.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ResetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ResetAccountPasswordResponse`
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

        # 本接口（RestartDBInstance）用于重启实例。

        # @param request: Request instance for RestartDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::RestartDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::RestartDBInstanceResponse`
        def RestartDBInstance(request)
          body = send_request('RestartDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据备份集或恢复目标时间，在原实例上恢复数据库相关对象，例如数据库、表。

        # @param request: Request instance for RestoreDBInstanceObjects.
        # @type request: :class:`Tencentcloud::postgres::V20170312::RestoreDBInstanceObjectsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::RestoreDBInstanceObjectsResponse`
        def RestoreDBInstanceObjects(request)
          body = send_request('RestoreDBInstanceObjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestoreDBInstanceObjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SetAutoRenewFlag）用于设置自动续费。

        # @param request: Request instance for SetAutoRenewFlag.
        # @type request: :class:`Tencentcloud::postgres::V20170312::SetAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::SetAutoRenewFlagResponse`
        def SetAutoRenewFlag(request)
          body = send_request('SetAutoRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetAutoRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SwitchDBInstancePrimary）用于切换实例主备关系。
        # <li>通过主动发起切换，可以验证业务能否正确处理实例主备切换的场景</li>
        # <li>通过使用强制切换，可以在备节点延迟不满足切换条件时，强制发起主从切换</li>
        # <li>只有主实例可以执行该操作</li>

        # @param request: Request instance for SwitchDBInstancePrimary.
        # @type request: :class:`Tencentcloud::postgres::V20170312::SwitchDBInstancePrimaryRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::SwitchDBInstancePrimaryResponse`
        def SwitchDBInstancePrimary(request)
          body = send_request('SwitchDBInstancePrimary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchDBInstancePrimaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解除数据库账号的锁定，解锁后账号可以登录数据库。

        # @param request: Request instance for UnlockAccount.
        # @type request: :class:`Tencentcloud::postgres::V20170312::UnlockAccountRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::UnlockAccountResponse`
        def UnlockAccount(request)
          body = send_request('UnlockAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnlockAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeDBInstanceKernelVersion）用于升级实例的内核版本号。

        # @param request: Request instance for UpgradeDBInstanceKernelVersion.
        # @type request: :class:`Tencentcloud::postgres::V20170312::UpgradeDBInstanceKernelVersionRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::UpgradeDBInstanceKernelVersionResponse`
        def UpgradeDBInstanceKernelVersion(request)
          body = send_request('UpgradeDBInstanceKernelVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDBInstanceKernelVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeDBInstanceMajorVersion）用于升级实例内核大版本，例如从PostgreSQL 12升级到PostgreSQL 15。

        # @param request: Request instance for UpgradeDBInstanceMajorVersion.
        # @type request: :class:`Tencentcloud::postgres::V20170312::UpgradeDBInstanceMajorVersionRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::UpgradeDBInstanceMajorVersionResponse`
        def UpgradeDBInstanceMajorVersion(request)
          body = send_request('UpgradeDBInstanceMajorVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDBInstanceMajorVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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