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

        # 本接口（AddClusterSlaveZone）用于对集群开启多可用区部署。

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

        # 本接口（AddInstances）用于集群添加实例。

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

        # 本接口（AssociateSecurityGroups）用于安全组批量绑定云资源。

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

        # 为集群绑定资源包

        # @param request: Request instance for BindClusterResourcePackages.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::BindClusterResourcePackagesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::BindClusterResourcePackagesResponse`
        def BindClusterResourcePackages(request)
          body = send_request('BindClusterResourcePackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindClusterResourcePackagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（CloseClusterPasswordComplexity）用于关闭集群密码复杂度。

        # @param request: Request instance for CloseClusterPasswordComplexity.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CloseClusterPasswordComplexityRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CloseClusterPasswordComplexityResponse`
        def CloseClusterPasswordComplexity(request)
          body = send_request('CloseClusterPasswordComplexity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseClusterPasswordComplexityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CloseProxy）用于关闭集群的数据库代理服务。

        # @param request: Request instance for CloseProxy.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CloseProxyRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CloseProxyResponse`
        def CloseProxy(request)
          body = send_request('CloseProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CloseWan）用于关闭外网。

        # @param request: Request instance for CloseWan.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CloseWanRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CloseWanResponse`
        def CloseWan(request)
          body = send_request('CloseWan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseWanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CopyClusterPasswordComplexity）用于复制集群密码复杂度。

        # @param request: Request instance for CopyClusterPasswordComplexity.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CopyClusterPasswordComplexityRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CopyClusterPasswordComplexityResponse`
        def CopyClusterPasswordComplexity(request)
          body = send_request('CopyClusterPasswordComplexity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyClusterPasswordComplexityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户账号

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

        # 创建审计规则模板

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

        # 创建日志投递

        # @param request: Request instance for CreateCLSDelivery.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateCLSDeliveryRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateCLSDeliveryResponse`
        def CreateCLSDelivery(request)
          body = send_request('CreateCLSDelivery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCLSDeliveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据库

        # @param request: Request instance for CreateClusterDatabase.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateClusterDatabaseRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateClusterDatabaseResponse`
        def CreateClusterDatabase(request)
          body = send_request('CreateClusterDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 购买新集群

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

        # 本接口（CreateParamTemplate）用于创建参数模板

        # @param request: Request instance for CreateParamTemplate.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateParamTemplateRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateParamTemplateResponse`
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

        # 本接口（CreateProxy）用于开启集群的数据库代理。

        # @param request: Request instance for CreateProxy.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateProxyRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateProxyResponse`
        def CreateProxy(request)
          body = send_request('CreateProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据库代理连接点

        # @param request: Request instance for CreateProxyEndPoint.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateProxyEndPointRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateProxyEndPointResponse`
        def CreateProxyEndPoint(request)
          body = send_request('CreateProxyEndPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProxyEndPointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateResourcePackage）用于新购资源包。

        # @param request: Request instance for CreateResourcePackage.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateResourcePackageRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateResourcePackageResponse`
        def CreateResourcePackage(request)
          body = send_request('CreateResourcePackage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourcePackageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户账号

        # @param request: Request instance for DeleteAccounts.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DeleteAccountsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DeleteAccountsResponse`
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

        # 删除审计规则模板

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

        # 本接口（DeleteBackup）用于为集群删除手动备份，无法删除自动备份。

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

        # 删除日志投递

        # @param request: Request instance for DeleteCLSDelivery.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DeleteCLSDeliveryRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DeleteCLSDeliveryResponse`
        def DeleteCLSDelivery(request)
          body = send_request('DeleteCLSDelivery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCLSDeliveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteClusterDatabase）用于删除数据库。

        # @param request: Request instance for DeleteClusterDatabase.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DeleteClusterDatabaseRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DeleteClusterDatabaseResponse`
        def DeleteClusterDatabase(request)
          body = send_request('DeleteClusterDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteParamTemplate）用于删除用户创建的参数模板。

        # @param request: Request instance for DeleteParamTemplate.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DeleteParamTemplateRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DeleteParamTemplateResponse`
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

        # 本接口（DescribeAccountAllGrantPrivileges）用于查询账号所有可授予的权限。

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

        # 查询账号已有权限

        # @param request: Request instance for DescribeAccountPrivileges.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountPrivilegesResponse`
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

        # 本接口（DescribeAccounts）用于查询数据库账号列表。

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

        # 获取审计实例列表

        # @param request: Request instance for DescribeAuditInstanceList.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditInstanceListRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAuditInstanceListResponse`
        def DescribeAuditInstanceList(request)
          body = send_request('DescribeAuditInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询审计规则模板信息

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

        # 本接口（DescribeBackupConfig）用于获取指定集群的备份配置信息，包括全量备份时间段、备份文件保留时间。

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

        # 本接口（DescribeBackupList）用于查询集群的备份文件列表。

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

        # 该接口（DescribeBinlogConfig）用于查询binlog配置

        # @param request: Request instance for DescribeBinlogConfig.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeBinlogConfigRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeBinlogConfigResponse`
        def DescribeBinlogConfig(request)
          body = send_request('DescribeBinlogConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBinlogConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeChangedParamsAfterUpgrade）用于查询升降配运行参数对比。

        # @param request: Request instance for DescribeChangedParamsAfterUpgrade.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeChangedParamsAfterUpgradeRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeChangedParamsAfterUpgradeResponse`
        def DescribeChangedParamsAfterUpgrade(request)
          body = send_request('DescribeChangedParamsAfterUpgrade', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChangedParamsAfterUpgradeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群数据库列表

        # @param request: Request instance for DescribeClusterDatabases.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterDatabasesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterDatabasesResponse`
        def DescribeClusterDatabases(request)
          body = send_request('DescribeClusterDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeClusterDetailDatabases）用于查询数据库列表。

        # @param request: Request instance for DescribeClusterDetailDatabases.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterDetailDatabasesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterDetailDatabasesResponse`
        def DescribeClusterDetailDatabases(request)
          body = send_request('DescribeClusterDetailDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterDetailDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeClusterInstanceGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterInstanceGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterInstanceGroupsResponse`
        def DescribeClusterInstanceGroups(request)
          body = send_request('DescribeClusterInstanceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterInstanceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeClusterInstanceGrps）用于查询实例组信息。 该接口已废弃，推荐使用DescribeClusterInstanceGroups

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

        # 本接口（DescribeClusterParamLogs）用于查询参数修改记录。

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

        # 本接口（DescribeClusterPasswordComplexity）用于查看集群密码复杂度详情

        # @param request: Request instance for DescribeClusterPasswordComplexity.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterPasswordComplexityRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterPasswordComplexityResponse`
        def DescribeClusterPasswordComplexity(request)
          body = send_request('DescribeClusterPasswordComplexity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterPasswordComplexityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeFlow）用于查询任务流信息。

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

        # 查询实例日志投递信息

        # @param request: Request instance for DescribeInstanceCLSLogDelivery.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceCLSLogDeliveryRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceCLSLogDeliveryResponse`
        def DescribeInstanceCLSLogDelivery(request)
          body = send_request('DescribeInstanceCLSLogDelivery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceCLSLogDeliveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询实例错误日志列表

        # @param request: Request instance for DescribeInstanceErrorLogs.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceErrorLogsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceErrorLogsResponse`
        def DescribeInstanceErrorLogs(request)
          body = send_request('DescribeInstanceErrorLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceErrorLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口(DescribeInstanceParams)查询实例参数列表

        # @param request: Request instance for DescribeInstanceParams.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceParamsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceParamsResponse`
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

        # 此接口（DescribeInstanceSlowQueries）用于查询实例慢日志详情。

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

        # 本接口（DescribeInstanceSpecs）用于查询购买页可购买的实例规格。

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

        # 本接口(DescribeIsolatedInstances)用于查询回收站实例列表。

        # @param request: Request instance for DescribeIsolatedInstances.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeIsolatedInstancesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeIsolatedInstancesResponse`
        def DescribeIsolatedInstances(request)
          body = send_request('DescribeIsolatedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIsolatedInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMaintainPeriod）用于查询实例维护时间窗。

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

        # 本接口（DescribeParamTemplateDetail）用于查询用户参数模板详情

        # @param request: Request instance for DescribeParamTemplateDetail.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeParamTemplateDetailRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeParamTemplateDetailResponse`
        def DescribeParamTemplateDetail(request)
          body = send_request('DescribeParamTemplateDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeParamTemplateDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeProjectSecurityGroups）用于查询项目安全组信息。

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

        # 查询数据库代理列表

        # @param request: Request instance for DescribeProxies.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeProxiesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeProxiesResponse`
        def DescribeProxies(request)
          body = send_request('DescribeProxies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProxyNodes）用于查询代理节点列表。

        # @param request: Request instance for DescribeProxyNodes.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeProxyNodesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeProxyNodesResponse`
        def DescribeProxyNodes(request)
          body = send_request('DescribeProxyNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据库代理规格

        # @param request: Request instance for DescribeProxySpecs.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeProxySpecsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeProxySpecsResponse`
        def DescribeProxySpecs(request)
          body = send_request('DescribeProxySpecs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxySpecsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源包使用详情

        # @param request: Request instance for DescribeResourcePackageDetail.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcePackageDetailRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcePackageDetailResponse`
        def DescribeResourcePackageDetail(request)
          body = send_request('DescribeResourcePackageDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcePackageDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源包列表

        # @param request: Request instance for DescribeResourcePackageList.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcePackageListRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcePackageListResponse`
        def DescribeResourcePackageList(request)
          body = send_request('DescribeResourcePackageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcePackageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源包规格

        # @param request: Request instance for DescribeResourcePackageSaleSpec.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcePackageSaleSpecRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcePackageSaleSpecResponse`
        def DescribeResourcePackageSaleSpec(request)
          body = send_request('DescribeResourcePackageSaleSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcePackageSaleSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询订单关联实例

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

        # 本接口（DescribeRollbackTimeRange）用于查询回档时间范围。

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

        # 查询serverless策略

        # @param request: Request instance for DescribeServerlessStrategy.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeServerlessStrategyRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeServerlessStrategyResponse`
        def DescribeServerlessStrategy(request)
          body = send_request('DescribeServerlessStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServerlessStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询支持的数据库代理版本

        # @param request: Request instance for DescribeSupportProxyVersion.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeSupportProxyVersionRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeSupportProxyVersionResponse`
        def DescribeSupportProxyVersion(request)
          body = send_request('DescribeSupportProxyVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSupportProxyVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTasks）用于查询任务列表。

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeTasksResponse`
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

        # 本接口(DescribeZones)用于查询可售卖地域可用区信息。

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeZonesResponse`
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

        # 本接口（DisassociateSecurityGroups）用于安全组批量解绑云资源。

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

        # 此接口（ExportInstanceErrorLogs）用于导出实例错误日志。

        # @param request: Request instance for ExportInstanceErrorLogs.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ExportInstanceErrorLogsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ExportInstanceErrorLogsResponse`
        def ExportInstanceErrorLogs(request)
          body = send_request('ExportInstanceErrorLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportInstanceErrorLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 资源包使用明细导出

        # @param request: Request instance for ExportResourcePackageDeductDetails.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ExportResourcePackageDeductDetailsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ExportResourcePackageDeductDetailsResponse`
        def ExportResourcePackageDeductDetails(request)
          body = send_request('ExportResourcePackageDeductDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportResourcePackageDeductDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（InquirePriceCreate）用于新购集群的价格查询。

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

        # 变配预付费集群询价

        # @param request: Request instance for InquirePriceModify.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::InquirePriceModifyRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::InquirePriceModifyResponse`
        def InquirePriceModify(request)
          body = send_request('InquirePriceModify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceModifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口(ModifyAccountDescription)用于修改数据库账号描述信息。

        # @param request: Request instance for ModifyAccountDescription.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountDescriptionRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountDescriptionResponse`
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

        # 修改账号主机

        # @param request: Request instance for ModifyAccountHost.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountHostRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountHostResponse`
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

        # 修改账号配置

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

        # 修改账号库表权限

        # @param request: Request instance for ModifyAccountPrivileges.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountPrivilegesResponse`
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

        # 修改审计规则模板

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

        # 本接口（ModifyBackupConfig）用于修改指定集群的备份配置。

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

        # 该接口（ModifyBinlogConfig）用于修改Binlog配置

        # @param request: Request instance for ModifyBinlogConfig.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyBinlogConfigRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyBinlogConfigResponse`
        def ModifyBinlogConfig(request)
          body = send_request('ModifyBinlogConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBinlogConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（ModifyBinlogSaveDays）用于修改集群Binlog保留天数。

        # @param request: Request instance for ModifyBinlogSaveDays.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyBinlogSaveDaysRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyBinlogSaveDaysResponse`
        def ModifyBinlogSaveDays(request)
          body = send_request('ModifyBinlogSaveDays', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBinlogSaveDaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyClusterDatabase）用于修改数据库的账号授权。

        # @param request: Request instance for ModifyClusterDatabase.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterDatabaseRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterDatabaseResponse`
        def ModifyClusterDatabase(request)
          body = send_request('ModifyClusterDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyClusterName）用于修改集群名称。

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

        # 本接口（ModifyClusterPasswordComplexity）用于修改/开启集群密码复杂度。

        # @param request: Request instance for ModifyClusterPasswordComplexity.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterPasswordComplexityRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterPasswordComplexityResponse`
        def ModifyClusterPasswordComplexity(request)
          body = send_request('ModifyClusterPasswordComplexity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterPasswordComplexityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyClusterSlaveZone）用于变更集群的备可用区。

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

        # 调整包年包月存储容量

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

        # 本接口（ModifyDBInstanceSecurityGroups）用于修改实例绑定的安全组。

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

        # 本接口（ModifyInstanceParam）用于修改实例参数。

        # @param request: Request instance for ModifyInstanceParam.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyInstanceParamRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyInstanceParamResponse`
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

        # 本接口（ModifyInstanceUpgradeLimitDays）用于修改实例内核小版本的升级限制时间。

        # @param request: Request instance for ModifyInstanceUpgradeLimitDays.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyInstanceUpgradeLimitDaysRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyInstanceUpgradeLimitDaysResponse`
        def ModifyInstanceUpgradeLimitDays(request)
          body = send_request('ModifyInstanceUpgradeLimitDays', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceUpgradeLimitDaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyMaintainPeriodConfig）用于修改维护时间配置。

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

        # 本接口（ModifyParamTemplate）用于修改用户参数模板。

        # @param request: Request instance for ModifyParamTemplate.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyParamTemplateRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyParamTemplateResponse`
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

        # 修改数据库代理描述

        # @param request: Request instance for ModifyProxyDesc.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyProxyDescRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyProxyDescResponse`
        def ModifyProxyDesc(request)
          body = send_request('ModifyProxyDesc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProxyDescResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 配置数据库代理读写分离

        # @param request: Request instance for ModifyProxyRwSplit.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyProxyRwSplitRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyProxyRwSplitResponse`
        def ModifyProxyRwSplit(request)
          body = send_request('ModifyProxyRwSplit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProxyRwSplitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 给资源包绑定集群

        # @param request: Request instance for ModifyResourcePackageClusters.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyResourcePackageClustersRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyResourcePackageClustersResponse`
        def ModifyResourcePackageClusters(request)
          body = send_request('ModifyResourcePackageClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourcePackageClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改资源包名称

        # @param request: Request instance for ModifyResourcePackageName.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyResourcePackageNameRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyResourcePackageNameResponse`
        def ModifyResourcePackageName(request)
          body = send_request('ModifyResourcePackageName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourcePackageNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改已绑定资源包抵扣优先级

        # @param request: Request instance for ModifyResourcePackagesDeductionPriority.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyResourcePackagesDeductionPriorityRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyResourcePackagesDeductionPriorityResponse`
        def ModifyResourcePackagesDeductionPriority(request)
          body = send_request('ModifyResourcePackagesDeductionPriority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourcePackagesDeductionPriorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改serverless策略

        # @param request: Request instance for ModifyServerlessStrategy.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyServerlessStrategyRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyServerlessStrategyResponse`
        def ModifyServerlessStrategy(request)
          body = send_request('ModifyServerlessStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyServerlessStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例组ip，端口

        # @param request: Request instance for ModifyVipVport.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyVipVportRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyVipVportResponse`
        def ModifyVipVport(request)
          body = send_request('ModifyVipVport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVipVportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（OfflineCluster）用于销毁集群。

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

        # 销毁实例

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

        # 本接口（OpenClusterPasswordComplexity）用于开启自定义密码复杂度功能。

        # @param request: Request instance for OpenClusterPasswordComplexity.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::OpenClusterPasswordComplexityRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::OpenClusterPasswordComplexityResponse`
        def OpenClusterPasswordComplexity(request)
          body = send_request('OpenClusterPasswordComplexity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenClusterPasswordComplexityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（OpenClusterReadOnlyInstanceGroupAccess）用于开启只读实例组接入。

        # @param request: Request instance for OpenClusterReadOnlyInstanceGroupAccess.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::OpenClusterReadOnlyInstanceGroupAccessRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::OpenClusterReadOnlyInstanceGroupAccessResponse`
        def OpenClusterReadOnlyInstanceGroupAccess(request)
          body = send_request('OpenClusterReadOnlyInstanceGroupAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenClusterReadOnlyInstanceGroupAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（OpenReadOnlyInstanceExclusiveAccess）用于开通只读实例独有访问接入组。

        # @param request: Request instance for OpenReadOnlyInstanceExclusiveAccess.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::OpenReadOnlyInstanceExclusiveAccessRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::OpenReadOnlyInstanceExclusiveAccessResponse`
        def OpenReadOnlyInstanceExclusiveAccess(request)
          body = send_request('OpenReadOnlyInstanceExclusiveAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenReadOnlyInstanceExclusiveAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（OpenWan）用于开通外网。

        # @param request: Request instance for OpenWan.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::OpenWanRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::OpenWanResponse`
        def OpenWan(request)
          body = send_request('OpenWan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenWanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（PauseServerless）用于暂停 serverless 集群。

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

        # 退款资源包

        # @param request: Request instance for RefundResourcePackage.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::RefundResourcePackageRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::RefundResourcePackageResponse`
        def RefundResourcePackage(request)
          body = send_request('RefundResourcePackage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefundResourcePackageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 负载均衡数据库代理

        # @param request: Request instance for ReloadBalanceProxyNode.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ReloadBalanceProxyNodeRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ReloadBalanceProxyNodeResponse`
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

        # 本接口（RemoveClusterSlaveZone）用于关闭集群多可用区部署。

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

        # 续费集群

        # @param request: Request instance for RenewClusters.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::RenewClustersRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::RenewClustersResponse`
        def RenewClusters(request)
          body = send_request('RenewClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ResetAccountPassword)用于修改数据库账号密码

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

        # 本接口（ResumeServerless）用于恢复 serverless 集群（启动暂停的集群）。

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

        # 本接口（RevokeAccountPrivileges）用于批量回收账号权限。

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

        # 本接口（RollBackCluster）用于集群回档

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

        # 本接口（RollbackToNewCluster）用于回档到新集群。

        # @param request: Request instance for RollbackToNewCluster.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::RollbackToNewClusterRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::RollbackToNewClusterResponse`
        def RollbackToNewCluster(request)
          body = send_request('RollbackToNewCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackToNewClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SearchClusterDatabases）用于搜索集群数据库列表。

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

        # 本接口（StartCLSDelivery）用于开启日志投递功能。

        # @param request: Request instance for StartCLSDelivery.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::StartCLSDeliveryRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::StartCLSDeliveryResponse`
        def StartCLSDelivery(request)
          body = send_request('StartCLSDelivery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartCLSDeliveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（StopCLSDelivery）用于停止日志投递功能。

        # @param request: Request instance for StopCLSDelivery.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::StopCLSDeliveryRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::StopCLSDeliveryResponse`
        def StopCLSDelivery(request)
          body = send_request('StopCLSDelivery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopCLSDeliveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更换集群vpc

        # @param request: Request instance for SwitchClusterVpc.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::SwitchClusterVpcRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::SwitchClusterVpcResponse`
        def SwitchClusterVpc(request)
          body = send_request('SwitchClusterVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchClusterVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SwitchClusterZone）用于切换集群的主备可用区。

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

        # cynos解绑资源包

        # @param request: Request instance for UnbindClusterResourcePackages.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::UnbindClusterResourcePackagesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::UnbindClusterResourcePackagesResponse`
        def UnbindClusterResourcePackages(request)
          body = send_request('UnbindClusterResourcePackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindClusterResourcePackagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeClusterVersion）用于更新内核小版本。

        # @param request: Request instance for UpgradeClusterVersion.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::UpgradeClusterVersionRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::UpgradeClusterVersionResponse`
        def UpgradeClusterVersion(request)
          body = send_request('UpgradeClusterVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeClusterVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeInstance）用于实例变配。

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

        # 本接口（UpgradeProxy）用于升级数据库代理配置。

        # @param request: Request instance for UpgradeProxy.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::UpgradeProxyRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::UpgradeProxyResponse`
        def UpgradeProxy(request)
          body = send_request('UpgradeProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for UpgradeProxyVersion.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::UpgradeProxyVersionRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::UpgradeProxyVersionResponse`
        def UpgradeProxyVersion(request)
          body = send_request('UpgradeProxyVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeProxyVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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