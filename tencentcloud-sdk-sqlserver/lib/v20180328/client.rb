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
  module Sqlserver
    module V20180328
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-03-28'
        @@endpoint = 'sqlserver.tencentcloudapi.com'
        @@sdk_version = 'SQLSERVER_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口(AssociateSecurityGroups)用于安全组批量绑定实例。

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::AssociateSecurityGroupsResponse`
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

        # 本接口（CloneDB）用于克隆数据库，只支持克隆到本实例，克隆时必须指定新库名称。

        # @param request: Request instance for CloneDB.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CloneDBRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CloneDBResponse`
        def CloneDB(request)
          body = send_request('CloneDB', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloneDBResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CompleteExpansion）在实例发起扩容后，实例状态处于“升级待切换”时，可立即完成实例升级切换操作，无需等待可维护时间窗。本接口需要在实例低峰时调用，在完全切换成功前，存在部分库不可访问的风险。

        # @param request: Request instance for CompleteExpansion.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CompleteExpansionRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CompleteExpansionResponse`
        def CompleteExpansion(request)
          body = send_request('CompleteExpansion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CompleteExpansionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CompleteMigration）作用是完成一个迁移任务

        # @param request: Request instance for CompleteMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CompleteMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CompleteMigrationResponse`
        def CompleteMigration(request)
          body = send_request('CompleteMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CompleteMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateAccount）用于创建实例账号

        # @param request: Request instance for CreateAccount.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreateAccountRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreateAccountResponse`
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

        # 本接口(CreateBackup)用于创建备份。

        # @param request: Request instance for CreateBackup.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreateBackupRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreateBackupResponse`
        def CreateBackup(request)
          body = send_request('CreateBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateBackupMigration）用于创建备份导入任务。

        # @param request: Request instance for CreateBackupMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreateBackupMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreateBackupMigrationResponse`
        def CreateBackupMigration(request)
          body = send_request('CreateBackupMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateBasicDBInstances）用于创建SQL server基础版实例。

        # @param request: Request instance for CreateBasicDBInstances.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreateBasicDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreateBasicDBInstancesResponse`
        def CreateBasicDBInstances(request)
          body = send_request('CreateBasicDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBasicDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDB）用于创建数据库。

        # @param request: Request instance for CreateDB.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreateDBRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreateDBResponse`
        def CreateDB(request)
          body = send_request('CreateDB', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDBInstances）用于创建实例。

        # @param request: Request instance for CreateDBInstances.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreateDBInstancesResponse`
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

        # 本接口（CreateIncrementalMigration）用于创建增量备份导入任务。

        # @param request: Request instance for CreateIncrementalMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreateIncrementalMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreateIncrementalMigrationResponse`
        def CreateIncrementalMigration(request)
          body = send_request('CreateIncrementalMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIncrementalMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateMigration）作用是创建一个迁移任务

        # @param request: Request instance for CreateMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreateMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreateMigrationResponse`
        def CreateMigration(request)
          body = send_request('CreateMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreatePublishSubscribe）用于创建两个数据库之间的发布订阅关系。作为订阅者，不能再充当发布者，作为发布者可以有多个订阅者实例。

        # @param request: Request instance for CreatePublishSubscribe.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreatePublishSubscribeRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreatePublishSubscribeResponse`
        def CreatePublishSubscribe(request)
          body = send_request('CreatePublishSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePublishSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateReadOnlyDBInstances）用于添加只读副本实例。

        # @param request: Request instance for CreateReadOnlyDBInstances.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::CreateReadOnlyDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::CreateReadOnlyDBInstancesResponse`
        def CreateReadOnlyDBInstances(request)
          body = send_request('CreateReadOnlyDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReadOnlyDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteAccount）用于删除实例账号。

        # @param request: Request instance for DeleteAccount.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DeleteAccountRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DeleteAccountResponse`
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

        # 本接口（DeleteBackupMigration）用于删除备份导入任务。

        # @param request: Request instance for DeleteBackupMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DeleteBackupMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DeleteBackupMigrationResponse`
        def DeleteBackupMigration(request)
          body = send_request('DeleteBackupMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBackupMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteDB)用于删除数据库。

        # @param request: Request instance for DeleteDB.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DeleteDBRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DeleteDBResponse`
        def DeleteDB(request)
          body = send_request('DeleteDB', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDBResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteDBInstance）用于释放回收站中的SQL server实例。释放后的实例将保存一段时间后物理销毁。其发布订阅将自动解除，其ro副本将自动释放。

        # @param request: Request instance for DeleteDBInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DeleteDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DeleteDBInstanceResponse`
        def DeleteDBInstance(request)
          body = send_request('DeleteDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteIncrementalMigration）用于删除增量备份导入任务。

        # @param request: Request instance for DeleteIncrementalMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DeleteIncrementalMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DeleteIncrementalMigrationResponse`
        def DeleteIncrementalMigration(request)
          body = send_request('DeleteIncrementalMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIncrementalMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteMigration）用于删除迁移任务

        # @param request: Request instance for DeleteMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DeleteMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DeleteMigrationResponse`
        def DeleteMigration(request)
          body = send_request('DeleteMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeletePublishSubscribe）用于删除两个数据库间的发布订阅关系。

        # @param request: Request instance for DeletePublishSubscribe.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DeletePublishSubscribeRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DeletePublishSubscribeResponse`
        def DeletePublishSubscribe(request)
          body = send_request('DeletePublishSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePublishSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAccounts）用于拉取实例账户列表。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeAccountsResponse`
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

        # 本接口(DescribeBackupByFlowId)用于通过备份创建流程的ID查询创建的备份详情，流程ID可从接口CreateBackup中获得。

        # @param request: Request instance for DescribeBackupByFlowId.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupByFlowIdRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupByFlowIdResponse`
        def DescribeBackupByFlowId(request)
          body = send_request('DescribeBackupByFlowId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupByFlowIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBackupCommand）用于查询以规范的格式创建备份的命令。

        # @param request: Request instance for DescribeBackupCommand.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupCommandRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupCommandResponse`
        def DescribeBackupCommand(request)
          body = send_request('DescribeBackupCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBackupMigration）用于创建增量备份导入任务。

        # @param request: Request instance for DescribeBackupMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupMigrationResponse`
        def DescribeBackupMigration(request)
          body = send_request('DescribeBackupMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBackupUploadSize）用于查询上传的备份文件大小。在备份上传类型是COS_UPLOAD(备份放在业务的对象存储上)时有效。

        # @param request: Request instance for DescribeBackupUploadSize.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupUploadSizeRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupUploadSizeResponse`
        def DescribeBackupUploadSize(request)
          body = send_request('DescribeBackupUploadSize', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupUploadSizeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeBackups)用于查询备份列表。

        # @param request: Request instance for DescribeBackups.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeBackupsResponse`
        def DescribeBackups(request)
          body = send_request('DescribeBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeCrossRegionZone)根据主实例查询备机的容灾地域和可用区。

        # @param request: Request instance for DescribeCrossRegionZone.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeCrossRegionZoneRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeCrossRegionZoneResponse`
        def DescribeCrossRegionZone(request)
          body = send_request('DescribeCrossRegionZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCrossRegionZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBInstances)用于查询实例列表。

        # @param request: Request instance for DescribeDBInstances.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeDBInstancesResponse`
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

        # 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。

        # @param request: Request instance for DescribeDBSecurityGroups.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeDBSecurityGroupsResponse`
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

        # 本接口（DescribeDBs）用于查询数据库列表。

        # @param request: Request instance for DescribeDBs.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeDBsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeDBsResponse`
        def DescribeDBs(request)
          body = send_request('DescribeDBs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeFlowStatus)用于查询流程状态。

        # @param request: Request instance for DescribeFlowStatus.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeFlowStatusRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeFlowStatusResponse`
        def DescribeFlowStatus(request)
          body = send_request('DescribeFlowStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeIncrementalMigration）用于查询增量备份导入任务。

        # @param request: Request instance for DescribeIncrementalMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeIncrementalMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeIncrementalMigrationResponse`
        def DescribeIncrementalMigration(request)
          body = send_request('DescribeIncrementalMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIncrementalMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMaintenanceSpan）根据实例ID查询该实例的可维护时间窗。

        # @param request: Request instance for DescribeMaintenanceSpan.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeMaintenanceSpanRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeMaintenanceSpanResponse`
        def DescribeMaintenanceSpan(request)
          body = send_request('DescribeMaintenanceSpan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaintenanceSpanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMigrationDatabases）的作用是查询待迁移数据库列表

        # @param request: Request instance for DescribeMigrationDatabases.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeMigrationDatabasesRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeMigrationDatabasesResponse`
        def DescribeMigrationDatabases(request)
          body = send_request('DescribeMigrationDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrationDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMigrationDetail）用于查询迁移任务的详细情况

        # @param request: Request instance for DescribeMigrationDetail.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeMigrationDetailRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeMigrationDetailResponse`
        def DescribeMigrationDetail(request)
          body = send_request('DescribeMigrationDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrationDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMigrations）根据输入的限定条件，查询符合条件的迁移任务列表

        # @param request: Request instance for DescribeMigrations.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeMigrationsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeMigrationsResponse`
        def DescribeMigrations(request)
          body = send_request('DescribeMigrations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeOrders）用于查询订单信息

        # @param request: Request instance for DescribeOrders.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeOrdersRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeOrdersResponse`
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

        # 本接口 (DescribeProductConfig) 用于查询售卖规格配置。

        # @param request: Request instance for DescribeProductConfig.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeProductConfigRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeProductConfigResponse`
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

        # 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。

        # @param request: Request instance for DescribeProjectSecurityGroups.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeProjectSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeProjectSecurityGroupsResponse`
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

        # 本接口（DescribePublishSubscribe）用于查询发布订阅关系列表。

        # @param request: Request instance for DescribePublishSubscribe.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribePublishSubscribeRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribePublishSubscribeResponse`
        def DescribePublishSubscribe(request)
          body = send_request('DescribePublishSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublishSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeReadOnlyGroupByReadOnlyInstance）用于通过只读副本实例ID查询其所在的只读组。

        # @param request: Request instance for DescribeReadOnlyGroupByReadOnlyInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeReadOnlyGroupByReadOnlyInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeReadOnlyGroupByReadOnlyInstanceResponse`
        def DescribeReadOnlyGroupByReadOnlyInstance(request)
          body = send_request('DescribeReadOnlyGroupByReadOnlyInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReadOnlyGroupByReadOnlyInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeReadOnlyGroupDetails）用于查询只读组详情。

        # @param request: Request instance for DescribeReadOnlyGroupDetails.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeReadOnlyGroupDetailsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeReadOnlyGroupDetailsResponse`
        def DescribeReadOnlyGroupDetails(request)
          body = send_request('DescribeReadOnlyGroupDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReadOnlyGroupDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeReadOnlyGroupList）用于查询只读组列表。

        # @param request: Request instance for DescribeReadOnlyGroupList.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeReadOnlyGroupListRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeReadOnlyGroupListResponse`
        def DescribeReadOnlyGroupList(request)
          body = send_request('DescribeReadOnlyGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReadOnlyGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeRegionsResponse`
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

        # 本接口（DescribeRollbackTime）用于查询实例可回档时间范围

        # @param request: Request instance for DescribeRollbackTime.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeRollbackTimeRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeRollbackTimeResponse`
        def DescribeRollbackTime(request)
          body = send_request('DescribeRollbackTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRollbackTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息

        # @param request: Request instance for DescribeSlowlogs.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeSlowlogsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeSlowlogsResponse`
        def DescribeSlowlogs(request)
          body = send_request('DescribeSlowlogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowlogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUploadBackupInfo）用于查询备份上传权限。

        # @param request: Request instance for DescribeUploadBackupInfo.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeUploadBackupInfoRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeUploadBackupInfoResponse`
        def DescribeUploadBackupInfo(request)
          body = send_request('DescribeUploadBackupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUploadBackupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUploadIncrementalInfo）用于查询增量备份上传权限。

        # @param request: Request instance for DescribeUploadIncrementalInfo.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeUploadIncrementalInfoRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeUploadIncrementalInfoResponse`
        def DescribeUploadIncrementalInfo(request)
          body = send_request('DescribeUploadIncrementalInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUploadIncrementalInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeZones) 用于查询当前可售卖的可用区信息。

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DescribeZonesResponse`
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

        # 本接口(DisassociateSecurityGroups)用于安全组批量解绑实例。

        # @param request: Request instance for DisassociateSecurityGroups.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::DisassociateSecurityGroupsResponse`
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

        # 本接口（InquiryPriceCreateDBInstances）用于查询申请实例价格。

        # @param request: Request instance for InquiryPriceCreateDBInstances.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::InquiryPriceCreateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::InquiryPriceCreateDBInstancesResponse`
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
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::InquiryPriceRenewDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::InquiryPriceRenewDBInstanceResponse`
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

        # 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。

        # @param request: Request instance for InquiryPriceUpgradeDBInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::InquiryPriceUpgradeDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::InquiryPriceUpgradeDBInstanceResponse`
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

        # 本接口（ModifyAccountPrivilege）用于修改实例账户权限。

        # @param request: Request instance for ModifyAccountPrivilege.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyAccountPrivilegeRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyAccountPrivilegeResponse`
        def ModifyAccountPrivilege(request)
          body = send_request('ModifyAccountPrivilege', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountPrivilegeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyAccountRemark）用于修改账户备注。

        # @param request: Request instance for ModifyAccountRemark.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyAccountRemarkRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyAccountRemarkResponse`
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

        # 本接口（ModifyBackupMigration）用于修改备份导入任务。

        # @param request: Request instance for ModifyBackupMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyBackupMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyBackupMigrationResponse`
        def ModifyBackupMigration(request)
          body = send_request('ModifyBackupMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyBackupName)用于修改备份名称。

        # @param request: Request instance for ModifyBackupName.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyBackupNameRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyBackupNameResponse`
        def ModifyBackupName(request)
          body = send_request('ModifyBackupName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyBackupStrategy）用于修改备份策略

        # @param request: Request instance for ModifyBackupStrategy.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyBackupStrategyRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyBackupStrategyResponse`
        def ModifyBackupStrategy(request)
          body = send_request('ModifyBackupStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceName）用于修改实例名字。

        # @param request: Request instance for ModifyDBInstanceName.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceNameResponse`
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

        # 本接口（ModifyDBInstanceNetwork）用于修改运行中实例的网络，仅支持从VPC网络到VPC网络的转换

        # @param request: Request instance for ModifyDBInstanceNetwork.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceNetworkRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceNetworkResponse`
        def ModifyDBInstanceNetwork(request)
          body = send_request('ModifyDBInstanceNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceProject）用于修改数据库实例所属项目。

        # @param request: Request instance for ModifyDBInstanceProject.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceProjectRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceProjectResponse`
        def ModifyDBInstanceProject(request)
          body = send_request('ModifyDBInstanceProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceRenewFlag）用于修改实例续费标记

        # @param request: Request instance for ModifyDBInstanceRenewFlag.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceRenewFlagResponse`
        def ModifyDBInstanceRenewFlag(request)
          body = send_request('ModifyDBInstanceRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBInstanceSecurityGroupsResponse`
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

        # 本接口（ModifyDBName）用于更新数据库名。

        # @param request: Request instance for ModifyDBName.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBNameRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBNameResponse`
        def ModifyDBName(request)
          body = send_request('ModifyDBName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBRemark）用于修改数据库备注。

        # @param request: Request instance for ModifyDBRemark.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBRemarkRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyDBRemarkResponse`
        def ModifyDBRemark(request)
          body = send_request('ModifyDBRemark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBRemarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyIncrementalMigration）用于修改增量备份导入任务。

        # @param request: Request instance for ModifyIncrementalMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyIncrementalMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyIncrementalMigrationResponse`
        def ModifyIncrementalMigration(request)
          body = send_request('ModifyIncrementalMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIncrementalMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyMaintenanceSpan）用于修改实例的可维护时间窗

        # @param request: Request instance for ModifyMaintenanceSpan.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyMaintenanceSpanRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyMaintenanceSpanResponse`
        def ModifyMaintenanceSpan(request)
          body = send_request('ModifyMaintenanceSpan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMaintenanceSpanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyMigration）可以修改已有的迁移任务信息

        # @param request: Request instance for ModifyMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyMigrationResponse`
        def ModifyMigration(request)
          body = send_request('ModifyMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyPublishSubscribeName）修改发布订阅的名称。

        # @param request: Request instance for ModifyPublishSubscribeName.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyPublishSubscribeNameRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyPublishSubscribeNameResponse`
        def ModifyPublishSubscribeName(request)
          body = send_request('ModifyPublishSubscribeName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPublishSubscribeNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyReadOnlyGroupDetails）用于修改只读组详情。

        # @param request: Request instance for ModifyReadOnlyGroupDetails.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ModifyReadOnlyGroupDetailsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ModifyReadOnlyGroupDetailsResponse`
        def ModifyReadOnlyGroupDetails(request)
          body = send_request('ModifyReadOnlyGroupDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReadOnlyGroupDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（QueryMigrationCheckProcess）的作用是查询迁移检查任务的进度，适用于迁移源的类型为TencentDB for SQLServer 的迁移方式

        # @param request: Request instance for QueryMigrationCheckProcess.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::QueryMigrationCheckProcessRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::QueryMigrationCheckProcessResponse`
        def QueryMigrationCheckProcess(request)
          body = send_request('QueryMigrationCheckProcess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMigrationCheckProcessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RecycleDBInstance）用于主动回收已下线的SQLSERVER实例

        # @param request: Request instance for RecycleDBInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::RecycleDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::RecycleDBInstanceResponse`
        def RecycleDBInstance(request)
          body = send_request('RecycleDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecycleDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RecycleReadOnlyGroup）立即回收只读组的资源，只读组占用的vip等资源将立即释放且不可找回。

        # @param request: Request instance for RecycleReadOnlyGroup.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::RecycleReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::RecycleReadOnlyGroupResponse`
        def RecycleReadOnlyGroup(request)
          body = send_request('RecycleReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecycleReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RemoveBackups）可以删除用户手动创建的备份文件。待删除的备份策略可以是实例备份，也可以是多库备份。

        # @param request: Request instance for RemoveBackups.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::RemoveBackupsRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::RemoveBackupsResponse`
        def RemoveBackups(request)
          body = send_request('RemoveBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RenewDBInstance）用于续费实例。

        # @param request: Request instance for RenewDBInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::RenewDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::RenewDBInstanceResponse`
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

        # 本接口（RenewPostpaidDBInstance）用于将通过接口TerminateDBInstance手动隔离的按量计费实例从回收站中恢复。

        # @param request: Request instance for RenewPostpaidDBInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::RenewPostpaidDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::RenewPostpaidDBInstanceResponse`
        def RenewPostpaidDBInstance(request)
          body = send_request('RenewPostpaidDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewPostpaidDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::ResetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::ResetAccountPasswordResponse`
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

        # 本接口（RestartDBInstance）用于重启数据库实例。

        # @param request: Request instance for RestartDBInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::RestartDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::RestartDBInstanceResponse`
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

        # 本接口（RestoreInstance）用于根据备份文件恢复实例。

        # @param request: Request instance for RestoreInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::RestoreInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::RestoreInstanceResponse`
        def RestoreInstance(request)
          body = send_request('RestoreInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestoreInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RollbackInstance）用于回档实例

        # @param request: Request instance for RollbackInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::RollbackInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::RollbackInstanceResponse`
        def RollbackInstance(request)
          body = send_request('RollbackInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RunMigration）用于启动迁移任务，开始迁移

        # @param request: Request instance for RunMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::RunMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::RunMigrationResponse`
        def RunMigration(request)
          body = send_request('RunMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（StartBackupMigration）用于启动备份导入任务。

        # @param request: Request instance for StartBackupMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::StartBackupMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::StartBackupMigrationResponse`
        def StartBackupMigration(request)
          body = send_request('StartBackupMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartBackupMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（StartIncrementalMigration）用于启动增量备份导入任务。

        # @param request: Request instance for StartIncrementalMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::StartIncrementalMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::StartIncrementalMigrationResponse`
        def StartIncrementalMigration(request)
          body = send_request('StartIncrementalMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartIncrementalMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（StartMigrationCheck）的作用是启动一个迁移前的校验任务，适用于迁移源的类型为TencentDB for SQLServer 的迁移方式

        # @param request: Request instance for StartMigrationCheck.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::StartMigrationCheckRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::StartMigrationCheckResponse`
        def StartMigrationCheck(request)
          body = send_request('StartMigrationCheck', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartMigrationCheckResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（StopMigration）作用是中止一个迁移任务

        # @param request: Request instance for StopMigration.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::StopMigrationRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::StopMigrationResponse`
        def StopMigration(request)
          body = send_request('StopMigration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopMigrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(TerminateDBInstance)用于主动隔离实例，使得实例进入回收站。

        # @param request: Request instance for TerminateDBInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::TerminateDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::TerminateDBInstanceResponse`
        def TerminateDBInstance(request)
          body = send_request('TerminateDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeDBInstance）用于升级实例

        # @param request: Request instance for UpgradeDBInstance.
        # @type request: :class:`Tencentcloud::sqlserver::V20180328::UpgradeDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::sqlserver::V20180328::UpgradeDBInstanceResponse`
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