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

        def initialize(credential, region, profile = nil)
            api_version = '2019-01-07'
            api_endpoint = 'cynosdb.tencentcloudapi.com'
            sdk_version = 'CYNOSDB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口(ActivateInstance)用于恢复已隔离的实例访问。

        # @param request: Request instance for ActivateInstance.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ActivateInstanceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ActivateInstanceResponse`
        def ActivateInstance(request)
          body = send_request('ActivateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActivateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 增加从可用区

        # @param request: Request instance for AddClusterSlaveZone.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::AddClusterSlaveZoneRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::AddClusterSlaveZoneResponse`
        def AddClusterSlaveZone(request)
          body = send_request('AddClusterSlaveZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddClusterSlaveZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

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

        # 安全组批量绑定云资源

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::AssociateSecurityGroupsResponse`
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

        # TDSQL-C for MySQL实例关闭审计服务

        # @param request: Request instance for CloseAuditService.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CloseAuditServiceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CloseAuditServiceResponse`
        def CloseAuditService(request)
          body = send_request('CloseAuditService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseAuditServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建账号

        # @param request: Request instance for CreateAccounts.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateAccountsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateAccountsResponse`
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
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateAuditLogFileRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateAuditLogFileResponse`
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

        # 创建审计规则模版

        # @param request: Request instance for CreateAuditRuleTemplate.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateAuditRuleTemplateRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateAuditRuleTemplateResponse`
        def CreateAuditRuleTemplate(request)
          body = send_request('CreateAuditRuleTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAuditRuleTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为集群创建手动备份

        # @param request: Request instance for CreateBackup.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateBackupRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateBackupResponse`
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

        # 本接口(DeleteAuditLogFile)用于删除云数据库实例的审计日志文件。

        # @param request: Request instance for DeleteAuditLogFile.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DeleteAuditLogFileRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DeleteAuditLogFileResponse`
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

        # 删除审计规则模版

        # @param request: Request instance for DeleteAuditRuleTemplates.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DeleteAuditRuleTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DeleteAuditRuleTemplatesResponse`
        def DeleteAuditRuleTemplates(request)
          body = send_request('DeleteAuditRuleTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuditRuleTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为集群删除手动备份，无法删除自动备份

        # @param request: Request instance for DeleteBackup.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DeleteBackupRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DeleteBackupResponse`
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

        # 账号所有权限

        # @param request: Request instance for DescribeAccountAllGrantPrivileges.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountAllGrantPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountAllGrantPrivilegesResponse`
        def DescribeAccountAllGrantPrivileges(request)
          body = send_request('DescribeAccountAllGrantPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountAllGrantPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。

        # @param request: Request instance for DescribeAuditLogFiles.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditLogFilesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditLogFilesResponse`
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

        # 本接口(DescribeAuditLogs)用于查询数据库审计日志。

        # @param request: Request instance for DescribeAuditLogs.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditLogsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditLogsResponse`
        def DescribeAuditLogs(request)
          body = send_request('DescribeAuditLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询审计规则模版信息

        # @param request: Request instance for DescribeAuditRuleTemplates.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditRuleTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditRuleTemplatesResponse`
        def DescribeAuditRuleTemplates(request)
          body = send_request('DescribeAuditRuleTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditRuleTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例的审计规则

        # @param request: Request instance for DescribeAuditRuleWithInstanceIds.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditRuleWithInstanceIdsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditRuleWithInstanceIdsResponse`
        def DescribeAuditRuleWithInstanceIds(request)
          body = send_request('DescribeAuditRuleWithInstanceIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditRuleWithInstanceIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 此接口（DescribeBackupDownloadUrl）用于查询集群备份文件下载地址。

        # @param request: Request instance for DescribeBackupDownloadUrl.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupDownloadUrlResponse`
        def DescribeBackupDownloadUrl(request)
          body = send_request('DescribeBackupDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 此接口（DescribeBinlogDownloadUrl）用于查询Binlog的下载地址。

        # @param request: Request instance for DescribeBinlogDownloadUrl.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeBinlogDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeBinlogDownloadUrlResponse`
        def DescribeBinlogDownloadUrl(request)
          body = send_request('DescribeBinlogDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBinlogDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeBinlogSaveDays）用于查询集群的Binlog保留天数。

        # @param request: Request instance for DescribeBinlogSaveDays.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeBinlogSaveDaysRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeBinlogSaveDaysResponse`
        def DescribeBinlogSaveDays(request)
          body = send_request('DescribeBinlogSaveDays', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBinlogSaveDaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeBinlogs）用来查询集群Binlog日志列表。

        # @param request: Request instance for DescribeBinlogs.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeBinlogsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeBinlogsResponse`
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

        # 该接口（DescribeClusterDetail）显示集群详情

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

        # 本接口（DescribeClusterInstanceGrps）用于查询实例组信息。

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

        # 本接口（DescribeClusterParamLogs）查询参数修改日志

        # @param request: Request instance for DescribeClusterParamLogs.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterParamLogsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterParamLogsResponse`
        def DescribeClusterParamLogs(request)
          body = send_request('DescribeClusterParamLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterParamLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeClusterParams）用于查询集群参数

        # @param request: Request instance for DescribeClusterParams.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterParamsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterParamsResponse`
        def DescribeClusterParams(request)
          body = send_request('DescribeClusterParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeFlow）用于查询任务流信息

        # @param request: Request instance for DescribeFlow.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeFlowRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeFlowResponse`
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

        # 此接口（DescribeInstanceSlowQueries）用于查询实例慢查询日志。

        # @param request: Request instance for DescribeInstanceSlowQueries.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceSlowQueriesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceSlowQueriesResponse`
        def DescribeInstanceSlowQueries(request)
          body = send_request('DescribeInstanceSlowQueries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceSlowQueriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询用户指定产品下的所有参数模板信息

        # @param request: Request instance for DescribeParamTemplates.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeParamTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeParamTemplatesResponse`
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

        # 根据计费订单id查询资源列表

        # @param request: Request instance for DescribeResourcesByDealName.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcesByDealNameRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcesByDealNameResponse`
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

        # 安全组批量解绑云资源

        # @param request: Request instance for DisassociateSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DisassociateSecurityGroupsResponse`
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

        # 此接口（ExportInstanceSlowQueries）用于导出实例慢日志。

        # @param request: Request instance for ExportInstanceSlowQueries.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ExportInstanceSlowQueriesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ExportInstanceSlowQueriesResponse`
        def ExportInstanceSlowQueries(request)
          body = send_request('ExportInstanceSlowQueries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportInstanceSlowQueriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量授权账号权限

        # @param request: Request instance for GrantAccountPrivileges.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::GrantAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::GrantAccountPrivilegesResponse`
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

        # 查询新购集群价格

        # @param request: Request instance for InquirePriceCreate.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::InquirePriceCreateRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::InquirePriceCreateResponse`
        def InquirePriceCreate(request)
          body = send_request('InquirePriceCreate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceCreateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询续费集群价格

        # @param request: Request instance for InquirePriceRenew.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::InquirePriceRenewRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::InquirePriceRenewResponse`
        def InquirePriceRenew(request)
          body = send_request('InquirePriceRenew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceRenewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改账号参数

        # @param request: Request instance for ModifyAccountParams.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountParamsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountParamsResponse`
        def ModifyAccountParams(request)
          body = send_request('ModifyAccountParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改审计规则模版

        # @param request: Request instance for ModifyAuditRuleTemplates.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyAuditRuleTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyAuditRuleTemplatesResponse`
        def ModifyAuditRuleTemplates(request)
          body = send_request('ModifyAuditRuleTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAuditRuleTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyAuditService)用于修改云数据库审计日志保存时长、审计规则等服务配置。

        # @param request: Request instance for ModifyAuditService.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyAuditServiceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyAuditServiceResponse`
        def ModifyAuditService(request)
          body = send_request('ModifyAuditService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAuditServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 此接口（ModifyBackupName）用于修改备份文件备注名。

        # @param request: Request instance for ModifyBackupName.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyBackupNameRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyBackupNameResponse`
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

        # 修改集群名称

        # @param request: Request instance for ModifyClusterName.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterNameRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterNameResponse`
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

        # 修改集群参数

        # @param request: Request instance for ModifyClusterParam.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterParamRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterParamResponse`
        def ModifyClusterParam(request)
          body = send_request('ModifyClusterParam', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterParamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改从可用区

        # @param request: Request instance for ModifyClusterSlaveZone.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterSlaveZoneRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterSlaveZoneResponse`
        def ModifyClusterSlaveZone(request)
          body = send_request('ModifyClusterSlaveZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterSlaveZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 升级预付费存储

        # @param request: Request instance for ModifyClusterStorage.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterStorageRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterStorageResponse`
        def ModifyClusterStorage(request)
          body = send_request('ModifyClusterStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterStorageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口(ModifyInstanceName)用于修改实例名称。

        # @param request: Request instance for ModifyInstanceName.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyInstanceNameResponse`
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

        # TDSQL-C for MySQL实例开通审计服务

        # @param request: Request instance for OpenAuditService.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::OpenAuditServiceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::OpenAuditServiceResponse`
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

        # 暂停serverless集群

        # @param request: Request instance for PauseServerless.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::PauseServerlessRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::PauseServerlessResponse`
        def PauseServerless(request)
          body = send_request('PauseServerless', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseServerlessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除从可用区

        # @param request: Request instance for RemoveClusterSlaveZone.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::RemoveClusterSlaveZoneRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::RemoveClusterSlaveZoneResponse`
        def RemoveClusterSlaveZone(request)
          body = send_request('RemoveClusterSlaveZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveClusterSlaveZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ResetAccountPassword)用于重置实例的数据库账号密码。

        # @param request: Request instance for ResetAccountPassword.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ResetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ResetAccountPasswordResponse`
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

        # 重启实例

        # @param request: Request instance for RestartInstance.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::RestartInstanceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::RestartInstanceResponse`
        def RestartInstance(request)
          body = send_request('RestartInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复serverless集群

        # @param request: Request instance for ResumeServerless.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ResumeServerlessRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ResumeServerlessResponse`
        def ResumeServerless(request)
          body = send_request('ResumeServerless', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeServerlessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量回收账号权限

        # @param request: Request instance for RevokeAccountPrivileges.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::RevokeAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::RevokeAccountPrivilegesResponse`
        def RevokeAccountPrivileges(request)
          body = send_request('RevokeAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevokeAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RollBackCluster）用于回档集群

        # @param request: Request instance for RollBackCluster.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::RollBackClusterRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::RollBackClusterResponse`
        def RollBackCluster(request)
          body = send_request('RollBackCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollBackClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(SearchClusterDatabases)搜索集群database列表

        # @param request: Request instance for SearchClusterDatabases.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::SearchClusterDatabasesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::SearchClusterDatabasesResponse`
        def SearchClusterDatabases(request)
          body = send_request('SearchClusterDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchClusterDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(SearchClusterTables)搜索集群数据表列表

        # @param request: Request instance for SearchClusterTables.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::SearchClusterTablesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::SearchClusterTablesResponse`
        def SearchClusterTables(request)
          body = send_request('SearchClusterTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchClusterTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 切换到从可用区

        # @param request: Request instance for SwitchClusterZone.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::SwitchClusterZoneRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::SwitchClusterZoneResponse`
        def SwitchClusterZone(request)
          body = send_request('SwitchClusterZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchClusterZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(SwitchProxyVpc)更换数据库代理vpc

        # @param request: Request instance for SwitchProxyVpc.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::SwitchProxyVpcRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::SwitchProxyVpcResponse`
        def SwitchProxyVpc(request)
          body = send_request('SwitchProxyVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchProxyVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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