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
  module Cdb
    module V20170320
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2017-03-20'
            api_endpoint = 'cdb.tencentcloudapi.com'
            sdk_version = 'CDB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口(AddTimeWindow)用于添加云数据库实例的维护时间窗口，以指定实例在哪些时间段可以自动执行切换访问操作。

        # @param request: Request instance for AddTimeWindow.
        # @type request: :class:`Tencentcloud::cdb::V20170320::AddTimeWindowRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::AddTimeWindowResponse`
        def AddTimeWindow(request)
          body = send_request('AddTimeWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddTimeWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(AssociateSecurityGroups)用于安全组批量绑定实例。

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::cdb::V20170320::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::AssociateSecurityGroupsResponse`
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

        # 本接口(BalanceRoGroupLoad)用于重新均衡 RO 组内实例的负载。注意，RO 组内 RO 实例会有一次数据库连接瞬断，请确保应用程序能重连数据库，谨慎操作。

        # @param request: Request instance for BalanceRoGroupLoad.
        # @type request: :class:`Tencentcloud::cdb::V20170320::BalanceRoGroupLoadRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::BalanceRoGroupLoadResponse`
        def BalanceRoGroupLoad(request)
          body = send_request('BalanceRoGroupLoad', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BalanceRoGroupLoadResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭数据库代理

        # @param request: Request instance for CloseCDBProxy.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CloseCDBProxyRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CloseCDBProxyResponse`
        def CloseCDBProxy(request)
          body = send_request('CloseCDBProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseCDBProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CloseWanService)用于关闭云数据库实例的外网访问。关闭外网访问后，外网地址将不可访问。

        # @param request: Request instance for CloseWanService.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CloseWanServiceRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CloseWanServiceResponse`
        def CloseWanService(request)
          body = send_request('CloseWanService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseWanServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateAccounts)用于创建云数据库的账户，需要指定新的账户名和域名，以及所对应的密码，同时可以设置账号的备注信息以及最大可用连接数。

        # @param request: Request instance for CreateAccounts.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateAccountsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateAccountsResponse`
        def CreateAccounts(request)
          body = send_request('CreateAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateAuditLogFile)用于创建云数据库实例的审计日志文件。

        # @param request: Request instance for CreateAuditLogFile.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateAuditLogFileRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateAuditLogFileResponse`
        def CreateAuditLogFile(request)
          body = send_request('CreateAuditLogFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAuditLogFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateAuditPolicy)用于创建云数据库实例的审计策略，即将审计规则绑定到具体的云数据库实例上。

        # @param request: Request instance for CreateAuditPolicy.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateAuditPolicyRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateAuditPolicyResponse`
        def CreateAuditPolicy(request)
          body = send_request('CreateAuditPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAuditPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateAuditRule)用于创建用户在当前地域的审计规则。

        # @param request: Request instance for CreateAuditRule.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateAuditRuleRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateAuditRuleResponse`
        def CreateAuditRule(request)
          body = send_request('CreateAuditRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAuditRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateBackup)用于创建数据库备份。

        # @param request: Request instance for CreateBackup.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateBackupRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateBackupResponse`
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

        # 本接口(CreateCloneInstance) 用于从目标源实例创建一个克隆实例，可以指定克隆实例回档到源实例的指定物理备份文件或者指定的回档时间点。

        # @param request: Request instance for CreateCloneInstance.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateCloneInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateCloneInstanceResponse`
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

        # 本接口(CreateDBImportJob)用于创建云数据库数据导入任务。

        # 注意，用户进行数据导入任务的文件，必须提前上传到腾讯云。用户须在控制台进行文件导入。

        # @param request: Request instance for CreateDBImportJob.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateDBImportJobRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateDBImportJobResponse`
        def CreateDBImportJob(request)
          body = send_request('CreateDBImportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBImportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateDBInstance)用于创建包年包月的云数据库实例（包括主实例、灾备实例和只读实例），可通过传入实例规格、MySQL 版本号、购买时长和数量等信息创建云数据库实例。

        # 该接口为异步接口，您还可以使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询该实例的详细信息。当该实例的 Status 为1，且 TaskStatus 为0，表示实例已经发货成功。

        # 1. 首先请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口查询可创建的实例规格信息，然后请使用 [查询数据库价格](https://cloud.tencent.com/document/api/236/18566) 接口查询可创建实例的售卖价格；
        # 2. 单次创建实例最大支持 100 个，实例时长最大支持 36 个月；
        # 3. 支持创建 MySQL 5.5 、 MySQL 5.6 、 MySQL 5.7 、 MySQL 8.0 版本；
        # 4. 支持创建主实例、只读实例、灾备实例；
        # 5. 当入参指定 Port，ParamList 或 Password 时，该实例会进行初始化操作（不支持基础版实例）；
        # 6. 当入参指定 ParamTemplateId 或 AlarmPolicyList 时，需将SDK提升至最新版本方可支持；

        # @param request: Request instance for CreateDBInstance.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateDBInstanceResponse`
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

        # 本接口(CreateDBInstanceHour)用于创建按量计费的实例，可通过传入实例规格、MySQL 版本号和数量等信息创建云数据库实例，支持主实例、灾备实例和只读实例的创建。

        # 该接口为异步接口，您还可以使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询该实例的详细信息。当该实例的 Status 为 1，且 TaskStatus 为 0，表示实例已经发货成功。

        # 1. 首先请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口查询可创建的实例规格信息，然后请使用 [查询数据库价格](https://cloud.tencent.com/document/api/236/18566) 接口查询可创建实例的售卖价格；
        # 2. 单次创建实例最大支持 100 个，实例时长最大支持 36 个月；
        # 3. 支持创建 MySQL 5.5、MySQL 5.6 、MySQL 5.7 和 MySQL 8.0 版本；
        # 4. 支持创建主实例、灾备实例和只读实例；
        # 5. 当入参指定 Port，ParamList 或 Password 时，该实例会进行初始化操作；

        # @param request: Request instance for CreateDBInstanceHour.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateDBInstanceHourRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateDBInstanceHourResponse`
        def CreateDBInstanceHour(request)
          body = send_request('CreateDBInstanceHour', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBInstanceHourResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateDeployGroup)用于创建放置实例的置放群组

        # @param request: Request instance for CreateDeployGroup.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateDeployGroupRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateDeployGroupResponse`
        def CreateDeployGroup(request)
          body = send_request('CreateDeployGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeployGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateParamTemplate）用于创建参数模板，全地域公共参数Region均为ap-guangzhou。

        # @param request: Request instance for CreateParamTemplate.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateParamTemplateRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateParamTemplateResponse`
        def CreateParamTemplate(request)
          body = send_request('CreateParamTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateParamTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateRoInstanceIp)用于创建云数据库只读实例的独立VIP。

        # @param request: Request instance for CreateRoInstanceIp.
        # @type request: :class:`Tencentcloud::cdb::V20170320::CreateRoInstanceIpRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::CreateRoInstanceIpResponse`
        def CreateRoInstanceIp(request)
          body = send_request('CreateRoInstanceIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoInstanceIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteAccounts)用于删除云数据库的账户。

        # @param request: Request instance for DeleteAccounts.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DeleteAccountsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DeleteAccountsResponse`
        def DeleteAccounts(request)
          body = send_request('DeleteAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteAuditLogFile)用于删除云数据库实例的审计日志文件。

        # @param request: Request instance for DeleteAuditLogFile.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DeleteAuditLogFileRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DeleteAuditLogFileResponse`
        def DeleteAuditLogFile(request)
          body = send_request('DeleteAuditLogFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuditLogFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteAuditPolicy)用于删除用户的审计策略。

        # @param request: Request instance for DeleteAuditPolicy.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DeleteAuditPolicyRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DeleteAuditPolicyResponse`
        def DeleteAuditPolicy(request)
          body = send_request('DeleteAuditPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuditPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteAuditRule)用于删除用户的审计规则。

        # @param request: Request instance for DeleteAuditRule.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DeleteAuditRuleRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DeleteAuditRuleResponse`
        def DeleteAuditRule(request)
          body = send_request('DeleteAuditRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuditRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteBackup)用于删除数据库备份。本接口只支持删除手动发起的备份。

        # @param request: Request instance for DeleteBackup.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DeleteBackupRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DeleteBackupResponse`
        def DeleteBackup(request)
          body = send_request('DeleteBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBackupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据置放群组ID删除置放群组（置放群组中有资源存在时不能删除该置放群组）

        # @param request: Request instance for DeleteDeployGroups.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DeleteDeployGroupsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DeleteDeployGroupsResponse`
        def DeleteDeployGroups(request)
          body = send_request('DeleteDeployGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeployGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DeleteParamTemplate）用于删除参数模板，全地域公共参数Region均为ap-guangzhou。

        # @param request: Request instance for DeleteParamTemplate.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DeleteParamTemplateRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DeleteParamTemplateResponse`
        def DeleteParamTemplate(request)
          body = send_request('DeleteParamTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteParamTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteTimeWindow)用于删除云数据库实例的维护时间窗口。删除实例维护时间窗口之后，默认的维护时间窗为 03:00-04:00，即当选择在维护时间窗口内切换访问新实例时，默认会在 03:00-04:00 点进行切换访问新实例。

        # @param request: Request instance for DeleteTimeWindow.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DeleteTimeWindowRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DeleteTimeWindowResponse`
        def DeleteTimeWindow(request)
          body = send_request('DeleteTimeWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTimeWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAccountPrivileges)用于查询云数据库账户支持的权限信息。

        # @param request: Request instance for DescribeAccountPrivileges.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeAccountPrivilegesResponse`
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

        # 本接口(DescribeAccounts)用于查询云数据库的所有账户信息。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeAccountsResponse`
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

        # 本接口(DescribeAsyncRequestInfo)用于查询云数据库实例异步任务的执行结果。

        # @param request: Request instance for DescribeAsyncRequestInfo.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeAsyncRequestInfoRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeAsyncRequestInfoResponse`
        def DescribeAsyncRequestInfo(request)
          body = send_request('DescribeAsyncRequestInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAsyncRequestInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAuditConfig)用于查询云数据库审计策略的服务配置，包括审计日志保存时长等。

        # @param request: Request instance for DescribeAuditConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeAuditConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeAuditConfigResponse`
        def DescribeAuditConfig(request)
          body = send_request('DescribeAuditConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。

        # @param request: Request instance for DescribeAuditLogFiles.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeAuditLogFilesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeAuditLogFilesResponse`
        def DescribeAuditLogFiles(request)
          body = send_request('DescribeAuditLogFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditLogFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAuditPolicies)用于查询云数据库实例的审计策略。

        # @param request: Request instance for DescribeAuditPolicies.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeAuditPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeAuditPoliciesResponse`
        def DescribeAuditPolicies(request)
          body = send_request('DescribeAuditPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAuditRules)用于查询用户在当前地域的审计规则。

        # @param request: Request instance for DescribeAuditRules.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeAuditRulesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeAuditRulesResponse`
        def DescribeAuditRules(request)
          body = send_request('DescribeAuditRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeBackupConfig)用于查询数据库备份配置信息。

        # @param request: Request instance for DescribeBackupConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBackupConfigResponse`
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

        # 本接口(DescribeBackupDatabases)用于查询备份文件包含的库 (已废弃)。
        # 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
        # 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。

        # @param request: Request instance for DescribeBackupDatabases.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBackupDatabasesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBackupDatabasesResponse`
        def DescribeBackupDatabases(request)
          body = send_request('DescribeBackupDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用户查询当前地域用户设置的默认备份下载来源限制。

        # @param request: Request instance for DescribeBackupDownloadRestriction.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBackupDownloadRestrictionRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBackupDownloadRestrictionResponse`
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

        # 本接口(DescribeBackupEncryptionStatus)用于查询实例默认备份加密状态。

        # @param request: Request instance for DescribeBackupEncryptionStatus.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBackupEncryptionStatusRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBackupEncryptionStatusResponse`
        def DescribeBackupEncryptionStatus(request)
          body = send_request('DescribeBackupEncryptionStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupEncryptionStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeBackupOverview)用于查询用户的备份概览。返回用户当前备份总个数、备份总的占用容量、赠送的免费容量、计费容量（容量单位为字节）。

        # @param request: Request instance for DescribeBackupOverview.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBackupOverviewRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBackupOverviewResponse`
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

        # 本接口(DescribeBackupSummaries)用于查询备份的统计情况，返回以实例为维度的备份占用容量，以及每个实例的数据备份和日志备份的个数和容量（容量单位为字节）。

        # @param request: Request instance for DescribeBackupSummaries.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBackupSummariesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBackupSummariesResponse`
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

        # 本接口(DescribeBackupTables)用于查询指定的数据库的备份数据表名 (已废弃)。
        # 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
        # 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。

        # @param request: Request instance for DescribeBackupTables.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBackupTablesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBackupTablesResponse`
        def DescribeBackupTables(request)
          body = send_request('DescribeBackupTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeBackups)用于查询云数据库实例的备份数据。

        # @param request: Request instance for DescribeBackups.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBackupsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBackupsResponse`
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

        # 本接口(DescribeBinlogBackupOverview)用于查询用户在当前地域总的日志备份概览。

        # @param request: Request instance for DescribeBinlogBackupOverview.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBinlogBackupOverviewRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBinlogBackupOverviewResponse`
        def DescribeBinlogBackupOverview(request)
          body = send_request('DescribeBinlogBackupOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBinlogBackupOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeBinlogs)用于查询云数据库实例的 binlog 文件列表。

        # @param request: Request instance for DescribeBinlogs.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeBinlogsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeBinlogsResponse`
        def DescribeBinlogs(request)
          body = send_request('DescribeBinlogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBinlogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据库代理（待下线，替换接口QueryCDBProxy）

        # @param request: Request instance for DescribeCDBProxy.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeCDBProxyRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeCDBProxyResponse`
        def DescribeCDBProxy(request)
          body = send_request('DescribeCDBProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCDBProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeCdbZoneConfig)用于查询云数据库各地域可售卖的规格配置。

        # @param request: Request instance for DescribeCdbZoneConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeCdbZoneConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeCdbZoneConfigResponse`
        def DescribeCdbZoneConfig(request)
          body = send_request('DescribeCdbZoneConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCdbZoneConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeCloneList) 用于查询用户实例的克隆任务列表。

        # @param request: Request instance for DescribeCloneList.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeCloneListRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeCloneListResponse`
        def DescribeCloneList(request)
          body = send_request('DescribeCloneList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloneListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBFeatures)用于查询云数据库版本属性，包括是否支持数据库加密、数据库审计等功能。

        # @param request: Request instance for DescribeDBFeatures.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBFeaturesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBFeaturesResponse`
        def DescribeDBFeatures(request)
          body = send_request('DescribeDBFeatures', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBFeaturesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBImportRecords)用于查询云数据库导入任务操作日志。

        # @param request: Request instance for DescribeDBImportRecords.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBImportRecordsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBImportRecordsResponse`
        def DescribeDBImportRecords(request)
          body = send_request('DescribeDBImportRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBImportRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBInstanceCharset)用于查询云数据库实例的字符集，获取字符集的名称。

        # @param request: Request instance for DescribeDBInstanceCharset.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceCharsetRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceCharsetResponse`
        def DescribeDBInstanceCharset(request)
          body = send_request('DescribeDBInstanceCharset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceCharsetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBInstanceConfig)用于云数据库实例的配置信息，包括同步模式，部署模式等。

        # @param request: Request instance for DescribeDBInstanceConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceConfigResponse`
        def DescribeDBInstanceConfig(request)
          body = send_request('DescribeDBInstanceConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBInstanceGTID)用于查询云数据库实例是否开通了 GTID，不支持版本为 5.5 以及以下的实例。

        # @param request: Request instance for DescribeDBInstanceGTID.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceGTIDRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceGTIDResponse`
        def DescribeDBInstanceGTID(request)
          body = send_request('DescribeDBInstanceGTID', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceGTIDResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例基本信息（实例 ID ，实例名称，是否开通加密 ）

        # @param request: Request instance for DescribeDBInstanceInfo.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceInfoRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceInfoResponse`
        def DescribeDBInstanceInfo(request)
          body = send_request('DescribeDBInstanceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBInstanceRebootTime)用于查询云数据库实例重启预计所需的时间。

        # @param request: Request instance for DescribeDBInstanceRebootTime.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceRebootTimeRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstanceRebootTimeResponse`
        def DescribeDBInstanceRebootTime(request)
          body = send_request('DescribeDBInstanceRebootTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceRebootTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目 ID、实例 ID、访问地址、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。

        # @param request: Request instance for DescribeDBInstances.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBInstancesResponse`
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

        # 本接口(DescribeDBPrice)用于查询购买或续费云数据库实例的价格，支持查询按量计费或者包年包月的价格。可传入实例类型、购买时长、购买数量、内存大小、硬盘大小和可用区信息等来查询实例价格。可传入实例名称来查询实例续费价格。

        # 注意：对某个地域进行询价，请使用对应地域的接入点，接入点信息请参照 <a href="https://cloud.tencent.com/document/api/236/15832">服务地址</a> 文档。例如：对广州地域进行询价，请把请求发到：cdb.ap-guangzhou.tencentcloudapi.com。同理对上海地域询价，把请求发到：cdb.ap-shanghai.tencentcloudapi.com。

        # @param request: Request instance for DescribeDBPrice.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBPriceRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBPriceResponse`
        def DescribeDBPrice(request)
          body = send_request('DescribeDBPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBPriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBSecurityGroupsResponse`
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

        # 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。

        # @param request: Request instance for DescribeDBSwitchRecords.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDBSwitchRecordsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDBSwitchRecordsResponse`
        def DescribeDBSwitchRecords(request)
          body = send_request('DescribeDBSwitchRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSwitchRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDataBackupOverview)用于查询用户在当前地域总的数据备份概览。

        # @param request: Request instance for DescribeDataBackupOverview.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDataBackupOverviewRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDataBackupOverviewResponse`
        def DescribeDataBackupOverview(request)
          body = send_request('DescribeDataBackupOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataBackupOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDatabases)用于查询云数据库实例的数据库信息，仅支持主实例和灾备实例，不支持只读实例。

        # @param request: Request instance for DescribeDatabases.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDatabasesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDatabasesResponse`
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

        # 该接口（DescribeDefaultParams）用于查询默认的可设置参数列表。

        # @param request: Request instance for DescribeDefaultParams.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDefaultParamsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDefaultParamsResponse`
        def DescribeDefaultParams(request)
          body = send_request('DescribeDefaultParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefaultParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDeployGroupList)用于查询用户的置放群组列表，可以指定置放群组 ID 或置放群组名称。

        # @param request: Request instance for DescribeDeployGroupList.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDeployGroupListRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDeployGroupListResponse`
        def DescribeDeployGroupList(request)
          body = send_request('DescribeDeployGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeployGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDeviceMonitorInfo）用于查询云数据库物理机当天的监控信息，暂只支持内存488G、硬盘6T的实例查询。

        # @param request: Request instance for DescribeDeviceMonitorInfo.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeDeviceMonitorInfoRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeDeviceMonitorInfoResponse`
        def DescribeDeviceMonitorInfo(request)
          body = send_request('DescribeDeviceMonitorInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceMonitorInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据检索条件查询实例错误日志详情。只能查询一个月之内的错误日志。
        # 使用时需要注意：可能存在单条错误日志太大，导致整个http请求的回包太大，进而引发接口超时。一旦发生超时，建议您缩小查询时的Limit参数值，从而降低包的大小，让接口能够及时返回内容。

        # @param request: Request instance for DescribeErrorLogData.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeErrorLogDataRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeErrorLogDataResponse`
        def DescribeErrorLogData(request)
          body = send_request('DescribeErrorLogData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeErrorLogDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeInstanceParamRecords）用于查询实例参数修改历史。

        # @param request: Request instance for DescribeInstanceParamRecords.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeInstanceParamRecordsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeInstanceParamRecordsResponse`
        def DescribeInstanceParamRecords(request)
          body = send_request('DescribeInstanceParamRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceParamRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeInstanceParams）用于查询实例的参数列表。

        # @param request: Request instance for DescribeInstanceParams.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeInstanceParamsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeInstanceParamsResponse`
        def DescribeInstanceParams(request)
          body = send_request('DescribeInstanceParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于查询实例本地binlog保留策略。

        # @param request: Request instance for DescribeLocalBinlogConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeLocalBinlogConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeLocalBinlogConfigResponse`
        def DescribeLocalBinlogConfig(request)
          body = send_request('DescribeLocalBinlogConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLocalBinlogConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeParamTemplateInfo）用于查询参数模板详情，全地域公共参数Region均为ap-guangzhou。

        # @param request: Request instance for DescribeParamTemplateInfo.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeParamTemplateInfoRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeParamTemplateInfoResponse`
        def DescribeParamTemplateInfo(request)
          body = send_request('DescribeParamTemplateInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeParamTemplateInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeParamTemplates）查询参数模板列表，全地域公共参数Region均为ap-guangzhou。

        # @param request: Request instance for DescribeParamTemplates.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeParamTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeParamTemplatesResponse`
        def DescribeParamTemplates(request)
          body = send_request('DescribeParamTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeParamTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeProjectSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeProjectSecurityGroupsResponse`
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

        # 获取数据库代理连接池相关规格配置

        # @param request: Request instance for DescribeProxyConnectionPoolConf.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeProxyConnectionPoolConfRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeProxyConnectionPoolConfResponse`
        def DescribeProxyConnectionPoolConf(request)
          body = send_request('DescribeProxyConnectionPoolConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyConnectionPoolConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询代理规格配置

        # @param request: Request instance for DescribeProxyCustomConf.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeProxyCustomConfRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeProxyCustomConfResponse`
        def DescribeProxyCustomConf(request)
          body = send_request('DescribeProxyCustomConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyCustomConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeRemoteBackupConfig)用于查询数据库异地备份配置信息。

        # @param request: Request instance for DescribeRemoteBackupConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeRemoteBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeRemoteBackupConfigResponse`
        def DescribeRemoteBackupConfig(request)
          body = send_request('DescribeRemoteBackupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRemoteBackupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeRoGroups)用于查询云数据库实例的所有的RO组的信息。

        # @param request: Request instance for DescribeRoGroups.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeRoGroupsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeRoGroupsResponse`
        def DescribeRoGroups(request)
          body = send_request('DescribeRoGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeRoMinScale)用于获取只读实例购买、升级时的最小规格。

        # @param request: Request instance for DescribeRoMinScale.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeRoMinScaleRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeRoMinScaleResponse`
        def DescribeRoMinScale(request)
          body = send_request('DescribeRoMinScale', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoMinScaleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeRollbackRangeTime)用于查询云数据库实例可回档的时间范围。

        # @param request: Request instance for DescribeRollbackRangeTime.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeRollbackRangeTimeRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeRollbackRangeTimeResponse`
        def DescribeRollbackRangeTime(request)
          body = send_request('DescribeRollbackRangeTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRollbackRangeTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。

        # @param request: Request instance for DescribeRollbackTaskDetail.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeRollbackTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeRollbackTaskDetailResponse`
        def DescribeRollbackTaskDetail(request)
          body = send_request('DescribeRollbackTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRollbackTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 条件检索实例的慢日志。只允许查看一个月之内的慢日志。
        # 使用时需要注意：可能存在单条慢日志太大，导致整个http请求的回包太大，进而引发接口超时。一旦发生超时，建议您缩小查询时的Limit参数值，从而降低包的大小，让接口能够及时返回内容。

        # @param request: Request instance for DescribeSlowLogData.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeSlowLogDataRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeSlowLogDataResponse`
        def DescribeSlowLogData(request)
          body = send_request('DescribeSlowLogData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeSlowLogs)用于获取云数据库实例的慢查询日志。

        # @param request: Request instance for DescribeSlowLogs.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeSlowLogsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeSlowLogsResponse`
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

        # 本接口(DescribeSupportedPrivileges)用于查询云数据库的支持的权限信息，包括全局权限，数据库权限，表权限以及列权限。

        # @param request: Request instance for DescribeSupportedPrivileges.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeSupportedPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeSupportedPrivilegesResponse`
        def DescribeSupportedPrivileges(request)
          body = send_request('DescribeSupportedPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSupportedPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeTables)用于查询云数据库实例的数据库表信息，仅支持主实例和灾备实例，不支持只读实例。

        # @param request: Request instance for DescribeTables.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeTablesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeTablesResponse`
        def DescribeTables(request)
          body = send_request('DescribeTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeTagsOfInstanceIds)用于获取云数据库实例的标签信息。

        # @param request: Request instance for DescribeTagsOfInstanceIds.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeTagsOfInstanceIdsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeTagsOfInstanceIdsResponse`
        def DescribeTagsOfInstanceIds(request)
          body = send_request('DescribeTagsOfInstanceIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagsOfInstanceIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeTasks)用于查询云数据库实例任务列表。

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeTasksResponse`
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

        # 本接口(DescribeTimeWindow)用于查询云数据库实例的维护时间窗口。

        # @param request: Request instance for DescribeTimeWindow.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeTimeWindowRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeTimeWindowResponse`
        def DescribeTimeWindow(request)
          body = send_request('DescribeTimeWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTimeWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。

        # @param request: Request instance for DescribeUploadedFiles.
        # @type request: :class:`Tencentcloud::cdb::V20170320::DescribeUploadedFilesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DescribeUploadedFilesResponse`
        def DescribeUploadedFiles(request)
          body = send_request('DescribeUploadedFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUploadedFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cdb::V20170320::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::DisassociateSecurityGroupsResponse`
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

        # 本接口(InitDBInstances)用于初始化云数据库实例，包括初始化密码、默认字符集、实例端口号等。该接口已经废弃，在发货接口CreateDBInstance、CreateDBInstanceHour可以直接使用参数Password设置密码，使用参数ParamList设置字符集，使用参数Port设置端口号。

        # @param request: Request instance for InitDBInstances.
        # @type request: :class:`Tencentcloud::cdb::V20170320::InitDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::InitDBInstancesResponse`
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

        # 本接口(InquiryPriceUpgradeInstances)用于查询云数据库实例升级的价格，支持查询按量计费或者包年包月实例的升级价格，实例类型支持主实例、灾备实例和只读实例。

        # @param request: Request instance for InquiryPriceUpgradeInstances.
        # @type request: :class:`Tencentcloud::cdb::V20170320::InquiryPriceUpgradeInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::InquiryPriceUpgradeInstancesResponse`
        def InquiryPriceUpgradeInstances(request)
          body = send_request('InquiryPriceUpgradeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceUpgradeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(IsolateDBInstance)用于隔离云数据库实例，隔离后不能通过IP和端口访问数据库。隔离的实例可在回收站中进行开机。若为欠费隔离，请尽快进行充值。

        # @param request: Request instance for IsolateDBInstance.
        # @type request: :class:`Tencentcloud::cdb::V20170320::IsolateDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::IsolateDBInstanceResponse`
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

        # 本接口(ModifyAccountDescription)用于修改云数据库账户的备注信息。

        # @param request: Request instance for ModifyAccountDescription.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyAccountDescriptionRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyAccountDescriptionResponse`
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

        # 本接口(ModifyAccountHost)用于修改云数据库账户的主机。

        # @param request: Request instance for ModifyAccountHost.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyAccountHostRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyAccountHostResponse`
        def ModifyAccountHost(request)
          body = send_request('ModifyAccountHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyAccountMaxUserConnections)用于修改云数据库账户最大可用连接数。

        # @param request: Request instance for ModifyAccountMaxUserConnections.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyAccountMaxUserConnectionsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyAccountMaxUserConnectionsResponse`
        def ModifyAccountMaxUserConnections(request)
          body = send_request('ModifyAccountMaxUserConnections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountMaxUserConnectionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyAccountPassword)用于修改云数据库账户的密码。

        # @param request: Request instance for ModifyAccountPassword.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyAccountPasswordResponse`
        def ModifyAccountPassword(request)
          body = send_request('ModifyAccountPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 注意，修改账号权限时，需要传入该账号下的全量权限信息。用户可以先通过 [查询云数据库账户的权限信息
        # ](https://cloud.tencent.com/document/api/236/17500) 查询该账号下的全量权限信息，然后进行权限修改。

        # @param request: Request instance for ModifyAccountPrivileges.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyAccountPrivilegesResponse`
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

        # 本接口(ModifyAuditConfig)用于修改云数据库审计策略的服务配置，包括审计日志保存时长等。

        # @param request: Request instance for ModifyAuditConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyAuditConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyAuditConfigResponse`
        def ModifyAuditConfig(request)
          body = send_request('ModifyAuditConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAuditConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyAuditRule)用于修改用户的审计规则。

        # @param request: Request instance for ModifyAuditRule.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyAuditRuleRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyAuditRuleResponse`
        def ModifyAuditRule(request)
          body = send_request('ModifyAuditRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAuditRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyAutoRenewFlag)用于修改云数据库实例的自动续费标记。仅支持包年包月的实例设置自动续费标记。

        # @param request: Request instance for ModifyAutoRenewFlag.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyAutoRenewFlagResponse`
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

        # 本接口(ModifyBackupConfig)用于修改数据库备份配置信息。

        # @param request: Request instance for ModifyBackupConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyBackupConfigResponse`
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

        # 该接口用于修改用户当前地域的备份文件限制下载来源，可以设置内外网均可下载、仅内网可下载，或内网指定的vpc、ip可以下载。

        # @param request: Request instance for ModifyBackupDownloadRestriction.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyBackupDownloadRestrictionRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyBackupDownloadRestrictionResponse`
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

        # 本接口(ModifyBackupEncryptionStatus)用于设置实例备份文件是否加密。

        # @param request: Request instance for ModifyBackupEncryptionStatus.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyBackupEncryptionStatusRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyBackupEncryptionStatusResponse`
        def ModifyBackupEncryptionStatus(request)
          body = send_request('ModifyBackupEncryptionStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupEncryptionStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 请求该接口配置数据库连接池；支持的连接池配置请求DescribeProxyConnectionPoolConf接口获取。

        # @param request: Request instance for ModifyCDBProxyConnectionPool.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyCDBProxyConnectionPoolRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyCDBProxyConnectionPoolResponse`
        def ModifyCDBProxyConnectionPool(request)
          body = send_request('ModifyCDBProxyConnectionPool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCDBProxyConnectionPoolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改数据库代理描述

        # @param request: Request instance for ModifyCDBProxyDesc.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyCDBProxyDescRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyCDBProxyDescResponse`
        def ModifyCDBProxyDesc(request)
          body = send_request('ModifyCDBProxyDesc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCDBProxyDescResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改数据库代理VIP或端口

        # @param request: Request instance for ModifyCDBProxyVipVPort.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyCDBProxyVipVPortRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyCDBProxyVipVPortResponse`
        def ModifyCDBProxyVipVPort(request)
          body = send_request('ModifyCDBProxyVipVPort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCDBProxyVipVPortResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDBInstanceName)用于修改云数据库实例的名称。

        # @param request: Request instance for ModifyDBInstanceName.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyDBInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyDBInstanceNameResponse`
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

        # 本接口(ModifyDBInstanceProject)用于修改云数据库实例的所属项目。

        # @param request: Request instance for ModifyDBInstanceProject.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyDBInstanceProjectRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyDBInstanceProjectResponse`
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

        # 本接口(ModifyDBInstanceSecurityGroups)用于修改实例绑定的安全组。

        # @param request: Request instance for ModifyDBInstanceSecurityGroups.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyDBInstanceSecurityGroupsResponse`
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

        # 本接口(ModifyDBInstanceVipVport)用于修改云数据库实例的IP和端口号，也可进行基础网络转 VPC 网络和 VPC 网络下的子网变更。

        # @param request: Request instance for ModifyDBInstanceVipVport.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyDBInstanceVipVportRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyDBInstanceVipVportResponse`
        def ModifyDBInstanceVipVport(request)
          body = send_request('ModifyDBInstanceVipVport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceVipVportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyInstanceParam)用于修改云数据库实例的参数。

        # @param request: Request instance for ModifyInstanceParam.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyInstanceParamRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyInstanceParamResponse`
        def ModifyInstanceParam(request)
          body = send_request('ModifyInstanceParam', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceParamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyInstancePasswordComplexity)用于修改云数据库实例的密码复杂度。

        # @param request: Request instance for ModifyInstancePasswordComplexity.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyInstancePasswordComplexityRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyInstancePasswordComplexityResponse`
        def ModifyInstancePasswordComplexity(request)
          body = send_request('ModifyInstancePasswordComplexity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancePasswordComplexityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyInstanceTag)用于对实例标签进行添加、修改或者删除。

        # @param request: Request instance for ModifyInstanceTag.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyInstanceTagRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyInstanceTagResponse`
        def ModifyInstanceTag(request)
          body = send_request('ModifyInstanceTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于修改实例本地binlog保留策略。

        # @param request: Request instance for ModifyLocalBinlogConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyLocalBinlogConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyLocalBinlogConfigResponse`
        def ModifyLocalBinlogConfig(request)
          body = send_request('ModifyLocalBinlogConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLocalBinlogConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改置放群组的名称或者描述

        # @param request: Request instance for ModifyNameOrDescByDpId.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyNameOrDescByDpIdRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyNameOrDescByDpIdResponse`
        def ModifyNameOrDescByDpId(request)
          body = send_request('ModifyNameOrDescByDpId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNameOrDescByDpIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（ModifyParamTemplate）用于修改参数模板，全地域公共参数Region均为ap-guangzhou。

        # @param request: Request instance for ModifyParamTemplate.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyParamTemplateRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyParamTemplateResponse`
        def ModifyParamTemplate(request)
          body = send_request('ModifyParamTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyParamTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyRemoteBackupConfig)用于修改数据库异地备份配置信息。

        # @param request: Request instance for ModifyRemoteBackupConfig.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyRemoteBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyRemoteBackupConfigResponse`
        def ModifyRemoteBackupConfig(request)
          body = send_request('ModifyRemoteBackupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRemoteBackupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyRoGroupInfo）用于更新云数据库只读组的信息。包括设置实例延迟超限剔除策略，设置只读实例读权重，设置复制延迟时间等。

        # @param request: Request instance for ModifyRoGroupInfo.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyRoGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyRoGroupInfoResponse`
        def ModifyRoGroupInfo(request)
          body = send_request('ModifyRoGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRoGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyTimeWindow)用于更新云数据库实例的维护时间窗口。

        # @param request: Request instance for ModifyTimeWindow.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ModifyTimeWindowRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ModifyTimeWindowResponse`
        def ModifyTimeWindow(request)
          body = send_request('ModifyTimeWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTimeWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(OfflineIsolatedInstances)用于立即下线隔离状态的云数据库实例。进行操作的实例状态必须为隔离状态，即通过 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询到 Status 值为 5 的实例。

        # 该接口为异步操作，部分资源的回收可能存在延迟。您可以通过使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口，指定实例 InstanceId 和状态 Status 为 [5,6,7] 进行查询，若返回实例为空，则实例资源已全部释放。

        # 注意，实例下线后，相关资源和数据将无法找回，请谨慎操作。

        # @param request: Request instance for OfflineIsolatedInstances.
        # @type request: :class:`Tencentcloud::cdb::V20170320::OfflineIsolatedInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::OfflineIsolatedInstancesResponse`
        def OfflineIsolatedInstances(request)
          body = send_request('OfflineIsolatedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OfflineIsolatedInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CDB实例开通审计服务

        # @param request: Request instance for OpenAuditService.
        # @type request: :class:`Tencentcloud::cdb::V20170320::OpenAuditServiceRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::OpenAuditServiceResponse`
        def OpenAuditService(request)
          body = send_request('OpenAuditService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenAuditServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(OpenDBInstanceEncryption)用于启用实例数据存储加密功能，支持用户指定自定义密钥。

        # 注意，启用实例数据存储加密之前，需要进行以下操作：

        # 1、进行 [实例初始化](https://cloud.tencent.com/document/api/236/15873) 操作；

        # 2、开启 [KMS服务](https://console.cloud.tencent.com/kms2)；

        # 3、对云数据库(MySQL)[授予访问KMS密钥的权限](https://console.cloud.tencent.com/cam/role)，角色名为MySQL_QCSRole，预设策略名为QcloudAccessForMySQLRole；

        # 该 API 耗时可能到10s，客户端可能超时，如果调用 API 返回 InternalError ，请您调用DescribeDBInstanceInfo 确认后端加密是否开通成功。

        # @param request: Request instance for OpenDBInstanceEncryption.
        # @type request: :class:`Tencentcloud::cdb::V20170320::OpenDBInstanceEncryptionRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::OpenDBInstanceEncryptionResponse`
        def OpenDBInstanceEncryption(request)
          body = send_request('OpenDBInstanceEncryption', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenDBInstanceEncryptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(OpenDBInstanceGTID)用于开启云数据库实例的 GTID，只支持版本为 5.6 以及以上的实例。

        # @param request: Request instance for OpenDBInstanceGTID.
        # @type request: :class:`Tencentcloud::cdb::V20170320::OpenDBInstanceGTIDRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::OpenDBInstanceGTIDResponse`
        def OpenDBInstanceGTID(request)
          body = send_request('OpenDBInstanceGTID', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenDBInstanceGTIDResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(OpenWanService)用于开通实例外网访问。

        # 注意，实例开通外网访问之前，需要先将实例进行 [实例初始化](https://cloud.tencent.com/document/api/236/15873) 操作。

        # @param request: Request instance for OpenWanService.
        # @type request: :class:`Tencentcloud::cdb::V20170320::OpenWanServiceRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::OpenWanServiceResponse`
        def OpenWanService(request)
          body = send_request('OpenWanService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenWanServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询代理详情

        # @param request: Request instance for QueryCDBProxy.
        # @type request: :class:`Tencentcloud::cdb::V20170320::QueryCDBProxyRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::QueryCDBProxyResponse`
        def QueryCDBProxy(request)
          body = send_request('QueryCDBProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCDBProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ReleaseIsolatedDBInstances）用于恢复已隔离云数据库实例。

        # @param request: Request instance for ReleaseIsolatedDBInstances.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ReleaseIsolatedDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ReleaseIsolatedDBInstancesResponse`
        def ReleaseIsolatedDBInstances(request)
          body = send_request('ReleaseIsolatedDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseIsolatedDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新负载均衡数据库代理

        # @param request: Request instance for ReloadBalanceProxyNode.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ReloadBalanceProxyNodeRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ReloadBalanceProxyNodeResponse`
        def ReloadBalanceProxyNode(request)
          body = send_request('ReloadBalanceProxyNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReloadBalanceProxyNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(RenewDBInstance)用于续费云数据库实例，支持付费模式为包年包月的实例。按量计费实例可通过该接口续费为包年包月的实例。

        # @param request: Request instance for RenewDBInstance.
        # @type request: :class:`Tencentcloud::cdb::V20170320::RenewDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::RenewDBInstanceResponse`
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

        # 重置实例ROOT账号，初始化账号权限

        # @param request: Request instance for ResetRootAccount.
        # @type request: :class:`Tencentcloud::cdb::V20170320::ResetRootAccountRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::ResetRootAccountResponse`
        def ResetRootAccount(request)
          body = send_request('ResetRootAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetRootAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(RestartDBInstances)用于重启云数据库实例。

        # 注意：
        # 1、本接口只支持主实例进行重启操作；
        # 2、实例状态必须为正常，并且没有其他异步任务在执行中。

        # @param request: Request instance for RestartDBInstances.
        # @type request: :class:`Tencentcloud::cdb::V20170320::RestartDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::RestartDBInstancesResponse`
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

        # 该接口（StartBatchRollback）用于批量回档云数据库实例的库表。

        # @param request: Request instance for StartBatchRollback.
        # @type request: :class:`Tencentcloud::cdb::V20170320::StartBatchRollbackRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::StartBatchRollbackResponse`
        def StartBatchRollback(request)
          body = send_request('StartBatchRollback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartBatchRollbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启 RO 复制，从主实例同步数据。

        # @param request: Request instance for StartReplication.
        # @type request: :class:`Tencentcloud::cdb::V20170320::StartReplicationRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::StartReplicationResponse`
        def StartReplication(request)
          body = send_request('StartReplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartReplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(StopDBImportJob)用于终止数据导入任务。

        # @param request: Request instance for StopDBImportJob.
        # @type request: :class:`Tencentcloud::cdb::V20170320::StopDBImportJobRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::StopDBImportJobResponse`
        def StopDBImportJob(request)
          body = send_request('StopDBImportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopDBImportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止 RO 复制，中断从主实例同步数据。

        # @param request: Request instance for StopReplication.
        # @type request: :class:`Tencentcloud::cdb::V20170320::StopReplicationRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::StopReplicationResponse`
        def StopReplication(request)
          body = send_request('StopReplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopReplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(StopRollback) 用于撤销实例正在进行的回档任务，该接口返回一个异步任务id。 撤销结果可以通过 DescribeAsyncRequestInfo 查询任务的执行情况。

        # @param request: Request instance for StopRollback.
        # @type request: :class:`Tencentcloud::cdb::V20170320::StopRollbackRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::StopRollbackResponse`
        def StopRollback(request)
          body = send_request('StopRollback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopRollbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据库代理配置变更或则升级版本后手动发起立即切换

        # @param request: Request instance for SwitchCDBProxy.
        # @type request: :class:`Tencentcloud::cdb::V20170320::SwitchCDBProxyRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::SwitchCDBProxyResponse`
        def SwitchCDBProxy(request)
          body = send_request('SwitchCDBProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchCDBProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口 (SwitchDBInstanceMasterSlave) 支持用户主动切换实例主从角色。

        # @param request: Request instance for SwitchDBInstanceMasterSlave.
        # @type request: :class:`Tencentcloud::cdb::V20170320::SwitchDBInstanceMasterSlaveRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::SwitchDBInstanceMasterSlaveResponse`
        def SwitchDBInstanceMasterSlave(request)
          body = send_request('SwitchDBInstanceMasterSlave', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchDBInstanceMasterSlaveResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(SwitchDrInstanceToMaster)用于将云数据库灾备实例切换为主实例，注意请求必须发到灾备实例所在的地域。

        # @param request: Request instance for SwitchDrInstanceToMaster.
        # @type request: :class:`Tencentcloud::cdb::V20170320::SwitchDrInstanceToMasterRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::SwitchDrInstanceToMasterResponse`
        def SwitchDrInstanceToMaster(request)
          body = send_request('SwitchDrInstanceToMaster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchDrInstanceToMasterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(SwitchForUpgrade)用于切换访问新实例，针对主升级中的实例处于待切换状态时，用户可主动发起该流程。

        # @param request: Request instance for SwitchForUpgrade.
        # @type request: :class:`Tencentcloud::cdb::V20170320::SwitchForUpgradeRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::SwitchForUpgradeResponse`
        def SwitchForUpgrade(request)
          body = send_request('SwitchForUpgrade', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchForUpgradeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口已经废弃，请使用AdjustCdbProxy进行数据库代理的配置

        # 调整数据库代理配置

        # @param request: Request instance for UpgradeCDBProxy.
        # @type request: :class:`Tencentcloud::cdb::V20170320::UpgradeCDBProxyRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::UpgradeCDBProxyResponse`
        def UpgradeCDBProxy(request)
          body = send_request('UpgradeCDBProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeCDBProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 升级数据库代理版本

        # @param request: Request instance for UpgradeCDBProxyVersion.
        # @type request: :class:`Tencentcloud::cdb::V20170320::UpgradeCDBProxyVersionRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::UpgradeCDBProxyVersionResponse`
        def UpgradeCDBProxyVersion(request)
          body = send_request('UpgradeCDBProxyVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeCDBProxyVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(UpgradeDBInstance)用于升级或降级云数据库实例的配置，实例类型支持主实例、灾备实例和只读实例。

        # @param request: Request instance for UpgradeDBInstance.
        # @type request: :class:`Tencentcloud::cdb::V20170320::UpgradeDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::UpgradeDBInstanceResponse`
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

        # 本接口(UpgradeDBInstanceEngineVersion)用于升级云数据库实例版本，实例类型支持主实例、灾备实例和只读实例。

        # @param request: Request instance for UpgradeDBInstanceEngineVersion.
        # @type request: :class:`Tencentcloud::cdb::V20170320::UpgradeDBInstanceEngineVersionRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::UpgradeDBInstanceEngineVersionResponse`
        def UpgradeDBInstanceEngineVersion(request)
          body = send_request('UpgradeDBInstanceEngineVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDBInstanceEngineVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(VerifyRootAccount)用于校验云数据库实例的 ROOT 账号是否有足够的权限进行授权操作。

        # @param request: Request instance for VerifyRootAccount.
        # @type request: :class:`Tencentcloud::cdb::V20170320::VerifyRootAccountRequest`
        # @rtype: :class:`Tencentcloud::cdb::V20170320::VerifyRootAccountResponse`
        def VerifyRootAccount(request)
          body = send_request('VerifyRootAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyRootAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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